@interface INIntentCodableDescription
+ (id)_intentClassNameWithDictionary:(id)dictionary;
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableAttribute)inputAttribute;
- (INCodableAttribute)keyAttribute;
- (INIntentCodableDescription)initWithCoder:(id)coder;
- (NSString)localizedDescriptiveText;
- (NSString)localizedTitle;
- (id)_attributeKey;
- (id)_attributesKey;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDescriptiveTextWithLocalizer:(id)localizer;
- (id)localizedTitleWithLocalizer:(id)localizer;
- (id)resolvableParameterCombinationsWithParameterCombinations:(id)combinations;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)types intentResponseCodableDescription:(id)description;
- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)types intentResponseCodableDescription:(id)description;
- (void)_updateWithIntentCodableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INIntentCodableDescription

- (id)attributes
{
  v11.receiver = self;
  v11.super_class = INIntentCodableDescription;
  attributes = [(INCodableDescription *)&v11 attributes];
  v4 = [attributes objectForKeyedSubscript:&unk_1F02D7F90];

  if (!v4)
  {
    v5 = [attributes mutableCopy];
    v6 = objc_alloc_init(INCodableObjectAttribute);
    [(INCodableAttribute *)v6 setModifier:1];
    [(INCodableAttribute *)v6 setPropertyName:@"_metadata"];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(INCodableObjectAttribute *)v6 setTypeName:v8];

    [(INCodableAttribute *)v6 setDisplayPriorityRank:&unk_1F02D7FA8];
    [v5 setObject:v6 forKeyedSubscript:&unk_1F02D7F90];

    v9 = [v5 copy];
    [(INCodableDescription *)self setAttributes:v9];

    attributes = v9;
  }

  return attributes;
}

- (id)_attributesKey
{
  v2 = objc_opt_class();

  return [v2 __ParametersKey];
}

- (id)_attributeKey
{
  v2 = objc_opt_class();

  return [v2 __ParameterKey];
}

- (INIntentCodableDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = INIntentCodableDescription;
  v5 = [(INRootCodableDescription *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"title"];
    [(INIntentCodableDescription *)v5 setTitle:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleLocID"];
    [(INIntentCodableDescription *)v5 setTitleLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"descriptiveText"];
    [(INIntentCodableDescription *)v5 setDescriptiveText:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveTextLocID"];
    [(INIntentCodableDescription *)v5 setDescriptiveTextLocID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verb"];
    [(INIntentCodableDescription *)v5 setVerb:v16];

    -[INIntentCodableDescription setIntentCategory:](v5, "setIntentCategory:", [coderCopy decodeIntegerForKey:@"intentCategory"]);
    -[INIntentCodableDescription setUserConfirmationRequired:](v5, "setUserConfirmationRequired:", [coderCopy decodeBoolForKey:@"userConfirmationRequired"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultImageName"];
    [(INIntentCodableDescription *)v5 setDefaultImageName:v17];

    -[INIntentCodableDescription setConfigurable:](v5, "setConfigurable:", [coderCopy decodeBoolForKey:@"configurable"]);
    -[INIntentCodableDescription setForeground:](v5, "setForeground:", [coderCopy decodeBoolForKey:@"foreground"]);
    -[INIntentCodableDescription setDeprecated:](v5, "setDeprecated:", [coderCopy decodeBoolForKey:@"deprecated"]);
    -[INIntentCodableDescription setEligibleForSuggestions:](v5, "setEligibleForSuggestions:", [coderCopy decodeBoolForKey:@"eligibleForSuggestions"]);
    -[INIntentCodableDescription setEligibleForWidgets:](v5, "setEligibleForWidgets:", [coderCopy decodeBoolForKey:@"eligibleForWidgets"]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_inputAttributeName"];
    [(INIntentCodableDescription *)v5 _setInputAttributeName:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyAttributeName"];
    [(INIntentCodableDescription *)v5 _setKeyAttributeName:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityVerbs"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    [(INIntentCodableDescription *)v5 setEntityVerbs:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"versioningHash"];
    [(INIntentCodableDescription *)v5 setVersioningHash:v23];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INIntentCodableDescription;
  coderCopy = coder;
  [(INRootCodableDescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_titleLocID forKey:@"titleLocID"];
  [coderCopy encodeObject:self->_descriptiveText forKey:@"descriptiveText"];
  [coderCopy encodeObject:self->_descriptiveTextLocID forKey:@"descriptiveTextLocID"];
  [coderCopy encodeObject:self->_verb forKey:@"verb"];
  [coderCopy encodeInteger:self->_intentCategory forKey:@"intentCategory"];
  [coderCopy encodeBool:self->_userConfirmationRequired forKey:@"userConfirmationRequired"];
  [coderCopy encodeObject:self->_defaultImageName forKey:@"defaultImageName"];
  [coderCopy encodeBool:self->_configurable forKey:@"configurable"];
  [coderCopy encodeBool:self->_foreground forKey:@"foreground"];
  [coderCopy encodeBool:self->_deprecated forKey:@"deprecated"];
  [coderCopy encodeBool:self->_eligibleForSuggestions forKey:@"eligibleForSuggestions"];
  [coderCopy encodeBool:self->_eligibleForWidgets forKey:@"eligibleForWidgets"];
  [coderCopy encodeObject:self->_inputAttributeName forKey:@"_inputAttributeName"];
  [coderCopy encodeObject:self->_keyAttributeName forKey:@"_keyAttributeName"];
  [coderCopy encodeObject:self->_entityVerbs forKey:@"entityVerbs"];
  [coderCopy encodeObject:self->_versioningHash forKey:@"versioningHash"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = INIntentCodableDescription;
  v16 = 0;
  v7 = [(INRootCodableDescription *)&v15 widgetPlistableRepresentationWithParameters:parametersCopy error:&v16];
  v8 = v16;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [(NSString *)self->_title intents_encodeForPlistRepresentationWithParameters:parametersCopy];
    [v7 intents_setPlistSafeObject:v12 forKey:@"title"];

    [v7 intents_setPlistSafeObject:self->_titleLocID forKey:@"titleLocID"];
    v13 = [(NSString *)self->_descriptiveText intents_encodeForPlistRepresentationWithParameters:parametersCopy];
    [v7 intents_setPlistSafeObject:v13 forKey:@"descriptiveText"];

    [v7 intents_setPlistSafeObject:self->_descriptiveTextLocID forKey:@"descriptiveTextLocID"];
    [v7 intents_setPlistSafeObject:self->_verb forKey:@"verb"];
    [v7 intents_setIntegerIfNonZero:self->_intentCategory forKey:@"intentCategory"];
    [v7 intents_setBoolIfTrue:self->_userConfirmationRequired forKey:@"userConfirmationRequired"];
    [v7 intents_setPlistSafeObject:self->_defaultImageName forKey:@"defaultImageName"];
    [v7 intents_setBoolIfTrue:self->_configurable forKey:@"configurable"];
    [v7 intents_setBoolIfTrue:self->_foreground forKey:@"foreground"];
    [v7 intents_setBoolIfTrue:self->_deprecated forKey:@"deprecated"];
    [v7 intents_setBoolIfTrue:self->_eligibleForSuggestions forKey:@"eligibleForSuggestions"];
    [v7 intents_setBoolIfTrue:self->_eligibleForWidgets forKey:@"eligibleForWidgets"];
    [v7 intents_setPlistSafeObject:self->_inputAttributeName forKey:@"_inputAttributeName"];
    [v7 intents_setPlistSafeObject:self->_keyAttributeName forKey:@"_keyAttributeName"];
    [v7 intents_setPlistSafeObject:self->_entityVerbs forKey:@"entityVerbs"];
    [v7 intents_setPlistSafeObject:self->_versioningHash forKey:@"versioningHash"];
    v11 = v7;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)types intentResponseCodableDescription:(id)description
{
  typesCopy = types;
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = MEMORY[0x1E695DFA0];
  referencedCodableDescriptions = [(INRootCodableDescription *)selfCopy referencedCodableDescriptions];
  v10 = [v8 orderedSetWithArray:referencedCodableDescriptions];

  attributes = [(INIntentCodableDescription *)selfCopy attributes];
  allValues = [attributes allValues];
  attributes2 = [descriptionCopy attributes];
  allValues2 = [attributes2 allValues];
  v15 = [allValues arrayByAddingObjectsFromArray:allValues2];

  v16 = [objc_opt_class() _calculateReferencedCodableDescriptionsFromAttributes:v15 usingTypes:typesCopy];
  [v10 addObjectsFromArray:v16];

  array = [v10 array];
  [(INRootCodableDescription *)selfCopy _setReferencedCodableDescriptions:array];

  objc_sync_exit(selfCopy);
}

- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)types intentResponseCodableDescription:(id)description
{
  typesCopy = types;
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attributes = [(INIntentCodableDescription *)selfCopy attributes];
  allValues = [attributes allValues];
  attributes2 = [descriptionCopy attributes];
  allValues2 = [attributes2 allValues];
  v12 = [allValues arrayByAddingObjectsFromArray:allValues2];

  v13 = [objc_opt_class() _calculateReferencedCodableDescriptionsFromAttributes:v12 usingTypes:typesCopy];
  [(INRootCodableDescription *)selfCopy _setReferencedCodableDescriptions:v13];

  objc_sync_exit(selfCopy);
}

- (void)_updateWithIntentCodableDescription:(id)description
{
  v39 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  _localizationTable = [descriptionCopy _localizationTable];
  [(INCodableDescription *)self _setCustomLocalizationTable:_localizationTable];

  title = [descriptionCopy title];
  [(INIntentCodableDescription *)self setTitle:title];

  titleLocID = [descriptionCopy titleLocID];
  [(INIntentCodableDescription *)self setTitleLocID:titleLocID];

  descriptiveText = [descriptionCopy descriptiveText];
  [(INIntentCodableDescription *)self setDescriptiveText:descriptiveText];

  descriptiveTextLocID = [descriptionCopy descriptiveTextLocID];
  [(INIntentCodableDescription *)self setDescriptiveTextLocID:descriptiveTextLocID];

  defaultImageName = [descriptionCopy defaultImageName];
  [(INIntentCodableDescription *)self setDefaultImageName:defaultImageName];

  if ([descriptionCopy isConfigurable])
  {
    inputAttribute = [descriptionCopy inputAttribute];
    propertyName = [inputAttribute propertyName];
    [(INIntentCodableDescription *)self _setInputAttributeName:propertyName];

    keyAttribute = [descriptionCopy keyAttribute];
    propertyName2 = [keyAttribute propertyName];
    [(INIntentCodableDescription *)self _setKeyAttributeName:propertyName2];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  attributes = [(INIntentCodableDescription *)self attributes];
  allValues = [attributes allValues];

  v18 = [allValues countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        propertyName3 = [v22 propertyName];
        v24 = [descriptionCopy attributeByName:propertyName3];

        displayName = [v24 displayName];
        [v22 setDisplayName:displayName];

        displayNameID = [v24 displayNameID];
        [v22 setDisplayNameID:displayNameID];

        if ([v22 supportsResolution])
        {
          [v22 setSupportsResolution:{objc_msgSend(v24, "supportsResolution")}];
        }

        [v22 setSupportsDynamicEnumeration:{objc_msgSend(v24, "supportsDynamicEnumeration")}];
        metadata = [v24 metadata];
        [v22 setMetadata:metadata];

        relationship = [v24 relationship];
        [v22 setRelationship:relationship];

        displayPriorityRank = [v24 displayPriorityRank];
        [v22 setDisplayPriorityRank:displayPriorityRank];

        displayPriorityRank2 = [v22 displayPriorityRank];

        if (displayPriorityRank2)
        {
          [v15 addObject:v22];
        }
      }

      v19 = [allValues countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  [v15 sortUsingComparator:&__block_literal_global_37491];
  [(INCodableDescription *)self setDisplayOrderedAttributes:v15];
  entityVerbs = [descriptionCopy entityVerbs];
  [(INIntentCodableDescription *)self setEntityVerbs:entityVerbs];

  semanticRoot = [descriptionCopy semanticRoot];
  [(INCodableDescription *)self setSemanticRoot:semanticRoot];

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __66__INIntentCodableDescription__updateWithIntentCodableDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayPriorityRank];
  v6 = [v4 displayPriorityRank];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v98[18] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v95.receiver = self;
  v95.super_class = INIntentCodableDescription;
  v78 = [(INCodableDescription *)&v95 dictionaryRepresentationWithLocalizer:localizerCopy];
  __ClassNameKey = [objc_opt_class() __ClassNameKey];
  v97[0] = __ClassNameKey;
  className = [(INCodableDescription *)self className];
  v6 = className;
  if (!className)
  {
    className = [MEMORY[0x1E695DFB0] null];
  }

  v57 = className;
  v98[0] = className;
  __TitleKey = [objc_opt_class() __TitleKey];
  v97[1] = __TitleKey;
  null = [(INIntentCodableDescription *)self localizedTitleWithLocalizer:localizerCopy];
  v8 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null;
  v98[1] = null;
  __TitleIDKey = [objc_opt_class() __TitleIDKey];
  v97[2] = __TitleIDKey;
  titleLocID = [(INIntentCodableDescription *)self titleLocID];
  v10 = titleLocID;
  if (!titleLocID)
  {
    titleLocID = [MEMORY[0x1E695DFB0] null];
  }

  v55 = titleLocID;
  v98[2] = titleLocID;
  __DescriptionKey = [objc_opt_class() __DescriptionKey];
  v97[3] = __DescriptionKey;
  null2 = [(INIntentCodableDescription *)self localizedDescriptiveTextWithLocalizer:localizerCopy];
  v12 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null2;
  v98[3] = null2;
  __DescriptionIDKey = [objc_opt_class() __DescriptionIDKey];
  v97[4] = __DescriptionIDKey;
  descriptiveTextLocID = [(INIntentCodableDescription *)self descriptiveTextLocID];
  v14 = descriptiveTextLocID;
  if (!descriptiveTextLocID)
  {
    descriptiveTextLocID = [MEMORY[0x1E695DFB0] null];
  }

  v53 = descriptiveTextLocID;
  v98[4] = descriptiveTextLocID;
  __VerbKey = [objc_opt_class() __VerbKey];
  v97[5] = __VerbKey;
  verb = [(INIntentCodableDescription *)self verb];
  v16 = verb;
  if (!verb)
  {
    verb = [MEMORY[0x1E695DFB0] null];
  }

  v52 = verb;
  v98[5] = verb;
  __CategoryKey = [objc_opt_class() __CategoryKey];
  v97[6] = __CategoryKey;
  intentCategory = [(INIntentCodableDescription *)self intentCategory];
  if ((intentCategory - 1) > 0x13)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7286400[intentCategory - 1];
  }

  v86 = v8;
  v88 = v6;
  v76 = v18;
  v98[6] = v76;
  __DefaultImageNameKey = [objc_opt_class() __DefaultImageNameKey];
  v97[7] = __DefaultImageNameKey;
  defaultImageName = [(INIntentCodableDescription *)self defaultImageName];
  v20 = defaultImageName;
  if (!defaultImageName)
  {
    defaultImageName = [MEMORY[0x1E695DFB0] null];
  }

  v51 = defaultImageName;
  v98[7] = defaultImageName;
  __UserConfirmationRequiredKey = [objc_opt_class() __UserConfirmationRequiredKey];
  v97[8] = __UserConfirmationRequiredKey;
  null3 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription userConfirmationRequired](self, "userConfirmationRequired")}];
  v72 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null3;
  v98[8] = null3;
  __InputKey = [objc_opt_class() __InputKey];
  v97[9] = __InputKey;
  _inputAttributeName = [(INIntentCodableDescription *)self _inputAttributeName];
  v70 = _inputAttributeName;
  if (!_inputAttributeName)
  {
    _inputAttributeName = [MEMORY[0x1E695DFB0] null];
  }

  v49 = _inputAttributeName;
  v98[9] = _inputAttributeName;
  __KeyParameterKey = [objc_opt_class() __KeyParameterKey];
  v97[10] = __KeyParameterKey;
  _keyAttributeName = [(INIntentCodableDescription *)self _keyAttributeName];
  v90 = _keyAttributeName;
  if (!_keyAttributeName)
  {
    _keyAttributeName = [MEMORY[0x1E695DFB0] null];
  }

  v48 = _keyAttributeName;
  v98[10] = _keyAttributeName;
  __ConfigurableKey = [objc_opt_class() __ConfigurableKey];
  v97[11] = __ConfigurableKey;
  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isConfigurable](self, "isConfigurable")}];
  v98[11] = v67;
  __ForegroundKey = [objc_opt_class() __ForegroundKey];
  v97[12] = __ForegroundKey;
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isForeground](self, "isForeground")}];
  v98[12] = v65;
  __DeprecatedKey = [objc_opt_class() __DeprecatedKey];
  v97[13] = __DeprecatedKey;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isDeprecated](self, "isDeprecated")}];
  v98[13] = v63;
  __EntityKey = [objc_opt_class() __EntityKey];
  v97[14] = __EntityKey;
  semanticRoot = [(INCodableDescription *)self semanticRoot];
  v25 = semanticRoot;
  if (!semanticRoot)
  {
    semanticRoot = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v20;
  v80 = v14;
  v82 = v12;
  v84 = v10;
  v47 = semanticRoot;
  v98[14] = semanticRoot;
  __VerbAssociationsKey = [objc_opt_class() __VerbAssociationsKey];
  v97[15] = __VerbAssociationsKey;
  entityVerbs = [(INIntentCodableDescription *)self entityVerbs];
  v60 = entityVerbs;
  if (!entityVerbs)
  {
    entityVerbs = [MEMORY[0x1E695DFB0] null];
  }

  v46 = entityVerbs;
  v98[15] = entityVerbs;
  __PhrasesKey = [objc_opt_class() __PhrasesKey];
  v97[16] = __PhrasesKey;
  phrases = [(INIntentCodableDescription *)self phrases];
  v28 = [phrases count];

  if (!v28)
  {
    goto LABEL_38;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v30 = [(INIntentCodableDescription *)self phrases:v46];
  v31 = [v30 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v92;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v92 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v91 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:localizerCopy];
        [v29 if_addObjectIfNonNil:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v32);
  }

  if (v29)
  {
    v36 = 0;
    null4 = v29;
  }

  else
  {
LABEL_38:
    null4 = [MEMORY[0x1E695DFB0] null];
    v29 = 0;
    v36 = 1;
  }

  v98[16] = null4;
  __HashKey = [objc_opt_class() __HashKey];
  v97[17] = __HashKey;
  versioningHash = [(INIntentCodableDescription *)self versioningHash];
  null5 = versioningHash;
  if (!versioningHash)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v98[17] = null5;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:18];
  v59 = [v78 if_dictionaryByAddingEntriesFromDictionary:v41];

  if (!versioningHash)
  {
  }

  if (v36)
  {
  }

  if (!v60)
  {
  }

  if (!v25)
  {
  }

  v42 = v90;
  if (!v90)
  {

    v42 = 0;
  }

  if (!v70)
  {
  }

  if (!v72)
  {
  }

  if (!v74)
  {
  }

  if (!v16)
  {
  }

  if (!v80)
  {
  }

  if (!v82)
  {
  }

  if (!v84)
  {
  }

  if (!v86)
  {
  }

  if (!v88)
  {
  }

  if_dictionaryWithNonEmptyValues = [v59 if_dictionaryWithNonEmptyValues];

  v44 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v66.receiver = self;
  v66.super_class = INIntentCodableDescription;
  [(INCodableDescription *)&v66 updateWithDictionary:dictionaryCopy];
  v5 = [objc_opt_class() _intentClassNameWithDictionary:dictionaryCopy];
  [(INCodableDescription *)self setClassName:v5];

  __TitleKey = [objc_opt_class() __TitleKey];
  v7 = [dictionaryCopy objectForKeyedSubscript:__TitleKey];

  __DescriptionKey = [objc_opt_class() __DescriptionKey];
  v9 = [dictionaryCopy objectForKeyedSubscript:__DescriptionKey];

  if (v7)
  {
    v10 = v9;
    v9 = v7;
  }

  else
  {
    __SummaryKey = [objc_opt_class() __SummaryKey];
    v10 = [dictionaryCopy objectForKeyedSubscript:__SummaryKey];
  }

  [(INIntentCodableDescription *)self setTitle:v9];
  __TitleIDKey = [objc_opt_class() __TitleIDKey];
  v13 = [dictionaryCopy objectForKeyedSubscript:__TitleIDKey];
  [(INIntentCodableDescription *)self setTitleLocID:v13];

  [(INIntentCodableDescription *)self setDescriptiveText:v10];
  __DescriptionIDKey = [objc_opt_class() __DescriptionIDKey];
  v15 = [dictionaryCopy objectForKeyedSubscript:__DescriptionIDKey];
  [(INIntentCodableDescription *)self setDescriptiveTextLocID:v15];

  __VerbKey = [objc_opt_class() __VerbKey];
  v17 = [dictionaryCopy objectForKeyedSubscript:__VerbKey];
  [(INIntentCodableDescription *)self setVerb:v17];

  __CategoryKey = [objc_opt_class() __CategoryKey];
  v19 = [dictionaryCopy objectForKeyedSubscript:__CategoryKey];
  [(INIntentCodableDescription *)self setIntentCategory:INIntentCategoryWithString(v19)];

  __DefaultImageNameKey = [objc_opt_class() __DefaultImageNameKey];
  v21 = [dictionaryCopy objectForKeyedSubscript:__DefaultImageNameKey];
  [(INIntentCodableDescription *)self setDefaultImageName:v21];

  __UserConfirmationRequiredKey = [objc_opt_class() __UserConfirmationRequiredKey];
  v23 = [dictionaryCopy objectForKeyedSubscript:__UserConfirmationRequiredKey];
  -[INIntentCodableDescription setUserConfirmationRequired:](self, "setUserConfirmationRequired:", [v23 BOOLValue]);

  __ConfigurableKey = [objc_opt_class() __ConfigurableKey];
  v25 = [dictionaryCopy objectForKeyedSubscript:__ConfigurableKey];
  -[INIntentCodableDescription setConfigurable:](self, "setConfigurable:", [v25 BOOLValue]);

  __DeprecatedKey = [objc_opt_class() __DeprecatedKey];
  v27 = [dictionaryCopy objectForKeyedSubscript:__DeprecatedKey];
  -[INIntentCodableDescription setDeprecated:](self, "setDeprecated:", [v27 BOOLValue]);

  __ForegroundKey = [objc_opt_class() __ForegroundKey];
  v29 = [dictionaryCopy objectForKeyedSubscript:__ForegroundKey];
  -[INIntentCodableDescription setForeground:](self, "setForeground:", [v29 BOOLValue]);

  __IneligibleForSuggestionsKey = [objc_opt_class() __IneligibleForSuggestionsKey];
  v31 = [dictionaryCopy objectForKeyedSubscript:__IneligibleForSuggestionsKey];
  -[INIntentCodableDescription setEligibleForSuggestions:](self, "setEligibleForSuggestions:", [v31 BOOLValue] ^ 1);

  __EligibleForWidgetsKey = [objc_opt_class() __EligibleForWidgetsKey];
  v33 = [dictionaryCopy objectForKeyedSubscript:__EligibleForWidgetsKey];
  -[INIntentCodableDescription setEligibleForWidgets:](self, "setEligibleForWidgets:", [v33 BOOLValue]);

  __InputKey = [objc_opt_class() __InputKey];
  v35 = [dictionaryCopy objectForKeyedSubscript:__InputKey];
  [(INIntentCodableDescription *)self _setInputAttributeName:v35];

  __KeyParameterKey = [objc_opt_class() __KeyParameterKey];
  v37 = [dictionaryCopy objectForKeyedSubscript:__KeyParameterKey];
  [(INIntentCodableDescription *)self _setKeyAttributeName:v37];

  __VerbAssociationsKey = [objc_opt_class() __VerbAssociationsKey];
  v39 = [dictionaryCopy objectForKeyedSubscript:__VerbAssociationsKey];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = MEMORY[0x1E695E0F0];
  }

  [(INIntentCodableDescription *)self setEntityVerbs:v41];

  __EntityKey = [objc_opt_class() __EntityKey];
  v43 = [dictionaryCopy objectForKeyedSubscript:__EntityKey];
  [(INCodableDescription *)self setSemanticRoot:v43];

  __HashKey = [objc_opt_class() __HashKey];
  v45 = [dictionaryCopy objectForKeyedSubscript:__HashKey];
  [(INIntentCodableDescription *)self setVersioningHash:v45];

  __PhrasesKey = [objc_opt_class() __PhrasesKey];
  v47 = [dictionaryCopy objectForKey:__PhrasesKey];

  if (v47)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  if ([v49 count])
  {
    v60 = v10;
    v61 = dictionaryCopy;
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v51 = v49;
    v52 = [v51 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v63;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v63 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v62 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v57 = objc_alloc_init(INIntentCodablePhrase);
            [(INIntentCodablePhrase *)v57 _setCodableDescription:self];
            [(INIntentCodablePhrase *)v57 updateWithDictionary:v56];
            [(NSArray *)v50 if_addObjectIfNonNil:v57];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v53);
    }

    phrases = self->_phrases;
    self->_phrases = v50;

    dictionaryCopy = v61;
    v10 = v60;
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (id)localizedDescriptiveTextWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  descriptiveTextLocID = [(INIntentCodableDescription *)self descriptiveTextLocID];
  descriptiveText = [(INIntentCodableDescription *)self descriptiveText];
  _customLocalizationTable = [(INCodableDescription *)self _customLocalizationTable];
  if (_customLocalizationTable)
  {
    v8 = INLocalizedStringFromCodable(descriptiveTextLocID, descriptiveText, _customLocalizationTable, localizerCopy, 0);
  }

  else
  {
    _localizationTable = [(INCodableDescription *)self _localizationTable];
    v8 = INLocalizedStringFromCodable(descriptiveTextLocID, descriptiveText, _localizationTable, localizerCopy, 0);
  }

  return v8;
}

- (NSString)localizedDescriptiveText
{
  v3 = objc_opt_new();
  v4 = [(INIntentCodableDescription *)self localizedDescriptiveTextWithLocalizer:v3];

  return v4;
}

- (id)localizedTitleWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  titleLocID = [(INIntentCodableDescription *)self titleLocID];
  title = [(INIntentCodableDescription *)self title];
  _customLocalizationTable = [(INCodableDescription *)self _customLocalizationTable];
  if (_customLocalizationTable)
  {
    v8 = INLocalizedStringFromCodable(titleLocID, title, _customLocalizationTable, localizerCopy, 0);
  }

  else
  {
    _localizationTable = [(INCodableDescription *)self _localizationTable];
    v8 = INLocalizedStringFromCodable(titleLocID, title, _localizationTable, localizerCopy, 0);
  }

  return v8;
}

- (NSString)localizedTitle
{
  v3 = objc_opt_new();
  v4 = [(INIntentCodableDescription *)self localizedTitleWithLocalizer:v3];

  return v4;
}

- (INCodableAttribute)keyAttribute
{
  _keyAttributeName = [(INIntentCodableDescription *)self _keyAttributeName];

  if (_keyAttributeName)
  {
    _keyAttributeName2 = [(INIntentCodableDescription *)self _keyAttributeName];
    v5 = [(INCodableDescription *)self attributeByName:_keyAttributeName2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (INCodableAttribute)inputAttribute
{
  _inputAttributeName = [(INIntentCodableDescription *)self _inputAttributeName];

  if (_inputAttributeName)
  {
    _inputAttributeName2 = [(INIntentCodableDescription *)self _inputAttributeName];
    v5 = [(INCodableDescription *)self attributeByName:_inputAttributeName2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolvableParameterCombinationsWithParameterCombinations:(id)combinations
{
  v36 = *MEMORY[0x1E69E9840];
  combinationsCopy = combinations;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = combinationsCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [combinationsCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [(INCodableDescription *)self attributeByName:*(*(&v26 + 1) + 8 * j)];
              supportsResolution = [v15 supportsResolution];

              if (!supportsResolution)
              {
                v17 = 1;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v17 = 0;
LABEL_16:

        v18 = [v10 count];
        if ((v17 & 1) == 0 && v18)
        {
          v19 = [v24 objectForKeyedSubscript:v10];
          [v23 setObject:v19 forKeyedSubscript:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v20 = [v23 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = &OBJC_METACLASS___INIntentCodableDescription;
  v26 = 0;
  v7 = objc_msgSendSuper2(&v25, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v26);
  v8 = v26;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [representationCopy intents_stringForKey:@"title"];
    [v7 setTitle:v12];

    v13 = [representationCopy intents_stringForKey:@"titleLocID"];
    [v7 setTitleLocID:v13];

    v14 = [representationCopy intents_stringForKey:@"descriptiveText"];
    [v7 setDescriptiveText:v14];

    v15 = [representationCopy intents_stringForKey:@"descriptiveTextLocID"];
    [v7 setDescriptiveTextLocID:v15];

    v16 = [representationCopy intents_stringForKey:@"verb"];
    [v7 setVerb:v16];

    [v7 setIntentCategory:{objc_msgSend(representationCopy, "intents_intForKey:", @"intentCategory"}];
    [v7 setUserConfirmationRequired:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"userConfirmationRequired"}];
    v17 = [representationCopy intents_stringForKey:@"defaultImageName"];
    [v7 setDefaultImageName:v17];

    [v7 setConfigurable:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"configurable"}];
    [v7 setForeground:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"foreground"}];
    [v7 setDeprecated:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"deprecated"}];
    [v7 setEligibleForSuggestions:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"eligibleForSuggestions"}];
    [v7 setEligibleForWidgets:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"eligibleForWidgets"}];
    v18 = [representationCopy intents_stringForKey:@"_inputAttributeName"];
    [v7 _setInputAttributeName:v18];

    v19 = [representationCopy intents_stringForKey:@"_keyAttributeName"];
    [v7 _setKeyAttributeName:v19];

    v20 = [representationCopy intents_safeObjectForKey:@"entityVerbs" ofType:objc_opt_class()];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    [v7 setEntityVerbs:v22];

    v23 = [representationCopy intents_numberForKey:@"versioningHash"];
    [v7 setVersioningHash:v23];

    v11 = v7;
  }

  return v11;
}

+ (id)_intentClassNameWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __ClassNameKey = [objc_opt_class() __ClassNameKey];
  v5 = [dictionaryCopy objectForKeyedSubscript:__ClassNameKey];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    __ClassPrefixKey = [objc_opt_class() __ClassPrefixKey];
    v9 = [dictionaryCopy objectForKeyedSubscript:__ClassPrefixKey];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F01E0850;
    }

    __NameKey = [objc_opt_class() __NameKey];
    v13 = [dictionaryCopy objectForKey:__NameKey];
    v6 = [v7 stringWithFormat:@"%@%@Intent", v11, v13];
  }

  return v6;
}

@end