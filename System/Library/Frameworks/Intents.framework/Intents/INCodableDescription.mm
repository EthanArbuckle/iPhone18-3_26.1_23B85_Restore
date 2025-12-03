@interface INCodableDescription
+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)attributes usingTypes:(id)types;
+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)attributes usingTypes:(id)types foundAttributes:(id)foundAttributes;
+ (id)_codableDescriptionForTypedObject:(id)object inDictionary:(id)dictionary;
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableDescription)init;
- (INCodableDescription)initWithCoder:(id)coder;
- (INSchema)schema;
- (NSArray)referencedCodableEnums;
- (NSOrderedSet)displayOrderedAttributes;
- (NSString)localizationBundleIdentifier;
- (id)_nullable_schema;
- (id)attributeByKeyPath:(id)path;
- (id)attributeByName:(id)name;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)highestAttributeTag;
- (void)_updateAttributesByName;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributes:(id)attributes;
- (void)updateWithDictionary:(id)dictionary;
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
    attributes = [(INCodableDescription *)self attributes];
    allValues = [attributes allValues];

    v8 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          displayPriorityRank = [v11 displayPriorityRank];

          if (displayPriorityRank)
          {
            [(NSOrderedSet *)v5 addObject:v11];
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
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
  allValues = [(NSDictionary *)self->_attributes allValues];
  v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        propertyName = [v8 propertyName];

        if (propertyName)
        {
          attributesByName = self->_attributesByName;
          propertyName2 = [v8 propertyName];
          [(NSMutableDictionary *)attributesByName setObject:v8 forKeyedSubscript:propertyName2];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    className = [(INCodableDescription *)self className];
    v5 = objc_opt_class();
    v6 = NSClassFromString(className);
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

    _localizationTable = [(INCodableDescription *)self _localizationTable];
    bundleIdentifier = [_localizationTable bundleIdentifier];

    if (bundleIdentifier)
    {
      _localizationTable2 = [(INCodableDescription *)self _localizationTable];
      bundleIdentifier2 = [_localizationTable2 bundleIdentifier];
      className2 = [(INCodableDescription *)self className];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", bundleIdentifier2, className2];

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
  _localizationTable = [(INCodableDescription *)self _localizationTable];
  bundleIdentifier = [_localizationTable bundleIdentifier];

  return bundleIdentifier;
}

- (NSArray)referencedCodableEnums
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  attributes = [(INCodableDescription *)self attributes];
  allValues = [attributes allValues];

  v6 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
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

        codableEnum = [v12 codableEnum];

        [v3 if_addObjectIfNonNil:codableEnum];
      }

      v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)highestAttributeTag
{
  attributes = [(INCodableDescription *)self attributes];
  allKeys = [attributes allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&__block_literal_global_102];
  lastObject = [v4 lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)attributeByName:(id)name
{
  if (name)
  {
    v4 = [(NSMutableDictionary *)self->_attributesByName objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributeByKeyPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy componentsSeparatedByString:@"."];
  v6 = [v5 mutableCopy];

  if (![v6 count])
  {
    v12 = 0;
    goto LABEL_23;
  }

  firstObject = [v6 firstObject];
  v8 = [(INCodableDescription *)self attributeByName:firstObject];
  if ([v6 count] < 2)
  {
    v12 = v8;
    v9 = pathCopy;
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

      codableDescription = [v15 codableDescription];

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
      _types = [v18 _types];
      typeName = [v17 typeName];

      v21 = INIntentDefinitionNamespacedName(@"System", typeName);
      codableDescription = [_types objectForKeyedSubscript:v21];

      if (!codableDescription)
      {
        v12 = 0;
        goto LABEL_21;
      }

LABEL_20:
      v12 = [codableDescription attributeByKeyPath:v9];
LABEL_21:

      goto LABEL_22;
    }

    v12 = 0;
  }

LABEL_22:

  pathCopy = v9;
LABEL_23:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INCodableDescription)initWithCoder:(id)coder
{
  v58 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    className = v5->_className;
    v5->_className = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentDefinitionNamespace"];
    intentDefinitionNamespace = v5->_intentDefinitionNamespace;
    v5->_intentDefinitionNamespace = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"displayOrderedAttributes"];
    displayOrderedAttributes = v5->_displayOrderedAttributes;
    v5->_displayOrderedAttributes = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    localizationTable = v5->_localizationTable;
    v5->_localizationTable = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_customLocalizationTable"];
    customLocalizationTable = v5->_customLocalizationTable;
    v5->_customLocalizationTable = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"semanticRoot"];
    semanticRoot = v5->_semanticRoot;
    v5->_semanticRoot = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainBundleIdentifier"];
    mainBundleIdentifier = v5->_mainBundleIdentifier;
    v5->_mainBundleIdentifier = v36;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    attributes = [(INCodableDescription *)v5 attributes];
    allValues = [attributes allValues];

    v40 = [allValues countByEnumeratingWithState:&v53 objects:v57 count:16];
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
            objc_enumerationMutation(allValues);
          }

          relationship = [*(*(&v53 + 1) + 8 * i) relationship];
          [relationship _establishRelationship];
        }

        v41 = [allValues countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v41);
    }

    [(INCodableDescription *)v5 _updateAttributesByName];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v45)
    {
      v46 = objc_alloc_init(INCodableLocalizationTable);
      v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v46 setTableName:v47];

      v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      [(INCodableLocalizationTable *)v46 setBundleIdentifier:v48];

      v49 = v5->_localizationTable;
      v5->_localizationTable = v46;
    }
  }

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  intentDefinitionNamespace = self->_intentDefinitionNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:intentDefinitionNamespace forKey:@"intentDefinitionNamespace"];
  [coderCopy encodeObject:self->_className forKey:@"className"];
  [coderCopy encodeObject:self->_attributes forKey:@"attributes"];
  [coderCopy encodeObject:self->_typeName forKey:@"typeName"];
  [coderCopy encodeObject:self->_localizationTable forKey:@"_localizationTable"];
  [coderCopy encodeObject:self->_customLocalizationTable forKey:@"_customLocalizationTable"];
  [coderCopy encodeObject:self->_semanticRoot forKey:@"semanticRoot"];
  [coderCopy encodeObject:self->_mainBundleIdentifier forKey:@"mainBundleIdentifier"];
  displayOrderedAttributes = [(INCodableDescription *)self displayOrderedAttributes];
  [coderCopy encodeObject:displayOrderedAttributes forKey:@"displayOrderedAttributes"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary intents_setPlistSafeObject:self->_intentDefinitionNamespace forKey:@"intentDefinitionNamespace"];
  [dictionary intents_setPlistSafeObject:self->_className forKey:@"className"];
  [dictionary intents_setPlistSafeObject:self->_typeName forKey:@"typeName"];
  [dictionary intents_setPlistSafeObject:self->_semanticRoot forKey:@"semanticRoot"];
  [dictionary intents_setPlistSafeObject:self->_mainBundleIdentifier forKey:@"mainBundleIdentifier"];
  attributes = [(INCodableDescription *)self attributes];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__13079;
  v33 = __Block_byref_object_dispose__13080;
  v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(attributes, "count")}];
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
  v9 = parametersCopy;
  v20 = v9;
  v21 = &v23;
  v22 = &v29;
  [attributes enumerateKeysAndObjectsUsingBlock:v19];
  v10 = v24[5];
  if (v10)
  {
    goto LABEL_4;
  }

  [dictionary intents_setPlistSafeObject:v30[5] forKey:@"attributes"];
  localizationTable = self->_localizationTable;
  v12 = (v24 + 5);
  obj = v24[5];
  [dictionary intents_setWidgetPlistRepresentable:localizationTable forKey:@"_localizationTable" error:&obj];
  objc_storeStrong(v12, obj);
  v13 = (v24 + 5);
  v10 = v24[5];
  if (v10 || (customLocalizationTable = self->_customLocalizationTable, v17 = 0, [dictionary intents_setWidgetPlistRepresentable:customLocalizationTable forKey:@"_customLocalizationTable" error:&v17], objc_storeStrong(v13, v17), (v10 = v24[5]) != 0))
  {
LABEL_4:
    v15 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v15 = dictionary;
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

- (void)setAttributes:(id)attributes
{
  v4 = [attributes copy];
  attributes = self->_attributes;
  self->_attributes = v4;

  [(INCodableDescription *)self _updateAttributesByName];
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v27[2] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v5 = MEMORY[0x1E695DF70];
  attributes = [(INCodableDescription *)self attributes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(attributes, "count")}];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__13079;
  v24[4] = __Block_byref_object_dispose__13080;
  v25 = 0;
  attributes2 = [(INCodableDescription *)self attributes];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke;
  v20[3] = &unk_1E727EDE0;
  v23 = v24;
  v20[4] = self;
  v9 = localizerCopy;
  v21 = v9;
  v10 = v7;
  v22 = v10;
  [attributes2 enumerateKeysAndObjectsUsingBlock:v20];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__INCodableDescription_dictionaryRepresentationWithLocalizer___block_invoke_2;
  v19[3] = &unk_1E727EE08;
  v19[4] = v24;
  [v10 sortUsingComparator:v19];
  __NameKey = [objc_opt_class() __NameKey];
  v26[0] = __NameKey;
  typeName = [(INCodableDescription *)self typeName];
  null = typeName;
  if (!typeName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27[0] = null;
  _attributesKey = [(INCodableDescription *)self _attributesKey];
  v26[1] = _attributesKey;
  v27[1] = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  if (!typeName)
  {
  }

  if_dictionaryWithNonEmptyValues = [v15 if_dictionaryWithNonEmptyValues];

  _Block_object_dispose(v24, 8);
  v17 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
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

- (void)updateWithDictionary:(id)dictionary
{
  v59 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  __NameKey = [objc_opt_class() __NameKey];
  v6 = [dictionaryCopy objectForKey:__NameKey];
  typeName = self->_typeName;
  self->_typeName = v6;

  _attributesKey = [(INCodableDescription *)self _attributesKey];
  v47 = dictionaryCopy;
  v9 = [dictionaryCopy objectForKey:_attributesKey];

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
        _attributeKey = [(INCodableDescription *)self _attributeKey];
        v17 = v15;
        v18 = _attributeKey;
        v19 = [v18 stringByAppendingString:@"EnumType"];
        v20 = [v17 objectForKeyedSubscript:v19];

        v21 = off_1E727ABF8;
        if (!v20)
        {
          v22 = [v18 stringByAppendingString:@"SupportsMultipleValues"];
          v23 = [v17 objectForKeyedSubscript:v22];
          bOOLValue = [v23 BOOLValue];

          v25 = bOOLValue ^ 1u;
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
        _attributeTagKey = [v34 _attributeTagKey];
        v36 = [v17 objectForKeyedSubscript:_attributeTagKey];

        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v36, "integerValue")}];
        [v10 setObject:v34 forKey:v37];

        propertyName = [v34 propertyName];
        if (propertyName)
        {
          [(NSMutableDictionary *)self->_attributesByName setObject:v34 forKeyedSubscript:propertyName];
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
  attributes = [(INCodableDescription *)self attributes];
  allValues = [attributes allValues];

  v41 = [allValues countByEnumeratingWithState:&v49 objects:v57 count:16];
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
          objc_enumerationMutation(allValues);
        }

        relationship = [*(*(&v49 + 1) + 8 * v44) relationship];
        [relationship _establishRelationship];

        ++v44;
      }

      while (v42 != v44);
      v42 = [allValues countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v42);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableDescription;
  v6 = [(INCodableDescription *)&v11 description];
  dictionaryRepresentation = [(INCodableDescription *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = objc_alloc_init(self);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__13079;
  v53 = __Block_byref_object_dispose__13080;
  v54 = 0;
  v8 = [representationCopy intents_safeObjectForKey:@"attributes" ofType:objc_opt_class()];
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
    if (error)
    {
      v13 = v12;
      *error = v12;
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
    v16 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:representationCopy key:@"_localizationTable" error:&obj];
    objc_storeStrong(v15, obj);
    v17 = v7[3];
    v7[3] = v16;

    v18 = (v50 + 5);
    v43 = v50[5];
    v19 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:representationCopy key:@"_customLocalizationTable" error:&v43];
    objc_storeStrong(v18, v43);
    v20 = v7[4];
    v7[4] = v19;

    v21 = [representationCopy intents_stringForKey:@"className"];
    v22 = v7[8];
    v7[8] = v21;

    v23 = [representationCopy intents_stringForKey:@"typeName"];
    v24 = v7[9];
    v7[9] = v23;

    v25 = [representationCopy intents_stringForKey:@"intentDefinitionNamespace"];
    v26 = v7[7];
    v7[7] = v25;

    v27 = [representationCopy intents_stringForKey:@"semanticRoot"];
    v28 = v7[12];
    v7[12] = v27;

    v29 = [representationCopy intents_stringForKey:@"mainBundleIdentifier"];
    v30 = v7[5];
    v7[5] = v29;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    attributes = [v7 attributes];
    allValues = [attributes allValues];

    v33 = [allValues countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v33)
    {
      v34 = *v40;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(allValues);
          }

          relationship = [*(*(&v39 + 1) + 8 * i) relationship];
          [relationship _establishRelationship];
        }

        v33 = [allValues countByEnumeratingWithState:&v39 objects:v55 count:16];
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

+ (id)_codableDescriptionForTypedObject:(id)object inDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dictionaryCopy = dictionary;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [dictionaryCopy objectForKey:v8];

  v10 = dictionaryCopy;
  if (v9)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v9;
    attributes = [v9 attributes];
    allValues = [attributes allValues];

    v13 = [allValues countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      v16 = 0x1E727A000uLL;
      v32 = dictionaryCopy;
      v33 = allValues;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if (v18)
          {
            v19 = *(v16 + 3032);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              propertyName = [v18 propertyName];
              v21 = [objectCopy valueForKey:propertyName];

              if (v21)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  firstObject = [v21 firstObject];
                  v23 = [INCodableDescription _codableDescriptionForTypedObject:firstObject inDictionary:v10];
                }

                else
                {
                  v23 = [INCodableDescription _codableDescriptionForTypedObject:v21 inDictionary:v10];
                }

                typeName = [v23 typeName];
                objectTypeName = [v18 objectTypeName];
                if (v23 && ([typeName isEqualToString:objectTypeName] & 1) == 0)
                {
                  [v18 setCodableDescription:v23];
                  [v23 typeName];
                  v27 = v26 = objectCopy;
                  [v18 setObjectTypeName:v27];

                  objectCopy = v26;
                  v10 = v32;
                }

                allValues = v33;
                v16 = 0x1E727A000;
              }
            }
          }
        }

        v14 = [allValues countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v9 = v31;
    v28 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)attributes usingTypes:(id)types
{
  v6 = MEMORY[0x1E695DFA8];
  typesCopy = types;
  attributesCopy = attributes;
  v9 = [v6 set];
  v10 = [self _calculateReferencedCodableDescriptionsFromAttributes:attributesCopy usingTypes:typesCopy foundAttributes:v9];

  return v10;
}

+ (id)_calculateReferencedCodableDescriptionsFromAttributes:(id)attributes usingTypes:(id)types foundAttributes:(id)foundAttributes
{
  typesCopy = types;
  foundAttributesCopy = foundAttributes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__INCodableDescription__calculateReferencedCodableDescriptionsFromAttributes_usingTypes_foundAttributes___block_invoke;
  v14[3] = &unk_1E727EE30;
  v15 = typesCopy;
  v16 = foundAttributesCopy;
  selfCopy = self;
  v10 = foundAttributesCopy;
  v11 = typesCopy;
  v12 = [attributes if_flatMap:v14];

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