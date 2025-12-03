@interface ADEspressoImageDescriptor
+ (id)descriptorWithName:(id)name imageDescriptor:(id)descriptor isInput:(BOOL)input;
+ (id)inputDescriptorWithName:(id)name pixelFormat:(unsigned int)format;
+ (id)outputDescriptorWithName:(id)name pixelFormat:(unsigned int)format;
- (BOOL)conformedByPixelBuffer:(__CVBuffer *)buffer forLayout:(unint64_t)layout;
@end

@implementation ADEspressoImageDescriptor

- (BOOL)conformedByPixelBuffer:(__CVBuffer *)buffer forLayout:(unint64_t)layout
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(ADImageDescriptor *)self->_imageDescriptor conformedByPixelBuffer:buffer forLayout:layout];
  if (!v5)
  {
    return v5;
  }

  if (!CVPixelBufferGetIOSurface(buffer))
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        return v5;
      }

      LOWORD(v17) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "PixelBuffer is not backed by IOSurface, so cannot be used as an Espresso buffer";
      v12 = 2;
LABEL_19:
      _os_log_impl(&dword_240463000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, v12);
    }

LABEL_20:
    LOBYTE(v5) = 0;
    return v5;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  if (!PlaneCount)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    if ((BytesPerRow & 0x3F) == 0)
    {
LABEL_15:
      LOBYTE(v5) = 1;
      return v5;
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v14 = BytesPerRow;
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        return v5;
      }

      v17 = 134217984;
      v18 = v14;
      v10 = MEMORY[0x277D86220];
      v11 = "PixelBuffer has %zu bytes per row, which is not aligned to 64-bytes";
      v12 = 12;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v7 = PlaneCount;
  v8 = 0;
  while (1)
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, v8);
    if ((BytesPerRowOfPlane & 0x3F) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_15;
    }
  }

  if (ADDebugUtilsADVerboseLogsEnabled != 1)
  {
    goto LABEL_20;
  }

  v15 = BytesPerRowOfPlane;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v17 = 134218240;
    v18 = v15;
    v19 = 2048;
    v20 = v8;
    v10 = MEMORY[0x277D86220];
    v11 = "PixelBuffer has %zu bytes per row in plane %zu, which is not aligned to 64-bytes";
    v12 = 22;
    goto LABEL_19;
  }

  return v5;
}

+ (id)descriptorWithName:(id)name imageDescriptor:(id)descriptor isInput:(BOOL)input
{
  nameCopy = name;
  descriptorCopy = descriptor;
  v10 = descriptorCopy;
  v11 = 0;
  if (nameCopy)
  {
    if (descriptorCopy)
    {
      v12 = objc_opt_new();
      v11 = v12;
      if (v12)
      {
        objc_storeStrong((v12 + 16), name);
        *(v11 + 8) = input;
        objc_storeStrong((v11 + 24), descriptor);
      }
    }
  }

  return v11;
}

+ (id)outputDescriptorWithName:(id)name pixelFormat:(unsigned int)format
{
  v4 = *&format;
  nameCopy = name;
  v6 = [ADImageDescriptor descriptorForSupportedSizes:0 pixelFormat:v4];
  v7 = [ADEspressoImageDescriptor descriptorWithName:nameCopy imageDescriptor:v6 isInput:0];

  return v7;
}

+ (id)inputDescriptorWithName:(id)name pixelFormat:(unsigned int)format
{
  v4 = *&format;
  nameCopy = name;
  v6 = [ADImageDescriptor descriptorForSupportedSizes:0 pixelFormat:v4];
  v7 = [ADEspressoImageDescriptor descriptorWithName:nameCopy imageDescriptor:v6 isInput:1];

  return v7;
}

@end