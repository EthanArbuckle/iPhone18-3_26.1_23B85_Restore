@interface INCodableAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableAttribute)initWithCoder:(id)a3;
- (INCodableDescription)_codableDescription;
- (NSString)localizedDisplayName;
- (SEL)getter;
- (SEL)setter;
- (id)__INCodableDescriptionArraySizeSizeClassKey;
- (id)__INCodableDescriptionArraySizeSizeKey;
- (id)__INCodableDescriptionArraySizesKey;
- (id)__INCodableDescriptionConfigurableKey;
- (id)__INCodableDescriptionDefaultKey;
- (id)__INCodableDescriptionDisplayNameIDKey;
- (id)__INCodableDescriptionDisplayNameKey;
- (id)__INCodableDescriptionDisplayPriorityKey;
- (id)__INCodableDescriptionEntityKeypathKey;
- (id)__INCodableDescriptionEnumTypeKey;
- (id)__INCodableDescriptionFixedSizeArrayKey;
- (id)__INCodableDescriptionMetadataKey;
- (id)__INCodableDescriptionNameKey;
- (id)__INCodableDescriptionPromptDialogsKey;
- (id)__INCodableDescriptionRelationshipKey;
- (id)__INCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INCodableDescriptionSupportsMultipleValuesKey;
- (id)__INCodableDescriptionSupportsResolutionKey;
- (id)__INCodableDescriptionSupportsSearchKey;
- (id)__INCodableDescriptionTagKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INCodableDescriptionUnsupportedReasonsKey;
- (id)__INCodableDescriptionWindowSizeKey;
- (id)__INIntentResponseCodableDescriptionArraySizeSizeClassKey;
- (id)__INIntentResponseCodableDescriptionArraySizeSizeKey;
- (id)__INIntentResponseCodableDescriptionArraySizesKey;
- (id)__INIntentResponseCodableDescriptionConfigurableKey;
- (id)__INIntentResponseCodableDescriptionDefaultKey;
- (id)__INIntentResponseCodableDescriptionDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionDisplayPriorityKey;
- (id)__INIntentResponseCodableDescriptionEntityKeypathKey;
- (id)__INIntentResponseCodableDescriptionEnumTypeKey;
- (id)__INIntentResponseCodableDescriptionFixedSizeArrayKey;
- (id)__INIntentResponseCodableDescriptionMetadataKey;
- (id)__INIntentResponseCodableDescriptionNameKey;
- (id)__INIntentResponseCodableDescriptionPromptDialogsKey;
- (id)__INIntentResponseCodableDescriptionRelationshipKey;
- (id)__INIntentResponseCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INIntentResponseCodableDescriptionSupportsMultipleValuesKey;
- (id)__INIntentResponseCodableDescriptionSupportsResolutionKey;
- (id)__INIntentResponseCodableDescriptionSupportsSearchKey;
- (id)__INIntentResponseCodableDescriptionTagKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionUnsupportedReasonsKey;
- (id)__INIntentResponseCodableDescriptionWindowSizeKey;
- (id)__INTypeCodableDescriptionArraySizeSizeClassKey;
- (id)__INTypeCodableDescriptionArraySizeSizeKey;
- (id)__INTypeCodableDescriptionArraySizesKey;
- (id)__INTypeCodableDescriptionConfigurableKey;
- (id)__INTypeCodableDescriptionDefaultKey;
- (id)__INTypeCodableDescriptionDisplayNameIDKey;
- (id)__INTypeCodableDescriptionDisplayNameKey;
- (id)__INTypeCodableDescriptionDisplayPriorityKey;
- (id)__INTypeCodableDescriptionEntityKeypathKey;
- (id)__INTypeCodableDescriptionEnumTypeKey;
- (id)__INTypeCodableDescriptionFixedSizeArrayKey;
- (id)__INTypeCodableDescriptionMetadataKey;
- (id)__INTypeCodableDescriptionNameKey;
- (id)__INTypeCodableDescriptionPromptDialogsKey;
- (id)__INTypeCodableDescriptionRelationshipKey;
- (id)__INTypeCodableDescriptionSupportsDynamicEnumerationKey;
- (id)__INTypeCodableDescriptionSupportsMultipleValuesKey;
- (id)__INTypeCodableDescriptionSupportsResolutionKey;
- (id)__INTypeCodableDescriptionSupportsSearchKey;
- (id)__INTypeCodableDescriptionTagKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionUnsupportedReasonsKey;
- (id)__INTypeCodableDescriptionWindowSizeKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDisplayNameWithLocalizer:(id)a3;
- (id)promptDialogWithType:(unint64_t)a3;
- (id)unsupportedReasonWithIndex:(unint64_t)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)arraySizeForSizeClass:(id)a3;
- (unint64_t)hash;
- (unint64_t)indexForUnsupportedReason:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableAttribute

- (unint64_t)hash
{
  v3 = [(INCodableAttribute *)self propertyName];
  v4 = [v3 hash];
  v5 = [(INCodableAttribute *)self displayPriorityRank];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableAttribute modifier](self, "modifier")}];
  v8 = [v7 hash];
  v11.receiver = self;
  v11.super_class = INCodableAttribute;
  v9 = v6 ^ [(INCodableAttribute *)&v11 hash];

  return v9 ^ v8;
}

- (INCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_internalCodableDescription);

  return WeakRetained;
}

- (id)__INCodableDescriptionNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeNameKey];

  return v3;
}

- (id)__INCodableDescriptionDisplayNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return v3;
}

- (id)__INCodableDescriptionDisplayNameIDKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return v3;
}

- (id)__INCodableDescriptionDisplayPriorityKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return v3;
}

- (id)__INCodableDescriptionDefaultKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDefaultKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsResolutionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsDynamicEnumerationKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsSearchKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return v3;
}

- (id)__INCodableDescriptionConfigurableKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return v3;
}

- (id)__INCodableDescriptionWindowSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return v3;
}

- (id)__INCodableDescriptionSupportsMultipleValuesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return v3;
}

- (id)__INCodableDescriptionFixedSizeArrayKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return v3;
}

- (id)__INCodableDescriptionPromptDialogsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return v3;
}

- (id)__INCodableDescriptionArraySizesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return v3;
}

- (id)__INCodableDescriptionUnsupportedReasonsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return v3;
}

- (id)__INCodableDescriptionMetadataKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataKey];

  return v3;
}

- (id)__INCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return v3;
}

- (id)__INCodableDescriptionRelationshipKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return v3;
}

- (id)__INCodableDescriptionEntityKeypathKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return v3;
}

- (id)__INCodableDescriptionTagKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTagKey];

  return v3;
}

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTypeKey];

  return v3;
}

- (INCodableAttribute)initWithCoder:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = INCodableAttribute;
  v5 = [(INCodableAttribute *)&v49 init];
  if (v5)
  {
    -[INCodableAttribute setModifier:](v5, "setModifier:", [v4 decodeIntegerForKey:@"modifier"]);
    -[INCodableAttribute setFixedSizeArray:](v5, "setFixedSizeArray:", [v4 decodeBoolForKey:@"fixedSizeArray"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyName"];
    [(INCodableAttribute *)v5 setPropertyName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayPriorityRank"];
    [(INCodableAttribute *)v5 setDisplayPriorityRank:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"displayName"];
    [(INCodableAttribute *)v5 setDisplayName:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameID"];
    [(INCodableAttribute *)v5 setDisplayNameID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    [(INCodableAttribute *)v5 setMetadata:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relationship"];
    [(INCodableAttribute *)v5 setRelationship:v14];

    -[INCodableAttribute setSupportsResolution:](v5, "setSupportsResolution:", [v4 decodeBoolForKey:@"supportsResolution"]);
    -[INCodableAttribute setConfigurable:](v5, "setConfigurable:", [v4 decodeBoolForKey:@"configurable"]);
    -[INCodableAttribute setSupportsDynamicEnumeration:](v5, "setSupportsDynamicEnumeration:", [v4 decodeBoolForKey:@"supportsDynamicEnumeration"]);
    -[INCodableAttribute setSupportsSearch:](v5, "setSupportsSearch:", [v4 decodeBoolForKey:@"supportsSearch"]);
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"promptDialogs"];
    [(INCodableAttribute *)v5 _setPromptDialogs:v18];

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"unsupportedReasons"];
    [(INCodableAttribute *)v5 _setUnsupportedReasons:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codableDescription"];
    [(INCodableAttribute *)v5 _setCodableDescription:v23];

    v44 = v4;
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_typeString"];
    [(INCodableAttribute *)v5 _setTypeString:v24];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = [(INCodableAttribute *)v5 promptDialogs];
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        v29 = 0;
        do
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v45 + 1) + 8 * v29);
          promptDialogsByType = v5->_promptDialogsByType;
          if (!promptDialogsByType)
          {
            v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v33 = v5->_promptDialogsByType;
            v5->_promptDialogsByType = v32;

            promptDialogsByType = v5->_promptDialogsByType;
          }

          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v30, "type")}];
          [(NSMutableDictionary *)promptDialogsByType setObject:v30 forKeyedSubscript:v34];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v27);
    }

    v4 = v44;
    v35 = [v44 decodeObjectOfClass:objc_opt_class() forKey:@"entityKeypath"];
    [(INCodableAttribute *)v5 setEntityKeypath:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
    v40 = [v44 decodeObjectOfClasses:v39 forKey:@"_arraySizesBySizeClass"];
    arraySizesBySizeClass = v5->_arraySizesBySizeClass;
    v5->_arraySizesBySizeClass = v40;

    -[INCodableAttribute setWindowSize:](v5, "setWindowSize:", [v44 decodeIntegerForKey:@"windowSize"]);
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modifier = self->_modifier;
  v6 = a3;
  [v6 encodeInteger:modifier forKey:@"modifier"];
  [v6 encodeObject:self->_propertyName forKey:@"propertyName"];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_displayNameID forKey:@"displayNameID"];
  [v6 encodeObject:self->_displayPriorityRank forKey:@"displayPriorityRank"];
  [v6 encodeBool:self->_supportsResolution forKey:@"supportsResolution"];
  [v6 encodeBool:self->_supportsDynamicEnumeration forKey:@"supportsDynamicEnumeration"];
  [v6 encodeBool:self->_supportsSearch forKey:@"supportsSearch"];
  [v6 encodeBool:self->_configurable forKey:@"configurable"];
  [v6 encodeObject:self->_metadata forKey:@"metadata"];
  [v6 encodeObject:self->_relationship forKey:@"relationship"];
  [v6 encodeObject:self->_promptDialogs forKey:@"promptDialogs"];
  [v6 encodeObject:self->_unsupportedReasons forKey:@"unsupportedReasons"];
  [v6 encodeObject:self->_typeString forKey:@"_typeString"];
  WeakRetained = objc_loadWeakRetained(&self->_internalCodableDescription);
  [v6 encodeConditionalObject:WeakRetained forKey:@"_codableDescription"];

  [v6 encodeObject:self->_entityKeypath forKey:@"entityKeypath"];
  [v6 encodeBool:self->_fixedSizeArray forKey:@"fixedSizeArray"];
  [v6 encodeObject:self->_arraySizesBySizeClass forKey:@"_arraySizesBySizeClass"];
  [v6 encodeInteger:self->_windowSize forKey:@"windowSize"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 intents_setIntegerIfNonZero:self->_modifier forKey:@"modifier"];
  [v7 intents_setPlistSafeObject:self->_propertyName forKey:@"propertyName"];
  v8 = [v6 languageCode];
  if ([(INCodableAttribute *)self isConfigurable]&& v8 && (displayName = self->_displayName, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [INStringLocalizer localizerForLanguage:v8];
    v10 = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:v11];
  }

  else
  {
    v10 = [(NSString *)self->_displayName intents_encodeForPlistRepresentationWithParameters:v6];
  }

  [v7 intents_setPlistSafeObject:v10 forKey:@"displayName"];

  [v7 intents_setPlistSafeObject:v8 forKey:@"languageCode"];
  [v7 intents_setPlistSafeObject:self->_displayNameID forKey:@"displayNameID"];
  [v7 intents_setPlistSafeObject:self->_displayPriorityRank forKey:@"displayPriorityRank"];
  [v7 intents_setBoolIfTrue:self->_supportsResolution forKey:@"supportsResolution"];
  [v7 intents_setBoolIfTrue:self->_supportsDynamicEnumeration forKey:@"supportsDynamicEnumeration"];
  [v7 intents_setBoolIfTrue:self->_supportsSearch forKey:@"supportsSearch"];
  [v7 intents_setBoolIfTrue:self->_configurable forKey:@"configurable"];
  relationship = self->_relationship;
  v22 = 0;
  [v7 intents_setWidgetPlistRepresentable:relationship forKey:@"relationship" error:&v22];
  v13 = v22;
  if (v13)
  {
    goto LABEL_10;
  }

  metadata = self->_metadata;
  v21 = 0;
  [v7 intents_setWidgetPlistRepresentable:metadata forKey:@"metadata" parameters:v6 error:&v21];
  v13 = v21;
  if (v13)
  {
    goto LABEL_10;
  }

  promptDialogs = self->_promptDialogs;
  v20 = 0;
  [v7 intents_setArrayOfWidgetPlistRepresentable:promptDialogs forKey:@"promptDialogs" error:&v20];
  v13 = v20;
  if (v13 || (unsupportedReasons = self->_unsupportedReasons, v19 = 0, [v7 intents_setArrayOfWidgetPlistRepresentable:unsupportedReasons forKey:@"unsupportedReasons" error:&v19], (v13 = v19) != 0))
  {
LABEL_10:
    if (a4)
    {
      v13 = v13;
      v17 = 0;
      *a4 = v13;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    [v7 intents_setPlistSafeObject:self->_typeString forKey:@"_typeString"];
    [v7 intents_setPlistSafeObject:self->_entityKeypath forKey:@"entityKeypath"];
    [v7 intents_setBoolIfTrue:self->_fixedSizeArray forKey:@"fixedSizeArray"];
    [v7 intents_setPlistSafeObject:self->_arraySizesBySizeClass forKey:@"_arraySizesBySizeClass"];
    [v7 intents_setIntegerIfNonZero:self->_windowSize forKey:@"windowSize"];
    v17 = v7;
    v13 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setModifier:{-[INCodableAttribute modifier](self, "modifier")}];
  v5 = [(INCodableAttribute *)self propertyName];
  [v4 setPropertyName:v5];

  v6 = [(INCodableAttribute *)self displayPriorityRank];
  [v4 setDisplayPriorityRank:v6];

  v7 = [(INCodableAttribute *)self displayName];
  [v4 setDisplayName:v7];

  v8 = [(INCodableAttribute *)self displayNameID];
  [v4 setDisplayNameID:v8];

  v9 = [(INCodableAttribute *)self metadata];
  [v4 setMetadata:v9];

  v10 = [(INCodableAttribute *)self relationship];
  [v4 setRelationship:v10];

  [v4 setSupportsResolution:{-[INCodableAttribute supportsResolution](self, "supportsResolution")}];
  [v4 setSupportsDynamicEnumeration:{-[INCodableAttribute supportsDynamicEnumeration](self, "supportsDynamicEnumeration")}];
  [v4 setSupportsSearch:{-[INCodableAttribute supportsSearch](self, "supportsSearch")}];
  [v4 setConfigurable:{-[INCodableAttribute isConfigurable](self, "isConfigurable")}];
  v11 = [(INCodableAttribute *)self promptDialogs];
  [v4 _setPromptDialogs:v11];

  v12 = [(INCodableAttribute *)self unsupportedReasons];
  [v4 _setUnsupportedReasons:v12];

  v13 = [(INCodableAttribute *)self _codableDescription];
  [v4 _setCodableDescription:v13];

  v14 = [(INCodableAttribute *)self _typeString];
  [v4 _setTypeString:v14];

  objc_storeStrong(v4 + 1, self->_promptDialogsByType);
  [v4 setFixedSizeArray:{-[INCodableAttribute isFixedSizeArray](self, "isFixedSizeArray")}];
  objc_storeStrong(v4 + 2, self->_arraySizesBySizeClass);
  [v4 setWindowSize:{-[INCodableAttribute windowSize](self, "windowSize")}];
  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(INCodableAttribute *)self promptDialogWithType:0];
  v7 = [v6 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v7];

  v8 = [(INCodableAttribute *)self promptDialogWithType:1];
  v9 = [v8 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v9];

  v10 = [(INCodableAttribute *)self promptDialogWithType:2];
  v11 = [v10 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v11];

  v12 = [(INCodableAttribute *)self promptDialogWithType:3];
  v13 = [v12 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v13];

  v14 = [(INCodableAttribute *)self promptDialogWithType:4];
  v15 = [v14 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v15];

  v16 = [(INCodableAttribute *)self promptDialogWithType:5];
  v17 = [v16 dictionaryRepresentationWithLocalizer:v4];
  [v5 if_addObjectIfNonNil:v17];

  v18 = MEMORY[0x1E695DF70];
  v19 = [(INCodableAttribute *)self unsupportedReasons];
  v20 = [v18 arrayWithCapacity:{objc_msgSend(v19, "count")}];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v21 = [(INCodableAttribute *)self unsupportedReasons];
  v22 = [v21 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v92;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v92 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v91 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:v4];
        [v20 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v23);
  }

  v27 = [(INCodableAttribute *)self _codableDescription];
  v88 = [(INCodableAttribute *)self __INCodableDescriptionNameKey];
  v95[0] = v88;
  v28 = [(INCodableAttribute *)self propertyName];
  v29 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v28;
  v96[0] = v28;
  v86 = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameKey];
  v95[1] = v86;
  v30 = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:v4];
  v31 = v30;
  if (!v30)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v30;
  v96[1] = v30;
  v84 = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameIDKey];
  v95[2] = v84;
  v32 = [(INCodableAttribute *)self displayNameID];
  v33 = v32;
  if (!v32)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v29;
  v61 = v32;
  v96[2] = v32;
  v82 = [(INCodableAttribute *)self __INCodableDescriptionDisplayPriorityKey];
  v95[3] = v82;
  v34 = [(INCodableAttribute *)self displayPriorityRank];
  v35 = v34;
  if (!v34)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v34;
  v96[3] = v34;
  v80 = [(INCodableAttribute *)self __INCodableDescriptionDefaultKey];
  v95[4] = v80;
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute isDefaultAttribute](self, "isDefaultAttribute")}];
  v79 = v36;
  if (!v36)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v96[4] = v36;
  v78 = [(INCodableAttribute *)self __INCodableDescriptionSupportsMultipleValuesKey];
  v95[5] = v78;
  v77 = [(INCodableAttribute *)self modifier];
  v85 = v31;
  if (v77)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v37 = MEMORY[0x1E695E118];
  }

  v64 = v37;
  v96[5] = v37;
  v76 = [(INCodableAttribute *)self __INCodableDescriptionSupportsResolutionKey];
  v95[6] = v76;
  objc_opt_class();
  v59 = v36;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute supportsResolution](self, "supportsResolution")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v38 = ;
  v96[6] = v38;
  v74 = [(INCodableAttribute *)self __INCodableDescriptionConfigurableKey];
  v95[7] = v74;
  objc_opt_class();
  v75 = v38;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute isConfigurable](self, "isConfigurable")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v39 = ;
  v96[7] = v39;
  v72 = [(INCodableAttribute *)self __INCodableDescriptionSupportsDynamicEnumerationKey];
  v95[8] = v72;
  objc_opt_class();
  v73 = v39;
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableAttribute supportsDynamicEnumeration](self, "supportsDynamicEnumeration")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v71 = ;
  v96[8] = v71;
  v70 = [(INCodableAttribute *)self __INCodableDescriptionPromptDialogsKey];
  v95[9] = v70;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v41 = MEMORY[0x1E695E0F0];
  if (isKindOfClass)
  {
    v42 = v5;
  }

  else
  {
    v42 = MEMORY[0x1E695E0F0];
  }

  v96[9] = v42;
  v69 = [(INCodableAttribute *)self __INCodableDescriptionUnsupportedReasonsKey];
  v95[10] = v69;
  objc_opt_class();
  v89 = v27;
  if (objc_opt_isKindOfClass())
  {
    v43 = v20;
  }

  else
  {
    v43 = v41;
  }

  v96[10] = v43;
  v68 = [(INCodableAttribute *)self __INCodableDescriptionMetadataKey];
  v95[11] = v68;
  v67 = [(INCodableAttribute *)self metadata];
  v44 = [v67 dictionaryRepresentationWithLocalizer:v4];
  v45 = v44;
  if (!v44)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v35;
  v83 = v33;
  v90 = v5;
  v58 = v44;
  v96[11] = v44;
  v66 = [(INCodableAttribute *)self __INCodableDescriptionRelationshipKey];
  v95[12] = v66;
  v65 = [(INCodableAttribute *)self relationship];
  v46 = [v65 dictionaryRepresentationWithLocalizer:v4];
  v47 = v46;
  if (!v46)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v96[12] = v46;
  v48 = [(INCodableAttribute *)self __INCodableDescriptionEntityKeypathKey];
  v95[13] = v48;
  v49 = [(INCodableAttribute *)self entityKeypath];
  v50 = v49;
  if (!v49)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v96[13] = v50;
  v51 = [(INCodableAttribute *)self __INCodableDescriptionWindowSizeKey];
  v95[14] = v51;
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableAttribute windowSize](self, "windowSize")}];
  v96[14] = v52;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:15];

  if (!v49)
  {
  }

  if (!v47)
  {
  }

  if (!v45)
  {
  }

  if (v77)
  {
  }

  if (!v79)
  {
  }

  if (!v81)
  {
  }

  if (!v83)
  {
  }

  if (!v85)
  {
  }

  if (!v87)
  {
  }

  v54 = [v53 if_dictionaryWithNonEmptyValues];

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttribute *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableAttribute *)self __INCodableDescriptionNameKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 if_stringByLowercasingFirstCharacter];
  v8 = [v7 copy];
  propertyName = self->_propertyName;
  self->_propertyName = v8;

  v10 = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameKey];
  v11 = [v4 objectForKeyedSubscript:v10];
  displayName = self->_displayName;
  self->_displayName = v11;

  v13 = [(INCodableAttribute *)self __INCodableDescriptionDisplayNameIDKey];
  v14 = [v4 objectForKeyedSubscript:v13];
  displayNameID = self->_displayNameID;
  self->_displayNameID = v14;

  v16 = [(INCodableAttribute *)self __INCodableDescriptionDisplayPriorityKey];
  v17 = [v4 objectForKeyedSubscript:v16];
  displayPriorityRank = self->_displayPriorityRank;
  self->_displayPriorityRank = v17;

  v19 = [(INCodableAttribute *)self __INCodableDescriptionDefaultKey];
  v20 = [v4 objectForKeyedSubscript:v19];
  self->_defaultAttribute = [v20 BOOLValue];

  v21 = [(INCodableAttribute *)self __INCodableDescriptionSupportsResolutionKey];
  v22 = [v4 objectForKeyedSubscript:v21];
  self->_supportsResolution = [v22 BOOLValue];

  v23 = [(INCodableAttribute *)self __INCodableDescriptionSupportsDynamicEnumerationKey];
  v24 = [v4 objectForKeyedSubscript:v23];
  self->_supportsDynamicEnumeration = [v24 BOOLValue];

  v25 = [(INCodableAttribute *)self __INCodableDescriptionSupportsSearchKey];
  v26 = [v4 objectForKeyedSubscript:v25];
  self->_supportsSearch = [v26 BOOLValue];

  v27 = [(INCodableAttribute *)self __INCodableDescriptionConfigurableKey];
  v28 = [v4 objectForKeyedSubscript:v27];
  self->_configurable = [v28 BOOLValue];

  v29 = [(INCodableAttribute *)self __INCodableDescriptionWindowSizeKey];
  v30 = [v4 objectForKeyedSubscript:v29];

  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if ([v32 integerValue] < 1)
  {
    v33 = 6;
  }

  else
  {
    v33 = [v32 integerValue];
  }

  self->_windowSize = v33;
  v34 = [(INCodableAttribute *)self __INCodableDescriptionSupportsMultipleValuesKey];
  v35 = [v4 objectForKeyedSubscript:v34];
  v36 = [v35 BOOLValue];

  self->_modifier = v36 ^ 1u;
  v37 = [(INCodableAttribute *)self __INCodableDescriptionFixedSizeArrayKey];
  v38 = [v4 objectForKeyedSubscript:v37];
  self->_fixedSizeArray = [v38 BOOLValue];

  v39 = [(INCodableAttribute *)self __INCodableDescriptionPromptDialogsKey];
  v40 = [v4 objectForKeyedSubscript:v39];

  v41 = 0x1E695D000uLL;
  if (v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __43__INCodableAttribute_updateWithDictionary___block_invoke;
  v97[3] = &unk_1E7280EE8;
  v97[4] = self;
  v90 = v43;
  v44 = [v43 if_map:v97];
  objc_storeStrong(&self->_promptDialogs, v44);
  v45 = [(INCodableAttribute *)self __INCodableDescriptionArraySizesKey];
  v46 = [v4 objectForKeyedSubscript:v45];

  if (v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;

  v89 = v48;
  if ([v48 count])
  {
    v87 = v44;
    v88 = v4;
    obj = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v48, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v93 objects:v98 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v94;
      do
      {
        v53 = 0;
        do
        {
          if (*v94 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v93 + 1) + 8 * v53);
          v55 = [(INCodableAttribute *)self __INCodableDescriptionArraySizeSizeClassKey:v87];
          v56 = [v54 objectForKeyedSubscript:v55];

          if (INCodableAttributeAvailableArraySizeClasses_onceToken != -1)
          {
            dispatch_once(&INCodableAttributeAvailableArraySizeClasses_onceToken, &__block_literal_global_47521);
          }

          if ([INCodableAttributeAvailableArraySizeClasses_codableAvailableArraySizeClasses containsObject:v56])
          {
            v57 = [(INCodableAttribute *)self __INCodableDescriptionArraySizeSizeKey];
            v58 = [v54 objectForKeyedSubscript:v57];
            [obj if_setObjectIfNonNil:v58 forKey:v56];
          }

          ++v53;
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v51);
    }

    v44 = v87;
    v4 = v88;
    v59 = obj;
    v41 = 0x1E695D000;
  }

  else
  {
    v59 = MEMORY[0x1E695E0F8];
  }

  objc_storeStrong(&self->_arraySizesBySizeClass, v59);
  v60 = [(INCodableAttribute *)self __INCodableDescriptionUnsupportedReasonsKey];
  v61 = [v4 objectForKeyedSubscript:v60];

  if (v61)
  {
    v62 = *(v41 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __43__INCodableAttribute_updateWithDictionary___block_invoke_2;
  v92[3] = &unk_1E7280EE8;
  v92[4] = self;
  v65 = [v64 if_map:v92];

  unsupportedReasons = self->_unsupportedReasons;
  self->_unsupportedReasons = v65;

  v67 = [(INCodableAttribute *)self __INCodableDescriptionMetadataKey];
  v68 = [v4 objectForKeyedSubscript:v67];

  v69 = [(INCodableAttribute *)self __INCodableDescriptionTypeKey];
  v70 = [v4 objectForKeyedSubscript:v69];
  typeString = self->_typeString;
  self->_typeString = v70;

  v72 = [(INCodableAttribute *)self __INCodableDescriptionEnumTypeKey];
  v73 = [v4 objectForKeyedSubscript:v72];
  if (v73)
  {
    v74 = @"Enum";
    v75 = @"Enum";
  }

  else
  {
    v74 = INCodableAttributeMetadataTypeNameWithTypeName(self->_typeString);
  }

  v76 = INCodableAttributeMetadataClassWithMetadataTypeName(v74);
  if (v76)
  {
    v77 = [[v76 alloc] initWithName:v74 codableAttribute:self];
  }

  else
  {
    v77 = 0;
  }

  [(INCodableAttributeMetadata *)v77 updateWithDictionary:v68, v87, v88];
  metadata = self->_metadata;
  self->_metadata = v77;

  v79 = [[INCodableAttributeRelationship alloc] initWithCodableAttribute:self];
  v80 = [(INCodableAttribute *)self __INCodableDescriptionRelationshipKey];
  v81 = [v4 objectForKeyedSubscript:v80];
  [(INCodableAttributeRelationship *)v79 updateWithDictionary:v81];

  relationship = self->_relationship;
  self->_relationship = v79;

  v83 = [(INCodableAttribute *)self __INCodableDescriptionEntityKeypathKey];
  v84 = [v4 objectForKeyedSubscript:v83];
  entityKeypath = self->_entityKeypath;
  self->_entityKeypath = v84;

  v86 = *MEMORY[0x1E69E9840];
}

INCodableAttributePromptDialog *__43__INCodableAttribute_updateWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(INCodableAttributePromptDialog);
  [(INCodableAttributeDialog *)v4 _setCodableAttribute:*(a1 + 32)];
  [(INCodableAttributePromptDialog *)v4 updateWithDictionary:v3];

  v5 = *(*(a1 + 32) + 8);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v5 = *(*(a1 + 32) + 8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[INCodableAttributePromptDialog type](v4, "type")}];
  [v5 setObject:v4 forKeyedSubscript:v9];

  return v4;
}

INCodableAttributeUnsupportedReason *__43__INCodableAttribute_updateWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(INCodableAttributeUnsupportedReason);
  [(INCodableAttributeDialog *)v4 _setCodableAttribute:*(a1 + 32)];
  [(INCodableAttributeUnsupportedReason *)v4 updateWithDictionary:v3];

  return v4;
}

- (id)promptDialogWithType:(unint64_t)a3
{
  promptDialogsByType = self->_promptDialogsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)promptDialogsByType objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = a3 - 2;
    if (a3 == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_promptDialogsByType, "objectForKeyedSubscript:", &unk_1F02D7FD8), v9 = objc_claimAutoreleasedReturnValue(), [v9 formatString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(INCodableAttributePromptDialog);
      [(INCodableAttributeDialog *)v7 _setCodableAttribute:self];
      [(INCodableAttributePromptDialog *)v7 setType:a3];
      [(INCodableAttributeDialog *)v7 setDefaultDialog:1];
      if (a3 - 1 > 5)
      {
        v12 = @"Primary";
      }

      else
      {
        v12 = off_1E7285DD8[a3 - 1];
      }

      v13 = v12;
      v14 = [(__CFString *)v13 stringByAppendingString:@"PromptDialog"];

      [(INCodableAttributeDialog *)v7 setFormatStringID:v14];
      if (v8 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E7285DB8[v8];
      }

      v16 = v15;
      [(INCodableAttributeDialog *)v7 setFormatString:v16];
    }
  }

  return v7;
}

- (id)localizedDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableAttribute *)self _codableDescription];
  v6 = [(INCodableAttribute *)self displayNameID];
  v7 = [(INCodableAttribute *)self displayName];
  v8 = [v5 _customLocalizationTable];
  if (v8)
  {
    v9 = INLocalizedStringFromCodable(v6, v7, v8, v4, 0);
  }

  else
  {
    v10 = [v5 _localizationTable];
    v9 = INLocalizedStringFromCodable(v6, v7, v10, v4, 0);
  }

  return v9;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttribute *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableAttribute;
  v6 = [(INCodableAttribute *)&v11 description];
  v7 = [(INCodableAttribute *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (int64_t)arraySizeForSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_arraySizesBySizeClass objectForKeyedSubscript:v4];
  if ([(INCodableAttribute *)self isFixedSizeArray])
  {
    if (v5)
    {
      if ([v5 integerValue] >= 1)
      {
        v6 = [v5 integerValue];
LABEL_12:
        v7 = v6;
        goto LABEL_19;
      }

LABEL_18:
      v7 = 1;
      goto LABEL_19;
    }

    v8 = [v4 isEqualToString:@"ExtraLarge"];
    v9 = @"Large";
    if ((v8 & 1) == 0)
    {
      v10 = [v4 isEqualToString:@"Large"];
      v9 = @"Medium";
      if ((v10 & 1) == 0)
      {
        if ([v4 isEqualToString:@"Medium"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"AccessoryCorner"))
        {
          v9 = @"Small";
        }

        else if ([v4 isEqualToString:@"AccessoryCircular"])
        {
          v9 = @"AccessoryCorner";
        }

        else
        {
          if (([v4 isEqualToString:@"AccessoryRectangular"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"AccessoryInline"))
          {
            goto LABEL_18;
          }

          v9 = @"AccessoryCircular";
        }
      }
    }

    v6 = [(INCodableAttribute *)self arraySizeForSizeClass:v9];
    goto LABEL_12;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

  return v7;
}

- (unint64_t)indexForUnsupportedReason:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(INCodableAttribute *)self unsupportedReasons];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
LABEL_3:
    v10 = 0;
    v11 = v9;
    v9 += v7;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v17 + 1) + 8 * v10) code];
      v13 = [v4 code];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)unsupportedReasonWithIndex:(unint64_t)a3
{
  v4 = a3 - 1;
  v5 = [(INCodableAttribute *)self unsupportedReasons];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(INCodableAttribute *)self unsupportedReasons];
    v8 = [v7 objectAtIndex:v4];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(INCodableAttribute *)self propertyName];
    if (v6)
    {
      v3 = [(INCodableAttribute *)self propertyName];
      v7 = v5;
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

      v11 = v8;

      v12 = [v11 propertyName];

      v10 = [v3 isEqual:v12];
    }

    else
    {
      v10 = 0;
    }

    v13 = [(INCodableAttribute *)self displayPriorityRank];
    if (v13 || ([v5 displayPriorityRank], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(INCodableAttribute *)self displayPriorityRank];
      v15 = [v5 displayPriorityRank];
      v16 = [v14 isEqual:v15];

      if (v13)
      {
LABEL_17:

        v17 = [(INCodableAttribute *)self modifier];
        v9 = (v17 == [v5 modifier]) & v10 & v16;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_17;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (SEL)setter
{
  v2 = [(INCodableAttribute *)self propertyName];
  v3 = objc_opt_class();
  v4 = INSetterFromString(v2, v3);

  return v4;
}

- (SEL)getter
{
  v2 = [(INCodableAttribute *)self propertyName];
  v3 = NSSelectorFromString(v2);

  return v3;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(a1);
  [v7 setModifier:{objc_msgSend(v6, "intents_intForKey:", @"modifier"}];
  [v7 setFixedSizeArray:{objc_msgSend(v6, "intents_BOOLForKey:", @"fixedSizeArray"}];
  v8 = [v6 intents_stringForKey:@"propertyName"];
  [v7 setPropertyName:v8];

  v9 = [v6 intents_numberForKey:@"displayPriorityRank"];
  [v7 setDisplayPriorityRank:v9];

  v10 = [v6 intents_stringForKey:@"displayName"];
  [v7 setDisplayName:v10];

  v11 = [v6 intents_stringForKey:@"displayNameID"];
  [v7 setDisplayNameID:v11];

  v12 = [v6 intents_stringForKey:@"_typeString"];
  [v7 _setTypeString:v12];

  v13 = [v6 intents_stringForKey:@"languageCode"];
  [v7 setLanguageCode:v13];

  v14 = [v6 intents_safeObjectForKey:@"metadata" ofType:objc_opt_class()];
  v15 = [v6 objectForKeyedSubscript:@"enumType"];
  if (v15)
  {
    v16 = @"Enum";
    v17 = @"Enum";
  }

  else
  {
    v18 = [v7 _typeString];
    v16 = INCodableAttributeMetadataTypeNameWithTypeName(v18);
  }

  v70 = 0;
  v19 = [INCodableAttributeMetadataClassWithMetadataTypeName(v16) makeFromWidgetPlistableRepresentation:v14 error:&v70];
  v20 = v70;
  if (v20)
  {
    v21 = v20;
    if (a4)
    {
      v22 = v20;
      v23 = 0;
      *a4 = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    [v19 setCodableAttribute:v7];
    [v7 setMetadata:v19];
    v69 = 0;
    v24 = [INCodableAttributeRelationship intents_widgetPlistRepresentableInDict:v6 key:@"relationship" error:&v69];
    v25 = v69;
    if (v25)
    {
      v21 = v25;
      if (a4)
      {
        v26 = v25;
        v23 = 0;
        *a4 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      [v24 setCodableAttribute:v7];
      [v7 setRelationship:v24];
      [v7 setSupportsResolution:{objc_msgSend(v6, "intents_BOOLForKey:", @"supportsResolution"}];
      [v7 setConfigurable:{objc_msgSend(v6, "intents_BOOLForKey:", @"configurable"}];
      [v7 setSupportsDynamicEnumeration:{objc_msgSend(v6, "intents_BOOLForKey:", @"supportsDynamicEnumeration"}];
      [v7 setSupportsSearch:{objc_msgSend(v6, "intents_BOOLForKey:", @"supportsSearch"}];
      v68 = 0;
      v27 = [INCodableAttributePromptDialog intents_arrayOfWidgetPlistRepresentableInDict:v6 key:@"promptDialogs" error:&v68 resultTransformer:0];
      v28 = v68;
      if (v28)
      {
        v21 = v28;
        if (a4)
        {
          v29 = v28;
          v23 = 0;
          *a4 = v21;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        [v7 _setPromptDialogs:v27];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __66__INCodableAttribute_makeFromWidgetPlistableRepresentation_error___block_invoke;
        v66[3] = &unk_1E7280F10;
        v30 = v7;
        v31 = v27;
        v32 = v30;
        v67 = v30;
        v58 = v31;
        [v31 enumerateObjectsUsingBlock:v66];
        v65 = 0;
        v33 = [INCodableAttributeUnsupportedReason intents_arrayOfWidgetPlistRepresentableInDict:v6 key:@"unsupportedReasons" error:&v65 resultTransformer:0];
        v34 = v65;
        v21 = v34;
        v57 = v33;
        if (v34)
        {
          if (a4)
          {
            v35 = v34;
            v23 = 0;
            *a4 = v21;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v52 = v24;
          v53 = v19;
          v54 = v16;
          v55 = v14;
          v56 = v6;
          [v32 _setUnsupportedReasons:v33];
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __66__INCodableAttribute_makeFromWidgetPlistableRepresentation_error___block_invoke_2;
          v63[3] = &unk_1E7280F38;
          v36 = v32;
          v64 = v36;
          [v33 enumerateObjectsUsingBlock:v63];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v37 = [v36 promptDialogs];
          v38 = [v37 countByEnumeratingWithState:&v59 objects:v71 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v60;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v60 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v59 + 1) + 8 * i);
                v43 = v36[1];
                if (!v43)
                {
                  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v45 = v36[1];
                  v36[1] = v44;

                  v43 = v36[1];
                }

                v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v42, "type")}];
                [v43 setObject:v42 forKeyedSubscript:v46];
              }

              v39 = [v37 countByEnumeratingWithState:&v59 objects:v71 count:16];
            }

            while (v39);
          }

          v6 = v56;
          v47 = [v56 intents_stringForKey:@"entityKeypath"];
          [v36 setEntityKeypath:v47];

          v48 = [v56 intents_safeObjectForKey:@"_arraySizesBySizeClass" ofType:objc_opt_class()];
          v49 = v36[2];
          v36[2] = v48;

          [v36 setWindowSize:{objc_msgSend(v56, "intents_intForKey:", @"windowSize"}];
          v23 = v36;

          v14 = v55;
          v19 = v53;
          v16 = v54;
          v21 = 0;
          v24 = v52;
        }

        v27 = v58;
      }
    }
  }

  v50 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)__INTypeCodableDescriptionWindowSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionUnsupportedReasonsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionTagKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTagKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsSearchKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsResolutionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsMultipleValuesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return v3;
}

- (id)__INTypeCodableDescriptionSupportsDynamicEnumerationKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return v3;
}

- (id)__INTypeCodableDescriptionRelationshipKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return v3;
}

- (id)__INTypeCodableDescriptionPromptDialogsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return v3;
}

- (id)__INTypeCodableDescriptionNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeNameKey];

  return v3;
}

- (id)__INTypeCodableDescriptionMetadataKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataKey];

  return v3;
}

- (id)__INTypeCodableDescriptionFixedSizeArrayKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return v3;
}

- (id)__INTypeCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionEntityKeypathKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisplayPriorityKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisplayNameIDKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDisplayNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return v3;
}

- (id)__INTypeCodableDescriptionDefaultKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDefaultKey];

  return v3;
}

- (id)__INTypeCodableDescriptionConfigurableKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return v3;
}

- (id)__INTypeCodableDescriptionArraySizesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return v3;
}

- (id)__INTypeCodableDescriptionArraySizeSizeClassKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return v3;
}

- (id)__INTypeCodableDescriptionArraySizeSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionWindowSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeWindowSizeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionUnsupportedReasonsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonsKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTagKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeTagKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsSearchKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsSearchKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsResolutionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsResolutionKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsMultipleValuesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsMultipleValuesKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionSupportsDynamicEnumerationKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeSupportsDynamicEnumerationKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionRelationshipKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeRelationshipKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionPromptDialogsKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogsKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeNameKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionMetadataKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionFixedSizeArrayKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeFixedSizeArrayKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionEnumTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEnumTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionEntityKeypathKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeEntityKeypathKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisplayPriorityKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayPriorityKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisplayNameIDKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDisplayNameKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDisplayNameKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDefaultKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionConfigurableKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeConfigurableKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionArraySizesKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizesKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionArraySizeSizeClassKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionArraySizeSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return v3;
}

- (id)__INCodableDescriptionArraySizeSizeClassKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeClassKey];

  return v3;
}

- (id)__INCodableDescriptionArraySizeSizeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeArraySizeSizeKey];

  return v3;
}

@end