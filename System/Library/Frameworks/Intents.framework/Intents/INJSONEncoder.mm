@interface INJSONEncoder
- (INJSONEncoder)init;
- (INJSONEncoder)initWithConfiguration:(id)a3;
- (INJSONEncoderConfiguration)configuration;
- (id)_encodeObject:(id)a3 codableAttribute:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeObject:(id)a3 withCodableAttribute:(id)a4;
- (id)encodeObject:(id)a3 withCodableDescription:(id)a4;
@end

@implementation INJSONEncoder

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [INJSONEncoder alloc];
  configuration = self->_configuration;

  return [(INJSONEncoder *)v4 initWithConfiguration:configuration];
}

- (id)_encodeObject:(id)a3 codableAttribute:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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
      v21 = v6;
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

      v14 = [(INJSONEncoder *)self encodeObject:v23];
    }

    else
    {
      v14 = v6;
    }

    goto LABEL_59;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
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

      v41 = [v20 codableDescription];
      v42 = [v41 _nullable_schema];
      v28 = [v42 _objectDescriptionForTypeOfClass:objc_opt_class()];

      if (v28)
      {
        v43 = v28;
      }

      else
      {
        v43 = [v20 codableDescription];
      }

      v44 = v43;
      v14 = [(INJSONEncoder *)self encodeObject:v6 withCodableDescription:v43];

LABEL_58:
LABEL_59:

      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = +[INSchema systemSchema];
          v25 = [v24 _types];
          v26 = [v20 typeName];
          v27 = INIntentDefinitionNamespacedName(@"System", v26);
          v28 = [v25 objectForKeyedSubscript:v27];
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

      v14 = [(INJSONEncoder *)self encodeObject:v6 withCodableDescription:v28];
      goto LABEL_58;
    }

LABEL_32:
    v14 = 0;
    goto LABEL_60;
  }

  v10 = v6;
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

  v14 = 0;
  if (isKindOfClass)
  {
    v15 = [v10 integerValue];
    v16 = v7;
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

    v30 = [v29 codableEnum];
    if ([v30 type] == 2)
    {
      v48 = v29;
      v49 = v13;
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = v30;
      v32 = [v30 values];
      v33 = [v32 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v50 + 1) + 8 * i);
            if ((v15 >> [v37 index]))
            {
              v38 = [v37 name];

              if (v38)
              {
                v39 = [v37 name];
                [v31 addObject:v39];
              }
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v34);
      }

      v14 = [v31 copy];
      v29 = v48;
      v13 = v49;
      v30 = v47;
    }

    else
    {
      v40 = [v29 valueForIndex:v15];
      v14 = [v40 name];
    }
  }

LABEL_60:
  v45 = *MEMORY[0x1E69E9840];

  return v14;
}

- (INJSONEncoderConfiguration)configuration
{
  v2 = [(INJSONEncoderConfiguration *)self->_configuration copy];

  return v2;
}

- (id)encodeObject:(id)a3 withCodableAttribute:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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

          v15 = [(INJSONEncoder *)self _encodeObject:*(*(&v19 + 1) + 8 * i) codableAttribute:v7, v19];
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

    v16 = [(INJSONEncoder *)self _encodeObject:v8 codableAttribute:v7];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)encodeObject:(id)a3 withCodableDescription:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && [v5 conformsToProtocol:&unk_1F02E9CC0] && (objc_opt_respondsToSelector())
  {
    v7 = [v5 _intents_encodeWithJSONEncoder:self codableDescription:v6];
    goto LABEL_28;
  }

  if (!v6)
  {
    v8 = +[INSchema systemSchema];
    v6 = [v8 _objectDescriptionForTypeOfClass:objc_opt_class()];

    if (!v6)
    {
      if ([v5 conformsToProtocol:&unk_1F02E9CC0] & 1) != 0 || (objc_opt_respondsToSelector())
      {
        v7 = [v5 _intents_encodeWithJSONEncoder:self codableDescription:0];
        v6 = 0;
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

      v6 = 0;
      goto LABEL_27;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v6;
  v10 = [v6 attributes];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v16 propertyName];
        if (([v17 hasPrefix:@"_"] & 1) == 0 && objc_msgSend(v5, "_intents_isValidKey:", v17))
        {
          v18 = [v5 valueForKey:v17];
          v19 = [(INJSONEncoder *)self encodeObject:v18 withCodableAttribute:v16];
          [v9 if_setObjectIfNonNil:v19 forKey:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v6 = v27;
  v20 = [v27 semanticRoot];
  if (v20)
  {
    [v9 setObject:v20 forKey:@"_type"];
  }

  v7 = [v9 copy];

LABEL_28:
  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

- (INJSONEncoder)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INJSONEncoder;
  v5 = [(INJSONEncoder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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