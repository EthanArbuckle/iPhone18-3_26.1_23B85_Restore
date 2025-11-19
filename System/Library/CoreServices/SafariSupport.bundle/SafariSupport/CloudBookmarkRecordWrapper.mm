@interface CloudBookmarkRecordWrapper
- (CloudBookmarkRecordWrapper)initWithRecord:(id)a3 configuration:(id)a4;
- (NSString)numberOfChildrenString;
- (id)initAsPlaceholderParentWithRecordID:(id)a3 isTombstone:(BOOL)a4;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation CloudBookmarkRecordWrapper

- (CloudBookmarkRecordWrapper)initWithRecord:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = CloudBookmarkRecordWrapper;
  v9 = [(CloudBookmarkRecordWrapper *)&v39 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    v11 = [v7 recordID];
    recordID = v10->_recordID;
    v10->_recordID = v11;

    v13 = [v7 safari_recordName];
    recordName = v10->_recordName;
    v10->_recordName = v13;

    objc_storeStrong(&v10->_configuration, a4);
    v15 = [v7 objectForKeyedSubscript:@"ParentFolder"];
    v16 = [v15 recordID];
    parentRecordID = v10->_parentRecordID;
    v10->_parentRecordID = v16;

    v18 = [(CKRecordID *)v10->_parentRecordID recordName];
    v19 = [v18 copy];
    parentRecordName = v10->_parentRecordName;
    v10->_parentRecordName = v19;

    v21 = [(CloudBookmarkItemConfiguration *)v10->_configuration knownKeys];
    v10->_isFolderRecord = [v21 containsObject:@"URL"] ^ 1;

    v10->_state = [v7 safari_state];
    v22 = [v8 valueTransformerForAttributeKey:@"Position"];
    v23 = [v7 safari_defaultPositionUsingValueTransformer:v22];
    position = v10->_position;
    v10->_position = v23;

    v25 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"Title"];
    title = v10->_title;
    v10->_title = v25;

    v27 = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"MinimumAPIVersion"];
    v28 = [v27 integerValue];
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
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
      v35 = [v34 absoluteString];
      url = v10->_url;
      v10->_url = v35;

      customFavoritesFolderServerID = [(CloudBookmarkRecordWrapper *)v10 objectForKeyedSubscript:@"IsPinned"];
      v10->_pinned = [customFavoritesFolderServerID BOOLValue];
    }

    v37 = v10;
  }

  return v10;
}

- (id)initAsPlaceholderParentWithRecordID:(id)a3 isTombstone:(BOOL)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CloudBookmarkRecordWrapper;
  v7 = [(CloudBookmarkRecordWrapper *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_isPlaceholder = 1;
    v7->_isTombstone = a4 & ~v7->_isRoot;
    v7->_isFolderRecord = 1;
    v9 = [v6 copy];
    recordID = v8->_recordID;
    v8->_recordID = v9;

    v11 = [(CKRecordID *)v8->_recordID recordName];
    v12 = [v11 copy];
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

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v4];
  v6 = [v5 attributeRequiresEncryption];
  record = self->_record;
  if (v6)
  {
    v8 = [(CKRecord *)record safari_encryptedValues];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = [v5 reverseTransformedValue:v9];
  }

  else
  {
    v8 = [(CKRecord *)record objectForKeyedSubscript:v4];
    v10 = [v5 reverseTransformedValue:v8];
  }

  return v10;
}

@end