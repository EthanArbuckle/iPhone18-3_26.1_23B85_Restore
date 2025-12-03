@interface CMIOExtensionPropertyState
+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value;
+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes;
+ (id)copyPropertyStatesFromXPCDictionary:(id)dictionary;
+ (id)copyXPCDictionaryFromPropertyStates:(id)states;
+ (id)copyXPCDictionaryFromPropertyValues:(id)values;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionPropertyState)initWithCoder:(id)coder;
- (CMIOExtensionPropertyState)initWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes;
- (CMIOExtensionPropertyState)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionPropertyState

+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value
{
  v3 = [objc_alloc(objc_opt_class()) initWithValue:value];

  return v3;
}

+ (CMIOExtensionPropertyState)propertyStateWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes
{
  v4 = [objc_alloc(objc_opt_class()) initWithValue:value attributes:attributes];

  return v4;
}

- (CMIOExtensionPropertyState)initWithValue:(id)value attributes:(CMIOExtensionPropertyAttributes *)attributes
{
  v15.receiver = self;
  v15.super_class = CMIOExtensionPropertyState;
  v6 = [(CMIOExtensionPropertyState *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_objectType = 0;
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectType = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectType = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectType = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objectType = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objectType = 6;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objectType = 7;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objectType = 8;
                }

                else
                {
                  v9 = CFGetTypeID(value);
                  if (v9 != CVPixelBufferGetTypeID())
                  {

                    v12 = MEMORY[0x277CBEAD8];
                    v13 = *MEMORY[0x277CBE660];
                    v14 = @"value argument must be a NSString or a NSData or a NSNumber or a CMIOExtensionStreamFormat";
                    goto LABEL_30;
                  }

                  objectType = 9;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    objectType = 1;
  }

  v7->_objectType = objectType;
  if (attributes)
  {
    if ([(CMIOExtensionPropertyAttributes *)attributes objectType]== 1)
    {
      objectType = v7->_objectType;
      goto LABEL_24;
    }

    objectType = [(CMIOExtensionPropertyAttributes *)attributes objectType];
    if (objectType == v7->_objectType)
    {
      goto LABEL_24;
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = @"value argument must be the same type";
LABEL_30:
    [v12 raise:v13 format:v14];
    return 0;
  }

LABEL_24:
  if (objectType == 9)
  {
    v10 = value;
  }

  else
  {
    v10 = [value copy];
  }

  v7->_value = v10;
  v7->_attributes = attributes;
  v7->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionPropertyState: value %@, attributes %@>", v7->_value, v7->_attributes];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionPropertyState;
  [(CMIOExtensionPropertyState *)&v3 dealloc];
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
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  value = self->_value;
  if (value == [equal value] || (v6 = objc_msgSend(self->_value, "isEqual:", objc_msgSend(equal, "value"))) != 0)
  {
    attributes = self->_attributes;
    if (attributes != [equal attributes])
    {
      v8 = self->_attributes;
      attributes = [equal attributes];

      LOBYTE(v6) = [(CMIOExtensionPropertyAttributes *)v8 isEqual:attributes];
      return v6;
    }

LABEL_9:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionPropertyState allocWithZone:zone];
  value = self->_value;
  attributes = self->_attributes;

  return [(CMIOExtensionPropertyState *)v4 initWithValue:value attributes:attributes];
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  if (value)
  {
    [coder encodeObject:value forKey:@"value"];
  }

  if (self->_attributes)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (CMIOExtensionPropertyState)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"value"}];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];

  return [(CMIOExtensionPropertyState *)self initWithValue:v11 attributes:v12];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "type", self->_objectType);
  attributes = self->_attributes;
  if (attributes)
  {
    copyXPCDictionary = [(CMIOExtensionPropertyAttributes *)attributes copyXPCDictionary];
    if (copyXPCDictionary)
    {
      v6 = copyXPCDictionary;
      xpc_dictionary_set_value(v3, "attributes", copyXPCDictionary);
      xpc_release(v6);
    }

    else
    {
      v7 = CMIOLog();
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionPropertyState copyXPCDictionary];
      }
    }
  }

  objectType = self->_objectType;
  if (objectType > 4)
  {
    if (objectType <= 6)
    {
      if (objectType != 5)
      {
        value = self->_value;
        if (value)
        {
          if (cmio_XPCMessageSetCFDictionary(v3, "value", value))
          {
            v21 = CMIOLog();
            if (v21)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState copyXPCDictionary];
              }
            }
          }
        }

        return v3;
      }

      v24 = self->_value;
      if (!v24)
      {
        return v3;
      }

      copyXPCDictionary2 = [v24 copyXPCDictionary];
      if (!copyXPCDictionary2)
      {
        v26 = CMIOLog();
        if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState copyXPCDictionary];
        }

        return v3;
      }
    }

    else
    {
      if (objectType == 7)
      {
        v27 = self->_value;
        if (v27)
        {
          if ([v27 count])
          {
            if (cmio_XPCMessageSetCFArray(v3, "value", v27))
            {
              v28 = CMIOLog();
              if (v28)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  [CMIOExtensionPropertyState copyXPCDictionary];
                }
              }
            }
          }
        }

        return v3;
      }

      if (objectType != 8)
      {
        if (objectType != 9)
        {
          goto LABEL_58;
        }

        v11 = self->_value;
        if (!v11)
        {
          return v3;
        }

        empty = xpc_dictionary_create_empty();
        if (!empty)
        {
          v31 = CMIOLog();
          if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }

          return v3;
        }

        v13 = empty;
        IOSurface = CVPixelBufferGetIOSurface(v11);
        if (!IOSurface)
        {
          v33 = CMIOLog();
          if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }

          goto LABEL_57;
        }

        XPCObject = IOSurfaceCreateXPCObject(IOSurface);
        xpc_dictionary_set_value(v13, "surface", XPCObject);
        xpc_release(XPCObject);
        v16 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], v11, 1u);
        if (v16)
        {
          v17 = v16;
          cmio_XPCMessageSetCFDictionary(v13, "attachments", v16);
          CFRelease(v17);
        }

LABEL_56:
        xpc_dictionary_set_value(v3, "value", v13);
LABEL_57:
        xpc_release(v13);
        return v3;
      }

      v29 = self->_value;
      if (!v29)
      {
        return v3;
      }

      copyXPCDictionary2 = [v29 copyXPCDictionary];
      if (!copyXPCDictionary2)
      {
        v32 = CMIOLog();
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState copyXPCDictionary];
        }

        return v3;
      }
    }

    v13 = copyXPCDictionary2;
    goto LABEL_56;
  }

  if (objectType <= 2)
  {
    if (objectType < 2)
    {
      return v3;
    }

    if (objectType == 2)
    {
      v9 = self->_value;
      if (v9)
      {
        if (cmio_XPCMessageSetCFData(v3, "value", v9))
        {
          v10 = CMIOLog();
          if (v10)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState copyXPCDictionary];
            }
          }
        }
      }

      return v3;
    }

LABEL_58:
    xpc_release(v3);
    return 0;
  }

  if (objectType == 3)
  {
    v22 = self->_value;
    if (v22)
    {
      if (cmio_XPCMessageSetCFNumber(v3, "value", v22))
      {
        v23 = CMIOLog();
        if (v23)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }
        }
      }
    }
  }

  else
  {
    v18 = self->_value;
    if (v18)
    {
      if (cmio_XPCMessageSetCFString(v3, "value", v18))
      {
        v19 = CMIOLog();
        if (v19)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState copyXPCDictionary];
          }
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionPropertyState)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v33 = 0;
    uint64 = xpc_dictionary_get_uint64(dictionary, "type");
    dictionary = xpc_dictionary_get_dictionary(dictionary, "attributes");
    if (dictionary)
    {
      dictionary = [[CMIOExtensionPropertyAttributes alloc] initWithXPCDictionary:dictionary];
      if (!dictionary)
      {
        v7 = CMIOLog();
        dictionary = v7;
        if (v7)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyState initWithXPCDictionary:];
          }

          dictionary = 0;
        }
      }
    }

    if (uint64 > 5)
    {
      if (uint64 <= 7)
      {
        if (uint64 == 6)
        {
          if (cmio_XPCMessageCopyCFDictionary(dictionary, "value", &v33))
          {
            v21 = CMIOLog();
            if (v21)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        else if (cmio_XPCMessageCopyCFArray(dictionary, "value", &v33))
        {
          v10 = CMIOLog();
          if (v10)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState initWithXPCDictionary:];
            }
          }
        }

        goto LABEL_50;
      }

      if (uint64 != 8)
      {
        if (uint64 == 9)
        {
          value = xpc_dictionary_get_value(dictionary, "value");
          if (value)
          {
            v15 = value;
            v16 = xpc_dictionary_get_value(value, "surface");
            if (v16)
            {
              v17 = IOSurfaceLookupFromXPCObject(v16);
              if (v17)
              {
                v18 = v17;
                pixelBufferOut = 0;
                v19 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v17, 0, &pixelBufferOut);
                CFRelease(v18);
                if (v19 || !pixelBufferOut)
                {
                  if (pixelBufferOut)
                  {
                    CFRelease(pixelBufferOut);
                  }

                  v30 = CMIOLog();
                  if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    [CMIOExtensionPropertyState initWithXPCDictionary:];
                  }
                }

                else
                {
                  v33 = pixelBufferOut;
                  theAttachments = 0;
                  cmio_XPCMessageCopyCFDictionary(v15, "attachments", &theAttachments);
                  if (theAttachments)
                  {
                    CMSetAttachments(pixelBufferOut, theAttachments, 1u);
                    CFRelease(theAttachments);
                  }
                }
              }

              else
              {
                v29 = CMIOLog();
                if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  [CMIOExtensionPropertyState initWithXPCDictionary:];
                }
              }
            }

            else
            {
              v28 = CMIOLog();
              if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }

          else
          {
            v27 = CMIOLog();
            if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState initWithXPCDictionary:];
            }
          }
        }

        goto LABEL_50;
      }

      v23 = xpc_dictionary_get_value(dictionary, "value");
      if (!v23)
      {
        v25 = CMIOLog();
        if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState initWithXPCDictionary:];
        }

        goto LABEL_50;
      }

      v12 = v23;
      v13 = CMIOExtensionStreamCustomClockConfiguration;
    }

    else
    {
      if (uint64 <= 3)
      {
        if (uint64 == 2)
        {
          if (cmio_XPCMessageCopyCFData(dictionary, "value", &v33))
          {
            v20 = CMIOLog();
            if (v20)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        else if (uint64 == 3)
        {
          if (cmio_XPCMessageCopyCFNumber(dictionary, "value", &v33))
          {
            v8 = CMIOLog();
            if (v8)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyState initWithXPCDictionary:];
              }
            }
          }
        }

        goto LABEL_50;
      }

      if (uint64 == 4)
      {
        if (cmio_XPCMessageCopyCFString(dictionary, "value", &v33))
        {
          v22 = CMIOLog();
          if (v22)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyState initWithXPCDictionary:];
            }
          }
        }

        goto LABEL_50;
      }

      v11 = xpc_dictionary_get_value(dictionary, "value");
      if (!v11)
      {
        v26 = CMIOLog();
        if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionPropertyState initWithXPCDictionary:];
        }

        goto LABEL_50;
      }

      v12 = v11;
      v13 = CMIOExtensionStreamFormat;
    }

    v33 = [[v13 alloc] initWithXPCDictionary:v12];
LABEL_50:
    v9 = [(CMIOExtensionPropertyState *)self initWithValue:v33 attributes:dictionary];

    return v9;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
  return 0;
}

+ (id)copyXPCDictionaryFromPropertyStates:(id)states
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke;
  v6[3] = &unk_27885BF70;
  v6[4] = v4;
  [states enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 copyXPCDictionary];
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(*(a1 + 32), [a2 UTF8String], v5);

    xpc_release(v6);
  }

  else
  {
    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke_cold_1();
    }
  }
}

+ (id)copyXPCDictionaryFromPropertyValues:(id)values
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke;
  v6[3] = &unk_27885B850;
  v6[4] = v4;
  [values enumerateKeysAndObjectsUsingBlock:v6];
  return v4;
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [[CMIOExtensionPropertyState alloc] initWithValue:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [(CMIOExtensionPropertyState *)v5 copyXPCDictionary];
    if (v7)
    {
      v8 = v7;
      xpc_dictionary_set_value(*(a1 + 32), [a2 UTF8String], v7);
      xpc_release(v8);
    }

    else
    {
      v10 = CMIOLog();
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v9 = CMIOLog();
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_2();
    }
  }
}

+ (id)copyPropertyStatesFromXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke;
    applier[3] = &unk_27885BF98;
    applier[4] = v4;
    xpc_dictionary_apply(dictionary, applier);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v4;
}

uint64_t __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[CMIOExtensionPropertyState alloc] initWithXPCDictionary:a3];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a2)}];
  }

  else
  {
    v7 = CMIOLog();
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke_cold_1();
    }
  }

  return 1;
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
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyStates___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionPropertyState_copyXPCDictionaryFromPropertyValues___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__CMIOExtensionPropertyState_copyPropertyStatesFromXPCDictionary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

@end