@interface CloudTab
+ (CloudTab)cloudTabWithTabUUIDString:(id)string owningDeviceUUIDString:(id)dString owningSceneID:(id)d position:(id)position title:(id)title urlString:(id)urlString isPinned:(BOOL)pinned isShowingReader:(BOOL)self0 readerScrollPositionPageIndex:(id)self1 encodedSystemFieldsData:(id)self2 cloudTabsRecordZoneID:(id)self3 isManateeContainer:(BOOL)self4;
+ (CloudTab)cloudTabWithWBSCloudTabDictionaryRepresentation:(id)representation owningDeviceUUIDString:(id)string position:(id)position cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container;
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
- (id)_initWithCKRecord:(id)record isManateeContainer:(BOOL)container;
- (id)_positionAfterPosition:(id)position;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_commonInitWithParameters:(id)parameters encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container;
- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded;
- (void)positionTabAfterPosition:(id)position;
- (void)updateFromCloudTab:(id)tab previousTabPosition:(id)position;
@end

@implementation CloudTab

+ (CloudTab)cloudTabWithWBSCloudTabDictionaryRepresentation:(id)representation owningDeviceUUIDString:(id)string position:(id)position cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container
{
  containerCopy = container;
  representationCopy = representation;
  stringCopy = string;
  positionCopy = position;
  dCopy = d;
  v15 = [representationCopy safari_stringForKey:@"UUID"];
  if ([v15 length])
  {
    v16 = [representationCopy safari_stringForKey:@"URL"];
    if ([v16 length])
    {
      v17 = positionCopy;
      v18 = stringCopy;
      v32 = containerCopy;
      v19 = [representationCopy safari_stringForKey:@"Title"];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = &stru_100137BA8;
      }

      v21 = [representationCopy safari_dictionaryForKey:@"ReaderScrollPosition"];
      v22 = [v21 safari_numberForKey:@"pageIndex"];

      v31 = dCopy;
      if (v22)
      {
        v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 integerValue]);
      }

      else
      {
        v30 = 0;
      }

      v24 = [representationCopy safari_BOOLForKey:@"IsPinned"];
      v25 = [representationCopy safari_BOOLForKey:@"IsShowingReader"];
      v26 = [representationCopy safari_stringForKey:@"OwningSceneID"];
      v27 = [[CloudTabParameters alloc] initWithTabUUIDString:v15 owningDeviceUUIDString:v18 owningSceneID:v26 urlString:v16];
      [(CloudTabParameters *)v27 setPosition:v17];
      [(CloudTabParameters *)v27 setTitle:v20];
      [(CloudTabParameters *)v27 setPinned:v24];
      [(CloudTabParameters *)v27 setShowingReader:v25];
      [(CloudTabParameters *)v27 setReaderScrollPositionPageIndex:v30];
      v28 = [representationCopy safari_numberForKey:@"DateLastViewed"];
      [v28 doubleValue];
      [(CloudTabParameters *)v27 setLastViewedTime:?];

      dCopy = v31;
      v23 = [[CloudTab alloc] _initWithParameters:v27 encodedSystemFieldsData:0 cloudTabsRecordZoneID:v31 isManateeContainer:v32];

      stringCopy = v18;
      positionCopy = v17;
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

+ (CloudTab)cloudTabWithTabUUIDString:(id)string owningDeviceUUIDString:(id)dString owningSceneID:(id)d position:(id)position title:(id)title urlString:(id)urlString isPinned:(BOOL)pinned isShowingReader:(BOOL)self0 readerScrollPositionPageIndex:(id)self1 encodedSystemFieldsData:(id)self2 cloudTabsRecordZoneID:(id)self3 isManateeContainer:(BOOL)self4
{
  iDCopy = iD;
  dataCopy = data;
  indexCopy = index;
  urlStringCopy = urlString;
  titleCopy = title;
  positionCopy = position;
  dCopy = d;
  dStringCopy = dString;
  stringCopy = string;
  v28 = [[CloudTabParameters alloc] initWithTabUUIDString:stringCopy owningDeviceUUIDString:dStringCopy owningSceneID:dCopy urlString:urlStringCopy];

  [(CloudTabParameters *)v28 setPosition:positionCopy];
  [(CloudTabParameters *)v28 setTitle:titleCopy];

  [(CloudTabParameters *)v28 setPinned:pinned];
  [(CloudTabParameters *)v28 setShowingReader:reader];
  [(CloudTabParameters *)v28 setReaderScrollPositionPageIndex:indexCopy];

  v29 = [[CloudTab alloc] _initWithParameters:v28 encodedSystemFieldsData:dataCopy cloudTabsRecordZoneID:iDCopy isManateeContainer:container];

  return v29;
}

- (id)_initWithCKRecord:(id)record isManateeContainer:(BOOL)container
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = CloudTab;
  v7 = [(CloudTab *)&v12 init];
  if (v7)
  {
    v8 = [recordCopy copy];
    record = v7->_record;
    v7->_record = v8;

    v7->_isManateeContainer = container;
    [(CloudTab *)v7 _removeManateeSepecifcFieldsFromRecordIfNeeded];
    v10 = v7;
  }

  return v7;
}

- (void)_commonInitWithParameters:(id)parameters encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d isManateeContainer:(BOOL)container
{
  containerCopy = container;
  dataCopy = data;
  dCopy = d;
  parametersCopy = parameters;
  tabUUIDString = [parametersCopy tabUUIDString];
  owningDeviceUUIDString = [parametersCopy owningDeviceUUIDString];
  owningSceneID = [parametersCopy owningSceneID];
  position = [parametersCopy position];
  title = [parametersCopy title];
  urlString = [parametersCopy urlString];
  isPinned = [parametersCopy isPinned];
  isShowingReader = [parametersCopy isShowingReader];
  readerScrollPositionPageIndex = [parametersCopy readerScrollPositionPageIndex];
  [parametersCopy lastViewedTime];
  v18 = v17;

  v19 = [dataCopy length];
  v40 = containerCopy;
  self->_isManateeContainer = containerCopy;
  v20 = [CKRecord alloc];
  v21 = v20;
  v46 = dCopy;
  v45 = tabUUIDString;
  if (v19)
  {
    v22 = [v20 safari_initWithEncodedRecordData:dataCopy];
    record = self->_record;
    self->_record = v22;

    [(CloudTab *)self _removeManateeSepecifcFieldsFromRecordIfNeeded];
    [(CKRecord *)self->_record setTrackChanges:0];
  }

  else
  {
    v24 = [[CKRecordID alloc] initWithRecordName:tabUUIDString zoneID:dCopy];
    v25 = [v21 initWithRecordType:@"CloudTab" recordID:v24];
    v26 = self->_record;
    self->_record = v25;
  }

  v44 = owningDeviceUUIDString;
  v27 = [[CKRecordID alloc] initWithRecordName:owningDeviceUUIDString zoneID:dCopy];
  v28 = [[CKReference alloc] initWithRecordID:v27 action:1];
  [(CKRecord *)self->_record setObject:v28 forKeyedSubscript:@"OwningDevice"];

  _valueTransformerForTitleAndURL = [objc_opt_class() _valueTransformerForTitleAndURL];
  if ([title length])
  {
    v30 = [_valueTransformerForTitleAndURL transformedValue:title];
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v30 forKeyedSubscript:@"Title"];
  }

  v32 = [_valueTransformerForTitleAndURL transformedValue:urlString];
  safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
  [safari_encryptedValues2 setObject:v32 forKeyedSubscript:@"URL"];

  v34 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
  dictionaryRepresentation = [position dictionaryRepresentation];
  v36 = [v34 transformedValue:dictionaryRepresentation];
  [(CKRecord *)self->_record setObject:v36 forKeyedSubscript:@"Position"];

  objc_storeStrong(&self->_position, position);
  if (isShowingReader)
  {
    [(CKRecord *)self->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsShowingReader"];
  }

  v37 = owningSceneID;
  if (isPinned)
  {
    [(CKRecord *)self->_record setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsPinned"];
  }

  if (readerScrollPositionPageIndex)
  {
    [(CKRecord *)self->_record setObject:readerScrollPositionPageIndex forKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  }

  if ([owningSceneID length])
  {
    [(CKRecord *)self->_record setObject:owningSceneID forKeyedSubscript:@"OwningSceneID"];
  }

  if (v18 != 0.0 && v40)
  {
    v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:v18];
    safari_encryptedValues3 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues3 setObject:v38 forKeyedSubscript:@"DateLastViewed"];

    v37 = owningSceneID;
  }

  if (v19)
  {
    [(CKRecord *)self->_record setTrackChanges:1];
  }
}

- (void)updateFromCloudTab:(id)tab previousTabPosition:(id)position
{
  tabCopy = tab;
  positionCopy = position;
  _valueTransformerForTitleAndURL = [objc_opt_class() _valueTransformerForTitleAndURL];
  title = [tabCopy title];
  title2 = [(CloudTab *)self title];
  if (title != title2 && ([title isEqualToString:title2] & 1) == 0)
  {
    v10 = [_valueTransformerForTitleAndURL transformedValue:title];
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v10 forKeyedSubscript:@"Title"];
  }

  urlString = [tabCopy urlString];
  urlString2 = [(CloudTab *)self urlString];
  v14 = [urlString isEqualToString:urlString2];

  if ((v14 & 1) == 0)
  {
    v15 = [_valueTransformerForTitleAndURL transformedValue:urlString];
    safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
    [safari_encryptedValues2 setObject:v15 forKeyedSubscript:@"URL"];
  }

  [(CloudTab *)self positionTabAfterPosition:positionCopy];
  isShowingReader = [tabCopy isShowingReader];
  if (isShowingReader != [(CloudTab *)self isShowingReader])
  {
    if (isShowingReader)
    {
      v18 = &__kCFBooleanTrue;
    }

    else
    {
      v18 = 0;
    }

    [(CKRecord *)self->_record setObject:v18 forKeyedSubscript:@"IsShowingReader"];
  }

  isPinned = [tabCopy isPinned];
  if (isPinned != [(CloudTab *)self isPinned])
  {
    if (isPinned)
    {
      v20 = &__kCFBooleanTrue;
    }

    else
    {
      v20 = 0;
    }

    [(CKRecord *)self->_record setObject:v20 forKeyedSubscript:@"IsPinned"];
  }

  v21 = _valueTransformerForTitleAndURL;
  readerScrollPositionPageIndex = [tabCopy readerScrollPositionPageIndex];
  readerScrollPositionPageIndex2 = [(CloudTab *)self readerScrollPositionPageIndex];
  if (readerScrollPositionPageIndex != readerScrollPositionPageIndex2 && ([readerScrollPositionPageIndex isEqual:readerScrollPositionPageIndex2] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:readerScrollPositionPageIndex forKeyedSubscript:@"ReaderScrollPositionPageIndex"];
  }

  owningSceneID = [tabCopy owningSceneID];
  owningSceneID2 = [(CloudTab *)self owningSceneID];
  if (owningSceneID != owningSceneID2 && ([owningSceneID isEqualToString:owningSceneID2] & 1) == 0)
  {
    [(CKRecord *)self->_record setObject:owningSceneID forKeyedSubscript:@"OwningSceneID"];
  }

  if (self->_isManateeContainer)
  {
    [tabCopy lastViewedTime];
    v27 = v26;
    [(CloudTab *)self lastViewedTime];
    if (v27 != v28)
    {
      v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:v27];
      safari_encryptedValues3 = [(CKRecord *)self->_record safari_encryptedValues];
      [safari_encryptedValues3 setObject:v29 forKeyedSubscript:@"DateLastViewed"];
    }
  }
}

- (void)positionTabAfterPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    position = [(CloudTab *)self position];
    if (!position || (v5 = position, -[CloudTab position](self, "position"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [positionCopy compare:v6], v6, v5, v7 != -1))
    {
      v8 = [(CloudTab *)self _positionAfterPosition:positionCopy];
      v9 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
      dictionaryRepresentation = [v8 dictionaryRepresentation];
      v11 = [v9 transformedValue:dictionaryRepresentation];
      [(CKRecord *)self->_record setObject:v11 forKeyedSubscript:@"Position"];

      position = self->_position;
      self->_position = v8;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CloudTab allocWithZone:zone];
  record = self->_record;
  isManateeContainer = self->_isManateeContainer;

  return [(CloudTab *)v4 _initWithCKRecord:record isManateeContainer:isManateeContainer];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(CloudTab *)self title];
  urlString = [(CloudTab *)self urlString];
  tabUUIDString = [(CloudTab *)self tabUUIDString];
  owningDeviceUUIDString = [(CloudTab *)self owningDeviceUUIDString];
  owningSceneID = [(CloudTab *)self owningSceneID];
  position = [(CloudTab *)self position];
  isShowingReader = [(CloudTab *)self isShowingReader];
  readerScrollPositionPageIndex = [(CloudTab *)self readerScrollPositionPageIndex];
  v13 = [NSString stringWithFormat:@"<%@: %p title = %@; url = %@; uuid = %@; owning device uuid = %@; owning sceneID = %@; position = %@; isShowingReader = %d; readerScrollPositionPageIndex = %@; isPinned = %d>", v4, self, title, urlString, tabUUIDString, owningDeviceUUIDString, owningSceneID, position, isShowingReader, readerScrollPositionPageIndex, [(CloudTab *)self isPinned]];;

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
  recordID = [v2 recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (NSString)title
{
  _valueTransformerForTitleAndURL = [objc_opt_class() _valueTransformerForTitleAndURL];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"Title"];
  v6 = [_valueTransformerForTitleAndURL reverseTransformedValue:v5];

  return v6;
}

- (NSString)urlString
{
  _valueTransformerForTitleAndURL = [objc_opt_class() _valueTransformerForTitleAndURL];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"URL"];
  v6 = [_valueTransformerForTitleAndURL reverseTransformedValue:v5];

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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isShowingReader
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IsShowingReader"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v4 = [safari_encryptedValues objectForKeyedSubscript:@"DateLastViewed"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;
  }

  else
  {
    modificationDate = [(CKRecord *)self->_record modificationDate];
    [modificationDate timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (NSDictionary)wbsCloudTabDictionaryRepresentation
{
  v15[0] = @"UUID";
  tabUUIDString = [(CloudTab *)self tabUUIDString];
  v15[1] = @"URL";
  v16[0] = tabUUIDString;
  urlString = [(CloudTab *)self urlString];
  v16[1] = urlString;
  v5 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v6 = [v5 mutableCopy];

  title = [(CloudTab *)self title];
  v8 = title;
  if (title)
  {
    v9 = title;
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

  readerScrollPositionDictionary = [(CloudTab *)self readerScrollPositionDictionary];
  if (readerScrollPositionDictionary)
  {
    [v6 setObject:readerScrollPositionDictionary forKeyedSubscript:@"ReaderScrollPosition"];
  }

  owningSceneID = [(CloudTab *)self owningSceneID];
  if (owningSceneID)
  {
    [v6 setObject:owningSceneID forKeyedSubscript:@"OwningSceneID"];
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

- (id)_positionAfterPosition:(id)position
{
  positionCopy = position;
  owningDeviceUUIDString = [(CloudTab *)self owningDeviceUUIDString];
  v6 = [WBSCRDTPosition positionBetweenPosition:positionCopy andPosition:0 withDeviceIdentifier:owningDeviceUUIDString changeID:0];

  return v6;
}

- (void)_removeManateeSepecifcFieldsFromRecordIfNeeded
{
  if (!self->_isManateeContainer)
  {
    safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
    v4 = [safari_encryptedValues objectForKeyedSubscript:@"DateLastViewed"];

    if (v4)
    {
      safari_encryptedValues2 = [(CKRecord *)self->_record safari_encryptedValues];
      [safari_encryptedValues2 setObject:0 forKeyedSubscript:@"DateLastViewed"];
    }
  }
}

@end