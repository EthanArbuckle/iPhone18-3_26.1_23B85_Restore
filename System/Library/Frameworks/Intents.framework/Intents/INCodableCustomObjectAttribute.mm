@interface INCodableCustomObjectAttribute
+ (BOOL)_isSupportedClass:(Class)a3;
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (Class)_unsafeObjectClass;
- (Class)objectClass;
- (INCodableCustomObjectAttribute)initWithCoder:(id)a3;
- (INCodableDescription)codableDescription;
- (id)__INCodableDescriptionObjectTypeKey;
- (id)__INCodableDescriptionObjectTypeNamespaceKey;
- (id)__INIntentResponseCodableDescriptionObjectTypeKey;
- (id)__INIntentResponseCodableDescriptionObjectTypeNamespaceKey;
- (id)__INTypeCodableDescriptionObjectTypeKey;
- (id)__INTypeCodableDescriptionObjectTypeNamespaceKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)valueTransformer;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_assignCodableDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableCustomObjectAttribute

- (id)valueTransformer
{
  v3 = [(INCodableCustomObjectAttribute *)self codableDescription];
  v4 = MEMORY[0x1E696B0A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke;
  v11[3] = &unk_1E7282F78;
  v12 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke_2;
  v8[3] = &unk_1E7282FA0;
  v9 = v12;
  v10 = self;
  v5 = v12;
  v6 = [v4 if_transformerUsingForwardTransformation:v11 reverseTransformation:v8];

  return v6;
}

- (INCodableDescription)codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);
  if (!WeakRetained)
  {
    v4 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
    v5 = [v4 isEqualToString:@"System"];

    if (v5)
    {
      v6 = +[INSchema systemSchema];
      v7 = [v6 _types];
      v8 = [(INCodableCustomObjectAttribute *)self objectTypeName];
      v9 = INIntentDefinitionNamespacedName(@"System", v8);
      WeakRetained = [v7 objectForKeyedSubscript:v9];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

INCodable *__50__INCodableCustomObjectAttribute_valueTransformer__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [[INCodable alloc] initWithCodableDescription:*(a1 + 32) data:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [*(a1 + 32) attributes];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) propertyName];
          v12 = [v3 valueForKey:v11];
          [(INCodable *)v4 setValue:v12 forPropertyNamed:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

id __50__INCodableCustomObjectAttribute_valueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 className];
    v6 = NSClassFromString(v5);
    v7 = *(a1 + 40);
    if ([objc_opt_class() _isSupportedClass:v6])
    {
      v36 = v5;
      v37 = v6;
      if (v6)
      {
        v8 = objc_alloc_init(v6);
      }

      else
      {
        v8 = [[INCustomObject alloc] _initWithCodableDescription:*(a1 + 32)];
      }

      v9 = v8;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = a1;
      v12 = [*(a1 + 32) attributes];
      v13 = [v12 allValues];

      obj = v13;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [*(*(&v39 + 1) + 8 * i) propertyName];
            v19 = [v3 valueForPropertyNamed:v18];
            if (v19)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v21 = *(v11 + 40);
              v22 = objc_opt_class();
              v23 = [v22 _isSupportedClass:objc_opt_class()];
              if (isKindOfClass)
              {
                v24 = v9;
                v25 = v24;
                if (v9)
                {
                  if ([v24 conformsToProtocol:&unk_1F02E2388])
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

                v31 = v26;

                if ([&unk_1F02DBB98 containsObject:v18])
                {
                  [v25 setValue:v19 forKey:v18];
                }

                else if (v31)
                {
                  [v31 setValue:v19 forProperty:v18];
                }
              }

              else if (v23)
              {
                [v9 setValue:v19 forKey:v18];
              }

              else
              {
                v27 = INSiriLogContextIntents;
                if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
                {
                  v28 = *(v11 + 40);
                  v29 = v27;
                  v30 = objc_opt_class();
                  *buf = 136315650;
                  v45 = "[INCodableCustomObjectAttribute valueTransformer]_block_invoke";
                  v46 = 2114;
                  v47 = v30;
                  v48 = 2114;
                  v49 = v37;
                  _os_log_fault_impl(&dword_18E991000, v29, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of system frameworks: %{public}@", buf, 0x20u);
                }
              }
            }
          }

          v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v15);
      }

      v5 = v36;
    }

    else
    {
      v10 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v34 = *(a1 + 40);
        v35 = v10;
        *buf = 136315650;
        v45 = "[INCodableCustomObjectAttribute valueTransformer]_block_invoke_2";
        v46 = 2114;
        v47 = objc_opt_class();
        v48 = 2114;
        v49 = v6;
        _os_log_fault_impl(&dword_18E991000, v35, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", buf, 0x20u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v4 = [v3 hash];
  v5 = [(INCodableCustomObjectAttribute *)self objectTypeName];
  v6 = [v5 hash] ^ v4;
  v9.receiver = self;
  v9.super_class = INCodableCustomObjectAttribute;
  v7 = [(INCodableObjectAttribute *)&v9 hash];

  return v6 ^ v7;
}

- (id)__INCodableDescriptionObjectTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return v3;
}

- (id)__INCodableDescriptionObjectTypeNamespaceKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return v3;
}

- (void)_assignCodableDescription
{
  v3 = [(INCodableAttribute *)self _codableDescription];
  v15 = [v3 schema];

  v4 = [v15 _types];
  v5 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v6 = [(INCodableCustomObjectAttribute *)self objectTypeName];
  v7 = INIntentDefinitionNamespacedName(v5, v6);
  v8 = [v4 objectForKeyedSubscript:v7];

  if (([v15 isSystem] & 1) == 0 && !v8)
  {
    v9 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
    v10 = [v9 isEqualToString:@"System"];

    if (v10)
    {
      v11 = +[INSchema systemSchema];
      v12 = [v11 _types];
      v13 = [(INCodableCustomObjectAttribute *)self objectTypeName];
      v14 = INIntentDefinitionNamespacedName(@"System", v13);
      v8 = [v12 objectForKeyedSubscript:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  objc_storeWeak(&self->_codableDescription, v8);
}

- (INCodableCustomObjectAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INCodableCustomObjectAttribute;
  v5 = [(INCodableObjectAttribute *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectTypeName"];
    objectTypeName = v5->_objectTypeName;
    v5->_objectTypeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectTypeNamespace"];
    objectTypeNamespace = v5->_objectTypeNamespace;
    v5->_objectTypeNamespace = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableDescription"];
    objc_storeWeak(&v5->_codableDescription, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = INCodableCustomObjectAttribute;
  v4 = a3;
  [(INCodableObjectAttribute *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_objectTypeName forKey:{@"objectTypeName", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_objectTypeNamespace forKey:@"objectTypeNamespace"];
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);
  [v4 encodeConditionalObject:WeakRetained forKey:@"codableDescription"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableCustomObjectAttribute;
  v13 = 0;
  v6 = [(INCodableObjectAttribute *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setPlistSafeObject:self->_objectTypeName forKey:@"objectTypeName"];
    [v6 intents_setPlistSafeObject:self->_objectTypeNamespace forKey:@"objectTypeNamespace"];
    v10 = v6;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = INCodableCustomObjectAttribute;
  v4 = [(INCodableObjectAttribute *)&v9 copyWithZone:a3];
  v5 = [(INCodableCustomObjectAttribute *)self objectTypeName];
  [v4 setObjectTypeName:v5];

  v6 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  [v4 setObjectTypeNamespace:v6];

  v7 = [(INCodableCustomObjectAttribute *)self codableDescription];
  [v4 setCodableDescription:v7];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INCodableCustomObjectAttribute;
  v4 = [(INCodableObjectAttribute *)&v16 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeNamespaceKey];
  v17[0] = v5;
  v6 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v7;
  v8 = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeKey];
  v17[1] = v8;
  v9 = [(INCodableCustomObjectAttribute *)self objectTypeName];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  v13 = [v12 if_dictionaryWithNonEmptyValues];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  objectTypeName = self->_objectTypeName;
  self->_objectTypeName = v6;

  v8 = [(INCodableCustomObjectAttribute *)self __INCodableDescriptionObjectTypeNamespaceKey];
  v9 = [v4 objectForKeyedSubscript:v8];
  objectTypeNamespace = self->_objectTypeNamespace;
  self->_objectTypeNamespace = v9;

  [(INCodableCustomObjectAttribute *)self _assignCodableDescription];
  v11.receiver = self;
  v11.super_class = INCodableCustomObjectAttribute;
  [(INCodableObjectAttribute *)&v11 updateWithDictionary:v4];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = INCodableCustomObjectAttribute;
  if ([(INCodableObjectAttribute *)&v16 isEqual:v5])
  {
    v6 = [(INCodableCustomObjectAttribute *)self objectTypeName];
    if (v6 || ([v5 objectTypeName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(INCodableCustomObjectAttribute *)self objectTypeName];
      v8 = [v5 objectTypeName];
      v9 = [v7 isEqual:v8];

      if (v6)
      {
LABEL_9:

        v11 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
        if (v11 || ([v5 objectTypeNamespace], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v12 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
          v13 = [v5 objectTypeNamespace];
          v14 = [v12 isEqual:v13];

          if (v11)
          {
LABEL_15:

            v10 = v9 & v14;
            goto LABEL_16;
          }
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (Class)_unsafeObjectClass
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(INCodableCustomObjectAttribute *)self objectClass];
  if (v3 == objc_opt_class())
  {
    v4 = [(INCodableCustomObjectAttribute *)self codableDescription];
    v5 = [v4 className];
    v3 = NSClassFromString(v5);

    if (([objc_opt_class() _isSupportedClass:v3] & 1) == 0)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v9 = v6;
        v10 = 136315650;
        v11 = "[INCodableCustomObjectAttribute _unsafeObjectClass]";
        v12 = 2114;
        v13 = objc_opt_class();
        v14 = 2114;
        v15 = v3;
        _os_log_fault_impl(&dword_18E991000, v9, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", &v10, 0x20u);
      }

      v3 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (Class)objectClass
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(INCodableCustomObjectAttribute *)self objectTypeNamespace];
  v4 = [v3 isEqualToString:@"System"];

  if (v4)
  {
    v5 = +[INSchema systemSchema];
    v6 = [v5 _types];
    v7 = [(INCodableCustomObjectAttribute *)self objectTypeName];
    v8 = INIntentDefinitionNamespacedName(@"System", v7);
    v9 = [v6 objectForKeyedSubscript:v8];

    v10 = [v9 className];

    if (v10)
    {
      v11 = [v9 className];
      v12 = NSClassFromString(v11);

      if ([objc_opt_class() _isSupportedClass:v12])
      {

        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        v16 = v13;
        v17 = 136315650;
        v18 = "[INCodableCustomObjectAttribute objectClass]";
        v19 = 2114;
        v20 = objc_opt_class();
        v21 = 2114;
        v22 = v12;
        _os_log_fault_impl(&dword_18E991000, v16, OS_LOG_TYPE_FAULT, "%s Use of %{public}@ on a class outside of allowed classes: %{public}@", &v17, 0x20u);
      }
    }
  }

LABEL_9:
  v12 = objc_opt_class();
LABEL_10:
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___INCodableCustomObjectAttribute;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 intents_stringForKey:@"objectTypeName"];
    v13 = v7[22];
    v7[22] = v12;

    v14 = [v6 intents_stringForKey:@"objectTypeNamespace"];
    v15 = v7[23];
    v7[23] = v14;

    v11 = v7;
  }

  return v11;
}

+ (BOOL)_isSupportedClass:(Class)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:?];
  v5 = +[INSchema _supportedClasses];
  v6 = [v5 containsObject:a3];

  LOBYTE(v5) = [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  v7 = [v4 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.siri.IntentsTests"];

  LOBYTE(v7) = objc_opt_class() == a3;
  LOBYTE(a3) = (a3 == 0) | v6 | v5 | v8 | v7 | (objc_opt_class() == a3);

  return a3 & 1;
}

- (id)__INTypeCodableDescriptionObjectTypeNamespaceKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return v3;
}

- (id)__INTypeCodableDescriptionObjectTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionObjectTypeNamespaceKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeNamespaceKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionObjectTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableCustomObjectAttributeObjectTypeKey];

  return v3;
}

@end