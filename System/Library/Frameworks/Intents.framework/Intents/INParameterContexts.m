@interface INParameterContexts
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)_isEmpty;
- (id)_initWithIntent:(id)a3 decoder:(id)a4 JSONDictionary:(id)a5;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)valueForUndefinedKey:(id)a3;
- (void)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (void)_updateOperatorsForIntent:(id)a3 JSONDictionary:(id)a4;
- (void)_updateSuggestedValuesForIntent:(id)a3 decoder:(id)a4 JSONDictionary:(id)a5;
@end

@implementation INParameterContexts

- (void)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v31 = a4;
  v7 = a5;
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

  v27 = v8;
  v9 = [v27 objectForKey:@"suggestedValues"];
  v29 = v7;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v11 allKeys];
  v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [v11 objectForKeyedSubscript:v17];
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

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __78__INParameterContexts__intents_decodeWithJSONDecoder_codableDescription_from___block_invoke;
        v33[3] = &unk_1E7280440;
        v34 = v32;
        v35 = v31;
        v36 = v17;
        v21 = [v20 if_map:v33];

        [v12 if_setObjectIfNonNil:v21 forKey:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v14);
  }

  v22 = [v12 copy];
  suggestedValuesDictionary = self->_suggestedValuesDictionary;
  self->_suggestedValuesDictionary = v22;

  v24 = [v27 objectForKey:@"operators"];
  operatorsDictionary = self->_operatorsDictionary;
  self->_operatorsDictionary = v24;

  v26 = *MEMORY[0x1E69E9840];
}

id __78__INParameterContexts__intents_decodeWithJSONDecoder_codableDescription_from___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 attributeByName:v4];
  v7 = [v2 decodeWithCodableAttribute:v6 from:v5];

  return v7;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSDictionary *)self->_suggestedValuesDictionary allKeys];
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_suggestedValuesDictionary objectForKeyedSubscript:v12];
        v14 = [v6 attributeByName:v12];
        v15 = [v20 encodeObject:v13 withCodableAttribute:v14];

        [v7 if_setObjectIfNonNil:v15 forKey:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [v18 setValue:v7 forKey:@"suggestedValues"];
  [v18 if_setObjectIfNonNil:self->_operatorsDictionary forKey:@"operators"];

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)valueForUndefinedKey:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasPrefix:@"suggestedValuesFor"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"suggestedValuesFor", "length")}];
    v6 = [v5 if_ASCIIStringByLowercasingFirstCharacter];

    typedSuggestedValuesDictionary = self->_typedSuggestedValuesDictionary;
    if (!typedSuggestedValuesDictionary)
    {
      v26 = v6;
      v27 = v4;
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_suggestedValuesDictionary, "count")}];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [(NSDictionary *)self->_suggestedValuesDictionary allKeys];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = [(NSDictionary *)self->_suggestedValuesDictionary objectForKey:v14, v26, v27];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;

            v18 = [v17 if_map:&__block_literal_global_40172];

            [v8 setValue:v18 forKey:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      v19 = [v8 copy];
      v20 = self->_typedSuggestedValuesDictionary;
      self->_typedSuggestedValuesDictionary = v19;

      typedSuggestedValuesDictionary = self->_typedSuggestedValuesDictionary;
      v6 = v26;
      v4 = v27;
    }

    v21 = [(NSDictionary *)typedSuggestedValuesDictionary objectForKey:v6, v26, v27];
  }

  else if ([v4 hasPrefix:@"operatorsFor"])
  {
    v22 = [v4 substringFromIndex:{objc_msgSend(@"operatorsFor", "length")}];
    v23 = [v22 if_ASCIIStringByLowercasingFirstCharacter];

    v21 = [(NSDictionary *)self->_operatorsDictionary objectForKey:v23];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = INParameterContexts;
    v21 = [(INParameterContexts *)&v28 valueForUndefinedKey:v4];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

id __44__INParameterContexts_valueForUndefinedKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = INTypedObjectWithCustomObject(v2);
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (BOOL)_isEmpty
{
  v3 = [(NSDictionary *)self->_suggestedValuesDictionary allKeys];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NSDictionary *)self->_operatorsDictionary allKeys];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)_updateSuggestedValuesForIntent:(id)a3 decoder:(id)a4 JSONDictionary:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __78__INParameterContexts__updateSuggestedValuesForIntent_decoder_JSONDictionary___block_invoke;
  v55[3] = &unk_1E72803D0;
  v39 = v8;
  v56 = v39;
  v42 = MEMORY[0x193AD7780](v55);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = [v7 _codableDescription];
  v12 = [v11 attributes];
  v13 = [v12 allValues];

  v44 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v44)
  {
    v41 = v13;
    v43 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v13);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        v16 = [v15 propertyName];
        v17 = [v9 objectForKeyedSubscript:v16];

        if (v17)
        {
          if ([v15 modifier])
          {
            v18 = [v9 objectForKeyedSubscript:v16];
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

            v26 = v19;

            v27 = (v42)[2](v42, v26, v15);

            v28 = [v15 objectClass];
            if (v28 != objc_opt_class())
            {
              goto LABEL_31;
            }

            v29 = [v7 valueForKey:v16];
            if (v29)
            {
              objc_opt_class();
              v30 = (objc_opt_isKindOfClass() & 1) != 0 ? v29 : 0;
            }

            else
            {
              v30 = 0;
            }

            v34 = v30;

            [v34 setAlternatives:v27];
            if (!v34)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v20 = v10;
            v21 = v7;
            v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v24 = [v9 objectForKeyedSubscript:v16];
            if (v24)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }

            v31 = v25;

            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __78__INParameterContexts__updateSuggestedValuesForIntent_decoder_JSONDictionary___block_invoke_2;
            v45[3] = &unk_1E72803F8;
            v50 = v42;
            v45[4] = v15;
            v32 = v22;
            v46 = v32;
            v7 = v21;
            v47 = v21;
            v48 = v16;
            v33 = v23;
            v49 = v33;
            [v31 enumerateObjectsUsingBlock:v45];

            if ([v32 count])
            {
              v27 = [v32 copy];
            }

            else
            {
              v27 = 0;
            }

            v10 = v20;
            v13 = v41;
            if ([v33 count])
            {
              v34 = [v33 copy];
            }

            else
            {
              v34 = 0;
            }

            if (!v34)
            {
              goto LABEL_31;
            }
          }

          [v7 setValue:v34 forKey:v16];

LABEL_31:
          [v10 if_setObjectIfNonNil:v27 forKey:v16];
        }

        ++v14;
      }

      while (v44 != v14);
      v35 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
      v44 = v35;
    }

    while (v35);
  }

  v36 = [v10 copy];
  suggestedValuesDictionary = self->_suggestedValuesDictionary;
  self->_suggestedValuesDictionary = v36;

  v38 = *MEMORY[0x1E69E9840];
}

id __78__INParameterContexts__updateSuggestedValuesForIntent_decoder_JSONDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v5 objectForKeyedSubscript:@"suggestedValues"];
    v21 = v5;
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

    v11 = v9;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"value"];
          if (v17)
          {
            v18 = [*(a1 + 32) decodeWithCodableAttribute:v6 from:v17];
            [v7 if_addObjectIfNonNil:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    if ([v7 count])
    {
      v10 = [v7 copy];
    }

    else
    {
      v10 = 0;
    }

    v5 = v21;
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

void __78__INParameterContexts__updateSuggestedValuesForIntent_decoder_JSONDictionary___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 72);
  v17 = v5;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = (*(v6 + 16))(v6, v8, *(a1 + 32));

  [*(a1 + 40) if_addObjectIfNonNil:v9];
  v10 = [*(a1 + 32) objectClass];
  if (v10 == objc_opt_class())
  {
    v11 = [*(a1 + 48) valueForKey:*(a1 + 56)];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if ([v13 count] > a3)
    {
      v14 = [v13 objectAtIndexedSubscript:a3];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 setAlternatives:v9];
      [*(a1 + 64) addObject:v16];
    }
  }
}

- (void)_updateOperatorsForIntent:(id)a3 JSONDictionary:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = [v5 _codableDescription];
  v9 = [v8 attributes];
  v24 = [v7 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v5 _codableDescription];
  v11 = [v10 attributes];
  v12 = [v11 allValues];

  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v25 + 1) + 8 * i) propertyName];
        v18 = [v6 objectForKeyedSubscript:v17];
        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 objectForKeyedSubscript:@"operators"];
            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v24 setObject:v19 forKey:v17];
              }
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v20 = [v24 copy];
  operatorsDictionary = self->_operatorsDictionary;
  self->_operatorsDictionary = v20;

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_initWithIntent:(id)a3 decoder:(id)a4 JSONDictionary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = INParameterContexts;
  v11 = [(INParameterContexts *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INParameterContexts *)v11 _updateSuggestedValuesForIntent:v8 decoder:v9 JSONDictionary:v10];
    [(INParameterContexts *)v12 _updateOperatorsForIntent:v8 JSONDictionary:v10];
  }

  return v12;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 _intents_decodeWithJSONDecoder:v10 codableDescription:v9 from:v8];

  return v11;
}

@end