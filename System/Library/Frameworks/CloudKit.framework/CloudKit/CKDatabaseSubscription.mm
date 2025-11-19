@interface CKDatabaseSubscription
+ (CKDatabaseSubscription)new;
+ (void)initialize;
- (CKDatabaseSubscription)init;
- (CKDatabaseSubscription)initWithCoder:(NSCoder *)aDecoder;
- (CKDatabaseSubscription)initWithSubscriptionID:(CKSubscriptionID)subscriptionID;
- (id)CKPropertiesDescription;
- (void)setRecordType:(CKRecordType)recordType;
@end

@implementation CKDatabaseSubscription

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKDatabaseSubscription)init
{
  v3 = CKCreateGUID();
  v5 = objc_msgSend_initWithSubscriptionID_(self, v4, v3);

  return v5;
}

+ (CKDatabaseSubscription)new
{
  v2 = [a1 alloc];
  v3 = CKCreateGUID();
  v5 = objc_msgSend_initWithSubscriptionID_(v2, v4, v3);

  return v5;
}

- (CKDatabaseSubscription)initWithSubscriptionID:(CKSubscriptionID)subscriptionID
{
  v4.receiver = self;
  v4.super_class = CKDatabaseSubscription;
  return [(CKSubscription *)&v4 _initWithSubscriptionID:subscriptionID subscriptionType:3 recordType:0 zoneID:0];
}

- (CKDatabaseSubscription)initWithCoder:(NSCoder *)aDecoder
{
  v4.receiver = self;
  v4.super_class = CKDatabaseSubscription;
  return [(CKSubscription *)&v4 initWithCoder:aDecoder];
}

- (void)setRecordType:(CKRecordType)recordType
{
  v4 = recordType;
  v7 = v4;
  if (v4 && !objc_msgSend_length(v4, v5, v6))
  {
    v8 = [CKException alloc];
    v10 = objc_msgSend_initWithName_format_(v8, v9, *MEMORY[0x1E695D940], @"Subscriptions must not have a nil or valid record type");
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = CKDatabaseSubscription;
  [(CKSubscription *)&v11 setRecordType:v7];
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_recordType(self, a2, v2);
  v8 = objc_msgSend_subscriptionID(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @" Database Subscription: recordType=%@, subscriptionID=%@", v5, v8);;

  return v10;
}

@end