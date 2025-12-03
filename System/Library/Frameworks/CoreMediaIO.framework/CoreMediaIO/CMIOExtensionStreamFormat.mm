@interface CMIOExtensionStreamFormat
+ (CMIOExtensionStreamFormat)streamFormatWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations;
+ (id)copyFormatsFromXPCArray:(id)array;
+ (id)copyXPCArrayFromFormats:(id)formats;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionStreamFormat)initWithCoder:(id)coder;
- (CMIOExtensionStreamFormat)initWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations;
- (CMIOExtensionStreamFormat)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionStreamFormat

+ (CMIOExtensionStreamFormat)streamFormatWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations
{
  v10 = objc_alloc(objc_opt_class());
  v13 = *maxFrameDuration;
  v12 = *minFrameDuration;
  return [v10 initWithFormatDescription:formatDescription maxFrameDuration:&v13 minFrameDuration:&v12 validFrameDurations:validFrameDurations];
}

- (CMIOExtensionStreamFormat)initWithFormatDescription:(CMFormatDescriptionRef)formatDescription maxFrameDuration:(CMTime *)maxFrameDuration minFrameDuration:(CMTime *)minFrameDuration validFrameDurations:(NSArray *)validFrameDurations
{
  v22.receiver = self;
  v22.super_class = CMIOExtensionStreamFormat;
  v10 = [(CMIOExtensionStreamFormat *)&v22 init];
  if (v10)
  {
    if (formatDescription)
    {
      *(v10 + 2) = CFRetain(formatDescription);
      epoch = minFrameDuration->epoch;
      *(v10 + 2) = *&minFrameDuration->value;
      *(v10 + 6) = epoch;
      v12 = *&maxFrameDuration->value;
      *(v10 + 9) = maxFrameDuration->epoch;
      *(v10 + 56) = v12;
      *(v10 + 3) = validFrameDurations;
      if ((v10[44] & 1) != 0 && *(v10 + 4) && (v10[68] & 1) != 0 && *(v10 + 7))
      {
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        v14 = *(v10 + 2);
        time = *(v10 + 32);
        v15 = (CMTimeGetSeconds(&time) * 1000.0);
        time = *(v10 + 56);
        v16 = [v13 initWithFormat:@"<CMIOExtensionStreamFormat: format %@, min %ld ms, max %ld ms>", v14, v15, (CMTimeGetSeconds(&time) * 1000.0)];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionStreamFormat: format %@>", *(v10 + 2), v19, v20];
      }

      *(v10 + 1) = v16;
    }

    else
    {
      v17 = CMIOLog();
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionStreamFormat initWithFormatDescription:maxFrameDuration:minFrameDuration:validFrameDurations:];
      }

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionStreamFormat;
  [(CMIOExtensionStreamFormat *)&v4 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      LOBYTE(v7) = 0;
      return v7;
    }

    v7 = CMFormatDescriptionEqual(self->_formatDescription, [equal formatDescription]);
    if (v7)
    {
      if (equal)
      {
        [equal minFrameDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      minFrameDuration = self->_minFrameDuration;
      if (CMTimeCompare(&minFrameDuration, &time2))
      {
        goto LABEL_13;
      }

      if (equal)
      {
        [equal maxFrameDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      minFrameDuration = self->_maxFrameDuration;
      if (CMTimeCompare(&minFrameDuration, &time2))
      {
        goto LABEL_13;
      }

      validFrameDurations = self->_validFrameDurations;
      if (validFrameDurations == [equal validFrameDurations])
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = -[NSArray isEqual:](self->_validFrameDurations, "isEqual:", [equal validFrameDurations]);
      }
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionStreamFormat allocWithZone:zone];
  formatDescription = self->_formatDescription;
  validFrameDurations = self->_validFrameDurations;
  maxFrameDuration = self->_maxFrameDuration;
  minFrameDuration = self->_minFrameDuration;
  return [(CMIOExtensionStreamFormat *)v4 initWithFormatDescription:formatDescription maxFrameDuration:&maxFrameDuration minFrameDuration:&minFrameDuration validFrameDurations:validFrameDurations];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  copyXPCDictionary = [(CMIOExtensionStreamFormat *)self copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v6 = copyXPCDictionary;
    [coder encodeXPCObject:copyXPCDictionary forKey:@"streamFormat"];

    xpc_release(v6);
  }

  else
  {
    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionStreamFormat encodeWithCoder:];
    }
  }
}

- (CMIOExtensionStreamFormat)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  v5 = [coder decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"streamFormat"];
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ nil xpc object", self}];
  }

  return [(CMIOExtensionStreamFormat *)self initWithXPCDictionary:v5];
}

- (id)copyXPCDictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  MediaType = CMFormatDescriptionGetMediaType(self->_formatDescription);
  formatDescription = self->_formatDescription;
  if (MediaType == 1836415096)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDescription);
    Extensions = CMFormatDescriptionGetExtensions(self->_formatDescription);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v8, "muxtype", MediaSubType);
    if (Extensions)
    {
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC03E0]);
      if (Value)
      {
        v29 = 0;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 1061109567;
        CFStringGetCString(Value, &v16, 200, 0x8000100u);
        xpc_dictionary_set_string(v8, "vendor", &v16);
      }

      v10 = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC0310]);
      if (v10)
      {
        v29 = 0;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 1061109567;
        CFStringGetCString(v10, &v16, 200, 0x8000100u);
        xpc_dictionary_set_string(v8, "name", &v16);
      }
    }

    xpc_dictionary_set_value(v3, "muxFormatDescription", v8);
    xpc_release(v8);
  }

  else if (FigXPCMessageSetFormatDescription())
  {
    v11 = CMIOLog();
    if (v11)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionStreamFormat copyXPCDictionary];
      }
    }
  }

  xpc_dictionary_set_data(v3, "minFrameDuration", &self->_minFrameDuration, 0x18uLL);
  xpc_dictionary_set_data(v3, "maxFrameDuration", &self->_maxFrameDuration, 0x18uLL);
  validFrameDurations = self->_validFrameDurations;
  if (validFrameDurations)
  {
    if (cmio_XPCMessageSetCFArray(v3, "validFrameDurations", validFrameDurations))
    {
      v13 = CMIOLog();
      if (v13)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionStreamFormat copyXPCDictionary];
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CMIOExtensionStreamFormat)initWithXPCDictionary:(id)dictionary
{
  if (!dictionary)
  {

    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = @"nil xpc dictionary";
LABEL_16:
    [v9 raise:v10 format:v11];
    return 0;
  }

  formatDescriptionOut = 0;
  v33 = *MEMORY[0x277CC0898];
  v34 = *(MEMORY[0x277CC0898] + 16);
  v31 = v33;
  v32 = v34;
  length = 24;
  cf = 0;
  data = xpc_dictionary_get_data(dictionary, "minFrameDuration", &length);
  if (data)
  {
    v33 = *data;
    v34 = data[2];
  }

  v6 = xpc_dictionary_get_data(dictionary, "maxFrameDuration", &length);
  if (v6)
  {
    v31 = *v6;
    v32 = v6[2];
  }

  if (cmio_XPCMessageCopyCFArray(dictionary, "validFrameDurations", &cf))
  {
    v7 = CMIOLog();
    if (v7)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionStreamFormat initWithXPCDictionary:];
      }
    }
  }

  if (FigXPCMessageCopyFormatDescription())
  {
    v8 = CMIOLog();
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionStreamFormat initWithXPCDictionary:];
    }

    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = @"nil formatDescription";
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(dictionary, "muxFormatDescription");
  if (value)
  {
    v15 = value;
    int64 = xpc_dictionary_get_int64(value, "muxtype");
    v17 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    string = xpc_dictionary_get_string(v15, "vendor");
    if (string)
    {
      v20 = string;
    }

    else
    {
      v20 = "?";
    }

    v21 = CFStringCreateWithCString(v17, v20, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC03E0], v21);
    CFRelease(v21);
    v22 = xpc_dictionary_get_string(v15, "name");
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "?";
    }

    v24 = CFStringCreateWithCString(v17, v23, 0x8000100u);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC0310], v24);
    CFRelease(v24);
    CMMuxedFormatDescriptionCreate(v17, int64, Mutable, &formatDescriptionOut);
    CFRelease(Mutable);
  }

  v27 = v31;
  v28 = v32;
  v25 = v33;
  v26 = v34;
  v12 = [(CMIOExtensionStreamFormat *)self initWithFormatDescription:formatDescriptionOut maxFrameDuration:&v27 minFrameDuration:&v25 validFrameDurations:cf];
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

+ (id)copyXPCArrayFromFormats:(id)formats
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = xpc_array_create(0, 0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [formats countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(formats);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = CMIOLog();
          if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionStreamFormat copyXPCArrayFromFormats:];
          }

          goto LABEL_17;
        }

        copyXPCDictionary = [v9 copyXPCDictionary];
        if (!copyXPCDictionary)
        {
          v13 = CMIOLog();
          if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionStreamFormat copyXPCArrayFromFormats:];
          }

          goto LABEL_17;
        }

        v11 = copyXPCDictionary;
        xpc_array_append_value(v4, copyXPCDictionary);
        xpc_release(v11);
      }

      v6 = [formats countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)copyFormatsFromXPCArray:(id)array
{
  if (!array)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc array"];
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke;
  applier[3] = &unk_27885BFC0;
  applier[4] = v4;
  if (!xpc_array_apply(array, applier))
  {

    return 0;
  }

  return v4;
}

BOOL __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = CMIOLog();
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke_cold_1();
    }
  }

  return v4 != 0;
}

- (void)initWithFormatDescription:maxFrameDuration:minFrameDuration:validFrameDurations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyXPCDictionary
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

+ (void)copyXPCArrayFromFormats:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyXPCArrayFromFormats:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__CMIOExtensionStreamFormat_copyFormatsFromXPCArray___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

@end