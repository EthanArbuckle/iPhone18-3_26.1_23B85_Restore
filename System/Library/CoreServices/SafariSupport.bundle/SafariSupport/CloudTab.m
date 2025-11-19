@interface CloudTab
+ (CloudTab)cloudTabWithTabUUIDString:(id)a3 owningDeviceUUIDString:(id)a4 owningSceneID:(id)a5 position:(id)a6 title:(id)a7 urlString:(id)a8 isPinned:(BOOL)a9 isShowingReader:(BOOL)a10 readerScrollPositionPageIndex:(id)a11 encodedSystemFieldsData:(id)a12 cloudTabsRecordZoneID:(id)a13 isManateeContainer:(BOOL)a14;
+ (CloudTab)cloudTabWithWBSCloudTabDictionaryRepresentation:(id)a3 owningDeviceUUIDString:(id)a4 position:(id)a5 cloudTabsRecordZoneID:(id)a6 isManateeContainer:(BOOL)a7;
+ (id)_valueTransformerForTitleAndURL;
- (BOOL)isPinned;
- (BOOL)isShowingReader;
- (CKRecord)record;
- (NSDictionary)readerScrollPositionDictionary;
- (NSDictionary)wbsCloudTabDictionaryRepresentation;
- (NSNumber)readerScrollPositionPageIndex;
- (NSString)owningDeviceUUIDString;
- (NSString)title;
- (NSString)urlString;
- (WBSCRDTPosition)position;
- (double)lastViewedTime;
- (id)_initWithCKRecord:(id)a3 isManateeContainer:(BOOL)a4;
- (id)_positionAfterPosition:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_commonInitWithParameters:(id)a3 encodedSystemFieldsData:(id)a4 cloudTabsRecordZoneID:(id)a5 isManateeContainer:(BOOL)a6;
- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded;
- (void)positionTabAfterPosition:(id)a3;
- (void)updateFromCloudTab:(id)a3 previousTabPosition:(id)a4;
@end

@implementation CloudTab

+ (CloudTab)cloudTabWithWBSCloudTabDictionaryRepresentation:(id)a3 owningDeviceUUIDString:(id)a4 position:(id)a5 cloudTabsRecordZoneID:(id)a6 isManateeContainer:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 safari_stringForKey:@"UUID"];
  if ([v15 length])
  {
    v16 = [v11 safari_stringForKey:@"URL"];
    if ([v16 length])
    {
      v17 = v13;
      v18 = v12;
      v32 = v7;
      v19 = [v11 safari_stringForKey:@"Title"];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = &stru_100137BA8;
      }

      v21 = [v11 safari_dictionaryForKey:@"ReaderScrollPosition"];
      v22 = [v21 safari_numberForKey:@"pageIndex"];

      v31 = v14;
      if (v22)
      {
        v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 integerValue]);
      }

      else
      {
        v30 = 0;
      }

      v24 = [v11 safari_BOOLForKey:@"IsPinned"];
      v25 = [v11 safari_BOOLForKey:@"IsShowingReader"];
      v26 = [v11 safari_stringForKey:@"OwningSceneID"];
      v27 = [[CloudTabParameters alloc] initWithTabUUIDString:v15 owningDeviceUUIDString:v18 owningSceneID:v26 urlString:v16];
      [(CloudTabParameters *)v27 setPosition:v17];
      [(CloudTabParameters *)v27 setTitle:v20];
      [(CloudTabParameters *)v27 setPinned:v24];
      [(CloudTabParameters *)v27 setShowingReader:v25];
      [(CloudTabParameters *)v27 setReaderScrollPositionPageIndex:v30];
      v28 = [v11 safari_numberForKey:@"DateLastViewed"];
      [v28 doubleValue];
      [(CloudTabParameters *)v27 setLastViewedTime:?];

      v14 = v31;
      v23 = [[CloudTab alloc] _initWithParameters:v27 encodedSystemFieldsData:0 cloudTabsRecordZoneID:v31 isManateeContainer:v32];

      v12 = v18;
      v13 = v17;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (CloudTab)cloudTabWithTabUUIDString:(id)a3 owningDeviceUUIDString:(id)a4 owningSceneID:(id)a5 position:(id)a6 title:(id)a7 urlString:(id)a8 isPinned:(BOOL)a9 isShowingReader:(BOOL)a10 readerScrollPositionPageIndex:(id)a11 encodedSystemFieldsData:(id)a12 cloudTabsRecordZoneID:(id)a13 isManateeContainer:(BOOL)a14
{
  v31 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = [[CloudTabParameters alloc] initWithTabUUIDString:v27 owningDeviceUUIDString:v26 owningSceneID:v25 urlString:v22];

  [(CloudTabParameters *)v28 setPosition:v24];
  [(CloudTabParameters *)v28 setTitle:v23];

  [(CloudTabParameters *)v28 setPinned:a9];
  [(CloudTabParameters *)v28 setShowingReader:a10];
  [(CloudTabParameters *)v28 setReaderScrollPositionPageIndex:v21];

  v29 = [[CloudTab alloc] _initWithParameters:v28 encodedSystemFieldsData:v20 cloudTabsRecordZoneID:v31 isManateeContainer:a14];

  return v29;
}

- (id)_initWithCKRecord:(id)a3 isManateeContainer:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CloudTab;
  v7 = [(CloudTab *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    record = v7->_record;
    v7->_record = v8;

    v7->_isManateeContainer = a4;
    [(CloudTab *)v7 _removeManateeSepecifcFieldsFromRecordIfNeeded];
    v10 = v7;
  }

  return v7;
}

- (void)_commonInitWithParameters:(id)a3 encodedSystemFieldsData:(id)a4 cloudTabsRecordZoneID:(id)a5 isManateeContainer:(BOOL)a6
{
  v6 = a6;
  v48 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v11 tabUUIDString];
  v13 = [v11 owningDeviceUUIDString];
  v47 = [v11 owningSceneID];
  v14 = [v11 position];
  v15 = [v11 title];
  v16 = [v11 urlString];
  v42 = [v11 isPinned];
  v41 = [v11 isShowingReader];
  v43 = [v11 readerScrollPositionPageIndex];
  [v11 lastViewedTime];
  v18 = v17;

  v19 = [v48 length];
  v40 = v6;
  self->_isManateeContainer = v6;
  v20 = [CKRecord alloc];
  v21 = v20;
  v46 = v10;
  v45 = v12;
  if (v19)
  {
    v22 = [v20 safari_initWithEncodedRecordData:v48];
    record = self->_record;
    self->_record = v22;

    [(CloudTab *)self _removeManateeSepecifcFieldsFromRecordIfNeeded];
    [(CKRecord *)self->_record setTrackChanges:0];
  }

  else
  {
    v24 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:v10];
    v25 = [v21 initWithRecordType:@"CloudTab" recordID:v24];
    v26 = self->_record;
    self->_record = v25;
  }

  v44 = v13;
  v27 = [[CKRecordID alloc] initWithRecordName:v13 zoneID:v10];
  v28 = [[CKReference alloc] initWithRecordID:v27 action:1];
  [(CKRecord *)self->_record setObject:v28 forKeyedSubscript:@"OwningDevice"];

  v29 = [objc_opt_class() _valueTransformerForTitleAndURL];
  if ([v15 length])
  {
    v30 = [v29 transformedValue:v15];
    v31 = [(CKRecord *)self->_record safari_encryptedValues];
    [v31 setObject:v30 forKeyedSubscript:@"Title"];
  }

  v32 = [v29 transformedValue:v16];
  v33 = [(CKRecord *)self->_record safari_encryptedValues];
  [v33 setObject:v32 forKeyedSubscript:@"URL"];

  v34 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
  v35 = [v14 dictionaryRepresentation];
  v36 = [v34 transformedValue:v35];
  [(CKRecord *)self->_record setObject:v36 forKeyedSubscript:@"Position"];

  objc_storeStrong(&self->_position, v14);
  if (v41)
  {
    [(CKRecord *)self->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsShowingReader"];
  }

  v37 = v47;
  if (v42)
  {
    [(CKRecord *)self->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsPinned"];
  }

  if (v43)
  {
    [(CKRecord *)self->_record setObject:v43 forKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  }

  if ([v47 length])
  {
    [(CKRecord *)self->_record setObject:v47 forKeyedSubscript:@"OwningSceneID"];
  }

  if (v18 != 0.0 && v40)
  {
    v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:v18];
    v39 = [(CKRecord *)self->_record safari_encryptedValues];
    [v39 setObject:v38 forKeyedSubscript:@"DateLastViewed"];

    v37 = v47;
  }

  if (v19)
  {
    [(CKRecord *)self->_record setTrackChanges:1];
  }
}

- (void)updateFromCloudTab:(id)a3 previousTabPosition:(id)a4
{
  v32 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _valueTransformerForTitleAndURL];
  v8 = [v32 title];
  v9 = [(CloudTab *)self title];
  if (v8 != v9 && ([v8 isEqualToString:v9] & 1) == 0)
  {
    v10 = [v7 transformedValue:v8];
    v11 = [(CKRecord *)self->_record safari_encryptedValues];
    [v11 setObject:v10 forKeyedSubscript:@"Title"];
  }

  v12 = [v32 urlString];
  v13 = [(CloudTab *)self urlString];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v7 transformedValue:v12];
    v16 = [(CKRecord *)self->_record safari_encryptedValues];
    [v16 setObject:v15 forKeyedSubscript:@"URL"];
  }

  [(CloudTab *)self positionTabAfterPosition:v6];
  v17 = [v32 isShowingReader];
  if (v17 != [(CloudTab *)self isShowingReader])
  {
    if (v17)
    {
      v18 = &__kCFBooleanTrue;
    }

    else
    {
      v18 = 0;
    }

    [(CKRecord *)self->_record setObject:v18 forKeyedSubscript:@"IsShowingReader"];
  }

  v19 = [v32 isPinned];
  if (v19 != [(CloudTab *)self isPinned])
  {
    if (v19)
    {
      v20 = &__kCFBooleanTrue;
    }

    else
    {
      v20 = 0;
    }

    [(CKRecord *)self->_record setObject:v20 forKeyedSubscript:@"IsPinned"];
  }

  v21 = v7;
  v22 = [v32 readerScrollPositionPageIndex];
  v23 = [(CloudTab *)self readerScrollPositionPageIndex];
  if (v22 != v23 && ([v22 isEqual:v23] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v22 forKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  }

  v24 = [v32 owningSceneID];
  v25 = [(CloudTab *)self owningSceneID];
  if (v24 != v25 && ([v24 isEqualToString:v25] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:v24 forKeyedSubscript:@"OwningSceneID"];
  }

  if (self->_isManateeContainer)
  {
    [v32 lastViewedTime];
    v27 = v26;
    [(CloudTab *)self lastViewedTime];
    if (v27 != v28)
    {
      v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:v27];
      v30 = [(CKRecord *)self->_record safari_encryptedValues];
      [v30 setObject:v29 forKeyedSubscript:@"DateLastViewed"];
    }
  }
}

- (void)positionTabAfterPosition:(id)a3
{
  v13 = a3;
  if (v13)
  {
    v4 = [(CloudTab *)self position];
    if (!v4 || (v5 = v4, -[CloudTab position](self, "position"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v13 compare:v6], v6, v5, v7 != -1))
    {
      v8 = [(CloudTab *)self _positionAfterPosition:v13];
      v9 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
      v10 = [v8 dictionaryRepresentation];
      v11 = [v9 transformedValue:v10];
      [(CKRecord *)self->_record setObject:v11 forKeyedSubscript:@"Position"];

      position = self->_position;
      self->_position = v8;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CloudTab allocWithZone:a3];
  record = self->_record;
  isManateeContainer = self->_isManateeContainer;

  return [(CloudTab *)v4 _initWithCKRecord:record isManateeContainer:isManateeContainer];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CloudTab *)self title];
  v6 = [(CloudTab *)self urlString];
  v7 = [(CloudTab *)self tabUUIDString];
  v8 = [(CloudTab *)self owningDeviceUUIDString];
  v9 = [(CloudTab *)self owningSceneID];
  v10 = [(CloudTab *)self position];
  v11 = [(CloudTab *)self isShowingReader];
  v12 = [(CloudTab *)self readerScrollPositionPageIndex];
  v13 = [NSString stringWithFormat:@"<%@: %p title = %@; url = %@; uuid = %@; owning device uuid = %@; owning sceneID = %@; position = %@; isShowingReader = %d; readerScrollPositionPageIndex = %@; isPinned = %d>", v4, self, v5, v6, v7, v8, v9, v10, v11, v12, [(CloudTab *)self isPinned]];;

  return v13;
}

- (CKRecord)record
{
  [(CloudTab *)self _removeManateeSepecifcFieldsFromRecordIfNeeded];
  record = self->_record;

  return record;
}

- (NSString)owningDeviceUUIDString
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"OwningDevice"];
  v3 = [v2 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (NSString)title
{
  v3 = [objc_opt_class() _valueTransformerForTitleAndURL];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"Title"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSString)urlString
{
  v3 = [objc_opt_class() _valueTransformerForTitleAndURL];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"URL"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (WBSCRDTPosition)position
{
  position = self->_position;
  if (!position)
  {
    v4 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
    v5 = [(CKRecord *)self->_record objectForKeyedSubscript:@"Position"];
    v6 = [v4 reverseTransformedValue:v5];

    if (v6)
    {
      v7 = [[WBSCRDTPosition alloc] initWithDictionaryRepresentation:v6];
      v8 = self->_position;
      self->_position = v7;
    }

    position = self->_position;
  }

  return position;
}

- (BOOL)isPinned
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IsPinned"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isShowingReader
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IsShowingReader"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSDictionary)readerScrollPositionDictionary
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = @"pageIndex";
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)readerScrollPositionPageIndex
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (double)lastViewedTime
{
  v3 = [(CKRecord *)self->_record safari_encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"DateLastViewed"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;
  }

  else
  {
    v7 = [(CKRecord *)self->_record modificationDate];
    [v7 timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (NSDictionary)wbsCloudTabDictionaryRepresentation
{
  v15[0] = @"UUID";
  v3 = [(CloudTab *)self tabUUIDString];
  v15[1] = @"URL";
  v16[0] = v3;
  v4 = [(CloudTab *)self urlString];
  v16[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v6 = [v5 mutableCopy];

  v7 = [(CloudTab *)self title];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_100137BA8;
  }

  [v6 setObject:v9 forKeyedSubscript:@"Title"];

  if ([(CloudTab *)self isShowingReader])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsShowingReader"];
  }

  if ([(CloudTab *)self isPinned])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsPinned"];
  }

  v10 = [(CloudTab *)self readerScrollPositionDictionary];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"ReaderScrollPosition"];
  }

  v11 = [(CloudTab *)self owningSceneID];
  if (v11)
  {
    [v6 setObject:v11 forKeyedSubscript:@"OwningSceneID"];
  }

  [(CloudTab *)self lastViewedTime];
  if (v12 != 0.0)
  {
    v13 = [NSNumber numberWithDouble:?];
    [v6 setObject:v13 forKeyedSubscript:@"DateLastViewed"];
  }

  return v6;
}

+ (id)_valueTransformerForTitleAndURL
{
  if (qword_100154040 != -1)
  {
    sub_1000911FC();
  }

  v3 = qword_100154038;

  return v3;
}

- (id)_positionAfterPosition:(id)a3
{
  v4 = a3;
  v5 = [(CloudTab *)self owningDeviceUUIDString];
  v6 = [WBSCRDTPosition positionBetweenPosition:v4 andPosition:0 withDeviceIdentifier:v5 changeID:0];

  return v6;
}

- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded
{
  if (!self->_isManateeContainer)
  {
    v3 = [(CKRecord *)self->_record safari_encryptedValues];
    v4 = [v3 objectForKeyedSubscript:@"DateLastViewed"];

    if (v4)
    {
      v5 = [(CKRecord *)self->_record safari_encryptedValues];
      [v5 setObject:0 forKeyedSubscript:@"DateLastViewed"];
    }
  }
}

@end