@interface CloudBookmarkItemConfiguration
+ (CloudBookmarkAttributeValueTransformer)encryptedPositionAttributeValueTransformer;
+ (CloudBookmarkAttributeValueTransformer)positionAttributeValueTransformer;
+ (CloudBookmarkItemConfiguration)bookmarkConfiguration;
+ (CloudBookmarkItemConfiguration)readingListItemConfiguration;
+ (CloudBookmarkItemConfiguration)tabGroupConfiguration;
+ (CloudBookmarkItemConfiguration)tabGroupTabConfiguration;
+ (NSArray)cloudBookmarkConfigurations;
+ (NSArray)cloudTabGroupConfigurations;
+ (id)bookmarkFolderConfigurationWithType:(int64_t)type;
+ (id)deviceConfiguration;
+ (id)profileConfiguration;
+ (id)tabGroupBookmarkConfiguration;
+ (id)tabGroupBookmarkFolderConfiguration;
- (BOOL)canParseBookmark:(id)bookmark;
- (BOOL)canParseChange:(void *)change usingDatabaseAccessor:(id)accessor;
- (BOOL)canParseItem:(void *)item usingDatabaseAccessor:(id)accessor;
- (BOOL)canParseRecord:(id)record;
- (BOOL)canParseRecordType:(id)type;
- (BOOL)canSaveIdentityHashAttributesInDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (CloudBookmarkItemConfiguration)initWithItemType:(int64_t)type itemSubtype:(int64_t)subtype recordType:(id)recordType knownKeys:(id)keys identityHashKeys:(id)hashKeys keysWithoutGenerations:(id)generations primaryCKRecordKeysToClear:(id)clear primaryCKRecordKeysToSave:(id)self0 customAttributeGenerationKeys:(id)self1 attributeValueTransformers:(id)self2 identityHashValueTransformers:(id)self3 forRecordsPassingTest:(id)self4;
- (id)_defaultTransformer;
- (id)generationKeyForKey:(id)key;
- (id)identityHashComponentsForRecord:(id)record;
- (id)valueTransformerForAttributeKey:(id)key;
- (id)valueTransformerForAttributeKey:(id)key record:(id)record;
- (id)valueTransformerForIdentityHashKey:(id)key;
@end

@implementation CloudBookmarkItemConfiguration

+ (NSArray)cloudBookmarkConfigurations
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CD3C;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F00 != -1)
  {
    dispatch_once(&qword_100153F00, block);
  }

  v2 = qword_100153EF8;

  return v2;
}

+ (CloudBookmarkItemConfiguration)bookmarkConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CF08;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F10 != -1)
  {
    dispatch_once(&qword_100153F10, block);
  }

  v2 = qword_100153F08;

  return v2;
}

+ (CloudBookmarkItemConfiguration)readingListItemConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D264;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F20 != -1)
  {
    dispatch_once(&qword_100153F20, block);
  }

  v2 = qword_100153F18;

  return v2;
}

+ (id)bookmarkFolderConfigurationWithType:(int64_t)type
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D728;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F30 != -1)
  {
    dispatch_once(&qword_100153F30, block);
  }

  v4 = qword_100153F28;
  v5 = [NSNumber numberWithInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (NSArray)cloudTabGroupConfigurations
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DDC4;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F40 != -1)
  {
    dispatch_once(&qword_100153F40, block);
  }

  v2 = qword_100153F38;

  return v2;
}

+ (CloudBookmarkItemConfiguration)tabGroupConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DF80;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F50 != -1)
  {
    dispatch_once(&qword_100153F50, block);
  }

  v2 = qword_100153F48;

  return v2;
}

+ (CloudBookmarkItemConfiguration)tabGroupTabConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E2E0;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F60 != -1)
  {
    dispatch_once(&qword_100153F60, block);
  }

  v2 = qword_100153F58;

  return v2;
}

+ (id)tabGroupBookmarkFolderConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E6A8;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F70 != -1)
  {
    dispatch_once(&qword_100153F70, block);
  }

  v2 = qword_100153F68;

  return v2;
}

+ (id)tabGroupBookmarkConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004E978;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F80 != -1)
  {
    dispatch_once(&qword_100153F80, block);
  }

  v2 = qword_100153F78;

  return v2;
}

+ (id)deviceConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ECB0;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153F90 != -1)
  {
    dispatch_once(&qword_100153F90, block);
  }

  v2 = qword_100153F88;

  return v2;
}

+ (id)profileConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F020;
  block[3] = &unk_1001321B8;
  block[4] = self;
  if (qword_100153FA0 != -1)
  {
    dispatch_once(&qword_100153FA0, block);
  }

  v2 = qword_100153F98;

  return v2;
}

+ (CloudBookmarkAttributeValueTransformer)positionAttributeValueTransformer
{
  if (qword_100153FB0 != -1)
  {
    sub_1000502D0();
  }

  v3 = qword_100153FA8;

  return v3;
}

+ (CloudBookmarkAttributeValueTransformer)encryptedPositionAttributeValueTransformer
{
  if (qword_100153FC0 != -1)
  {
    sub_1000502E4();
  }

  v3 = qword_100153FB8;

  return v3;
}

- (CloudBookmarkItemConfiguration)initWithItemType:(int64_t)type itemSubtype:(int64_t)subtype recordType:(id)recordType knownKeys:(id)keys identityHashKeys:(id)hashKeys keysWithoutGenerations:(id)generations primaryCKRecordKeysToClear:(id)clear primaryCKRecordKeysToSave:(id)self0 customAttributeGenerationKeys:(id)self1 attributeValueTransformers:(id)self2 identityHashValueTransformers:(id)self3 forRecordsPassingTest:(id)self4
{
  recordTypeCopy = recordType;
  keysCopy = keys;
  hashKeysCopy = hashKeys;
  generationsCopy = generations;
  clearCopy = clear;
  saveCopy = save;
  generationKeysCopy = generationKeys;
  transformersCopy = transformers;
  valueTransformersCopy = valueTransformers;
  testCopy = test;
  v70.receiver = self;
  v70.super_class = CloudBookmarkItemConfiguration;
  v25 = [(CloudBookmarkItemConfiguration *)&v70 init];
  v26 = v25;
  if (v25)
  {
    v25->_itemType = type;
    v25->_itemSubtype = subtype;
    v27 = [recordTypeCopy copy];
    recordType = v26->_recordType;
    v26->_recordType = v27;

    v29 = [keysCopy copy];
    knownKeys = v26->_knownKeys;
    v26->_knownKeys = v29;

    v31 = [hashKeysCopy copy];
    identityHashKeys = v26->_identityHashKeys;
    v26->_identityHashKeys = v31;

    v33 = [generationsCopy copy];
    keysWithoutGenerations = v26->_keysWithoutGenerations;
    v26->_keysWithoutGenerations = v33;

    v35 = [generationKeysCopy copy];
    attributeKeysToGenerationKeys = v26->_attributeKeysToGenerationKeys;
    v26->_attributeKeysToGenerationKeys = v35;

    v37 = [transformersCopy copy];
    attributeKeysToTransformers = v26->_attributeKeysToTransformers;
    v26->_attributeKeysToTransformers = v37;

    v39 = [valueTransformersCopy copy];
    identityHashKeysToTransformers = v26->_identityHashKeysToTransformers;
    v26->_identityHashKeysToTransformers = v39;

    v41 = objc_retainBlock(testCopy);
    recordTestBlock = v26->_recordTestBlock;
    v26->_recordTestBlock = v41;

    v63 = testCopy;
    v43 = saveCopy;
    v44 = [(NSSet *)v26->_knownKeys mutableCopy];
    [v44 intersectSet:clearCopy];
    v45 = [v44 copy];
    primaryCKRecordKeysToClear = v26->_primaryCKRecordKeysToClear;
    v26->_primaryCKRecordKeysToClear = v45;

    v65 = valueTransformersCopy;
    v47 = transformersCopy;
    v48 = clearCopy;
    v49 = v26->_primaryCKRecordKeysToClear;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10004F834;
    v68[3] = &unk_100133998;
    v50 = generationKeysCopy;
    v51 = generationsCopy;
    v52 = hashKeysCopy;
    v53 = v26;
    v69 = v53;
    v54 = [(NSSet *)v49 safari_mapAndFilterObjectsUsingBlock:v68];
    primaryCKRecordGenerationKeysToClear = v53->_primaryCKRecordGenerationKeysToClear;
    v53->_primaryCKRecordGenerationKeysToClear = v54;

    v56 = [(NSSet *)v26->_knownKeys mutableCopy];
    saveCopy = v43;
    testCopy = v63;
    [v56 intersectSet:saveCopy];
    v57 = [v56 copy];
    primaryCKRecordKeysToSave = v53->_primaryCKRecordKeysToSave;
    v53->_primaryCKRecordKeysToSave = v57;

    v59 = v53;
    hashKeysCopy = v52;
    generationsCopy = v51;
    generationKeysCopy = v50;

    clearCopy = v48;
    transformersCopy = v47;
    valueTransformersCopy = v65;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_itemType == v5->_itemType && self->_itemSubtype == v5->_itemSubtype && [(NSString *)self->_recordType isEqualToString:v5->_recordType]&& [(NSSet *)self->_knownKeys isEqualToSet:v6->_knownKeys]&& [(NSOrderedSet *)self->_identityHashKeys isEqualToOrderedSet:v6->_identityHashKeys])
      {
        v7 = [(NSDictionary *)self->_attributeKeysToGenerationKeys isEqualToDictionary:v6->_attributeKeysToGenerationKeys];
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
  }

  return v7;
}

- (id)_defaultTransformer
{
  if (qword_100153FD0 != -1)
  {
    sub_1000502F8();
  }

  v3 = qword_100153FC8;

  return v3;
}

- (id)valueTransformerForAttributeKey:(id)key
{
  v4 = [(NSDictionary *)self->_attributeKeysToTransformers objectForKeyedSubscript:key];
  v5 = v4;
  if (v4)
  {
    _defaultTransformer = v4;
  }

  else
  {
    _defaultTransformer = [(CloudBookmarkItemConfiguration *)self _defaultTransformer];
  }

  v7 = _defaultTransformer;

  return v7;
}

- (id)valueTransformerForAttributeKey:(id)key record:(id)record
{
  recordCopy = record;
  v7 = [(CloudBookmarkItemConfiguration *)self valueTransformerForAttributeKey:key];
  v8 = [v7 transformerForRecord:recordCopy];

  return v8;
}

- (id)generationKeyForKey:(id)key
{
  attributeKeysToGenerationKeys = self->_attributeKeysToGenerationKeys;
  keyCopy = key;
  v5 = [(NSDictionary *)attributeKeysToGenerationKeys objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;

  return v7;
}

- (BOOL)canSaveIdentityHashAttributesInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_identityHashKeys;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(CloudBookmarkItemConfiguration *)self valueTransformerForAttributeKey:v10, v16];
        v12 = [dictionaryCopy objectForKeyedSubscript:v10];
        v13 = [v11 isEmptyValue:v12];

        if (v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (id)valueTransformerForIdentityHashKey:(id)key
{
  v4 = [(NSDictionary *)self->_identityHashKeysToTransformers objectForKeyedSubscript:key];
  v5 = v4;
  if (v4)
  {
    _defaultTransformer = v4;
  }

  else
  {
    _defaultTransformer = [(CloudBookmarkItemConfiguration *)self _defaultTransformer];
  }

  v7 = _defaultTransformer;

  return v7;
}

- (BOOL)canParseRecordType:(id)type
{
  v4 = [type isEqualToString:self->_recordType];
  if (v4)
  {
    LOBYTE(v4) = self->_recordTestBlock == 0;
  }

  return v4;
}

- (BOOL)canParseRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:self->_recordType];

  if (v6)
  {
    recordTestBlock = self->_recordTestBlock;
    if (recordTestBlock)
    {
      v8 = recordTestBlock[2](recordTestBlock, recordCopy);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canParseItem:(void *)item usingDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v7 = [accessorCopy itemTypeWithItem:item];
  if (v7 == self->_itemType)
  {
    if (v7 == 1)
    {
      v8 = [accessorCopy folderTypeWithFolder:item];
    }

    else
    {
      if (v7)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v8 = [accessorCopy bookmarkTypeWithBookmark:item];
    }

    v9 = v8 == self->_itemSubtype;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (BOOL)canParseChange:(void *)change usingDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v7 = [accessorCopy itemTypeForChange:change];
  if (v7 == self->_itemType)
  {
    if (v7 == 1)
    {
      v8 = [accessorCopy folderTypeForChange:change];
    }

    else
    {
      if (v7)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v8 = [accessorCopy bookmarkTypeForChange:change];
    }

    v9 = v8 == self->_itemSubtype;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (BOOL)canParseBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  isFolder = [bookmarkCopy isFolder];
  if ([bookmarkCopy itemType] == self->_itemType)
  {
    if (isFolder)
    {
      folderType = [bookmarkCopy folderType];
    }

    else
    {
      folderType = [bookmarkCopy bookmarkType];
    }

    v7 = folderType == self->_itemSubtype;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)identityHashComponentsForRecord:(id)record
{
  recordCopy = record;
  v18 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_identityHashKeys;
  v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(CloudBookmarkItemConfiguration *)self valueTransformerForAttributeKey:v9];
        if ([v10 attributeRequiresEncryption])
        {
          safari_encryptedValues = [recordCopy safari_encryptedValues];
          v12 = [safari_encryptedValues objectForKeyedSubscript:v9];
          v13 = [v10 reverseTransformedValue:v12];
        }

        else
        {
          safari_encryptedValues = [recordCopy objectForKeyedSubscript:v9];
          v13 = [v10 reverseTransformedValue:safari_encryptedValues];
        }

        v14 = [(CloudBookmarkItemConfiguration *)self valueTransformerForIdentityHashKey:v9];
        if ([v14 isEmptyValue:v13])
        {
          [v18 addObject:&stru_100137BA8];
        }

        else
        {
          v15 = [v14 transformedValue:v13];
          [v18 addObject:v15];
        }
      }

      v6 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v18;
}

@end