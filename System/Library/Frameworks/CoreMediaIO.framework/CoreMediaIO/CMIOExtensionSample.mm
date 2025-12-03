@interface CMIOExtensionSample
+ (id)sampleWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionSample)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (CMIOExtensionSample)initWithCoder:(id)coder;
- (CMIOExtensionSample)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionSample

+ (id)sampleWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = [objc_alloc(objc_opt_class()) initWithCMSampleBuffer:buffer];

  return v3;
}

- (CMIOExtensionSample)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v9.receiver = self;
  v9.super_class = CMIOExtensionSample;
  v4 = [(CMIOExtensionSample *)&v9 init];
  if (v4)
  {
    if (buffer)
    {
      v5 = CFRetain(buffer);
      v4->_sampleBuffer = v5;
      FormatDescription = CMSampleBufferGetFormatDescription(v5);
      MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    }

    else
    {
      MediaType = 0;
      v4->_sampleBuffer = 0;
    }

    v4->_mediaType = MediaType;
  }

  return v4;
}

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionSample;
  [(CMIOExtensionSample *)&v4 dealloc];
}

- (id)description
{
  description = self->_description;
  if (!description)
  {
    sampleBuffer = self->_sampleBuffer;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (sampleBuffer)
    {
      description = [v5 initWithFormat:@"<sample: %p, %c%c%c%c>", self->_sampleBuffer, HIBYTE(self->_mediaType), BYTE2(self->_mediaType), BYTE1(self->_mediaType), self->_mediaType];
    }

    else
    {
      description = [v5 initWithFormat:@"<sample: NULL>", v8, v9, v10, v11, v12];
    }

    self->_description = description;
  }

  v6 = description;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sampleBuffer = self->_sampleBuffer;
  return sampleBuffer == [equal sampleBuffer];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionSample allocWithZone:zone];
  sampleBuffer = self->_sampleBuffer;

  return [(CMIOExtensionSample *)v4 initWithCMSampleBuffer:sampleBuffer];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  copyXPCDictionary = [(CMIOExtensionSample *)self copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v6 = copyXPCDictionary;
    [coder encodeXPCObject:copyXPCDictionary forKey:@"sampleBuffer"];

    xpc_release(v6);
  }
}

- (CMIOExtensionSample)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  v5 = [coder decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"sampleBuffer"];
  if (v5)
  {

    return [(CMIOExtensionSample *)self initWithXPCDictionary:v5];
  }

  else
  {

    return [(CMIOExtensionSample *)self initWithCMSampleBuffer:0];
  }
}

- (id)copyXPCDictionary
{
  if (!self->_sampleBuffer)
  {
    return 0;
  }

  dataPointerOut = 0;
  theBuffer = 0;
  totalLengthOut = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(self->_sampleBuffer);
  v5 = ImageBuffer;
  if (ImageBuffer)
  {
    v6 = CVBufferCopyAttachment(ImageBuffer, @"MetadataDictionary", 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFDictionaryGetTypeID() && !CMGetAttachment(self->_sampleBuffer, @"MetadataDictionary", 0))
      {
        CMSetAttachment(self->_sampleBuffer, @"MetadataDictionary", v7, 1u);
      }

      CFRelease(v7);
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  sampleBuffer = self->_sampleBuffer;
  if (FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer())
  {
    v11 = CMIOLog();
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSample copyXPCDictionary];
    }

    goto LABEL_25;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
  v13 = theBuffer;
  if (IsRangeContiguous)
  {
LABEL_18:
    if (CMBlockBufferGetDataPointer(v13, 0, 0, &totalLengthOut, &dataPointerOut))
    {
      [CMIOExtensionSample copyXPCDictionary];
    }

    else
    {
      v14 = xpc_data_create(dataPointerOut, totalLengthOut);
      xpc_dictionary_set_value(v3, "buffer", v14);
      xpc_release(v14);
      if (v5)
      {
        IOSurface = CVPixelBufferGetIOSurface(v5);
        if (IOSurface)
        {
          XPCObject = IOSurfaceCreateXPCObject(IOSurface);
          xpc_dictionary_set_value(v3, "iosurface", XPCObject);
          xpc_release(XPCObject);
        }

        else
        {
          v17 = CMIOLog();
          if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionSample copyXPCDictionary];
          }
        }
      }
    }

    goto LABEL_25;
  }

  v19 = 0;
  if (!CMBlockBufferCreateContiguous(v9, theBuffer, v9, 0, 0, 0, 0, &v19))
  {
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    v13 = v19;
    theBuffer = v19;
    goto LABEL_18;
  }

  [CMIOExtensionSample copyXPCDictionary];
LABEL_25:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v3;
}

- (CMIOExtensionSample)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v36 = 0;
    blockBufferOut = 0;
    formatDescriptionOut = 0;
    pixelBufferOut = 0;
    value = xpc_dictionary_get_value(dictionary, "buffer");
    if (!value)
    {
      v12 = CMIOLog();
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }

      goto LABEL_19;
    }

    v6 = value;
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    if (!bytes_ptr)
    {
      v13 = CMIOLog();
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }

      goto LABEL_19;
    }

    v8 = bytes_ptr;
    length = xpc_data_get_length(v6);
    HIDWORD(customBlockSource.AllocateBlock) = 0;
    *&customBlockSource.version = 0;
    customBlockSource.FreeBlock = cmio_bbufUtilXPCObjectReleaser;
    customBlockSource.refCon = v6;
    v10 = *MEMORY[0x277CBECE8];
    if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v8, length, 0, &customBlockSource, 0, length, 0, &blockBufferOut))
    {
      v11 = CMIOLog();
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }
    }

    else
    {
      xpc_retain(v6);
      SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
      CFRelease(blockBufferOut);
      blockBufferOut = 0;
      if (!SampleBufferFromSerializedAtomDataBlockBuffer)
      {
        v18 = CMGetAttachment(v36, @"MetadataDictionary", 0);
        v19 = v18;
        if (v18)
        {
          v20 = CFGetTypeID(v18);
          if (v20 != CFDictionaryGetTypeID())
          {
            v19 = 0;
          }
        }

        v21 = xpc_dictionary_get_value(dictionary, "iosurface");
        if (v21)
        {
          v22 = IOSurfaceLookupFromXPCObject(v21);
          if (!v22)
          {
            v27 = CMIOLog();
            if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          v23 = v22;
          v24 = CVPixelBufferCreateWithIOSurface(v10, v22, 0, &pixelBufferOut);
          CFRelease(v23);
          if (v24)
          {
            v25 = CMIOLog();
            if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          if (v19 && !CVBufferHasAttachment(pixelBufferOut, @"MetadataDictionary"))
          {
            CVBufferSetAttachment(pixelBufferOut, @"MetadataDictionary", v19, kCVAttachmentMode_ShouldPropagate);
          }

          if (CMVideoFormatDescriptionCreateForImageBuffer(v10, pixelBufferOut, &formatDescriptionOut))
          {
            v28 = CMIOLog();
            if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          memset(&timingArrayOut, 0, sizeof(timingArrayOut));
          if (CMSampleBufferGetSampleTimingInfoArray(v36, 1, &timingArrayOut, 0))
          {
            v29 = CMIOLog();
            if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          sampleBufferOut = 0;
          if (CMSampleBufferCreateForImageBuffer(v10, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &timingArrayOut, &sampleBufferOut))
          {
            v30 = CMIOLog();
            if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          CFRelease(pixelBufferOut);
          pixelBufferOut = 0;
          CFRelease(formatDescriptionOut);
          formatDescriptionOut = 0;
          CMPropagateAttachments(v36, sampleBufferOut);
          CFRelease(v36);
          v26 = sampleBufferOut;
          v36 = sampleBufferOut;
        }

        else
        {
          v26 = v36;
        }

        v16 = [(CMIOExtensionSample *)self initWithCMSampleBuffer:v26];
        CFRelease(v36);
        return v16;
      }

      v15 = CMIOLog();
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }
    }

LABEL_19:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    return 0;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
  return 0;
}

- (void)copyXPCDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.4()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.5()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.6()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end