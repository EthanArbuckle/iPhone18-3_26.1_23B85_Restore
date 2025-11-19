@interface CloudBookmarkItemConfiguration
+ (CloudBookmarkAttributeValueTransformer)encryptedPositionAttributeValueTransformer;
+ (CloudBookmarkAttributeValueTransformer)positionAttributeValueTransformer;
+ (CloudBookmarkItemConfiguration)bookmarkConfiguration;
+ (CloudBookmarkItemConfiguration)readingListItemConfiguration;
+ (CloudBookmarkItemConfiguration)tabGroupConfiguration;
+ (CloudBookmarkItemConfiguration)tabGroupTabConfiguration;
+ (NSArray)cloudBookmarkConfigurations;
+ (NSArray)cloudTabGroupConfigurations;
+ (id)bookmarkFolderConfigurationWithType:(int64_t)a3;
+ (id)deviceConfiguration;
+ (id)profileConfiguration;
+ (id)tabGroupBookmarkConfiguration;
+ (id)tabGroupBookmarkFolderConfiguration;
- (BOOL)canParseBookmark:(id)a3;
- (BOOL)canParseChange:(void *)a3 usingDatabaseAccessor:(id)a4;
- (BOOL)canParseItem:(void *)a3 usingDatabaseAccessor:(id)a4;
- (BOOL)canParseRecord:(id)a3;
- (BOOL)canParseRecordType:(id)a3;
- (BOOL)canSaveIdentityHashAttributesInDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CloudBookmarkItemConfiguration)initWithItemType:(int64_t)a3 itemSubtype:(int64_t)a4 recordType:(id)a5 knownKeys:(id)a6 identityHashKeys:(id)a7 keysWithoutGenerations:(id)a8 primaryCKRecordKeysToClear:(id)a9 primaryCKRecordKeysToSave:(id)a10 customAttributeGenerationKeys:(id)a11 attributeValueTransformers:(id)a12 identityHashValueTransformers:(id)a13 forRecordsPassingTest:(id)a14;
- (id)_defaultTransformer;
- (id)generationKeyForKey:(id)a3;
- (id)identityHashComponentsForRecord:(id)a3;
- (id)valueTransformerForAttributeKey:(id)a3;
- (id)valueTransformerForAttributeKey:(id)a3 record:(id)a4;
- (id)valueTransformerForIdentityHashKey:(id)a3;
@end

@implementation CloudBookmarkItemConfiguration

+ (NSArray)cloudBookmarkConfigurations
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CD3C;
  block[3] = &unk_1001321B8;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
  if (qword_100153F20 != -1)
  {
    dispatch_once(&qword_100153F20, block);
  }

  v2 = qword_100153F18;

  return v2;
}

+ (id)bookmarkFolderConfigurationWithType:(int64_t)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D728;
  block[3] = &unk_1001321B8;
  block[4] = a1;
  if (qword_100153F30 != -1)
  {
    dispatch_once(&qword_100153F30, block);
  }

  v4 = qword_100153F28;
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (NSArray)cloudTabGroupConfigurations
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DDC4;
  block[3] = &unk_1001321B8;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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

- (CloudBookmarkItemConfiguration)initWithItemType:(int64_t)a3 itemSubtype:(int64_t)a4 recordType:(id)a5 knownKeys:(id)a6 identityHashKeys:(id)a7 keysWithoutGenerations:(id)a8 primaryCKRecordKeysToClear:(id)a9 primaryCKRecordKeysToSave:(id)a10 customAttributeGenerationKeys:(id)a11 attributeValueTransformers:(id)a12 identityHashValueTransformers:(id)a13 forRecordsPassingTest:(id)a14
{
  v66 = a5;
  v67 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v70.receiver = self;
  v70.super_class = CloudBookmarkItemConfiguration;
  v25 = [(CloudBookmarkItemConfiguration *)&v70 init];
  v26 = v25;
  if (v25)
  {
    v25->_itemType = a3;
    v25->_itemSubtype = a4;
    v27 = [v66 copy];
    recordType = v26->_recordType;
    v26->_recordType = v27;

    v29 = [v67 copy];
    knownKeys = v26->_knownKeys;
    v26->_knownKeys = v29;

    v31 = [v17 copy];
    identityHashKeys = v26->_identityHashKeys;
    v26->_identityHashKeys = v31;

    v33 = [v18 copy];
    keysWithoutGenerations = v26->_keysWithoutGenerations;
    v26->_keysWithoutGenerations = v33;

    v35 = [v21 copy];
    attributeKeysToGenerationKeys = v26->_attributeKeysToGenerationKeys;
    v26->_attributeKeysToGenerationKeys = v35;

    v37 = [v22 copy];
    attributeKeysToTransformers = v26->_attributeKeysToTransformers;
    v26->_attributeKeysToTransformers = v37;

    v39 = [v23 copy];
    identityHashKeysToTransformers = v26->_identityHashKeysToTransformers;
    v26->_identityHashKeysToTransformers = v39;

    v41 = objc_retainBlock(v24);
    recordTestBlock = v26->_recordTestBlock;
    v26->_recordTestBlock = v41;

    v63 = v24;
    v43 = v20;
    v44 = [(NSSet *)v26->_knownKeys mutableCopy];
    [v44 intersectSet:v19];
    v45 = [v44 copy];
    primaryCKRecordKeysToClear = v26->_primaryCKRecordKeysToClear;
    v26->_primaryCKRecordKeysToClear = v45;

    v65 = v23;
    v47 = v22;
    v48 = v19;
    v49 = v26->_primaryCKRecordKeysToClear;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10004F834;
    v68[3] = &unk_100133998;
    v50 = v21;
    v51 = v18;
    v52 = v17;
    v53 = v26;
    v69 = v53;
    v54 = [(NSSet *)v49 safari_mapAndFilterObjectsUsingBlock:v68];
    primaryCKRecordGenerationKeysToClear = v53->_primaryCKRecordGenerationKeysToClear;
    v53->_primaryCKRecordGenerationKeysToClear = v54;

    v56 = [(NSSet *)v26->_knownKeys mutableCopy];
    v20 = v43;
    v24 = v63;
    [v56 intersectSet:v20];
    v57 = [v56 copy];
    primaryCKRecordKeysToSave = v53->_primaryCKRecordKeysToSave;
    v53->_primaryCKRecordKeysToSave = v57;

    v59 = v53;
    v17 = v52;
    v18 = v51;
    v21 = v50;

    v19 = v48;
    v22 = v47;
    v23 = v65;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)valueTransformerForAttributeKey:(id)a3
{
  v4 = [(NSDictionary *)self->_attributeKeysToTransformers objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CloudBookmarkItemConfiguration *)self _defaultTransformer];
  }

  v7 = v6;

  return v7;
}

- (id)valueTransformerForAttributeKey:(id)a3 record:(id)a4
{
  v6 = a4;
  v7 = [(CloudBookmarkItemConfiguration *)self valueTransformerForAttributeKey:a3];
  v8 = [v7 transformerForRecord:v6];

  return v8;
}

- (id)generationKeyForKey:(id)a3
{
  attributeKeysToGenerationKeys = self->_attributeKeysToGenerationKeys;
  v4 = a3;
  v5 = [(NSDictionary *)attributeKeysToGenerationKeys objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (BOOL)canSaveIdentityHashAttributesInDictionary:(id)a3
{
  v4 = a3;
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
        v12 = [v4 objectForKeyedSubscript:v10];
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

- (id)valueTransformerForIdentityHashKey:(id)a3
{
  v4 = [(NSDictionary *)self->_identityHashKeysToTransformers objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CloudBookmarkItemConfiguration *)self _defaultTransformer];
  }

  v7 = v6;

  return v7;
}

- (BOOL)canParseRecordType:(id)a3
{
  v4 = [a3 isEqualToString:self->_recordType];
  if (v4)
  {
    LOBYTE(v4) = self->_recordTestBlock == 0;
  }

  return v4;
}

- (BOOL)canParseRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:self->_recordType];

  if (v6)
  {
    recordTestBlock = self->_recordTestBlock;
    if (recordTestBlock)
    {
      v8 = recordTestBlock[2](recordTestBlock, v4);
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

- (BOOL)canParseItem:(void *)a3 usingDatabaseAccessor:(id)a4
{
  v6 = a4;
  v7 = [v6 itemTypeWithItem:a3];
  if (v7 == self->_itemType)
  {
    if (v7 == 1)
    {
      v8 = [v6 folderTypeWithFolder:a3];
    }

    else
    {
      if (v7)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v8 = [v6 bookmarkTypeWithBookmark:a3];
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

- (BOOL)canParseChange:(void *)a3 usingDatabaseAccessor:(id)a4
{
  v6 = a4;
  v7 = [v6 itemTypeForChange:a3];
  if (v7 == self->_itemType)
  {
    if (v7 == 1)
    {
      v8 = [v6 folderTypeForChange:a3];
    }

    else
    {
      if (v7)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v8 = [v6 bookmarkTypeForChange:a3];
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

- (BOOL)canParseBookmark:(id)a3
{
  v4 = a3;
  v5 = [v4 isFolder];
  if ([v4 itemType] == self->_itemType)
  {
    if (v5)
    {
      v6 = [v4 folderType];
    }

    else
    {
      v6 = [v4 bookmarkType];
    }

    v7 = v6 == self->_itemSubtype;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)identityHashComponentsForRecord:(id)a3
{
  v4 = a3;
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
          v11 = [v4 safari_encryptedValues];
          v12 = [v11 objectForKeyedSubscript:v9];
          v13 = [v10 reverseTransformedValue:v12];
        }

        else
        {
          v11 = [v4 objectForKeyedSubscript:v9];
          v13 = [v10 reverseTransformedValue:v11];
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