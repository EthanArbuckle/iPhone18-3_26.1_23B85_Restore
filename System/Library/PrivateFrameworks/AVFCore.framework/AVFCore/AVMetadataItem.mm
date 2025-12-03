@interface AVMetadataItem
+ (AVMetadataIdentifier)identifierForKey:(id)key keySpace:(AVMetadataKeySpace)keySpace;
+ (AVMetadataKeySpace)keySpaceForIdentifier:(AVMetadataIdentifier)identifier;
+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredAndSortedAccordingToPreferredLanguages:(NSArray *)preferredLanguages;
+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredByIdentifier:(AVMetadataIdentifier)identifier;
+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredByMetadataItemFilter:(AVMetadataItemFilter *)metadataItemFilter;
+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems withKey:(id)key keySpace:(AVMetadataKeySpace)keySpace;
+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems withLocale:(NSLocale *)locale;
+ (id)_isoUserDataKeysRequiringKeySpaceConversion;
+ (id)_metadataArrayWithSmartDeferredLoadingForMetadataArray:(id)array error:(id *)error;
+ (id)_metadataItemWithFigMetadataDictionary:(id)dictionary containerURL:(id)l securityOptions:(unsigned int)options;
+ (id)_replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:(id)required;
+ (id)dataTypeForValue:(id)value;
+ (id)figMetadataPropertyFromMetadataItems:(id)items;
+ (id)keyForIdentifier:(AVMetadataIdentifier)identifier;
+ (id)metadataItemsFromArray:(id)array filteredByIdentifiers:(id)identifiers;
+ (id)metadataItemsFromArray:(id)array withStringValue:(id)value;
- (AVMetadataItem)init;
- (BOOL)_areExtraAttributesOf:(id)of comparableToExtraAttributesOf:(id)attributesOf;
- (BOOL)isEqual:(id)equal;
- (CMTime)duration;
- (CMTime)time;
- (NSData)dataValue;
- (NSDate)dateValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (id)_conformingDataTypes;
- (id)_createJSONEncodedDataFromValue:(id)value error:(id *)error;
- (id)_figMetadataDictionaryWithValue:(BOOL)value diviningValueDataType:(BOOL)type;
- (id)_figMetadataFormat;
- (id)_figMetadataSpecificationReturningError:(id *)error;
- (id)_initWithFigMetadataDictionary:(id)dictionary;
- (id)_initWithReader:(OpaqueFigMetadataReader *)reader itemIndex:(int64_t)index;
- (id)_keyAsString;
- (id)_serializationDataType;
- (id)_valueFromCFType:(void *)type;
- (id)description;
- (id)intrinsicAttributesOfExtraAttributes:(id)attributes;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)unicodeLanguageCode;
- (id)unicodeLanguageIdentifier;
- (id)value;
- (unint64_t)hash;
- (void)_copyValueAsCFTypeWithFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error;
- (void)_extractPropertiesFromDictionary:(id)dictionary;
- (void)_makePropertiesReady;
- (void)_makeValueReady;
- (void)_updateCommonKey;
- (void)_updateIdentifier;
- (void)_updateLanguageInformationFromExtendedLanguageTag:(id)tag;
- (void)_updateLanguageInformationFromLocale:(id)locale;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void *)handler;
@end

@implementation AVMetadataItem

- (void)_makeValueReady
{
  cf = 0;
  v10 = 0;
  priv = self->_priv;
  reader = priv->reader;
  if (reader && !priv->value)
  {
    itemIndex = priv->itemIndex;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v7 = v6(reader, 0, 0, itemIndex, *MEMORY[0x1E695E480], &v10, &cf);
      v8 = cf;
      if (!v7)
      {
        [(AVMetadataItem *)self _extractPropertiesFromDictionary:cf];
        self->_priv->value = [(AVMetadataItem *)self _valueFromCFType:v10];
        v8 = cf;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

- (id)_valueFromCFType:(void *)type
{
  v35 = *MEMORY[0x1E69E9840];
  if (!type)
  {
    typeCopy = 0;
    goto LABEL_30;
  }

  v5 = CFGetTypeID(type);
  if (v5 == FigBoxedMetadataGetTypeID())
  {
    dataType = self->_priv->dataType;
    [(AVMetadataItem *)self time];
    [(AVMetadataItem *)self duration];
    point.origin = v30;
    point.size.width = v31;
    v32 = v28;
    v33 = v29;
    typeCopy = (softLinkAVMetadataMakeMetadataObjectFromBoxedMetadata[0])(type, dataType, &point, &v32);
    if (!typeCopy)
    {
      BlockBuffer = FigBoxedMetadataGetBlockBuffer();
      DataLength = CMBlockBufferGetDataLength(BlockBuffer);
      typeCopy = [MEMORY[0x1E695DF88] dataWithLength:DataLength];
      mutableBytes = [typeCopy mutableBytes];
      if (mutableBytes)
      {
        CMBlockBufferCopyDataBytes(BlockBuffer, 0, DataLength, mutableBytes);
      }

      else
      {
        [AVMetadataItem(AVMetadataItem_Local) _valueFromCFType:];
      }
    }

    goto LABEL_30;
  }

  v11 = CFGetTypeID(type);
  if (v11 == CFDataGetTypeID() && CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960228]))
  {
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:type options:0 error:0];
LABEL_28:
    typeCopy = v12;
    goto LABEL_30;
  }

  v13 = CFGetTypeID(type);
  if (v13 == CFDictionaryGetTypeID())
  {
    if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960240]))
    {
      point.origin = *MEMORY[0x1E695EFF8];
      CGPointMakeWithDictionaryRepresentation(type, &point.origin);
      v12 = AVNSValueWithCGPoint(point.origin.x, point.origin.y);
      goto LABEL_28;
    }

    if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960268]))
    {
      v20 = *(MEMORY[0x1E695F058] + 16);
      point.origin = *MEMORY[0x1E695F058];
      point.size = v20;
      CGRectMakeWithDictionaryRepresentation(type, &point);
      v12 = AVNSValueWithCGRect(point.origin.x, point.origin.y, point.size.width, point.size.height);
      goto LABEL_28;
    }

    if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E69601F8]))
    {
      point.origin = *MEMORY[0x1E695F060];
      CGSizeMakeWithDictionaryRepresentation(type, &point);
      v12 = AVNSValueWithCGSize(point.origin.x, point.origin.y);
      goto LABEL_28;
    }

LABEL_29:
    typeCopy = type;
    goto LABEL_30;
  }

  v14 = CFGetTypeID(type);
  if (v14 != CFArrayGetTypeID() || !CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960248]) && !CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960250]))
  {
    goto LABEL_29;
  }

  typeCopy = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [type countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v22 = *MEMORY[0x1E695EFF8];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(type);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        point.origin = v22;
        CGPointMakeWithDictionaryRepresentation(v19, &point.origin);
        [typeCopy addObject:{AVNSValueWithCGPoint(point.origin.x, point.origin.y)}];
      }

      v16 = [type countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v16);
  }

LABEL_30:
  if ([typeCopy conformsToProtocol:{&unk_1F0AD4538, v22}] && objc_msgSend(typeCopy, "conformsToProtocol:", &unk_1F0AD72A8))
  {
    return [typeCopy copyWithZone:{-[AVMetadataItem zone](self, "zone")}];
  }

  else
  {
    return 0;
  }
}

- (void)_makePropertiesReady
{
  cf = 0;
  priv = self->_priv;
  reader = priv->reader;
  if (reader)
  {
    if (!priv->extras)
    {
      itemIndex = priv->itemIndex;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        if (v6(reader, 0, 0, itemIndex, *MEMORY[0x1E695E480], 0, &cf))
        {
          v7 = 1;
        }

        else
        {
          v7 = cf == 0;
        }

        if (!v7)
        {
          [(AVMetadataItem *)self _extractPropertiesFromDictionary:?];
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

- (void)_updateCommonKey
{
  priv = self->_priv;
  keySpace = priv->keySpace;
  if (keySpace)
  {
    if (priv->key)
    {
      self->_priv->commonKey = FigMetadataGetCommonKey();
      if (self->_priv->commonKey)
      {
        return;
      }

      if (AVMetadataGetCommonKeyForIdentifier_commonKeysForMetadataIdentifiersOnce != -1)
      {
        [AVMetadataItem(AVMetadataItem_Local) _updateCommonKey];
      }

      keySpace = [AVMetadataGetCommonKeyForIdentifier_commonKeysForMetadataIdentifiers objectForKeyedSubscript:?];
      priv = self->_priv;
    }

    else
    {
      keySpace = 0;
    }
  }

  priv->commonKey = keySpace;
}

- (void)_updateIdentifier
{
  v3 = [AVMetadataItem identifierForKey:self->_priv->key keySpace:self->_priv->keySpace];
  identifier = self->_priv->identifier;
  if (identifier != v3)
  {
    v5 = v3;

    self->_priv->identifier = [(NSString *)v5 copy];
  }
}

- (void)_updateLanguageInformationFromLocale:(id)locale
{
  v4 = [AVExtendedLanguageTagFromLocale(locale) copy];

  self->_priv->extendedLanguageTag = v4;
  if (v4)
  {
    v5 = [AVLanguageCodeFromExtendedLanguageTag(v4) copy];
  }

  else
  {
    v5 = 0;
  }

  self->_priv->languageCode = v5;
}

- (void)_updateLanguageInformationFromExtendedLanguageTag:(id)tag
{
  if (tag)
  {
    v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:tag];
  }

  else
  {
    v5 = 0;
  }

  priv = self->_priv;
  locale = priv->locale;
  if (locale != v5)
  {

    self->_priv->locale = [(NSLocale *)v5 copy];
    priv = self->_priv;
  }

  if (tag)
  {
    v8 = [AVLanguageCodeFromExtendedLanguageTag(tag) copy];
  }

  else
  {
    v8 = 0;
  }

  self->_priv->languageCode = v8;
}

- (void)_extractPropertiesFromDictionary:(id)dictionary
{
  if (!dictionary || self->_priv->extras)
  {
    return;
  }

  v60 = *MEMORY[0x1E6971F48];
  v5 = [dictionary objectForKey:?];
  v58 = *MEMORY[0x1E6971F40];
  v6 = [dictionary objectForKey:?];
  v61 = *MEMORY[0x1E6971F58];
  v7 = [dictionary objectForKey:?];
  v57 = *MEMORY[0x1E6971F30];
  v8 = [dictionary objectForKey:?];
  v56 = *MEMORY[0x1E6971F50];
  v9 = [dictionary objectForKey:?];
  v59 = *MEMORY[0x1E6971F80];
  v10 = [dictionary objectForKey:?];
  v55 = *MEMORY[0x1E6971F70];
  cf = [dictionary objectForKey:?];
  v54 = *MEMORY[0x1E6971F28];
  v44 = [dictionary objectForKey:?];
  v53 = *MEMORY[0x1E6971F68];
  dictionaryRepresentation = [dictionary objectForKey:?];
  v50 = [dictionary objectForKey:*MEMORY[0x1E6971F10]];
  v11 = [dictionary objectForKey:*MEMORY[0x1E6971F18]];
  v38 = [dictionary objectForKey:*MEMORY[0x1E6971F00]];
  v12 = [dictionary objectForKey:*MEMORY[0x1E6971F08]];
  v52 = *MEMORY[0x1E6971F20];
  v46 = [dictionary objectForKey:?];
  v40 = [AVMetadataItem identifierForKey:v6 keySpace:v5];
  v51 = *MEMORY[0x1E6971F60];
  v36 = [dictionary objectForKey:?];
  v62 = [dictionary objectForKey:@"storageLocationWasSetKey"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v5;
    }

    else
    {
      v13 = 0;
    }

    v47 = v13;
  }

  else
  {
    v47 = 0;
  }

  v14 = v10;
  if (v6 && (![v6 conformsToProtocol:&unk_1F0AD4538] || (objc_msgSend(v6, "conformsToProtocol:", &unk_1F0AD72A8) & 1) == 0))
  {
    v6 = 0;
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    v37 = v15;
    if (v8)
    {
LABEL_18:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v37 = 0;
    if (v8)
    {
      goto LABEL_18;
    }
  }

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = AVLanguageCodeFromPackedLanguageCode(v9);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  if (v10)
  {
    v16 = CFGetTypeID(v10);
    if (v16 == FigBoxedMetadataGetTypeID())
    {
      v14 = v10;
    }

    else
    {
      v14 = v10;
      if (![v10 conformsToProtocol:&unk_1F0AD4538] || (objc_msgSend(v10, "conformsToProtocol:", &unk_1F0AD72A8) & 1) == 0)
      {
        v14 = 0;
      }
    }
  }

  if (v11)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  if (v38)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    v39 = v17;
  }

  else
  {
    v39 = 0;
  }

  v18 = dictionaryRepresentation;
  if (v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v40;
    }

    else
    {
      v19 = 0;
    }

    v41 = v19;
  }

  else
  {
    v41 = 0;
  }

  v20 = v6;
  if (cf)
  {
    v21 = v37;
    v22 = CFGetTypeID(cf);
    if (v22 == CFDictionaryGetTypeID())
    {
      v23 = cf;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v21 = v37;
    v23 = 0;
  }

  dictionaryRepresentationa = v23;
  if (v44)
  {
    v24 = CFGetTypeID(v44);
    if (v24 == CFDictionaryGetTypeID())
    {
      v25 = v44;
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

  v26 = v21;
  cfa = v14;
  v45 = v25;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v18;
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

  v28 = v46;
  if (v46)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = 0;
    }
  }

  v29 = 0;
  if ([v62 BOOLValue])
  {
    if (v36)
    {
      v29 = v36;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = 0;
      }
    }
  }

  self->_priv->keySpace = [v47 copy];
  self->_priv->key = [v20 copyWithZone:{-[AVMetadataItem zone](self, "zone")}];
  self->_priv->identifier = [(NSString *)v41 copy];
  if (v9 && !v8)
  {
    ISO639_1FromISO639_2T = FigMetadataGetISO639_1FromISO639_2T();
    if (ISO639_1FromISO639_2T)
    {
      v8 = ISO639_1FromISO639_2T;
    }

    else
    {
      v8 = v9;
    }
  }

  if (v21 && !v8)
  {
    v8 = AVExtendedLanguageTagFromLocale(v21);
  }

  if (v8 && !v9)
  {
    v9 = AVLanguageCodeFromExtendedLanguageTag(v8);
  }

  if (v8 && !v21)
  {
    v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v8];
  }

  self->_priv->extendedLanguageTag = [v8 copy];
  self->_priv->locale = [v26 copy];
  self->_priv->languageCode = [(__CFString *)v9 copy];
  if (v50)
  {
    [v39 longValue];
    CoreMediaDataType = FigMetadataGetCoreMediaDataType();
  }

  else
  {
    CoreMediaDataType = 0;
  }

  self->_priv->dataType = [CoreMediaDataType copy];
  if (!self->_priv->value)
  {
    self->_priv->value = [(AVMetadataItem *)self _valueFromCFType:cfa];
  }

  [(AVMetadataItem *)self _updateCommonKey];
  if (dictionaryRepresentationa)
  {
    priv = self->_priv;
    CMTimeMakeFromDictionary(&v63, dictionaryRepresentationa);
    priv->time = v63;
  }

  if (v45)
  {
    v33 = self->_priv;
    CMTimeMakeFromDictionary(&v63, v45);
    v33->duration = v63;
  }

  if (v27)
  {
    self->_priv->startDate = [(__CFDictionary *)v27 copy];
  }

  if (v28)
  {
    self->_priv->discoveryTimestamp = [v28 copy];
  }

  if (v29)
  {
    v34 = v29;
  }

  else
  {
    v34 = @"default";
  }

  self->_priv->preferredStorageLocation = [(__CFString *)v34 copy];
  self->_priv->preferredStorageLocationWasSet = [v62 BOOLValue];
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:dictionary];
  [v35 removeObjectForKey:v60];
  [v35 removeObjectForKey:v58];
  [v35 removeObjectForKey:v57];
  [v35 removeObjectForKey:v56];
  [v35 removeObjectForKey:v61];
  [v35 removeObjectForKey:v55];
  [v35 removeObjectForKey:v54];
  [v35 removeObjectForKey:v53];
  [v35 removeObjectForKey:v59];
  [v35 removeObjectForKey:v52];
  [v35 removeObjectForKey:v51];
  [v35 removeObjectForKey:@"storageLocationWasSetKey"];
  self->_priv->extras = [v35 copy];
}

- (id)_keyAsString
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_priv->key;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  key = self->_priv->key;
  if (isKindOfClass)
  {
    intValue = [key intValue];

    return AVStringForOSType(intValue);
  }

  else
  {

    return [key description];
  }
}

- (NSString)stringValue
{
  value = [(AVMetadataItem *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(NSString *)value stringValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [(NSString *)value absoluteString];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || (dyld_program_sdk_at_least())
      {
        return 0;
      }

      return [(NSString *)value description];
    }
  }
}

- (NSNumber)numberValue
{
  value = [(AVMetadataItem *)self value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      locale = [(AVMetadataItem *)self locale];
      if (locale)
      {
        [v4 setLocale:locale];
      }

      value = [v4 numberFromString:value];
    }

    else
    {
      return 0;
    }
  }

  return value;
}

- (NSDate)dateValue
{
  value = [(AVMetadataItem *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = FigCFDateCreateFromString();

  return v3;
}

- (NSData)dataValue
{
  value = [(AVMetadataItem *)self value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || !value)
  {
    return value;
  }

  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AE40];

  return [v4 dataWithPropertyList:value format:200 options:0 error:0];
}

+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems withLocale:(NSLocale *)locale
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSLocale *)locale localeIdentifier];
  return [self metadataItemsFromArray:metadataItems filteredAndSortedAccordingToPreferredLanguages:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
}

+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredAndSortedAccordingToPreferredLanguages:(NSArray *)preferredLanguages
{
  v34 = *MEMORY[0x1E69E9840];
  AVAllAvailableNSBundleCompatibleLanguageTagsForObjects(metadataItems);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](preferredLanguages, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(NSArray *)preferredLanguages countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v11 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v28 + 1) + 8 * i)];
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSArray *)preferredLanguages countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v12 = FigCopyRankedLanguagesAccordingToPreferredLanguages();
  array = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __88__AVMetadataItem_metadataItemsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke;
        v23[3] = &unk_1E7461B68;
        v23[4] = v19;
        v20 = [(NSArray *)metadataItems indexesOfObjectsPassingTest:v23];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __88__AVMetadataItem_metadataItemsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke_2;
        v22[3] = &unk_1E7461B90;
        v22[4] = indexSet;
        v22[5] = array;
        v22[6] = metadataItems;
        [(NSIndexSet *)v20 enumerateIndexesUsingBlock:v22];
        [indexSet addIndexes:v20];
      }

      v16 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  return array;
}

uint64_t __88__AVMetadataItem_metadataItemsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [a2 unicodeLanguageIdentifier];
  if (!v4)
  {
    v4 = [a2 unicodeLanguageCode];
    if (!v4)
    {
      return 0;
    }
  }

  v5 = v4;
  v6 = *(a1 + 32);

  return [v6 isEqualToString:v5];
}

uint64_t __88__AVMetadataItem_metadataItemsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndex:a2];

    return [v5 addObject:v6];
  }

  return result;
}

+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredByIdentifier:(AVMetadataIdentifier)identifier
{
  if ([(NSString *)[AVMetadataItem keySpaceForIdentifier:?], "isEqualToString:", @"comn"])
  {
    v7 = [AVMetadataItem keyForIdentifier:identifier];

    return [self metadataItemsFromArray:metadataItems withKey:v7 keySpace:@"comn"];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__AVMetadataItem_metadataItemsFromArray_filteredByIdentifier___block_invoke;
    v9[3] = &unk_1E7461B68;
    v9[4] = identifier;
    return [(NSArray *)metadataItems objectsAtIndexes:[(NSArray *)metadataItems indexesOfObjectsPassingTest:v9]];
  }
}

uint64_t __62__AVMetadataItem_metadataItemsFromArray_filteredByIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    return 1;
  }

  v5 = [a2 identifier];

  return [v4 isEqualToString:v5];
}

+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems withKey:(id)key keySpace:(AVMetadataKeySpace)keySpace
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AVMetadataItem_metadataItemsFromArray_withKey_keySpace___block_invoke;
  v6[3] = &unk_1E7461BB8;
  v6[4] = keySpace;
  v6[5] = key;
  return [(NSArray *)metadataItems objectsAtIndexes:[(NSArray *)metadataItems indexesOfObjectsPassingTest:v6]];
}

uint64_t __58__AVMetadataItem_metadataItemsFromArray_withKey_keySpace___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [a2 keySpace];
  if ([*(a1 + 32) isEqualToString:@"comn"])
  {
    v5 = *(a1 + 40);
    v6 = [a2 commonKey];
    v7 = v6;
    if (!v5)
    {
      return v6 != 0;
    }

    v8 = v5;
    goto LABEL_5;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    result = [v10 isEqualToString:v4];
    if (!result)
    {
      return result;
    }
  }

  v11 = [a2 key];
  v12 = *(a1 + 40);
  if (!v12)
  {
    return 1;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = CFGetTypeID(v12);
  v14 = CFGetTypeID(v11);
  v15 = CFGetTypeID(*(a1 + 40));
  if (v13 != v14)
  {
    if (v15 == CFStringGetTypeID())
    {
      v17 = CFGetTypeID(v11);
      if (v17 == CFNumberGetTypeID())
      {
        result = FigMetadataStringKeyToOSTypeKeyWithKeySpace();
        if (!result)
        {
          return result;
        }

        v16 = 0;
        return v16 == [v11 intValue];
      }
    }

    return 0;
  }

  if (v15 == CFNumberGetTypeID() && (([v4 isEqualToString:@"udta"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"itsk")))
  {
    v16 = [*(a1 + 40) intValue];
    return v16 == [v11 intValue];
  }

  v8 = *(a1 + 40);
  v7 = v11;
LABEL_5:

  return [v8 isEqual:v7];
}

+ (id)metadataItemsFromArray:(id)array withStringValue:(id)value
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVMetadataItem_metadataItemsFromArray_withStringValue___block_invoke;
  v5[3] = &unk_1E7461B68;
  v5[4] = value;
  return [array objectsAtIndexes:{objc_msgSend(array, "indexesOfObjectsPassingTest:", v5)}];
}

uint64_t __57__AVMetadataItem_metadataItemsFromArray_withStringValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];

  return [v2 isEqualToString:v3];
}

+ (NSArray)metadataItemsFromArray:(NSArray *)metadataItems filteredByMetadataItemFilter:(AVMetadataItemFilter *)metadataItemFilter
{
  v23 = *MEMORY[0x1E69E9840];
  allowList = [(AVMetadataItemFilter *)metadataItemFilter allowList];
  if (allowList)
  {
    v6 = allowList;
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](metadataItems, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(NSArray *)metadataItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(metadataItems);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = -[NSDictionary valueForKey:](v6, "valueForKey:", [v12 keySpace]);
          if (v13)
          {
            v14 = v13;
            v15 = [v12 key];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = AVStringForOSType([v15 unsignedIntValue]);
            }

            if ([v14 containsObject:v15])
            {
              [v7 addObject:v12];
            }
          }
        }

        v9 = [(NSArray *)metadataItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    return [MEMORY[0x1E695DEC8] arrayWithArray:v7];
  }

  else
  {
    v17 = MEMORY[0x1E695DEC8];

    return [v17 array];
  }
}

- (AVMetadataItem)init
{
  v9.receiver = self;
  v9.super_class = AVMetadataItem;
  v2 = [(AVMetadataItem *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVMetadataItemInternal);
    v2->_priv = v3;
    if (v3)
    {
      v4 = MEMORY[0x1E6960C70];
      v5 = *MEMORY[0x1E6960C70];
      *&v3->time.value = *MEMORY[0x1E6960C70];
      v6 = *(v4 + 16);
      v3->time.epoch = v6;
      priv = v2->_priv;
      *&priv->duration.value = v5;
      priv->duration.epoch = v6;
      v2->_priv->preferredStorageLocation = [@"default" copy];
      CFRetain(v2->_priv);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (id)_initWithReader:(OpaqueFigMetadataReader *)reader itemIndex:(int64_t)index
{
  v6 = [(AVMetadataItem *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_priv->itemIndex = index;
    v6->_priv->reader = CFRetain(reader);
    v7->_priv->preferredStorageLocation = [@"default" copy];
  }

  return v7;
}

+ (id)_metadataItemWithFigMetadataDictionary:(id)dictionary containerURL:(id)l securityOptions:(unsigned int)options
{
  v9 = [dictionary objectForKey:*MEMORY[0x1E6971F80]];
  v10 = v9;
  if (!l || v9)
  {
    if (l)
    {
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = *MEMORY[0x1E6973588];
          if ([v10 objectForKey:*MEMORY[0x1E6973588]])
          {
            v15 = *MEMORY[0x1E6973580];
            if ([v10 objectForKey:*MEMORY[0x1E6973580]])
            {
              v16 = [objc_msgSend(v10 objectForKey:{v14), "integerValue"}];
              v17 = [objc_msgSend(v10 objectForKey:{v15), "integerValue"}];
              v11 = [AVLazyValueLoadingMetadataItem alloc];
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v19[2] = __86__AVMetadataItem__metadataItemWithFigMetadataDictionary_containerURL_securityOptions___block_invoke_2;
              v19[3] = &unk_1E7461C08;
              v19[4] = l;
              v19[5] = v16;
              v19[6] = v17;
              v12 = v19;
              return [(AVLazyValueLoadingMetadataItem *)v11 _initWithFigMetadataDictionary:dictionary valueLoadingHandler:v12];
            }
          }
        }
      }
    }
  }

  else if ([dictionary objectForKey:*MEMORY[0x1E6971F78]])
  {
    v11 = [AVLazyValueLoadingMetadataItem alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__AVMetadataItem__metadataItemWithFigMetadataDictionary_containerURL_securityOptions___block_invoke;
    v20[3] = &unk_1E7461BE0;
    v20[4] = l;
    optionsCopy = options;
    v12 = v20;
    return [(AVLazyValueLoadingMetadataItem *)v11 _initWithFigMetadataDictionary:dictionary valueLoadingHandler:v12];
  }

  v18 = [[self alloc] _initWithFigMetadataDictionary:dictionary];

  return v18;
}

uint64_t __86__AVMetadataItem__metadataItemWithFigMetadataDictionary_containerURL_securityOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(objc_msgSend(a2 "metadataItem")];
  v4 = [objc_msgSend(objc_msgSend(a2 "metadataItem")];
  if (v3 && ((v5 = MEMORY[0x1E695DFF8], !v4) ? (v6 = 0) : (v6 = [MEMORY[0x1E695DFF8] URLWithString:v4]), (v7 = objc_msgSend(v5, "URLWithString:relativeToURL:", v3, v6)) != 0))
  {
    v8 = v7;
    if (FigIsReferenceAllowedBySecurityPolicy())
    {
      v9 = [MEMORY[0x1E695AC78] sharedSession];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __AVMetadataItemLoadValueFromURI_block_invoke;
      v13[3] = &unk_1E7461CA0;
      v13[4] = a2;
      v13[5] = v8;
      return [objc_msgSend(v9 dataTaskWithURL:v8 completionHandler:{v13), "resume"}];
    }

    v11 = [MEMORY[0x1E695DF20] dictionaryWithObject:v8 forKey:*MEMORY[0x1E696A998]];
  }

  else
  {
    v11 = 0;
  }

  v12 = AVLocalizedError(@"AVFoundationErrorDomain", -11842, v11);

  return [a2 respondWithError:v12];
}

- (id)_initWithFigMetadataDictionary:(id)dictionary
{
  v4 = [(AVMetadataItem *)self init];
  v5 = v4;
  if (v4)
  {
    [(AVMetadataItem *)v4 _extractPropertiesFromDictionary:dictionary];
  }

  return v5;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    reader = priv->reader;
    if (reader)
    {
      CFRelease(reader);
      priv = self->_priv;
    }

    CFRelease(self->_priv);
  }

  v5.receiver = self;
  v5.super_class = AVMetadataItem;
  [(AVMetadataItem *)&v5 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  [(AVMetadataItem *)self _makeValueReady];
  [(AVMetadataItem *)self _makePropertiesReady];
  v5 = [AVMutableMetadataItem allocWithZone:zone];
  _figMetadataDictionary = [(AVMetadataItem *)self _figMetadataDictionary];

  return [(AVMetadataItem *)v5 _initWithFigMetadataDictionary:_figMetadataDictionary];
}

- (id)description
{
  [(AVMetadataItem *)self _makeValueReady];
  [(AVMetadataItem *)self _makePropertiesReady];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  priv = self->_priv;
  if (isKindOfClass)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" length=%lu", -[NSObject length](priv->value, "length")];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"=%@", priv->value];
  }

  v26 = v5;
  v27 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v25 = NSStringFromClass(v6);
  identifier = [(AVMetadataItem *)self identifier];
  keySpace = self->_priv->keySpace;
  v24 = identifier;
  [(AVMetadataItem *)self key];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  _keyAsString = [(AVMetadataItem *)self _keyAsString];
  v11 = self->_priv;
  commonKey = v11->commonKey;
  extendedLanguageTag = v11->extendedLanguageTag;
  dataType = v11->dataType;
  v15 = *MEMORY[0x1E695E480];
  time = v11->time;
  v16 = CMTimeCopyDescription(v15, &time);
  time = self->_priv->duration;
  v17 = CMTimeCopyDescription(v15, &time);
  v18 = self->_priv;
  startDate = v18->startDate;
  extras = v18->extras;
  v21 = objc_opt_class();
  return [v27 stringWithFormat:@"<%@: %p, identifier=%@, keySpace=%@, key class = %@, key=%@, commonKey=%@, extendedLanguageTag=%@, dataType=%@, time=%@, duration=%@, startDate=%@, extras=%@, value class=%@, value%@>", v25, self, v24, keySpace, v9, _keyAsString, commonKey, extendedLanguageTag, dataType, v16, v17, startDate, extras, NSStringFromClass(v21), v26];
}

- (id)intrinsicAttributesOfExtraAttributes:(id)attributes
{
  v3 = [attributes mutableCopy];
  [v3 removeObjectForKey:*MEMORY[0x1E6971F10]];
  [v3 removeObjectForKey:*MEMORY[0x1E6971F18]];
  [v3 removeObjectForKey:*MEMORY[0x1E6971F00]];
  [v3 removeObjectForKey:*MEMORY[0x1E6971F08]];
  return v3;
}

- (BOOL)_areExtraAttributesOf:(id)of comparableToExtraAttributesOf:(id)attributesOf
{
  v6 = [(AVMetadataItem *)self intrinsicAttributesOfExtraAttributes:of];
  v7 = [(AVMetadataItem *)self intrinsicAttributesOfExtraAttributes:attributesOf];
  if (![v6 count] && !objc_msgSend(v7, "count"))
  {
    return 1;
  }

  return [v6 isEqualToDictionary:v7];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v28 = v3;
    v29 = v4;
    if (!equal)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v7 = [(AVMetadataItem *)self key];
    v8 = [equal key];
    keySpace = [(AVMetadataItem *)self keySpace];
    keySpace2 = [equal keySpace];
    locale = [(AVMetadataItem *)self locale];
    locale2 = [equal locale];
    memset(&v27[1], 0, sizeof(CMTime));
    if (self)
    {
      [(AVMetadataItem *)self time];
      memset(v27, 0, 24);
      [equal time];
      memset(&v26, 0, sizeof(v26));
      [(AVMetadataItem *)self duration];
    }

    else
    {
      memset(v27, 0, 24);
      [equal time];
      memset(&v26, 0, sizeof(v26));
    }

    memset(&v25, 0, sizeof(v25));
    [equal duration];
    startDate = [(AVMetadataItem *)self startDate];
    startDate2 = [equal startDate];
    value = [(AVMetadataItem *)self value];
    value2 = [equal value];
    extraAttributes = [(AVMetadataItem *)self extraAttributes];
    extraAttributes2 = [equal extraAttributes];
    preferredStorageLocation = [(AVMetadataItem *)self preferredStorageLocation];
    preferredStorageLocation2 = [equal preferredStorageLocation];
    if ((v7 == v8 || [v7 isEqual:v8]) && (keySpace == keySpace2 || (-[NSString isEqual:](keySpace, "isEqual:", keySpace2)) || (v13 = -[NSString isEqualToString:](-[AVMetadataItem identifier](self, "identifier"), "isEqualToString:", objc_msgSend(equal, "identifier"))) != 0) && (locale == locale2 || (v13 = -[NSLocale isEqual:](locale, "isEqual:", locale2)) != 0))
    {
      time1 = v27[1];
      time2 = v27[0];
      if (CMTimeCompare(&time1, &time2) || (time1 = v26, time2 = v25, CMTimeCompare(&time1, &time2)))
      {
LABEL_17:
        LOBYTE(v13) = 0;
        return v13;
      }

      if ((startDate == startDate2 || (v13 = -[NSDate isEqual:](startDate, "isEqual:", startDate2)) != 0) && (value == value2 || (v13 = [value isEqual:?]) != 0) && (preferredStorageLocation == preferredStorageLocation2 || (v13 = objc_msgSend(preferredStorageLocation, "isEqualToString:", preferredStorageLocation2)) != 0))
      {
        LOBYTE(v13) = extraAttributes == extraAttributes2 || [AVMetadataItem _areExtraAttributesOf:"_areExtraAttributesOf:comparableToExtraAttributesOf:" comparableToExtraAttributesOf:?];
      }
    }
  }

  return v13;
}

- (unint64_t)hash
{
  if ([(AVMetadataItem *)self identifier])
  {
    v3 = [(NSString *)[(AVMetadataItem *)self identifier] hash];
  }

  else
  {
    v4 = [-[AVMetadataItem key](self "key")];
    v3 = [(NSString *)[(AVMetadataItem *)self keySpace] hash]^ v4;
  }

  v5 = [(NSLocale *)[(AVMetadataItem *)self locale] hash];
  if (self)
  {
    [(AVMetadataItem *)self time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = [(__CFDictionary *)CMTimeCopyAsDictionary(&time hash];
  if (self)
  {
    [(AVMetadataItem *)self duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v8 = v5 ^ v3 ^ v7;
  v9 = [(__CFDictionary *)CMTimeCopyAsDictionary(&time hash];
  v10 = v8 ^ v9 ^ [(NSDate *)[(AVMetadataItem *)self startDate] hash];
  v11 = [-[AVMetadataItem value](self "value")];
  return v10 ^ v11 ^ [-[AVMetadataItem intrinsicAttributesOfExtraAttributes:](self intrinsicAttributesOfExtraAttributes:{-[AVMetadataItem extraAttributes](self, "extraAttributes")), "hash"}];
}

- (id)_figMetadataDictionaryWithValue:(BOOL)value diviningValueDataType:(BOOL)type
{
  typeCopy = type;
  valueCopy = value;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVMetadataItem extraAttributes](self, "extraAttributes")}];
  keySpace = [(AVMetadataItem *)self keySpace];
  if (keySpace)
  {
    [v7 setValue:keySpace forKey:*MEMORY[0x1E6971F48]];
  }

  v9 = [(AVMetadataItem *)self key];
  if (v9)
  {
    [v7 setValue:v9 forKey:*MEMORY[0x1E6971F40]];
  }

  if (valueCopy)
  {
    value = [(AVMetadataItem *)self value];
    if (value)
    {
      v11 = value;
      v12 = [(AVMetadataItem *)self _copyValueAsCFTypeWithFormatDescription:0 error:0];
      v13 = *MEMORY[0x1E6971F80];
      if (v12)
      {
        v14 = v12;
        [v7 setValue:v12 forKey:v13];
        CFRelease(v14);
      }

      else
      {
        [v7 setValue:v11 forKey:v13];
      }
    }
  }

  extendedLanguageTag = [(AVMetadataItem *)self extendedLanguageTag];
  if (extendedLanguageTag)
  {
    [v7 setValue:extendedLanguageTag forKey:*MEMORY[0x1E6971F30]];
  }

  locale = [(AVMetadataItem *)self locale];
  if (locale)
  {
    [v7 setValue:locale forKey:*MEMORY[0x1E6971F58]];
  }

  memset(&v28[1], 0, sizeof(CMTime));
  if (self)
  {
    [(AVMetadataItem *)self time];
    if (v28[1].flags)
    {
      v28[0] = v28[1];
      [v7 setValue:AVDictionaryWithTime(v28) forKey:*MEMORY[0x1E6971F70]];
    }

    memset(v28, 0, 24);
    [(AVMetadataItem *)self duration];
    if (v28[0].flags)
    {
      v27 = v28[0];
      [v7 setValue:AVDictionaryWithTime(&v27) forKey:*MEMORY[0x1E6971F28]];
    }
  }

  else
  {
    memset(v28, 0, 24);
  }

  startDate = [(AVMetadataItem *)self startDate];
  if (startDate)
  {
    [v7 setValue:startDate forKey:*MEMORY[0x1E6971F68]];
  }

  discoveryTimestamp = [(AVMetadataItem *)self discoveryTimestamp];
  if (discoveryTimestamp)
  {
    [v7 setValue:discoveryTimestamp forKey:*MEMORY[0x1E6971F20]];
  }

  if (typeCopy)
  {
    [(AVMetadataItem *)self value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataType = [(AVMetadataItem *)self dataType];
      v20 = MEMORY[0x1E6971EE0];
      if (dataType)
      {
        v27.value = 0;
        value = 0;
        if (FigMetadataGetDataTypeWithNamespaceForCoreMediaDataType() && v27.value)
        {
          v22 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
          if ([v22 conformsToType:*MEMORY[0x1E6982E30]])
          {
            value = v27.value;
          }

          else
          {
            value = 0;
          }
        }

        if (!value)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = CGImageSourceCreateWithData([(AVMetadataItem *)self value], 0);
        if (!v23)
        {
          goto LABEL_37;
        }

        v24 = v23;
        value = CGImageSourceGetType(v23);
        CFRelease(v24);
        if (!value)
        {
          goto LABEL_37;
        }
      }

      [v7 setValue:value forKey:*MEMORY[0x1E6971F10]];
      [v7 setValue:*v20 forKey:*MEMORY[0x1E6971F18]];
    }
  }

LABEL_37:
  preferredStorageLocation = [(AVMetadataItem *)self preferredStorageLocation];
  if (preferredStorageLocation)
  {
    [v7 setValue:preferredStorageLocation forKey:*MEMORY[0x1E6971F60]];
  }

  [v7 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVMetadataItem _preferredStorageLocationWasSet](self, "_preferredStorageLocationWasSet")), @"storageLocationWasSetKey"}];
  return v7;
}

+ (id)_metadataArrayWithSmartDeferredLoadingForMetadataArray:(id)array error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    return array;
  }

  v8 = v7;
  v9 = *v17;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(array);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      if (-[NSString isEqualToString:](+[AVMetadataItem identifierForKey:keySpace:](AVMetadataItem, "identifierForKey:keySpace:", [v11 key], objc_msgSend(v11, "keySpace")), "isEqualToString:", @"mdta/com.apple.quicktime.aime-data"))
      {
        v12 = [v11 mutableCopy];
        if ([v12 _preferredStorageLocationWasSet])
        {
          if ([objc_msgSend(v11 "preferredStorageLocation")])
          {
            v13 = @"Invalid metadata key specified for default storage location.";
LABEL_16:
            v14 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
            if (v14)
            {
              array = 0;
              if (error)
              {
                *error = v14;
              }
            }

            return array;
          }
        }

        else
        {
          [v12 setPreferredStorageLocation:@"forDeferredLoading"];
        }
      }

      else
      {
        v12 = v11;
        if ([objc_msgSend(v11 "preferredStorageLocation")])
        {
          v13 = @"Invalid metadata key specified for deferred loading.";
          goto LABEL_16;
        }
      }

      [array addObject:v12];
    }

    v8 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      continue;
    }

    return array;
  }
}

- (id)_figMetadataFormat
{
  if ([(NSString *)self->_priv->keySpace isEqualToString:@"mdta"])
  {
    v3 = &AVMetadataFormatQuickTimeMetadata;
    return *v3;
  }

  if ([(NSString *)self->_priv->keySpace isEqualToString:@"udta"])
  {
    v3 = &AVMetadataFormatQuickTimeUserData;
    return *v3;
  }

  if ([(NSString *)self->_priv->keySpace isEqualToString:@"uiso"])
  {
    v3 = &AVMetadataFormatISOUserData;
    return *v3;
  }

  if ([(NSString *)self->_priv->keySpace isEqualToString:@"itsk"]|| [(NSString *)self->_priv->keySpace isEqualToString:@"itlk"])
  {
    v3 = &AVMetadataFormatiTunesMetadata;
    return *v3;
  }

  if ([(NSString *)self->_priv->keySpace isEqualToString:@"org.id3"])
  {
    v3 = &AVMetadataFormatID3Metadata;
    return *v3;
  }

  if ([(NSString *)self->_priv->keySpace isEqualToString:*MEMORY[0x1E6973F00]])
  {
    return *MEMORY[0x1E6971EF8];
  }

  else
  {
    return 0;
  }
}

- (id)_figMetadataSpecificationReturningError:(id *)error
{
  identifier = [(AVMetadataItem *)self identifier];
  _serializationDataType = [(AVMetadataItem *)self _serializationDataType];
  _conformingDataTypes = [(AVMetadataItem *)self _conformingDataTypes];
  extendedLanguageTag = [(AVMetadataItem *)self extendedLanguageTag];
  if (!_serializationDataType)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata item %p has no data type", self, v19, v20];
LABEL_11:
    v13 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v14 userInfo:0]);
    dictionary = 0;
    goto LABEL_12;
  }

  if (!identifier)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v14 = [v15 stringWithFormat:@"Metadata item %p has no identifier.  If the item was given a key and key space, use +[%@ %@] to check whether an identifier can be made from that key and key space", self, v17, NSStringFromSelector(sel_identifierForKey_keySpace_)];
    goto LABEL_11;
  }

  v9 = extendedLanguageTag;
  value = [(AVMetadataItem *)self value];
  DependentSpecificationsForValue = softLinkAVMetadataMakeDependentSpecificationsForValue(value);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:identifier forKey:*MEMORY[0x1E6960348]];
  [dictionary setObject:_serializationDataType forKey:*MEMORY[0x1E6960338]];
  if ([_conformingDataTypes count])
  {
    [dictionary setObject:_conformingDataTypes forKey:*MEMORY[0x1E69628F0]];
  }

  if (v9)
  {
    [dictionary setObject:v9 forKey:*MEMORY[0x1E6960340]];
  }

  v13 = [DependentSpecificationsForValue count];
  if (v13)
  {
    [dictionary setObject:DependentSpecificationsForValue forKey:*MEMORY[0x1E69628F8]];
    v13 = 0;
  }

LABEL_12:
  if (error && !dictionary)
  {
    *error = v13;
  }

  return dictionary;
}

- (void)_copyValueAsCFTypeWithFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  value = [(AVMetadataItem *)self value];
  v22 = 0;
  result = softLinkAVMetadataObjectCreateBoxedMetadataFromObjectAndFormatDescription(value, description, &v22);
  if (result | v22)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960248]) || CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960250])))
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [value countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      v16 = *MEMORY[0x1E695EFF8];
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(value);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v17 = v16;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && AVCGPointFromNSValue(v14, &v17))
          {
            DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v17);
            [array addObject:DictionaryRepresentation];
            CFRelease(DictionaryRepresentation);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [value countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    result = [array count];
    if (result)
    {
      result = array;
LABEL_17:
      result = CFRetain(result);
    }
  }

  else if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960240]))
  {
    [value pointValue];
    result = CGPointCreateDictionaryRepresentation(v25);
  }

  else if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E69601F8]))
  {
    [value sizeValue];
    result = CGSizeCreateDictionaryRepresentation(v26);
  }

  else if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960268]))
  {
    [value rectValue];
    result = CGRectCreateDictionaryRepresentation(v27);
  }

  else if (CMMetadataDataTypeRegistryDataTypeConformsToDataType(self->_priv->dataType, *MEMORY[0x1E6960228]))
  {
    result = [(AVMetadataItem *)self _createJSONEncodedDataFromValue:value error:&v22];
    if (result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (value)
    {
      result = value;
      goto LABEL_17;
    }

    result = 0;
  }

LABEL_24:
  if (error)
  {
    *error = v22;
  }

  return result;
}

- (id)_createJSONEncodedDataFromValue:(id)value error:(id *)error
{
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:?])
  {
    v6 = MEMORY[0x1E696ACB0];

    return [v6 dataWithJSONObject:value options:0 error:error];
  }

  else
  {
    if (error)
    {
      *error = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"+[NSJSONSerialization isValidJSONObject:] returned NO for the AVMetadataItem's value" userInfo:0]);
    }

    return 0;
  }
}

+ (id)_isoUserDataKeysRequiringKeySpaceConversion
{
  if (_isoUserDataKeysRequiringKeySpaceConversion_onceToken != -1)
  {
    +[AVMetadataItem _isoUserDataKeysRequiringKeySpaceConversion];
  }

  return _isoUserDataKeysRequiringKeySpaceConversion_conversionList;
}

uint64_t __61__AVMetadataItem__isoUserDataKeysRequiringKeySpaceConversion__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"cprt", @"auth", @"perf", @"gnre", @"yrrc", @"loci", @"titl", @"dscp", 0}];
  _isoUserDataKeysRequiringKeySpaceConversion_conversionList = result;
  return result;
}

+ (id)_replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:(id)required
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace])
  {
    v4 = +[AVMetadataItem _isoUserDataKeysRequiringKeySpaceConversion];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:@"cprt"];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(required, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [required countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(required);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v11 "keySpace")])
        {
          [v11 key];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v13 = [v11 key];
          if (isKindOfClass)
          {
            if ([v5 containsObject:v13])
            {
              goto LABEL_15;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 containsObject:{AVStringForOSType(objc_msgSend(objc_msgSend(v11, "key"), "intValue"))}])
            {
LABEL_15:
              v11 = [v11 mutableCopy];
              [v11 setKeySpace:@"uiso"];
            }
          }
        }

        [v6 addObject:v11];
      }

      v8 = [required countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)figMetadataPropertyFromMetadataItems:(id)items
{
  v35 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [AVMetadataItem _replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:items];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        _figMetadataFormat = [v11 _figMetadataFormat];
        v13 = [v11 _figMetadataDictionaryWithValue:1 diviningValueDataType:1];
        array3 = array2;
        if (_figMetadataFormat)
        {
          array3 = [dictionary valueForKey:_figMetadataFormat];
          if (!array3)
          {
            array3 = [MEMORY[0x1E695DF70] array];
            [dictionary setValue:array3 forKey:_figMetadataFormat];
          }
        }

        [array3 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v24 = array2;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [dictionary allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    v19 = *MEMORY[0x1E6971F90];
    v20 = *MEMORY[0x1E6971F88];
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(dictionary, "valueForKey:", *(*(&v25 + 1) + 8 * j)), v19, *(*(&v25 + 1) + 8 * j), v20, 0)}];
      }

      v17 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  if ([v24 count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v24, *MEMORY[0x1E6971F90], 0)}];
  }

  if ([array count])
  {
    return array;
  }

  else
  {
    return 0;
  }
}

- (id)unicodeLanguageIdentifier
{
  result = [(AVMetadataItem *)self extendedLanguageTag];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DF58];

    return [v4 canonicalLocaleIdentifierFromString:v3];
  }

  return result;
}

- (id)unicodeLanguageCode
{
  result = [(AVMetadataItem *)self languageCode];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E695DF58];

    return [v4 canonicalLocaleIdentifierFromString:v3];
  }

  return result;
}

- (CMTime)time
{
  v4 = *&self->timescale;
  if ((*(v4 + 100) & 1) == 0)
  {
    selfCopy = self;
    self = [(CMTime *)self _makePropertiesReady];
    v4 = *&selfCopy->timescale;
  }

  *&retstr->value = *(v4 + 88);
  retstr->epoch = *(v4 + 104);
  return self;
}

- (CMTime)duration
{
  v4 = *&self->timescale;
  if ((*(v4 + 124) & 1) == 0)
  {
    selfCopy = self;
    self = [(CMTime *)self _makePropertiesReady];
    v4 = *&selfCopy->timescale;
  }

  *&retstr->value = *(v4 + 112);
  retstr->epoch = *(v4 + 128);
  return self;
}

- (id)value
{
  [(AVMetadataItem *)self _makeValueReady];
  v3 = self->_priv->value;

  return v3;
}

+ (id)dataTypeForValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Type = CFNumberGetType(value);
    result = 0;
    if (Type <= kCFNumberSInt32Type)
    {
      if (Type == kCFNumberSInt8Type)
      {
LABEL_30:
        v8 = MEMORY[0x1E6960288];
        return *v8;
      }

      if (Type == kCFNumberSInt16Type)
      {
LABEL_32:
        v8 = MEMORY[0x1E6960270];
        return *v8;
      }

      if (Type != kCFNumberSInt32Type)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (Type <= kCFNumberCGFloatType)
    {
      if (((1 << Type) & 0xCF80) != 0)
      {
        ByteSize = CFNumberGetByteSize(value);
        result = 0;
        if (ByteSize <= 3)
        {
          if (ByteSize != 1)
          {
            if (ByteSize != 2)
            {
              return result;
            }

            goto LABEL_32;
          }

          goto LABEL_30;
        }

        if (ByteSize != 4)
        {
          if (ByteSize != 8)
          {
            return result;
          }

          goto LABEL_39;
        }

LABEL_31:
        v8 = MEMORY[0x1E6960278];
        return *v8;
      }

      if (((1 << Type) & 0x13000) != 0)
      {
        v9 = CFNumberGetByteSize(value);
        if (v9 != 8)
        {
          if (v9 != 4)
          {
            return 0;
          }

LABEL_38:
          v8 = MEMORY[0x1E6960208];
          return *v8;
        }

LABEL_35:
        v8 = MEMORY[0x1E6960210];
        return *v8;
      }

      if (Type == kCFNumberFloat64Type)
      {
        goto LABEL_35;
      }
    }

    if (Type == kCFNumberSInt64Type)
    {
LABEL_39:
      v8 = MEMORY[0x1E6960280];
      return *v8;
    }

    if (Type != kCFNumberFloat32Type)
    {
      return result;
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fastestEncoding = [value fastestEncoding];
    if (fastestEncoding == 10 || fastestEncoding == 2483028224 || fastestEncoding == 2415919360)
    {
      v8 = MEMORY[0x1E69602B0];
    }

    else
    {
      v8 = MEMORY[0x1E69602B8];
    }

    return *v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E6960260];
    return *v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (AVCGPointFromNSValue(value, 0))
  {
    v8 = MEMORY[0x1E6960240];
    return *v8;
  }

  if (AVCGRectFromNSValue(value, 0))
  {
    v8 = MEMORY[0x1E6960268];
    return *v8;
  }

  if (AVCGSizeFromNSValue(value, 0))
  {
    return *MEMORY[0x1E69601F8];
  }

  else
  {
    return 0;
  }
}

- (id)_serializationDataType
{
  result = [(AVMetadataItem *)self dataType];
  if (!result)
  {
    v4 = objc_opt_class();
    value = [(AVMetadataItem *)self value];

    return [v4 dataTypeForValue:value];
  }

  return result;
}

- (id)_conformingDataTypes
{
  extraAttributes = [(AVMetadataItem *)self extraAttributes];
  v3 = *MEMORY[0x1E6971F00];

  return [(NSDictionary *)extraAttributes objectForKey:v3];
}

- (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void *)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

+ (id)metadataItemsFromArray:(id)array filteredByIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [array countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(array);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 identifier] && objc_msgSend(identifiers, "containsObject:", objc_msgSend(v11, "identifier")))
        {
          [array addObject:v11];
        }
      }

      v8 = [array countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return [array copy];
}

+ (AVMetadataIdentifier)identifierForKey:(id)key keySpace:(AVMetadataKeySpace)keySpace
{
  result = 0;
  if (key && keySpace)
  {
    identifierOut = 0;
    if (CMMetadataCreateIdentifierForKeyAndKeySpace(*MEMORY[0x1E695E480], key, keySpace, &identifierOut))
    {
      return 0;
    }

    else
    {
      return identifierOut;
    }
  }

  return result;
}

+ (id)keyForIdentifier:(AVMetadataIdentifier)identifier
{
  if (!identifier)
  {
    return 0;
  }

  keyOut = 0;
  if (CMMetadataCreateKeyFromIdentifier(*MEMORY[0x1E695E480], identifier, &keyOut))
  {
    return 0;
  }

  else
  {
    return keyOut;
  }
}

+ (AVMetadataKeySpace)keySpaceForIdentifier:(AVMetadataIdentifier)identifier
{
  if (!identifier)
  {
    return 0;
  }

  keySpaceOut = 0;
  if (CMMetadataCreateKeySpaceFromIdentifier(*MEMORY[0x1E695E480], identifier, &keySpaceOut))
  {
    return 0;
  }

  else
  {
    return keySpaceOut;
  }
}

uint64_t __86__AVMetadataItem__metadataItemWithFigMetadataDictionary_containerURL_securityOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (([*(a1 + 32) isFileURL] & 1) == 0)
  {
    v10 = -11822;
LABEL_18:
    v7 = AVLocalizedError(@"AVFoundationErrorDomain", v10, 0);
    goto LABEL_7;
  }

  v4 = FigFileForkOpenMainByCFURL();
  if (v4)
  {
LABEL_14:
    v8 = v4;
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E695DF88] dataWithLength:v3];
  if (!v5)
  {
    v10 = -11801;
    goto LABEL_18;
  }

  v6 = v5;
  [v5 mutableBytes];
  v4 = FigFileForkRead();
  if (v4)
  {
    goto LABEL_14;
  }

  if (v3)
  {
    v10 = -11849;
    goto LABEL_18;
  }

  [a2 respondWithValue:v6 dataType:*MEMORY[0x1E6960260]];
  v7 = 0;
LABEL_7:
  v8 = 0;
LABEL_8:
  result = 0;
  if (v8 && !v7)
  {
    result = AVLocalizedErrorWithUnderlyingOSStatus(v8, 0);
    v7 = result;
  }

  if (v7)
  {
    return [a2 respondWithError:v7];
  }

  return result;
}

@end