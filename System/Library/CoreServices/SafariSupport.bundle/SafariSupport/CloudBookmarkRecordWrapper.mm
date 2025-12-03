@interface CloudBookmarkRecordWrapper
- (CloudBookmarkRecordWrapper)initWithRecord:(id)record configuration:(id)configuration;
- (NSString)numberOfChildrenString;
- (id)initAsPlaceholderParentWithRecordID:(id)d isTombstone:(BOOL)tombstone;
- (id)objectForKeyedSubscript:(id)subscript;
@end

@implementation CloudBookmarkRecordWrapper

- (CloudBookmarkRecordWrapper)initWithRecord:(id)record configuration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
  v39.receiver = self;
  v39.super_class = CloudBookmarkRecordWrapper;
  v9 = [(CloudBookmarkRecordWrapper *)&v39 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    recordID = [recordCopy recordID];
    recordID = v10->_recordID;
    v10->_recordID = recordID;

    safari_recordName = [recordCopy safari_recordName];
    recordName = v10->_recordName;
    v10->_recordName = safari_recordName;

    objc_storeStrong(&v10->_configuration, configuration);
    v15 = [recordCopy objectForKeyedSubscript:@"ParentFolder"];
    recordID2 = [v15 recordID];
    parentRecordID = v10->_parentRecordID;
    v10->_parentRecordID = recordID2;

    recordName = [(CKRecordID *)v10->_parentRecordID recordName];
    v19 = [recordName copy];
    parentRecordName = v10->_parentRecordName;
    v10->_parentRecordName = v19;

    knownKeys = [(CloudBookmarkItemConfiguration *)v10->_configuration knownKeys];
    v10->_isFolderRecord = [knownKeys containsObject:@"URL"] ^ 1;

    v10->_state = [recordCopy safari_state];
    v22 = [configurationCopy valueTransformerForAttributeKey:@"Position"];
    v23 = [recordCopy safari_defaultPositionUsingValueTransformer:v22];
    position = v10->_position;
    v10->_position = v23;

    v25 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"Title"];
    title = v10->_title;
    v10->_title = v25;

    v27 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"MinimumAPIVersion"];
    integerValue = [v27 integerValue];
    if (integerValue <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = integerValue;
    }

    v10->_minimumAPIVersion = v29;

    if (v10->_isFolderRecord)
    {
      v30 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"SymbolImageName"];
      symbolImageName = v10->_symbolImageName;
      v10->_symbolImageName = v30;

      v32 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];
      customFavoritesFolderServerID = v10->_customFavoritesFolderServerID;
      v10->_customFavoritesFolderServerID = v32;
    }

    else
    {
      v34 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"URL"];
      absoluteString = [v34 absoluteString];
      url = v10->_url;
      v10->_url = absoluteString;

      customFavoritesFolderServerID = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"IsPinned"];
      v10->_pinned = [customFavoritesFolderServerID BOOLValue];
    }

    v37 = v10;
  }

  return v10;
}

- (id)initAsPlaceholderParentWithRecordID:(id)d isTombstone:(BOOL)tombstone
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = CloudBookmarkRecordWrapper;
  v7 = [(CloudBookmarkRecordWrapper *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_isPlaceholder = 1;
    v7->_isTombstone = tombstone & ~v7->_isRoot;
    v7->_isFolderRecord = 1;
    v9 = [dCopy copy];
    recordID = v8->_recordID;
    v8->_recordID = v9;

    recordName = [(CKRecordID *)v8->_recordID recordName];
    v12 = [recordName copy];
    recordName = v8->_recordName;
    v8->_recordName = v12;

    v8->_isRoot = [(NSString *)v8->_recordName isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark];
    v14 = v8;
  }

  return v8;
}

- (NSString)numberOfChildrenString
{
  numberOfChildren = self->_numberOfChildren;
  numberOfDeletedChildren = self->_numberOfDeletedChildren;
  if (numberOfDeletedChildren)
  {
    [NSString stringWithFormat:@"%ld (%ld | %ld)", numberOfChildren, numberOfChildren - numberOfDeletedChildren, numberOfDeletedChildren];
  }

  else
  {
    [NSString stringWithFormat:@"%ld", numberOfChildren, v6, v7];
  }
  v4 = ;

  return v4;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v5 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:subscriptCopy];
  attributeRequiresEncryption = [v5 attributeRequiresEncryption];
  record = self->_record;
  if (attributeRequiresEncryption)
  {
    safari_encryptedValues = [(CKRecord *)record safari_encryptedValues];
    v9 = [safari_encryptedValues objectForKeyedSubscript:subscriptCopy];
    v10 = [v5 reverseTransformedValue:v9];
  }

  else
  {
    safari_encryptedValues = [(CKRecord *)record objectForKeyedSubscript:subscriptCopy];
    v10 = [v5 reverseTransformedValue:safari_encryptedValues];
  }

  return v10;
}

@end