@interface INIntentCodableDescription
+ (id)_intentClassNameWithDictionary:(id)a3;
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableAttribute)inputAttribute;
- (INCodableAttribute)keyAttribute;
- (INIntentCodableDescription)initWithCoder:(id)a3;
- (NSString)localizedDescriptiveText;
- (NSString)localizedTitle;
- (id)_attributeKey;
- (id)_attributesKey;
- (id)attributes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDescriptiveTextWithLocalizer:(id)a3;
- (id)localizedTitleWithLocalizer:(id)a3;
- (id)resolvableParameterCombinationsWithParameterCombinations:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)a3 intentResponseCodableDescription:(id)a4;
- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)a3 intentResponseCodableDescription:(id)a4;
- (void)_updateWithIntentCodableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INIntentCodableDescription

- (id)attributes
{
  v11.receiver = self;
  v11.super_class = INIntentCodableDescription;
  v3 = [(INCodableDescription *)&v11 attributes];
  v4 = [v3 objectForKeyedSubscript:&unk_1F02D7F90];

  if (!v4)
  {
    v5 = [v3 mutableCopy];
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

    v3 = v9;
  }

  return v3;
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

- (INIntentCodableDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = INIntentCodableDescription;
  v5 = [(INRootCodableDescription *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"title"];
    [(INIntentCodableDescription *)v5 setTitle:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleLocID"];
    [(INIntentCodableDescription *)v5 setTitleLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"descriptiveText"];
    [(INIntentCodableDescription *)v5 setDescriptiveText:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveTextLocID"];
    [(INIntentCodableDescription *)v5 setDescriptiveTextLocID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verb"];
    [(INIntentCodableDescription *)v5 setVerb:v16];

    -[INIntentCodableDescription setIntentCategory:](v5, "setIntentCategory:", [v4 decodeIntegerForKey:@"intentCategory"]);
    -[INIntentCodableDescription setUserConfirmationRequired:](v5, "setUserConfirmationRequired:", [v4 decodeBoolForKey:@"userConfirmationRequired"]);
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultImageName"];
    [(INIntentCodableDescription *)v5 setDefaultImageName:v17];

    -[INIntentCodableDescription setConfigurable:](v5, "setConfigurable:", [v4 decodeBoolForKey:@"configurable"]);
    -[INIntentCodableDescription setForeground:](v5, "setForeground:", [v4 decodeBoolForKey:@"foreground"]);
    -[INIntentCodableDescription setDeprecated:](v5, "setDeprecated:", [v4 decodeBoolForKey:@"deprecated"]);
    -[INIntentCodableDescription setEligibleForSuggestions:](v5, "setEligibleForSuggestions:", [v4 decodeBoolForKey:@"eligibleForSuggestions"]);
    -[INIntentCodableDescription setEligibleForWidgets:](v5, "setEligibleForWidgets:", [v4 decodeBoolForKey:@"eligibleForWidgets"]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_inputAttributeName"];
    [(INIntentCodableDescription *)v5 _setInputAttributeName:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyAttributeName"];
    [(INIntentCodableDescription *)v5 _setKeyAttributeName:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityVerbs"];
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

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"versioningHash"];
    [(INIntentCodableDescription *)v5 setVersioningHash:v23];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INIntentCodableDescription;
  v4 = a3;
  [(INRootCodableDescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_titleLocID forKey:@"titleLocID"];
  [v4 encodeObject:self->_descriptiveText forKey:@"descriptiveText"];
  [v4 encodeObject:self->_descriptiveTextLocID forKey:@"descriptiveTextLocID"];
  [v4 encodeObject:self->_verb forKey:@"verb"];
  [v4 encodeInteger:self->_intentCategory forKey:@"intentCategory"];
  [v4 encodeBool:self->_userConfirmationRequired forKey:@"userConfirmationRequired"];
  [v4 encodeObject:self->_defaultImageName forKey:@"defaultImageName"];
  [v4 encodeBool:self->_configurable forKey:@"configurable"];
  [v4 encodeBool:self->_foreground forKey:@"foreground"];
  [v4 encodeBool:self->_deprecated forKey:@"deprecated"];
  [v4 encodeBool:self->_eligibleForSuggestions forKey:@"eligibleForSuggestions"];
  [v4 encodeBool:self->_eligibleForWidgets forKey:@"eligibleForWidgets"];
  [v4 encodeObject:self->_inputAttributeName forKey:@"_inputAttributeName"];
  [v4 encodeObject:self->_keyAttributeName forKey:@"_keyAttributeName"];
  [v4 encodeObject:self->_entityVerbs forKey:@"entityVerbs"];
  [v4 encodeObject:self->_versioningHash forKey:@"versioningHash"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = INIntentCodableDescription;
  v16 = 0;
  v7 = [(INRootCodableDescription *)&v15 widgetPlistableRepresentationWithParameters:v6 error:&v16];
  v8 = v16;
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
    v12 = [(NSString *)self->_title intents_encodeForPlistRepresentationWithParameters:v6];
    [v7 intents_setPlistSafeObject:v12 forKey:@"title"];

    [v7 intents_setPlistSafeObject:self->_titleLocID forKey:@"titleLocID"];
    v13 = [(NSString *)self->_descriptiveText intents_encodeForPlistRepresentationWithParameters:v6];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)_reestablishReferencedCodableDescriptionsUsingTypes:(id)a3 intentResponseCodableDescription:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = MEMORY[0x1E695DFA0];
  v9 = [(INRootCodableDescription *)v7 referencedCodableDescriptions];
  v10 = [v8 orderedSetWithArray:v9];

  v11 = [(INIntentCodableDescription *)v7 attributes];
  v12 = [v11 allValues];
  v13 = [v6 attributes];
  v14 = [v13 allValues];
  v15 = [v12 arrayByAddingObjectsFromArray:v14];

  v16 = [objc_opt_class() _calculateReferencedCodableDescriptionsFromAttributes:v15 usingTypes:v18];
  [v10 addObjectsFromArray:v16];

  v17 = [v10 array];
  [(INRootCodableDescription *)v7 _setReferencedCodableDescriptions:v17];

  objc_sync_exit(v7);
}

- (void)_establishReferencedCodableDescriptionsUsingTypes:(id)a3 intentResponseCodableDescription:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(INIntentCodableDescription *)v7 attributes];
  v9 = [v8 allValues];
  v10 = [v6 attributes];
  v11 = [v10 allValues];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  v13 = [objc_opt_class() _calculateReferencedCodableDescriptionsFromAttributes:v12 usingTypes:v14];
  [(INRootCodableDescription *)v7 _setReferencedCodableDescriptions:v13];

  objc_sync_exit(v7);
}

- (void)_updateWithIntentCodableDescription:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _localizationTable];
  [(INCodableDescription *)self _setCustomLocalizationTable:v5];

  v6 = [v4 title];
  [(INIntentCodableDescription *)self setTitle:v6];

  v7 = [v4 titleLocID];
  [(INIntentCodableDescription *)self setTitleLocID:v7];

  v8 = [v4 descriptiveText];
  [(INIntentCodableDescription *)self setDescriptiveText:v8];

  v9 = [v4 descriptiveTextLocID];
  [(INIntentCodableDescription *)self setDescriptiveTextLocID:v9];

  v10 = [v4 defaultImageName];
  [(INIntentCodableDescription *)self setDefaultImageName:v10];

  if ([v4 isConfigurable])
  {
    v11 = [v4 inputAttribute];
    v12 = [v11 propertyName];
    [(INIntentCodableDescription *)self _setInputAttributeName:v12];

    v13 = [v4 keyAttribute];
    v14 = [v13 propertyName];
    [(INIntentCodableDescription *)self _setKeyAttributeName:v14];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [(INIntentCodableDescription *)self attributes];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        v23 = [v22 propertyName];
        v24 = [v4 attributeByName:v23];

        v25 = [v24 displayName];
        [v22 setDisplayName:v25];

        v26 = [v24 displayNameID];
        [v22 setDisplayNameID:v26];

        if ([v22 supportsResolution])
        {
          [v22 setSupportsResolution:{objc_msgSend(v24, "supportsResolution")}];
        }

        [v22 setSupportsDynamicEnumeration:{objc_msgSend(v24, "supportsDynamicEnumeration")}];
        v27 = [v24 metadata];
        [v22 setMetadata:v27];

        v28 = [v24 relationship];
        [v22 setRelationship:v28];

        v29 = [v24 displayPriorityRank];
        [v22 setDisplayPriorityRank:v29];

        v30 = [v22 displayPriorityRank];

        if (v30)
        {
          [v15 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  [v15 sortUsingComparator:&__block_literal_global_37491];
  [(INCodableDescription *)self setDisplayOrderedAttributes:v15];
  v31 = [v4 entityVerbs];
  [(INIntentCodableDescription *)self setEntityVerbs:v31];

  v32 = [v4 semanticRoot];
  [(INCodableDescription *)self setSemanticRoot:v32];

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

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v98[18] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v95.receiver = self;
  v95.super_class = INIntentCodableDescription;
  v78 = [(INCodableDescription *)&v95 dictionaryRepresentationWithLocalizer:v4];
  v89 = [objc_opt_class() __ClassNameKey];
  v97[0] = v89;
  v5 = [(INCodableDescription *)self className];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v5;
  v98[0] = v5;
  v87 = [objc_opt_class() __TitleKey];
  v97[1] = v87;
  v7 = [(INIntentCodableDescription *)self localizedTitleWithLocalizer:v4];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v7;
  v98[1] = v7;
  v85 = [objc_opt_class() __TitleIDKey];
  v97[2] = v85;
  v9 = [(INIntentCodableDescription *)self titleLocID];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v9;
  v98[2] = v9;
  v83 = [objc_opt_class() __DescriptionKey];
  v97[3] = v83;
  v11 = [(INIntentCodableDescription *)self localizedDescriptiveTextWithLocalizer:v4];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v11;
  v98[3] = v11;
  v81 = [objc_opt_class() __DescriptionIDKey];
  v97[4] = v81;
  v13 = [(INIntentCodableDescription *)self descriptiveTextLocID];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v13;
  v98[4] = v13;
  v79 = [objc_opt_class() __VerbKey];
  v97[5] = v79;
  v15 = [(INIntentCodableDescription *)self verb];
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v15;
  v98[5] = v15;
  v77 = [objc_opt_class() __CategoryKey];
  v97[6] = v77;
  v17 = [(INIntentCodableDescription *)self intentCategory];
  if ((v17 - 1) > 0x13)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7286400[v17 - 1];
  }

  v86 = v8;
  v88 = v6;
  v76 = v18;
  v98[6] = v76;
  v75 = [objc_opt_class() __DefaultImageNameKey];
  v97[7] = v75;
  v19 = [(INIntentCodableDescription *)self defaultImageName];
  v20 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v19;
  v98[7] = v19;
  v73 = [objc_opt_class() __UserConfirmationRequiredKey];
  v97[8] = v73;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription userConfirmationRequired](self, "userConfirmationRequired")}];
  v72 = v21;
  if (!v21)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v21;
  v98[8] = v21;
  v71 = [objc_opt_class() __InputKey];
  v97[9] = v71;
  v22 = [(INIntentCodableDescription *)self _inputAttributeName];
  v70 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v22;
  v98[9] = v22;
  v69 = [objc_opt_class() __KeyParameterKey];
  v97[10] = v69;
  v23 = [(INIntentCodableDescription *)self _keyAttributeName];
  v90 = v23;
  if (!v23)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v23;
  v98[10] = v23;
  v68 = [objc_opt_class() __ConfigurableKey];
  v97[11] = v68;
  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isConfigurable](self, "isConfigurable")}];
  v98[11] = v67;
  v66 = [objc_opt_class() __ForegroundKey];
  v97[12] = v66;
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isForeground](self, "isForeground")}];
  v98[12] = v65;
  v64 = [objc_opt_class() __DeprecatedKey];
  v97[13] = v64;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentCodableDescription isDeprecated](self, "isDeprecated")}];
  v98[13] = v63;
  v62 = [objc_opt_class() __EntityKey];
  v97[14] = v62;
  v24 = [(INCodableDescription *)self semanticRoot];
  v25 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v20;
  v80 = v14;
  v82 = v12;
  v84 = v10;
  v47 = v24;
  v98[14] = v24;
  v61 = [objc_opt_class() __VerbAssociationsKey];
  v97[15] = v61;
  v26 = [(INIntentCodableDescription *)self entityVerbs];
  v60 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v26;
  v98[15] = v26;
  v58 = [objc_opt_class() __PhrasesKey];
  v97[16] = v58;
  v27 = [(INIntentCodableDescription *)self phrases];
  v28 = [v27 count];

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

        v35 = [*(*(&v91 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:v4];
        [v29 if_addObjectIfNonNil:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v32);
  }

  if (v29)
  {
    v36 = 0;
    v37 = v29;
  }

  else
  {
LABEL_38:
    v37 = [MEMORY[0x1E695DFB0] null];
    v29 = 0;
    v36 = 1;
  }

  v98[16] = v37;
  v38 = [objc_opt_class() __HashKey];
  v97[17] = v38;
  v39 = [(INIntentCodableDescription *)self versioningHash];
  v40 = v39;
  if (!v39)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v98[17] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:18];
  v59 = [v78 if_dictionaryByAddingEntriesFromDictionary:v41];

  if (!v39)
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

  v43 = [v59 if_dictionaryWithNonEmptyValues];

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

- (void)updateWithDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = INIntentCodableDescription;
  [(INCodableDescription *)&v66 updateWithDictionary:v4];
  v5 = [objc_opt_class() _intentClassNameWithDictionary:v4];
  [(INCodableDescription *)self setClassName:v5];

  v6 = [objc_opt_class() __TitleKey];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = [objc_opt_class() __DescriptionKey];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v7)
  {
    v10 = v9;
    v9 = v7;
  }

  else
  {
    v11 = [objc_opt_class() __SummaryKey];
    v10 = [v4 objectForKeyedSubscript:v11];
  }

  [(INIntentCodableDescription *)self setTitle:v9];
  v12 = [objc_opt_class() __TitleIDKey];
  v13 = [v4 objectForKeyedSubscript:v12];
  [(INIntentCodableDescription *)self setTitleLocID:v13];

  [(INIntentCodableDescription *)self setDescriptiveText:v10];
  v14 = [objc_opt_class() __DescriptionIDKey];
  v15 = [v4 objectForKeyedSubscript:v14];
  [(INIntentCodableDescription *)self setDescriptiveTextLocID:v15];

  v16 = [objc_opt_class() __VerbKey];
  v17 = [v4 objectForKeyedSubscript:v16];
  [(INIntentCodableDescription *)self setVerb:v17];

  v18 = [objc_opt_class() __CategoryKey];
  v19 = [v4 objectForKeyedSubscript:v18];
  [(INIntentCodableDescription *)self setIntentCategory:INIntentCategoryWithString(v19)];

  v20 = [objc_opt_class() __DefaultImageNameKey];
  v21 = [v4 objectForKeyedSubscript:v20];
  [(INIntentCodableDescription *)self setDefaultImageName:v21];

  v22 = [objc_opt_class() __UserConfirmationRequiredKey];
  v23 = [v4 objectForKeyedSubscript:v22];
  -[INIntentCodableDescription setUserConfirmationRequired:](self, "setUserConfirmationRequired:", [v23 BOOLValue]);

  v24 = [objc_opt_class() __ConfigurableKey];
  v25 = [v4 objectForKeyedSubscript:v24];
  -[INIntentCodableDescription setConfigurable:](self, "setConfigurable:", [v25 BOOLValue]);

  v26 = [objc_opt_class() __DeprecatedKey];
  v27 = [v4 objectForKeyedSubscript:v26];
  -[INIntentCodableDescription setDeprecated:](self, "setDeprecated:", [v27 BOOLValue]);

  v28 = [objc_opt_class() __ForegroundKey];
  v29 = [v4 objectForKeyedSubscript:v28];
  -[INIntentCodableDescription setForeground:](self, "setForeground:", [v29 BOOLValue]);

  v30 = [objc_opt_class() __IneligibleForSuggestionsKey];
  v31 = [v4 objectForKeyedSubscript:v30];
  -[INIntentCodableDescription setEligibleForSuggestions:](self, "setEligibleForSuggestions:", [v31 BOOLValue] ^ 1);

  v32 = [objc_opt_class() __EligibleForWidgetsKey];
  v33 = [v4 objectForKeyedSubscript:v32];
  -[INIntentCodableDescription setEligibleForWidgets:](self, "setEligibleForWidgets:", [v33 BOOLValue]);

  v34 = [objc_opt_class() __InputKey];
  v35 = [v4 objectForKeyedSubscript:v34];
  [(INIntentCodableDescription *)self _setInputAttributeName:v35];

  v36 = [objc_opt_class() __KeyParameterKey];
  v37 = [v4 objectForKeyedSubscript:v36];
  [(INIntentCodableDescription *)self _setKeyAttributeName:v37];

  v38 = [objc_opt_class() __VerbAssociationsKey];
  v39 = [v4 objectForKeyedSubscript:v38];
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

  v42 = [objc_opt_class() __EntityKey];
  v43 = [v4 objectForKeyedSubscript:v42];
  [(INCodableDescription *)self setSemanticRoot:v43];

  v44 = [objc_opt_class() __HashKey];
  v45 = [v4 objectForKeyedSubscript:v44];
  [(INIntentCodableDescription *)self setVersioningHash:v45];

  v46 = [objc_opt_class() __PhrasesKey];
  v47 = [v4 objectForKey:v46];

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
    v61 = v4;
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

    v4 = v61;
    v10 = v60;
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (id)localizedDescriptiveTextWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodableDescription *)self descriptiveTextLocID];
  v6 = [(INIntentCodableDescription *)self descriptiveText];
  v7 = [(INCodableDescription *)self _customLocalizationTable];
  if (v7)
  {
    v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);
  }

  else
  {
    v9 = [(INCodableDescription *)self _localizationTable];
    v8 = INLocalizedStringFromCodable(v5, v6, v9, v4, 0);
  }

  return v8;
}

- (NSString)localizedDescriptiveText
{
  v3 = objc_opt_new();
  v4 = [(INIntentCodableDescription *)self localizedDescriptiveTextWithLocalizer:v3];

  return v4;
}

- (id)localizedTitleWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodableDescription *)self titleLocID];
  v6 = [(INIntentCodableDescription *)self title];
  v7 = [(INCodableDescription *)self _customLocalizationTable];
  if (v7)
  {
    v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);
  }

  else
  {
    v9 = [(INCodableDescription *)self _localizationTable];
    v8 = INLocalizedStringFromCodable(v5, v6, v9, v4, 0);
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
  v3 = [(INIntentCodableDescription *)self _keyAttributeName];

  if (v3)
  {
    v4 = [(INIntentCodableDescription *)self _keyAttributeName];
    v5 = [(INCodableDescription *)self attributeByName:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (INCodableAttribute)inputAttribute
{
  v3 = [(INIntentCodableDescription *)self _inputAttributeName];

  if (v3)
  {
    v4 = [(INIntentCodableDescription *)self _inputAttributeName];
    v5 = [(INCodableDescription *)self attributeByName:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resolvableParameterCombinationsWithParameterCombinations:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = v4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v4 allKeys];
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
              v16 = [v15 supportsResolution];

              if (!v16)
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

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25.receiver = a1;
  v25.super_class = &OBJC_METACLASS___INIntentCodableDescription;
  v26 = 0;
  v7 = objc_msgSendSuper2(&v25, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v26);
  v8 = v26;
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
    v12 = [v6 intents_stringForKey:@"title"];
    [v7 setTitle:v12];

    v13 = [v6 intents_stringForKey:@"titleLocID"];
    [v7 setTitleLocID:v13];

    v14 = [v6 intents_stringForKey:@"descriptiveText"];
    [v7 setDescriptiveText:v14];

    v15 = [v6 intents_stringForKey:@"descriptiveTextLocID"];
    [v7 setDescriptiveTextLocID:v15];

    v16 = [v6 intents_stringForKey:@"verb"];
    [v7 setVerb:v16];

    [v7 setIntentCategory:{objc_msgSend(v6, "intents_intForKey:", @"intentCategory"}];
    [v7 setUserConfirmationRequired:{objc_msgSend(v6, "intents_BOOLForKey:", @"userConfirmationRequired"}];
    v17 = [v6 intents_stringForKey:@"defaultImageName"];
    [v7 setDefaultImageName:v17];

    [v7 setConfigurable:{objc_msgSend(v6, "intents_BOOLForKey:", @"configurable"}];
    [v7 setForeground:{objc_msgSend(v6, "intents_BOOLForKey:", @"foreground"}];
    [v7 setDeprecated:{objc_msgSend(v6, "intents_BOOLForKey:", @"deprecated"}];
    [v7 setEligibleForSuggestions:{objc_msgSend(v6, "intents_BOOLForKey:", @"eligibleForSuggestions"}];
    [v7 setEligibleForWidgets:{objc_msgSend(v6, "intents_BOOLForKey:", @"eligibleForWidgets"}];
    v18 = [v6 intents_stringForKey:@"_inputAttributeName"];
    [v7 _setInputAttributeName:v18];

    v19 = [v6 intents_stringForKey:@"_keyAttributeName"];
    [v7 _setKeyAttributeName:v19];

    v20 = [v6 intents_safeObjectForKey:@"entityVerbs" ofType:objc_opt_class()];
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

    v23 = [v6 intents_numberForKey:@"versioningHash"];
    [v7 setVersioningHash:v23];

    v11 = v7;
  }

  return v11;
}

+ (id)_intentClassNameWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() __ClassNameKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [objc_opt_class() __ClassPrefixKey];
    v9 = [v3 objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F01E0850;
    }

    v12 = [objc_opt_class() __NameKey];
    v13 = [v3 objectForKey:v12];
    v6 = [v7 stringWithFormat:@"%@%@Intent", v11, v13];
  }

  return v6;
}

@end