@interface INJSONEncoder
- (INJSONEncoder)init;
- (INJSONEncoder)initWithConfiguration:(id)configuration;
- (INJSONEncoderConfiguration)configuration;
- (id)_encodeObject:(id)object codableAttribute:(id)attribute;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeObject:(id)object withCodableAttribute:(id)attribute;
- (id)encodeObject:(id)object withCodableDescription:(id)description;
@end

@implementation INJSONEncoder

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [INJSONEncoder alloc];
  configuration = self->_configuration;

  return [(INJSONEncoder *)v4 initWithConfiguration:configuration];
}

- (id)_encodeObject:(id)object codableAttribute:(id)attribute
{
  v55 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  attributeCopy = attribute;
  if (!objectCopy)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = attributeCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v20 = v9;

    if ([v20 type] == 8 || objc_msgSend(v20, "type") == 7)
    {
      v21 = objectCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      name3 = [(INJSONEncoder *)self encodeObject:v23];
    }

    else
    {
      name3 = objectCopy;
    }

    goto LABEL_59;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = attributeCopy;
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      codableDescription = [v20 codableDescription];
      _nullable_schema = [codableDescription _nullable_schema];
      v28 = [_nullable_schema _objectDescriptionForTypeOfClass:objc_opt_class()];

      if (v28)
      {
        codableDescription2 = v28;
      }

      else
      {
        codableDescription2 = [v20 codableDescription];
      }

      v44 = codableDescription2;
      name3 = [(INJSONEncoder *)self encodeObject:objectCopy withCodableDescription:codableDescription2];

LABEL_58:
LABEL_59:

      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = attributeCopy;
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = +[INSchema systemSchema];
          _types = [v24 _types];
          typeName = [v20 typeName];
          v27 = INIntentDefinitionNamespacedName(@"System", typeName);
          v28 = [_types objectForKeyedSubscript:v27];
        }

        else
        {
          v28 = 0;
          v24 = v20;
          v20 = 0;
        }
      }

      else
      {
        v24 = 0;
        v28 = 0;
      }

      name3 = [(INJSONEncoder *)self encodeObject:objectCopy withCodableDescription:v28];
      goto LABEL_58;
    }

LABEL_32:
    name3 = 0;
    goto LABEL_60;
  }

  v10 = objectCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  name3 = 0;
  if (isKindOfClass)
  {
    integerValue = [v10 integerValue];
    v16 = attributeCopy;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v29 = v17;

    codableEnum = [v29 codableEnum];
    if ([codableEnum type] == 2)
    {
      v48 = v29;
      v49 = v13;
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = codableEnum;
      values = [codableEnum values];
      v33 = [values countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(values);
            }

            v37 = *(*(&v50 + 1) + 8 * i);
            if ((integerValue >> [v37 index]))
            {
              name = [v37 name];

              if (name)
              {
                name2 = [v37 name];
                [v31 addObject:name2];
              }
            }
          }

          v34 = [values countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v34);
      }

      name3 = [v31 copy];
      v29 = v48;
      v13 = v49;
      codableEnum = v47;
    }

    else
    {
      v40 = [v29 valueForIndex:integerValue];
      name3 = [v40 name];
    }
  }

LABEL_60:
  v45 = *MEMORY[0x1E69E9840];

  return name3;
}

- (INJSONEncoderConfiguration)configuration
{
  v2 = [(INJSONEncoderConfiguration *)self->_configuration copy];

  return v2;
}

- (id)encodeObject:(id)object withCodableAttribute:(id)attribute
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  attributeCopy = attribute;
  v8 = objectCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(INJSONEncoder *)self _encodeObject:*(*(&v19 + 1) + 8 * i) codableAttribute:attributeCopy, v19];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
  }

  else
  {

    v16 = [(INJSONEncoder *)self _encodeObject:v8 codableAttribute:attributeCopy];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)encodeObject:(id)object withCodableDescription:(id)description
{
  v38 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  if (!objectCopy)
  {
LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && [objectCopy conformsToProtocol:&unk_1F02E9CC0] && (objc_opt_respondsToSelector())
  {
    v7 = [objectCopy _intents_encodeWithJSONEncoder:self codableDescription:descriptionCopy];
    goto LABEL_28;
  }

  if (!descriptionCopy)
  {
    v8 = +[INSchema systemSchema];
    descriptionCopy = [v8 _objectDescriptionForTypeOfClass:objc_opt_class()];

    if (!descriptionCopy)
    {
      if ([objectCopy conformsToProtocol:&unk_1F02E9CC0] & 1) != 0 || (objc_opt_respondsToSelector())
      {
        v7 = [objectCopy _intents_encodeWithJSONEncoder:self codableDescription:0];
        descriptionCopy = 0;
        goto LABEL_28;
      }

      v21 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v24 = v21;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 136315394;
        v35 = "[INJSONEncoder encodeObject:withCodableDescription:]";
        v36 = 2112;
        v37 = v26;
        _os_log_error_impl(&dword_18E991000, v24, OS_LOG_TYPE_ERROR, "%s %@ is not JSON encodable", buf, 0x16u);
      }

      descriptionCopy = 0;
      goto LABEL_27;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = descriptionCopy;
  attributes = [descriptionCopy attributes];
  allValues = [attributes allValues];

  v12 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        propertyName = [v16 propertyName];
        if (([propertyName hasPrefix:@"_"] & 1) == 0 && objc_msgSend(objectCopy, "_intents_isValidKey:", propertyName))
        {
          v18 = [objectCopy valueForKey:propertyName];
          v19 = [(INJSONEncoder *)self encodeObject:v18 withCodableAttribute:v16];
          [v9 if_setObjectIfNonNil:v19 forKey:propertyName];
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  descriptionCopy = v27;
  semanticRoot = [v27 semanticRoot];
  if (semanticRoot)
  {
    [v9 setObject:semanticRoot forKey:@"_type"];
  }

  v7 = [v9 copy];

LABEL_28:
  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

- (INJSONEncoder)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = INJSONEncoder;
  v5 = [(INJSONEncoder *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (INJSONEncoder)init
{
  v3 = objc_alloc_init(INJSONEncoderConfiguration);
  v4 = [(INJSONEncoder *)self initWithConfiguration:v3];

  return v4;
}

@end