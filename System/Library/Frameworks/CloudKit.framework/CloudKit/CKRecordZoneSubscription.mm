@interface CKRecordZoneSubscription
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKRecordZoneSubscription)initWithCoder:(NSCoder *)aDecoder;
- (CKRecordZoneSubscription)initWithZoneID:(CKRecordZoneID *)zoneID;
- (CKRecordZoneSubscription)initWithZoneID:(CKRecordZoneID *)zoneID subscriptionID:(CKSubscriptionID)subscriptionID;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setRecordType:(CKRecordType)recordType;
@end

@implementation CKRecordZoneSubscription

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKRecordZoneSubscription)initWithZoneID:(CKRecordZoneID *)zoneID subscriptionID:(CKSubscriptionID)subscriptionID
{
  v5.receiver = self;
  v5.super_class = CKRecordZoneSubscription;
  return [(CKSubscription *)&v5 _initWithSubscriptionID:subscriptionID subscriptionType:2 recordType:0 zoneID:zoneID];
}

- (CKRecordZoneSubscription)initWithZoneID:(CKRecordZoneID *)zoneID
{
  v4 = zoneID;
  v5 = CKCreateGUID();
  v7 = objc_msgSend_initWithZoneID_subscriptionID_(self, v6, v4, v5);

  return v7;
}

- (CKRecordZoneSubscription)initWithCoder:(NSCoder *)aDecoder
{
  v4.receiver = self;
  v4.super_class = CKRecordZoneSubscription;
  return [(CKSubscription *)&v4 initWithCoder:aDecoder];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKRecordZoneSubscription;
  [(CKSubscription *)&v14 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_zoneID(self, v6, v7);
  if (!v8)
  {
    v11 = [CKException alloc];
    v13 = objc_msgSend_initWithName_format_(v11, v12, *MEMORY[0x1E695D940], @"RecordZone subscriptions must have a valid zoneID");
    objc_exception_throw(v13);
  }

  v10 = v8;
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"ZoneID");

  objc_autoreleasePoolPop(v5);
}

- (void)setRecordType:(CKRecordType)recordType
{
  v4 = recordType;
  v7 = v4;
  if (v4 && !objc_msgSend_length(v4, v5, v6))
  {
    v8 = [CKException alloc];
    v10 = objc_msgSend_initWithName_format_(v8, v9, *MEMORY[0x1E695D940], @"Subscriptions must not have a zero-length record type (did you mean to set nil?)");
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = CKRecordZoneSubscription;
  [(CKSubscription *)&v11 setRecordType:v7];
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_zoneID(self, a2, v2);
  v8 = objc_msgSend_recordType(self, v6, v7);
  v11 = objc_msgSend_subscriptionID(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @" RecordZone Subscription: zoneID=%@, recordType=%@, subscriptionID=%@", v5, v8, v11);;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKRecordZoneSubscription;
    if ([(CKSubscription *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v8 = objc_msgSend_zoneID(self, v6, v7);
      v11 = objc_msgSend_zoneID(v5, v9, v10);

      v12 = CKObjectsAreBothNilOrEqual(v8, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CKRecordZoneSubscription;
  return [(CKSubscription *)&v4 copyWithZone:zone];
}

@end