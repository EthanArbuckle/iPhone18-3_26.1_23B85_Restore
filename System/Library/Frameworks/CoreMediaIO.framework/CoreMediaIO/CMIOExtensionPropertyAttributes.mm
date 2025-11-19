@interface CMIOExtensionPropertyAttributes
+ (CMIOExtensionPropertyAttributes)propertyAttributesWithSharedStreamDefaultValue:(id)a3 minValue:(id)a4 maxValue:(id)a5 validValues:(id)a6;
+ (CMIOExtensionPropertyAttributes)readOnlyPropertyAttribute;
- (BOOL)isEqual:(id)a3;
- (CMIOExtensionPropertyAttributes)initWithCoder:(id)a3;
- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)a3 maxValue:(id)a4 validValues:(id)a5 sharedStreamDefaultValue:(id)a6;
- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly;
- (CMIOExtensionPropertyAttributes)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMIOExtensionPropertyAttributes

+ (CMIOExtensionPropertyAttributes)propertyAttributesWithSharedStreamDefaultValue:(id)a3 minValue:(id)a4 maxValue:(id)a5 validValues:(id)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithMinValue:a4 maxValue:a5 validValues:a6 sharedStreamDefaultValue:a3];

  return v6;
}

- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)a3 maxValue:(id)a4 validValues:(id)a5 sharedStreamDefaultValue:(id)a6
{
  result = [(CMIOExtensionPropertyAttributes *)self initWithMinValue:a3 maxValue:a4 validValues:a5 readOnly:0];
  if (result)
  {
    result->_sharedStreamDefaultValue = a6;
  }

  return result;
}

- (CMIOExtensionPropertyAttributes)initWithMinValue:(id)minValue maxValue:(id)maxValue validValues:(NSArray *)validValues readOnly:(BOOL)readOnly
{
  v25.receiver = self;
  v25.super_class = CMIOExtensionPropertyAttributes;
  v10 = [(CMIOExtensionPropertyAttributes *)&v25 init];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  v10->_sharedStreamDefaultValue = 0;
  if (minValue)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = 6;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_64;
              }

              v12 = 7;
            }
          }
        }
      }
    }

    objectType = v11->_objectType;
    if (objectType)
    {
      if (objectType != v12)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ value argument must be the same type", v11}];
      }
    }

    else
    {
      v11->_objectType = v12;
    }

    v11->_minValue = [minValue copy];
  }

  if (maxValue)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = 6;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_64;
              }

              v14 = 7;
            }
          }
        }
      }
    }

    v15 = v11->_objectType;
    if (v15)
    {
      if (v15 != v14)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v11->_objectType = v14;
    }

    v11->_maxValue = [maxValue copy];
  }

  if (validValues)
  {
    if (![(NSArray *)validValues count])
    {
LABEL_57:
      v11->_validValues = [(NSArray *)validValues copy];
      goto LABEL_58;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 4;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 2;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 3;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 5;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 6;
      goto LABEL_52;
    }

    [(NSArray *)validValues objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 7;
LABEL_52:
      v17 = v11->_objectType;
      if (v17)
      {
        if (v17 != v16)
        {
LABEL_54:

          v18 = MEMORY[0x277CBEAD8];
          v19 = *MEMORY[0x277CBE660];
          v20 = @"value argument must be the same type";
LABEL_55:
          [v18 raise:v19 format:v20];
          return 0;
        }
      }

      else
      {
        v11->_objectType = v16;
      }

      goto LABEL_57;
    }

LABEL_64:

    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE660];
    v20 = @"value argument must be a NSString or a NSData or a NSNumber or a CMIOExtensionStreamFormat or a NSDictionary or a NSArray";
    goto LABEL_55;
  }

LABEL_58:
  if (!v11->_objectType)
  {
    v11->_objectType = 1;
  }

  v11->_readOnly = readOnly;
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = v11->_validValues;
  v23 = 78;
  if (v11->_readOnly)
  {
    v23 = 89;
  }

  v11->_description = [v21 initWithFormat:@"<CMIOExtensionPropertyAttributes: %@:%@:%@:(%c)>", *&v11->_minValue, v11->_validValues, v23];
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionPropertyAttributes;
  [(CMIOExtensionPropertyAttributes *)&v3 dealloc];
}

+ (CMIOExtensionPropertyAttributes)readOnlyPropertyAttribute
{
  if (readOnlyPropertyAttribute_onceToken != -1)
  {
    +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute];
  }

  return readOnlyPropertyAttribute_gReadOnlyAttribute;
}

CMIOExtensionPropertyAttributes *__60__CMIOExtensionPropertyAttributes_readOnlyPropertyAttribute__block_invoke()
{
  result = [[CMIOExtensionPropertyAttributes alloc] initWithMinValue:0 maxValue:0 validValues:0 readOnly:1];
  readOnlyPropertyAttribute_gReadOnlyAttribute = result;
  return result;
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minValue = self->_minValue;
      if (minValue == [a3 minValue] || (v12 = objc_msgSend(self->_minValue, "isEqual:", objc_msgSend(a3, "minValue"))) != 0)
      {
        maxValue = self->_maxValue;
        if (maxValue == [a3 maxValue] || (v12 = objc_msgSend(self->_maxValue, "isEqual:", objc_msgSend(a3, "maxValue"))) != 0)
        {
          validValues = self->_validValues;
          if (validValues == [a3 validValues] || (v12 = -[NSArray isEqual:](self->_validValues, "isEqual:", objc_msgSend(a3, "validValues"))) != 0)
          {
            readOnly = self->_readOnly;
            LOBYTE(v12) = readOnly == [a3 isReadOnly];
          }
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CMIOExtensionPropertyAttributes allocWithZone:a3];
  minValue = self->_minValue;
  maxValue = self->_maxValue;
  validValues = self->_validValues;
  readOnly = self->_readOnly;

  return [(CMIOExtensionPropertyAttributes *)v4 initWithMinValue:minValue maxValue:maxValue validValues:validValues readOnly:readOnly];
}

- (void)encodeWithCoder:(id)a3
{
  minValue = self->_minValue;
  if (minValue)
  {
    [a3 encodeObject:minValue forKey:@"min"];
  }

  maxValue = self->_maxValue;
  if (maxValue)
  {
    [a3 encodeObject:maxValue forKey:@"max"];
  }

  validValues = self->_validValues;
  if (validValues)
  {
    [a3 encodeObject:validValues forKey:@"validValues"];
  }

  readOnly = self->_readOnly;

  [a3 encodeBool:readOnly forKey:@"readonly"];
}

- (CMIOExtensionPropertyAttributes)initWithCoder:(id)a3
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [a3 decodeObjectOfClasses:v11 forKey:@"min"];
  v13 = [a3 decodeObjectOfClasses:v11 forKey:@"max"];
  v14 = [a3 decodeObjectOfClasses:v11 forKey:@"validValues"];
  v15 = [a3 decodeBoolForKey:@"readonly"];

  return [(CMIOExtensionPropertyAttributes *)self initWithMinValue:v12 maxValue:v13 validValues:v14 readOnly:v15];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "type", self->_objectType);
  xpc_dictionary_set_BOOL(v3, "readonly", self->_readOnly);
  objectType = self->_objectType;
  if (objectType > 3)
  {
    if (objectType > 5)
    {
      if (objectType == 6)
      {
        minValue = self->_minValue;
        if (minValue)
        {
          if (cmio_XPCMessageSetCFDictionary(v3, "min", minValue))
          {
            v27 = CMIOLog();
            if (v27)
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        maxValue = self->_maxValue;
        if (maxValue)
        {
          if (cmio_XPCMessageSetCFDictionary(v3, "max", maxValue))
          {
            v29 = CMIOLog();
            if (v29)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        validValues = self->_validValues;
        if (validValues)
        {
          if (cmio_XPCMessageSetCFArray(v3, "validValues", validValues))
          {
            v31 = CMIOLog();
            if (v31)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }
      }

      else
      {
        if (objectType != 7)
        {
          goto LABEL_87;
        }

        v14 = self->_minValue;
        if (v14)
        {
          if (cmio_XPCMessageSetCFArray(v3, "min", v14))
          {
            v15 = CMIOLog();
            if (v15)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v16 = self->_maxValue;
        if (v16)
        {
          if (cmio_XPCMessageSetCFArray(v3, "max", v16))
          {
            v17 = CMIOLog();
            if (v17)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v18 = self->_validValues;
        if (v18)
        {
          if (cmio_XPCMessageSetCFArray(v3, "validValues", v18))
          {
            v19 = CMIOLog();
            if (v19)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }
      }
    }

    else if (objectType == 4)
    {
      v20 = self->_minValue;
      if (v20)
      {
        if (cmio_XPCMessageSetCFString(v3, "min", v20))
        {
          v21 = CMIOLog();
          if (v21)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }

      v22 = self->_maxValue;
      if (v22)
      {
        if (cmio_XPCMessageSetCFString(v3, "max", v22))
        {
          v23 = CMIOLog();
          if (v23)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }

      v24 = self->_validValues;
      if (v24)
      {
        if (cmio_XPCMessageSetCFArray(v3, "validValues", v24))
        {
          v25 = CMIOLog();
          if (v25)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionPropertyAttributes copyXPCDictionary];
            }
          }
        }
      }
    }

    else
    {
      v11 = self->_minValue;
      if (v11)
      {
        v12 = [v11 copyXPCDictionary];
        if (v12)
        {
          v13 = v12;
          xpc_dictionary_set_value(v3, "min", v12);
          xpc_release(v13);
        }

        else
        {
          v38 = CMIOLog();
          if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }

      v39 = self->_maxValue;
      if (v39)
      {
        v40 = [v39 copyXPCDictionary];
        if (v40)
        {
          v41 = v40;
          xpc_dictionary_set_value(v3, "max", v40);
          xpc_release(v41);
        }

        else
        {
          v42 = CMIOLog();
          if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }

      if (self->_validValues)
      {
        v43 = [CMIOExtensionStreamFormat copyXPCArrayFromFormats:?];
        if (v43)
        {
          v44 = v43;
          xpc_dictionary_set_value(v3, "validValues", v43);
          xpc_release(v44);
        }
      }
    }
  }

  else
  {
    if (objectType < 2)
    {
      return v3;
    }

    if (objectType != 2)
    {
      if (objectType == 3)
      {
        v5 = self->_minValue;
        if (v5)
        {
          if (cmio_XPCMessageSetCFNumber(v3, "min", v5))
          {
            v6 = CMIOLog();
            if (v6)
            {
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v7 = self->_maxValue;
        if (v7)
        {
          if (cmio_XPCMessageSetCFNumber(v3, "max", v7))
          {
            v8 = CMIOLog();
            if (v8)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        v9 = self->_validValues;
        if (v9)
        {
          if (cmio_XPCMessageSetCFArray(v3, "validValues", v9))
          {
            v10 = CMIOLog();
            if (v10)
            {
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes copyXPCDictionary];
              }
            }
          }
        }

        return v3;
      }

LABEL_87:
      xpc_release(v3);
      return 0;
    }

    v32 = self->_minValue;
    if (v32)
    {
      if (cmio_XPCMessageSetCFData(v3, "min", v32))
      {
        v33 = CMIOLog();
        if (v33)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }

    v34 = self->_maxValue;
    if (v34)
    {
      if (cmio_XPCMessageSetCFData(v3, "max", v34))
      {
        v35 = CMIOLog();
        if (v35)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }

    v36 = self->_validValues;
    if (v36)
    {
      if (cmio_XPCMessageSetCFArray(v3, "validValues", v36))
      {
        v37 = CMIOLog();
        if (v37)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionPropertyAttributes copyXPCDictionary];
          }
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionPropertyAttributes)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    uint64 = xpc_dictionary_get_uint64(a3, "type");
    v6 = xpc_dictionary_get_BOOL(a3, "readonly");
    if (uint64 > 4)
    {
      switch(uint64)
      {
        case 5:
          value = xpc_dictionary_get_value(a3, "min");
          if (value)
          {
            v29 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:value];
          }

          v18 = xpc_dictionary_get_value(a3, "max");
          if (v18)
          {
            v28 = [[CMIOExtensionStreamFormat alloc] initWithXPCDictionary:v18];
          }

          v19 = xpc_dictionary_get_value(a3, "validValues");
          if (v19)
          {
            v27 = [CMIOExtensionStreamFormat copyFormatsFromXPCArray:v19];
          }

          break;
        case 6:
          if (cmio_XPCMessageCopyCFDictionary(a3, "min", &v29))
          {
            v23 = CMIOLog();
            if (v23)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFDictionary(a3, "max", &v28))
          {
            v24 = CMIOLog();
            if (v24)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "validValues", &v27))
          {
            v25 = CMIOLog();
            if (v25)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 7:
          if (cmio_XPCMessageCopyCFArray(a3, "min", &v29))
          {
            v11 = CMIOLog();
            if (v11)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "max", &v28))
          {
            v12 = CMIOLog();
            if (v12)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "validValues", &v27))
          {
            v13 = CMIOLog();
            if (v13)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
      }
    }

    else
    {
      switch(uint64)
      {
        case 2:
          if (cmio_XPCMessageCopyCFData(a3, "min", &v29))
          {
            v14 = CMIOLog();
            if (v14)
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFData(a3, "max", &v28))
          {
            v15 = CMIOLog();
            if (v15)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "validValues", &v27))
          {
            v16 = CMIOLog();
            if (v16)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 3:
          if (cmio_XPCMessageCopyCFNumber(a3, "min", &v29))
          {
            v20 = CMIOLog();
            if (v20)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFNumber(a3, "max", &v28))
          {
            v21 = CMIOLog();
            if (v21)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "validValues", &v27))
          {
            v22 = CMIOLog();
            if (v22)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
        case 4:
          if (cmio_XPCMessageCopyCFString(a3, "min", &v29))
          {
            v7 = CMIOLog();
            if (v7)
            {
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFString(a3, "max", &v28))
          {
            v8 = CMIOLog();
            if (v8)
            {
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          if (cmio_XPCMessageCopyCFArray(a3, "validValues", &v27))
          {
            v9 = CMIOLog();
            if (v9)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                [CMIOExtensionPropertyAttributes initWithXPCDictionary:];
              }
            }
          }

          break;
      }
    }

    v10 = [(CMIOExtensionPropertyAttributes *)self initWithMinValue:v29 maxValue:v28 validValues:v27 readOnly:v6];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v10;
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

- (void)initWithXPCDictionary:.cold.9()
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

- (void)initWithXPCDictionary:.cold.10()
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

- (void)initWithXPCDictionary:.cold.11()
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

- (void)initWithXPCDictionary:.cold.12()
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

- (void)initWithXPCDictionary:.cold.13()
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

- (void)initWithXPCDictionary:.cold.14()
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

- (void)initWithXPCDictionary:.cold.15()
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

@end