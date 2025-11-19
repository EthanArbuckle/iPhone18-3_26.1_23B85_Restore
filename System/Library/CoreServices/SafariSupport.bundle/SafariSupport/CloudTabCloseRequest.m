@interface CloudTabCloseRequest
+ (id)_valueTransformerForTabURL;
+ (id)cloudTabCloseRequestWithCKRecord:(id)a3;
+ (id)cloudTabCloseRequestWithTabUUIDString:(id)a3 tabURLString:(id)a4 destinationDeviceUUIDString:(id)a5 closeRequestUUIDString:(id)a6 encodedSystemFieldsData:(id)a7 cloudTabsRecordZoneID:(id)a8;
+ (id)cloudTabCloseRequestWithWBSCloudTabCloseRequestDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 cloudTabsRecordZoneID:(id)a5;
- (NSDictionary)wbsCloudTabCloseRequestDictionaryRepresentation;
- (NSString)destinationDeviceUUIDString;
- (NSString)tabURLString;
- (id)_initWithCKRecord:(id)a3;
- (id)_initWithTabUUIDString:(id)a3 tabURLString:(id)a4 destinationDeviceUUIDString:(id)a5 closeRequestUUIDString:(id)a6 encodedSystemFieldsData:(id)a7 cloudTabsRecordZoneID:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CloudTabCloseRequest

+ (id)cloudTabCloseRequestWithWBSCloudTabCloseRequestDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 cloudTabsRecordZoneID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 safari_stringForKey:@"TabUUID"];
  if ([v10 length])
  {
    v11 = [v7 safari_stringForKey:@"TabURL"];
    if ([v11 length])
    {
      v12 = [v7 safari_stringForKey:@"DestinationDeviceUUID"];
      if ([v12 length])
      {
        v13 = [[CloudTabCloseRequest alloc] _initWithTabUUIDString:v10 tabURLString:v11 destinationDeviceUUIDString:v12 closeRequestUUIDString:v8 encodedSystemFieldsData:0 cloudTabsRecordZoneID:v9];
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

+ (id)cloudTabCloseRequestWithCKRecord:(id)a3
{
  v3 = a3;
  v4 = [[CloudTabCloseRequest alloc] _initWithCKRecord:v3];

  return v4;
}

+ (id)cloudTabCloseRequestWithTabUUIDString:(id)a3 tabURLString:(id)a4 destinationDeviceUUIDString:(id)a5 closeRequestUUIDString:(id)a6 encodedSystemFieldsData:(id)a7 cloudTabsRecordZoneID:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[CloudTabCloseRequest alloc] _initWithTabUUIDString:v18 tabURLString:v17 destinationDeviceUUIDString:v16 closeRequestUUIDString:v15 encodedSystemFieldsData:v14 cloudTabsRecordZoneID:v13];

  return v19;
}

- (id)_initWithTabUUIDString:(id)a3 tabURLString:(id)a4 destinationDeviceUUIDString:(id)a5 closeRequestUUIDString:(id)a6 encodedSystemFieldsData:(id)a7 cloudTabsRecordZoneID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v44.receiver = self;
  v44.super_class = CloudTabCloseRequest;
  v20 = [(CloudTabCloseRequest *)&v44 init];
  if (v20)
  {
    v21 = [v18 length];
    v22 = [CKRecord alloc];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 safari_initWithEncodedRecordData:v18];
      record = v20->_record;
      v20->_record = v24;

      v26 = [(CKRecord *)v20->_record safari_recordName];
      if (![v26 isEqualToString:v17])
      {
        v31 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v41 = v16;
      v43 = v15;
      v27 = v14;
      v28 = [(CKRecord *)v20->_record recordID];
      v29 = [v28 zoneID];
      v30 = [v29 isEqual:v19];

      if ((v30 & 1) == 0)
      {
        v31 = 0;
        v14 = v27;
        v16 = v41;
        v15 = v43;
        goto LABEL_13;
      }

      [(CKRecord *)v20->_record setTrackChanges:0];
      v14 = v27;
      v16 = v41;
    }

    else
    {
      v43 = v15;
      v32 = [[CKRecordID alloc] initWithRecordName:v17 zoneID:v19];
      v33 = [v23 initWithRecordType:@"CloudTabCloseRequest" recordID:v32];
      v34 = v20->_record;
      v20->_record = v33;
    }

    v42 = v16;
    v26 = [[CKRecordID alloc] initWithRecordName:v16 zoneID:v19];
    v35 = [[CKReference alloc] initWithRecordID:v26 action:1];
    [(CKRecord *)v20->_record setObject:v35 forKeyedSubscript:@"DestinationDevice"];

    v36 = v14;
    [(CKRecord *)v20->_record setObject:v14 forKeyedSubscript:@"TabUUID"];
    v37 = [objc_opt_class() _valueTransformerForTabURL];
    v38 = [v37 transformedValue:v43];
    v39 = [(CKRecord *)v20->_record safari_encryptedValues];
    [v39 setObject:v38 forKeyedSubscript:@"TabURL"];

    if (v21)
    {
      [(CKRecord *)v20->_record setTrackChanges:1];
    }

    v31 = v20;
    v14 = v36;
    v16 = v42;
    v15 = v43;
    goto LABEL_12;
  }

  v31 = 0;
LABEL_13:

  return v31;
}

- (id)_initWithCKRecord:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CloudTabCloseRequest;
  v5 = [(CloudTabCloseRequest *)&v12 init];
  if (v5 && ([v4 recordType], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"CloudTabCloseRequest"), v6, v7))
  {
    v8 = [v4 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CloudTabCloseRequest allocWithZone:a3];
  record = self->_record;

  return [(CloudTabCloseRequest *)v4 _initWithCKRecord:record];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CloudTabCloseRequest *)self tabURLString];
  v6 = [(CloudTabCloseRequest *)self tabUUIDString];
  v7 = [(CloudTabCloseRequest *)self destinationDeviceUUIDString];
  v8 = [NSString stringWithFormat:@"<%@: %p tabURL = %@; tabUUID = %@; destination device uuid = %@;", v4, self, v5, v6, v7];;

  return v8;
}

- (NSString)destinationDeviceUUIDString
{
  v2 = [(CKRecord *)self->_record objectForKeyedSubscript:@"DestinationDevice"];
  v3 = [v2 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (NSString)tabURLString
{
  v3 = [objc_opt_class() _valueTransformerForTabURL];
  v4 = [(CKRecord *)self->_record safari_encryptedValues];
  v5 = [v4 objectForKeyedSubscript:@"TabURL"];
  v6 = [v3 reverseTransformedValue:v5];

  return v6;
}

- (NSDictionary)wbsCloudTabCloseRequestDictionaryRepresentation
{
  v3 = [(CKRecord *)self->_record modificationDate];
  if (!v3)
  {
    v3 = +[NSDate date];
  }

  v10[0] = @"CloseTabRequest";
  v9[0] = @"DictionaryType";
  v9[1] = @"TabURL";
  v4 = [(CloudTabCloseRequest *)self tabURLString];
  v10[1] = v4;
  v9[2] = @"TabUUID";
  v5 = [(CloudTabCloseRequest *)self tabUUIDString];
  v10[2] = v5;
  v9[3] = @"DestinationDeviceUUID";
  v6 = [(CloudTabCloseRequest *)self destinationDeviceUUIDString];
  v9[4] = @"LastModified";
  v10[3] = v6;
  v10[4] = v3;
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