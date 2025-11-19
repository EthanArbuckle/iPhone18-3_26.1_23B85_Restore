@interface INCodableDescription
+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)a3 usingTypes:(id)a4;
+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)a3 usingTypes:(id)a4 foundAttributes:(id)a5;
+ (id)_codableDescriptionForTypedObject:(id)a3 inDictionary:(id)a4;
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableDescription)init;
- (INCodableDescription)initWithCoder:(id)a3;
- (INSchema)schema;
- (NSArray)referencedCodableEnums;
- (NSOrderedSet)displayOrderedAttributes;
- (NSString)localizationBundleIdentifier;
- (id)_nullable_schema;
- (id)attributeByKeyPath:(id)a3;
- (id)attributeByName:(id)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)highestAttributeTag;
- (void)_updateAttributesByName;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributes:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableDescription

- (NSOrderedSet)displayOrderedAttributes
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_displayOrderedAttributesLock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__INCodableDescription_displayOrderedAttributes__block_invoke;
  v22[3] = &unk_1E72882F8;
  v22[4] = self;
  v3 = MEMORY[0x193AD7780](v22);
  displayOrderedAttributes = self->_displayOrderedAttributes;
  if (!displayOrderedAttributes)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(INCodableDescription *)self attributes];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 displayPriorityRank];

          if (v12)
          {
            [(NSOrderedSet *)v5 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v8);
    }

    [(NSOrderedSet *)v5 sortUsingComparator:&__block_literal_global_13075];
    v14 = self->_displayOrderedAttributes;
    p_displayOrderedAttributes = &self->_displayOrderedAttributes;
    *p_displayOrderedAttributes = v5;

    displayOrderedAttributes = *p_displayOrderedAttributes;
  }

  v15 = displayOrderedAttributes;
  v3[2](v3);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t __48__INCodableDescription_displayOrderedAttributes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayPriorityRank];
  v6 = [v4 displayPriorityRank];

  v7 = [v5 compare:v6];
  return v7;
}

- (INCodableDescription)init
{
  v6.receiver = self;
  v6.super_class = INCodableDescription;
  v2 = [(INCodableDescription *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributesByName = v2->_attributesByName;
    v2->_attributesByName = v3;

    v2->_displayOrderedAttributesLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_updateAttributesByName
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSDictionary *)self->_attributes allValues];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 propertyName];

        if (v9)
        {
          attributesByName = self->_attributesByName;
          v11 = [v8 propertyName];
          [(NSMutableDictionary *)attributesByName setObject:v8 forKeyedSubscript:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_nullable_schema
{
  WeakRetained = objc_loadWeakRetained(&self->_schema);

  return WeakRetained;
}

- (INSchema)schema
{
  WeakRetained = objc_loadWeakRetained(&self->_schema);
  if (!WeakRetained)
  {
    v4 = [(INCodableDescription *)self className];
    v5 = objc_opt_class();
    v6 = NSClassFromString(v4);
    if (v6 && (v7 = v6, ([(objc_class *)v6 isSubclassOfClass:v5]& 1) != 0))
    {
      v8 = v7;
      v9 = v7;

      v10 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v9);

      if (v10)
      {
        WeakRetained = +[INSchema systemSchema];
LABEL_10:
        objc_storeWeak(&self->_schema, WeakRetained);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = [(INCodableDescription *)self _localizationTable];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      v13 = [(INCodableDescription *)self _localizationTable];
      v14 = [v13 bundleIdentifier];
      v15 = [(INCodableDescription *)self className];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", v14, v15];

      WeakRetained = INSchemaWithTypeName(v16, 0, 0);
    }

    else
    {
      WeakRetained = 0;
    }

    goto LABEL_10;
  }

LABEL_11:

  return WeakRetained;
}

- (NSString)localizationBundleIdentifier
{
  v2 = [(INCodableDescription *)self _localizationTable];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSArray)referencedCodableEnums
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(INCodableDescription *)self attributes];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
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

        [v3 if_addObjectIfNonNil:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)highestAttributeTag
{
  v2 = [(INCodableDescription *)self attributes];
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_102];
  v5 = [v4 lastObject];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (id)attributeByName:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_attributesByName objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributeByKeyPath:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 mutableCopy];

  if (![v6 count])
  {
    v12 = 0;
    goto LABEL_23;
  }

  v7 = [v6 firstObject];
  v8 = [(INCodableDescription *)self attributeByName:v7];
  if ([v6 count] < 2)
  {
    v12 = v8;
    v9 = v4;
  }

  else
  {
    [v6 removeObjectAtIndex:0];
    v9 = [v6 componentsJoinedByString:@"."];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
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

      v15 = v11;

      v16 = [v15 codableDescription];

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = v14;

      v18 = +[INSchema systemSchema];
      v19 = [v18 _types];
      v20 = [v17 typeName];

      v21 = INIntentDefinitionNamespacedName(@"System", v20);
      v16 = [v19 objectForKeyedSubscript:v21];

      if (!v16)
      {
        v12 = 0;
        goto LABEL_21;
      }

LABEL_20:
      v12 = [v16 attributeByKeyPath:v9];
LABEL_21:

      goto LABEL_22;
    }

    v12 = 0;
  }

LABEL_22:

  v4 = v9;
LABEL_23:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      className = self->_className;
      v8 = 0;
      if (className == v5->_className || [(NSString *)className isEqual:?])
      {
        typeName = self->_typeName;
        if (typeName == v5->_typeName || [(NSString *)typeName isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INCodableDescription)initWithCoder:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableDescription *)self init];
  if (v5)
  {
    v52 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v52 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    className = v5->_className;
    v5->_className = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentDefinitionNamespace"];
    intentDefinitionNamespace = v5->_intentDefinitionNamespace;
    v5->_intentDefinitionNamespace = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"displayOrderedAttributes"];
    displayOrderedAttributes = v5->_displayOrderedAttributes;
    v5->_displayOrderedAttributes = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    localizationTable = v5->_localizationTable;
    v5->_localizationTable = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_customLocalizationTable"];
    customLocalizationTable = v5->_customLocalizationTable;
    v5->_customLocalizationTable = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"semanticRoot"];
    semanticRoot = v5->_semanticRoot;
    v5->_semanticRoot = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainBundleIdentifier"];
    mainBundleIdentifier = v5->_mainBundleIdentifier;
    v5->_mainBundleIdentifier = v36;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v38 = [(INCodableDescription *)v5 attributes];
    v39 = [v38 allValues];

    v40 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v54;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v53 + 1) + 8 * i) relationship];
          [v44 _establishRelationship];
        }

        v41 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v41);
    }

    [(INCodableDescription *)v5 _updateAttributesByName];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v45)
    {
      v46 = objc_alloc_init(INCodableLocalizationTable);
      v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v46 setTableName:v47];

      v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      [(INCodableLocalizationTable *)v46 setBundleIdentifier:v48];

      v49 = v5->_localizationTable;
      v5->_localizationTable = v46;
    }
  }

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  intentDefinitionNamespace = self->_intentDefinitionNamespace;
  v5 = a3;
  [v5 encodeObject:intentDefinitionNamespace forKey:@"intentDefinitionNamespace"];
  [v5 encodeObject:self->_className forKey:@"className"];
  [v5 encodeObject:self->_attributes forKey:@"attributes"];
  [v5 encodeObject:self->_typeName forKey:@"typeName"];
  [v5 encodeObject:self->_localizationTable forKey:@"_localizationTable"];
  [v5 encodeObject:self->_customLocalizationTable forKey:@"_customLocalizationTable"];
  [v5 encodeObject:self->_semanticRoot forKey:@"semanticRoot"];
  [v5 encodeObject:self->_mainBundleIdentifier forKey:@"mainBundleIdentifier"];
  v6 = [(INCodableDescription *)self displayOrderedAttributes];
  [v5 encodeObject:v6 forKey:@"displayOrderedAttributes"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 intents_setPlistSafeObject:self->_intentDefinitionNamespace forKey:@"intentDefinitionNamespace"];
  [v7 intents_setPlistSafeObject:self->_className forKey:@"className"];
  [v7 intents_setPlistSafeObject:self->_typeName forKey:@"typeName"];
  [v7 intents_setPlistSafeObject:self->_semanticRoot forKey:@"semanticRoot"];
  [v7 intents_setPlistSafeObject:self->_mainBundleIdentifier forKey:@"mainBundleIdentifier"];
  v8 = [(INCodableDescription *)self attributes];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__13079;
  v33 = __Block_byref_object_dispose__13080;
  v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13079;
  v27 = __Block_byref_object_dispose__13080;
  v28 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__INCodableDescription_widgetPlistableRepresentationWithParameters_error___block_invoke;
  v19[3] = &unk_1E727EE58;
  v9 = v6;
  v20 = v9;
  v21 = &v23;
  v22 = &v29;
  [v8 enumerateKeysAndObjectsUsingBlock:v19];
  v10 = v24[5];
  if (v10)
  {
    goto LABEL_4;
  }

  [v7 intents_setPlistSafeObject:v30[5] forKey:@"attributes"];
  localizationTable = self->_localizationTable;
  v12 = (v24 + 5);
  obj = v24[5];
  [v7 intents_setWidgetPlistRepresentable:localizationTable forKey:@"_localizationTable" error:&obj];
  objc_storeStrong(v12, obj);
  v13 = (v24 + 5);
  v10 = v24[5];
  if (v10 || (customLocalizationTable = self->_customLocalizationTable, v17 = 0, [v7 intents_setWidgetPlistRepresentable:customLocalizationTable forKey:@"_customLocalizationTable" error:&v17], objc_storeStrong(v13, v17), (v10 = v24[5]) != 0))
  {
LABEL_4:
    v15 = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v15 = v7;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __74__INCodableDescription_widgetPlistableRepresentationWithParameters_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v10 = a3;
  v11 = [v10 widgetPlistableRepresentationWithParameters:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v12 = [v11 mutableCopy];

  v13 = [v10 _attributeType];
  [v12 intents_setIntegerIfNonZero:v13 forKey:@"_type"];
  if (*(*(a1[5] + 8) + 40))
  {
    *a4 = 1;
  }

  else if (v12)
  {
    [*(*(a1[6] + 8) + 40) intents_setPlistSafeObject:v12 forKey:v7];
  }
}

- (void)setAttributes:(id)a3
{
  v4 = [a3 copy];
  attributes = self->_attributes;
  self->_attributes = v4;

  [(INCodableDescription *)self _updateAttributesByName];
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(INCodableDescription *)self attributes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__13079;
  v24[4] = __Block_byref_object_dispose__13080;
  v25 = 0;
  v8 = [(INCodableDescription *)self attributes];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke;
  v20[3] = &unk_1E727EDE0;
  v23 = v24;
  v20[4] = self;
  v9 = v4;
  v21 = v9;
  v10 = v7;
  v22 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v20];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke_2;
  v19[3] = &unk_1E727EE08;
  v19[4] = v24;
  [v10 sortUsingComparator:v19];
  v11 = [objc_opt_class() __NameKey];
  v26[0] = v11;
  v12 = [(INCodableDescription *)self typeName];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[0] = v13;
  v14 = [(INCodableDescription *)self _attributesKey];
  v26[1] = v14;
  v27[1] = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  if (!v12)
  {
  }

  v16 = [v15 if_dictionaryWithNonEmptyValues];

  _Block_object_dispose(v24, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = [v5 _attributeDisplayPriorityKey];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 32) _ignoredAttributeTags];
  v11 = [v10 containsObject:v15];

  if ((v11 & 1) == 0)
  {
    v12 = [v6 dictionaryRepresentationWithLocalizer:*(a1 + 40)];
    v13 = [v12 mutableCopy];

    v14 = [v6 _attributeTagKey];
    [v13 setObject:v15 forKey:v14];

    [*(a1 + 48) addObject:v13];
  }
}

uint64_t __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  v8 = [v6 objectForKeyedSubscript:*(*(*(a1 + 32) + 8) + 40)];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableDescription *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() __NameKey];
  v6 = [v4 objectForKey:v5];
  typeName = self->_typeName;
  self->_typeName = v6;

  v8 = [(INCodableDescription *)self _attributesKey];
  v47 = v4;
  v9 = [v4 objectForKey:v8];

  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      v14 = 0;
      do
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * v14);
        v16 = [(INCodableDescription *)self _attributeKey];
        v17 = v15;
        v18 = v16;
        v19 = [v18 stringByAppendingString:@"EnumType"];
        v20 = [v17 objectForKeyedSubscript:v19];

        v21 = off_1E727ABF8;
        if (!v20)
        {
          v22 = [v18 stringByAppendingString:@"SupportsMultipleValues"];
          v23 = [v17 objectForKeyedSubscript:v22];
          v24 = [v23 BOOLValue];

          v25 = v24 ^ 1u;
          v26 = [v18 stringByAppendingString:@"Type"];
          v27 = [v17 objectForKeyedSubscript:v26];
          v28 = INCodableScalarAttributeTypeFromString(v27, v25);

          v21 = off_1E727AC30;
          if (v28 == -1)
          {
            v29 = [v18 stringByAppendingString:@"ObjectType"];
            v30 = [v17 objectForKeyedSubscript:v29];

            v21 = off_1E727ABD8;
            if (!v30)
            {
              v21 = off_1E727AC20;
            }
          }
        }

        v31 = *v21;
        v32 = objc_opt_class();

        v33 = v32;
        v34 = objc_alloc_init(v32);
        [v34 _setCodableDescription:self];
        [v34 updateWithDictionary:v17];
        v35 = [v34 _attributeTagKey];
        v36 = [v17 objectForKeyedSubscript:v35];

        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v36, "integerValue")}];
        [v10 setObject:v34 forKey:v37];

        v38 = [v34 propertyName];
        if (v38)
        {
          [(NSMutableDictionary *)self->_attributesByName setObject:v34 forKeyedSubscript:v38];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v12);
  }

  objc_storeStrong(&self->_attributes, v10);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = [(INCodableDescription *)self attributes];
  v40 = [v39 allValues];

  v41 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v50;
    do
    {
      v44 = 0;
      do
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v49 + 1) + 8 * v44) relationship];
        [v45 _establishRelationship];

        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v42);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableDescription;
  v6 = [(INCodableDescription *)&v11 description];
  v7 = [(INCodableDescription *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__13079;
  v53 = __Block_byref_object_dispose__13080;
  v54 = 0;
  v8 = [v6 intents_safeObjectForKey:@"attributes" ofType:objc_opt_class()];
  if (![v8 count])
  {
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __68__INCodableDescription_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v45[3] = &unk_1E727EE80;
  v48 = &v49;
  v10 = v7;
  v46 = v10;
  v11 = v9;
  v47 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:v45];
  v12 = v50[5];
  if (v12)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }
  }

  else
  {
    objc_storeStrong(v10 + 10, v9);
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
LABEL_8:
    v15 = (v50 + 5);
    obj = v50[5];
    v16 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:v6 key:@"_localizationTable" error:&obj];
    objc_storeStrong(v15, obj);
    v17 = v7[3];
    v7[3] = v16;

    v18 = (v50 + 5);
    v43 = v50[5];
    v19 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:v6 key:@"_customLocalizationTable" error:&v43];
    objc_storeStrong(v18, v43);
    v20 = v7[4];
    v7[4] = v19;

    v21 = [v6 intents_stringForKey:@"className"];
    v22 = v7[8];
    v7[8] = v21;

    v23 = [v6 intents_stringForKey:@"typeName"];
    v24 = v7[9];
    v7[9] = v23;

    v25 = [v6 intents_stringForKey:@"intentDefinitionNamespace"];
    v26 = v7[7];
    v7[7] = v25;

    v27 = [v6 intents_stringForKey:@"semanticRoot"];
    v28 = v7[12];
    v7[12] = v27;

    v29 = [v6 intents_stringForKey:@"mainBundleIdentifier"];
    v30 = v7[5];
    v7[5] = v29;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = [v7 attributes];
    v32 = [v31 allValues];

    v33 = [v32 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v33)
    {
      v34 = *v40;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = [*(*(&v39 + 1) + 8 * i) relationship];
          [v36 _establishRelationship];
        }

        v33 = [v32 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v33);
    }

    [v7 _updateAttributesByName];
    v14 = v7;
  }

  _Block_object_dispose(&v49, 8);
  v37 = *MEMORY[0x1E69E9840];

  return v14;
}

void __68__INCodableDescription_makeFromWidgetPlistableRepresentation_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = INCodableAttributeClassFromType([v9 intents_intForKey:@"_type"]);
      if (v10)
      {
        v11 = *(*(a1 + 48) + 8);
        obj = *(v11 + 40);
        v12 = [v10 makeFromWidgetPlistableRepresentation:v9 error:&obj];
        objc_storeStrong((v11 + 40), obj);
        if (v12)
        {
          [v12 _setCodableDescription:*(a1 + 32)];
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
        }

        else
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode attribute from encoded: %@", v9];
          v18 = INIntentError(8001, v17, 0);
          v19 = *(*(a1 + 48) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          *a4 = 1;
        }
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve attribute class from encoded: %@", v9];
        v14 = INIntentError(8001, v13, 0);
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *a4 = 1;
      }
    }
  }
}

+ (id)_codableDescriptionForTypedObject:(id)a3 inDictionary:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKey:v8];

  v10 = v6;
  if (v9)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v9;
    v11 = [v9 attributes];
    v12 = [v11 allValues];

    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      v16 = 0x1E727A000uLL;
      v32 = v6;
      v33 = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if (v18)
          {
            v19 = *(v16 + 3032);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v18 propertyName];
              v21 = [v5 valueForKey:v20];

              if (v21)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = [v21 firstObject];
                  v23 = [INCodableDescription _codableDescriptionForTypedObject:v22 inDictionary:v10];
                }

                else
                {
                  v23 = [INCodableDescription _codableDescriptionForTypedObject:v21 inDictionary:v10];
                }

                v24 = [v23 typeName];
                v25 = [v18 objectTypeName];
                if (v23 && ([v24 isEqualToString:v25] & 1) == 0)
                {
                  [v18 setCodableDescription:v23];
                  [v23 typeName];
                  v27 = v26 = v5;
                  [v18 setObjectTypeName:v27];

                  v5 = v26;
                  v10 = v32;
                }

                v12 = v33;
                v16 = 0x1E727A000;
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v9 = v31;
    v28 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)a3 usingTypes:(id)a4
{
  v6 = MEMORY[0x1E695DFA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [a1 _calculateReferencedCodableDescriptionsFromAttributes:v8 usingTypes:v7 foundAttributes:v9];

  return v10;
}

+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)a3 usingTypes:(id)a4 foundAttributes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__INCodableDescription__calculateReferencedCodableDescriptionsFromAttributes_usingTypes_foundAttributes___block_invoke;
  v14[3] = &unk_1E727EE30;
  v15 = v8;
  v16 = v9;
  v17 = a1;
  v10 = v9;
  v11 = v8;
  v12 = [a3 if_flatMap:v14];

  return v12;
}

id __105__INCodableDescription__calculateReferencedCodableDescriptionsFromAttributes_usingTypes_foundAttributes___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectTypeNamespace];
    v5 = [v3 objectTypeName];
    v6 = INIntentDefinitionNamespacedName(v4, v5);

    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v8 = [*(a1 + 40) containsObject:v6];
    v9 = MEMORY[0x1E695E0F0];
    if ((v8 & 1) == 0 && v7)
    {
      [*(a1 + 40) addObject:v6];
      v17[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v11 = *(a1 + 48);
      v12 = [v7 attributes];
      v13 = [v12 allValues];
      v14 = [v11 _calculateReferencedCodableDescriptionsFromAttributes:v13 usingTypes:*(a1 + 32) foundAttributes:*(a1 + 40)];
      v9 = [v10 arrayByAddingObjectsFromArray:v14];
    }
  }

  else
  {

    v9 = MEMORY[0x1E695E0F0];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

@end