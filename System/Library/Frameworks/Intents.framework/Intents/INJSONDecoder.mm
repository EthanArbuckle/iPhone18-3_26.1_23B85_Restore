@interface INJSONDecoder
- (id)_decodeObjectOfClass:(Class)a3 withCodableDescription:(id)a4 from:(id)a5 outCodableDescription:(id *)a6;
- (id)_decodeWithCodableAttribute:(id)a3 from:(id)a4;
- (id)decodeObjectsOfClass:(Class)a3 from:(id)a4;
- (id)decodeWithCodableAttribute:(id)a3 from:(id)a4;
- (void)decodeObject:(id)a3 withCodableDescription:(id)a4 from:(id)a5;
@end

@implementation INJSONDecoder

- (id)_decodeWithCodableAttribute:(id)a3 from:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
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

    v14 = v9;

    if ([v14 type] == 8 || objc_msgSend(v14, "type") == 7)
    {
      v15 = [(INJSONDecoder *)self decodeObjectOfClass:objc_opt_class() from:v7];
    }

    else
    {
      v15 = v7;
    }

    v18 = v15;
LABEL_27:

    goto LABEL_70;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
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

        v41 = v17;

        v42 = +[INSchema systemSchema];
        v43 = [v42 _types];
        v44 = [v41 typeName];
        v45 = INIntentDefinitionNamespacedName(@"System", v44);
        v46 = [v43 objectForKeyedSubscript:v45];

        v47 = [v41 objectClass];
        v18 = [(INJSONDecoder *)self _decodeObjectOfClass:v47 withCodableDescription:v46 from:v7 outCodableDescription:0];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_70;
    }

    v12 = v6;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v28 = [v14 codableDescription];
    v54 = 0;
    v18 = -[INJSONDecoder _decodeObjectOfClass:withCodableDescription:from:outCodableDescription:](self, "_decodeObjectOfClass:withCodableDescription:from:outCodableDescription:", [v14 objectClass], v28, v7, &v54);
    v29 = v54;
    v30 = v29;
    if (v29 && v29 != v28)
    {
      [v14 setCodableDescription:v29];
      v31 = [v30 typeName];
      [v14 setObjectTypeName:v31];
    }

    goto LABEL_27;
  }

  v10 = v6;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = v11;

  v20 = [v19 codableEnum];
  v21 = [v20 type];
  v22 = v7;
  v23 = v22;
  if (v21 == 2)
  {
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v52 = v20;
    v53 = v6;
    v32 = v24;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v56;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v55 + 1) + 8 * i);
          if (v39)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = [v19 valueWithName:v39];
              v36 |= 1 << [v40 index];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];

    v6 = v53;
    v20 = v52;
  }

  else
  {
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = v10;
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v48 = v26;

      v49 = [v48 valueWithName:v23];

      if (v49)
      {
        v27 = [v49 index];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
  }

LABEL_70:
  v50 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_decodeObjectOfClass:(Class)a3 withCodableDescription:(id)a4 from:(id)a5 outCodableDescription:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  if (objc_opt_class() != a3 && [(objc_class *)a3 conformsToProtocol:&unk_1F02E9CC0]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [(objc_class *)a3 _intents_decodeWithJSONDecoder:self codableDescription:v10 from:v11];
    goto LABEL_27;
  }

  if (!v10)
  {
    v13 = +[INSchema systemSchema];
    v10 = [v13 _objectDescriptionForTypeOfClass:a3];

    if (!v10)
    {
      if ([(objc_class *)a3 conformsToProtocol:&unk_1F02E9CC0]& 1) != 0 || (objc_opt_respondsToSelector())
      {
        v12 = [(objc_class *)a3 _intents_decodeWithJSONDecoder:self codableDescription:0 from:v11];
        v10 = 0;
        goto LABEL_27;
      }

      v22 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v25 = v22;
        v26 = NSStringFromClass(a3);
        v27 = 136315394;
        v28 = "[INJSONDecoder _decodeObjectOfClass:withCodableDescription:from:outCodableDescription:]";
        v29 = 2112;
        v30 = v26;
        _os_log_error_impl(&dword_18E991000, v25, OS_LOG_TYPE_ERROR, "%s %@ is not JSON decodable", &v27, 0x16u);
      }

      v10 = 0;
      goto LABEL_26;
    }
  }

  if (objc_opt_class() == a3)
  {
    v14 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 objectForKeyedSubscript:@"_type"];

    if (v17)
    {
      v18 = [v10 _nullable_schema];
      v19 = [v18 _objectDescriptionWithSemanticKeypath:v17];

      if (v19)
      {
        v20 = v19;

        v10 = v20;
      }
    }

    v12 = [[INCustomObject alloc] initWithObject:0 codableDescription:v10];
  }

  else
  {
    v12 = objc_alloc_init(a3);
  }

  [(INJSONDecoder *)self decodeObject:v12 withCodableDescription:v10 from:v11];
  if (a6)
  {
    v21 = v10;
    *a6 = v10;
  }

LABEL_27:

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)decodeObjectsOfClass:(Class)a3 from:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (isKindOfClass)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(INJSONDecoder *)self decodeObjectOfClass:a3 from:*(*(&v21 + 1) + 8 * i), v21];
            if (v16)
            {
              [v7 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v18 = [(INJSONDecoder *)self decodeObjectOfClass:a3 from:v8];
      if (v18)
      {
        [v7 addObject:v18];
      }
    }

    if ([v7 count])
    {
      v17 = [v7 copy];
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

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)decodeWithCodableAttribute:(id)a3 from:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v6;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 codableEnum];

  if (!v9 || v13 && [v13 type] == 2)
  {
    v14 = [(INJSONDecoder *)self _decodeWithCodableAttribute:v10 from:v7];
  }

  else
  {
    v24 = v13;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(INJSONDecoder *)self _decodeWithCodableAttribute:v10 from:*(*(&v25 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v14 = [v15 copy];
    v13 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)decodeObject:(id)a3 withCodableDescription:(id)a4 from:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && [v7 conformsToProtocol:&unk_1F02E9CC0] && (objc_opt_respondsToSelector())
  {
    [v7 _intents_decodeWithJSONDecoder:self codableDescription:v8 from:v9];
LABEL_5:

    goto LABEL_23;
  }

  if (v8 || (+[INSchema systemSchema](INSchema, "systemSchema"), v10 = objc_claimAutoreleasedReturnValue(), [v10 _objectDescriptionForTypeOfClass:objc_opt_class()], v8 = objc_claimAutoreleasedReturnValue(), v10, v8))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v8 attributes];
    v12 = [v11 allValues];

    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [v17 propertyName];
          if ([v7 _intents_isValidKey:v18])
          {
            v19 = v9;
            if (v9)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = v19;
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;

            v22 = [v21 objectForKeyedSubscript:v18];

            v23 = [(INJSONDecoder *)self decodeWithCodableAttribute:v17 from:v22];

            v24 = [v7 _setterForProperty:v18];
            [v7 if_setValueIfNonNil:v23 forKey:v24];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }
  }

  else
  {
    if (([v7 conformsToProtocol:&unk_1F02E9CC0] & 1) == 0)
    {
      v26 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v8 = v26;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 136315394;
      v37 = "[INJSONDecoder decodeObject:withCodableDescription:from:]";
      v38 = 2112;
      v39 = v28;
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s %@ is not JSON decodable", buf, 0x16u);

      goto LABEL_5;
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 _intents_decodeWithJSONDecoder:self codableDescription:0 from:v9];
    }
  }

LABEL_23:

  v25 = *MEMORY[0x1E69E9840];
}

@end