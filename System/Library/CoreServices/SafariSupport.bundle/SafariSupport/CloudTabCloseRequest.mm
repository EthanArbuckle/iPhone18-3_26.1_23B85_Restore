@interface CloudTabCloseRequest
+ (id)_valueTransformerForTabURL;
+ (id)cloudTabCloseRequestWithCKRecord:(id)record;
+ (id)cloudTabCloseRequestWithTabUUIDString:(id)string tabURLString:(id)lString destinationDeviceUUIDString:(id)dString closeRequestUUIDString:(id)iDString encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d;
+ (id)cloudTabCloseRequestWithWBSCloudTabCloseRequestDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string cloudTabsRecordZoneID:(id)d;
- (NSDictionary)wbsCloudTabCloseRequestDictionaryRepresentation;
- (NSString)destinationDeviceUUIDString;
- (NSString)tabURLString;
- (id)_initWithCKRecord:(id)record;
- (id)_initWithTabUUIDString:(id)string tabURLString:(id)lString destinationDeviceUUIDString:(id)dString closeRequestUUIDString:(id)iDString encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CloudTabCloseRequest

+ (id)cloudTabCloseRequestWithWBSCloudTabCloseRequestDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string cloudTabsRecordZoneID:(id)d
{
  representationCopy = representation;
  stringCopy = string;
  dCopy = d;
  v10 = [representationCopy safari_stringForKey:@"TabUUID"];
  if ([v10 length])
  {
    v11 = [representationCopy safari_stringForKey:@"TabURL"];
    if ([v11 length])
    {
      v12 = [representationCopy safari_stringForKey:@"DestinationDeviceUUID"];
      if ([v12 length])
      {
        v13 = [[CloudTabCloseRequest alloc] _initWithTabUUIDString:v10 tabURLString:v11 destinationDeviceUUIDString:v12 closeRequestUUIDString:stringCopy encodedSystemFieldsData:0 cloudTabsRecordZoneID:dCopy];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)cloudTabCloseRequestWithCKRecord:(id)record
{
  recordCopy = record;
  v4 = [[CloudTabCloseRequest alloc] _initWithCKRecord:recordCopy];

  return v4;
}

+ (id)cloudTabCloseRequestWithTabUUIDString:(id)string tabURLString:(id)lString destinationDeviceUUIDString:(id)dString closeRequestUUIDString:(id)iDString encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d
{
  dCopy = d;
  dataCopy = data;
  iDStringCopy = iDString;
  dStringCopy = dString;
  lStringCopy = lString;
  stringCopy = string;
  v19 = [[CloudTabCloseRequest alloc] _initWithTabUUIDString:stringCopy tabURLString:lStringCopy destinationDeviceUUIDString:dStringCopy closeRequestUUIDString:iDStringCopy encodedSystemFieldsData:dataCopy cloudTabsRecordZoneID:dCopy];

  return v19;
}

- (id)_initWithTabUUIDString:(id)string tabURLString:(id)lString destinationDeviceUUIDString:(id)dString closeRequestUUIDString:(id)iDString encodedSystemFieldsData:(id)data cloudTabsRecordZoneID:(id)d
{
  stringCopy = string;
  lStringCopy = lString;
  dStringCopy = dString;
  iDStringCopy = iDString;
  dataCopy = data;
  dCopy = d;
  v44.receiver = self;
  v44.super_class = CloudTabCloseRequest;
  v20 = [(CloudTabCloseRequest *)&v44 init];
  if (v20)
  {
    v21 = [dataCopy length];
    v22 = [CKRecord alloc];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 safari_initWithEncodedRecordData:dataCopy];
      record = v20->_record;
      v20->_record = v24;

      safari_recordName = [(CKRecord *)v20->_record safari_recordName];
      if (![safari_recordName isEqualToString:iDStringCopy])
      {
        v31 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v41 = dStringCopy;
      v43 = lStringCopy;
      v27 = stringCopy;
      recordID = [(CKRecord *)v20->_record recordID];
      zoneID = [recordID zoneID];
      v30 = [zoneID isEqual:dCopy];

      if ((v30 & 1) == 0)
      {
        v31 = 0;
        stringCopy = v27;
        dStringCopy = v41;
        lStringCopy = v43;
        goto LABEL_13;
      }

      [(CKRecord *)v20->_record setTrackChanges:0];
      stringCopy = v27;
      dStringCopy = v41;
    }

    else
    {
      v43 = lStringCopy;
      v32 = [[CKRecordID alloc] initWithRecordName:iDStringCopy zoneID:dCopy];
      v33 = [v23 initWithRecordType:@"CloudTabCloseRequest" recordID:v32];
      v34 = v20->_record;
      v20->_record = v33;
    }

    v42 = dStringCopy;
    safari_recordName = [[CKRecordID alloc] initWithRecordName:dStringCopy zoneID:dCopy];
    v35 = [[CKReference alloc] initWithRecordID:safari_recordName action:1];
    [(CKRecord *)v20->_record setObject:v35 forKeyedSubscript:@"DestinationDevice"];

    v36 = stringCopy;
    [(CKRecord *)v20->_record setObject:stringCopy forKeyedSubscript:@"TabUUID"];
    _valueTransformerForTabURL = [objc_opt_class() _valueTransformerForTabURL];
    v38 = [_valueTransformerForTabURL transformedValue:v43];
    safari_encryptedValues = [(CKRecord *)v20->_record safari_encryptedValues];
    [safari_encryptedValues setObject:v38 forKeyedSubscript:@"TabURL"];

    if (v21)
    {
      [(CKRecord *)v20->_record setTrackChanges:1];
    }

    v31 = v20;
    stringCopy = v36;
    dStringCopy = v42;
    lStringCopy = v43;
    goto LABEL_12;
  }

  v31 = 0;
LABEL_13:

  return v31;
}

- (id)_initWithCKRecord:(id)record
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = CloudTabCloseRequest;
  v5 = [(CloudTabCloseRequest *)&v12 init];
  if (v5 && ([recordCopy recordType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"CloudTabCloseRequest"), v6, v7))
  {
    v8 = [recordCopy copy];
    record = v5->_record;
    v5->_record = v8;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CloudTabCloseRequest allocWithZone:zone];
  record = self->_record;

  return [(CloudTabCloseRequest *)v4 _initWithCKRecord:record];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  tabURLString = [(CloudTabCloseRequest *)self tabURLString];
  tabUUIDString = [(CloudTabCloseRequest *)self tabUUIDString];
  destinationDeviceUUIDString = [(CloudTabCloseRequest *)self destinationDeviceUUIDString];
  v8 = [NSString stringWithFormat:@"<%@: %p tabURL = %@; tabUUID = %@; destination device uuid = %@;", v4, self, tabURLString, tabUUIDString, destinationDeviceUUIDString];;

  return v8;
}

- (NSString)destinationDeviceUUIDString
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"DestinationDevice"];
  recordID = [v2 recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (NSString)tabURLString
{
  _valueTransformerForTabURL = [objc_opt_class() _valueTransformerForTabURL];
  safari_encryptedValues = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:@"TabURL"];
  v6 = [_valueTransformerForTabURL reverseTransformedValue:v5];

  return v6;
}

- (NSDictionary)wbsCloudTabCloseRequestDictionaryRepresentation
{
  modificationDate = [(CKRecord *)self->_record modificationDate];
  if (!modificationDate)
  {
    modificationDate = +[NSDate date];
  }

  v10[0] = @"CloseTabRequest";
  v9[0] = @"DictionaryType";
  v9[1] = @"TabURL";
  tabURLString = [(CloudTabCloseRequest *)self tabURLString];
  v10[1] = tabURLString;
  v9[2] = @"TabUUID";
  tabUUIDString = [(CloudTabCloseRequest *)self tabUUIDString];
  v10[2] = tabUUIDString;
  v9[3] = @"DestinationDeviceUUID";
  destinationDeviceUUIDString = [(CloudTabCloseRequest *)self destinationDeviceUUIDString];
  v9[4] = @"LastModified";
  v10[3] = destinationDeviceUUIDString;
  v10[4] = modificationDate;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)_valueTransformerForTabURL
{
  if (qword_100153EF0 != -1)
  {
    sub_10004CC08();
  }

  v3 = qword_100153EE8;

  return v3;
}

@end