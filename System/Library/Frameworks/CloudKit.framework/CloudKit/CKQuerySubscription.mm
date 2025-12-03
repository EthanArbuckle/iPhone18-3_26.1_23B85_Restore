@interface CKQuerySubscription
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKQuerySubscription)initWithCoder:(NSCoder *)aDecoder;
- (CKQuerySubscription)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate options:(CKQuerySubscriptionOptions)querySubscriptionOptions;
- (CKQuerySubscription)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate subscriptionID:(CKSubscriptionID)subscriptionID options:(CKQuerySubscriptionOptions)querySubscriptionOptions;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_validateQuerySubscriptionOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
- (void)setPredicate_modelMutation:(id)mutation;
- (void)setRecordType:(id)type;
@end

@implementation CKQuerySubscription

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKQuerySubscription)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate subscriptionID:(CKSubscriptionID)subscriptionID options:(CKQuerySubscriptionOptions)querySubscriptionOptions
{
  v10 = recordType;
  v11 = predicate;
  v12 = subscriptionID;
  v37 = 0;
  v13 = _CKCheckArgument("recordType", v10, 1, 1, 0, &v37);
  v14 = v37;
  if ((v13 & 1) == 0)
  {
    v22 = v14;
    v23 = [CKException alloc];
    v26 = objc_msgSend_code(v22, v24, v25);
    v29 = objc_msgSend_localizedDescription(v22, v27, v28);
    v31 = objc_msgSend_initWithCode_format_(v23, v30, v26, @"%@", v29);
    v32 = v31;

    objc_exception_throw(v31);
  }

  if (!v11)
  {
    v33 = [CKException alloc];
    v35 = objc_msgSend_initWithName_format_(v33, v34, *MEMORY[0x1E695D940], @"Predicate can not be nil. Use [NSPredicate predicateWithValue:YES] / NSPredicate(value: true) to query all records");
    objc_exception_throw(v35);
  }

  v36.receiver = self;
  v36.super_class = CKQuerySubscription;
  v17 = [(CKSubscription *)&v36 _initWithSubscriptionID:v12 subscriptionType:1 recordType:v10 zoneID:0];
  if (v17)
  {
    v18 = objc_msgSend_CKDeepCopy(v11, v15, v16);
    v19 = v17->_predicate;
    v17->_predicate = v18;

    objc_msgSend__validateQuerySubscriptionOptions_(v17, v20, querySubscriptionOptions);
    v17->_querySubscriptionOptions = querySubscriptionOptions;
  }

  return v17;
}

- (CKQuerySubscription)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate options:(CKQuerySubscriptionOptions)querySubscriptionOptions
{
  v8 = predicate;
  v9 = recordType;
  v10 = CKCreateGUID();
  v12 = objc_msgSend_initWithRecordType_predicate_subscriptionID_options_(self, v11, v9, v8, v10, querySubscriptionOptions);

  return v12;
}

- (CKQuerySubscription)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v13.receiver = self;
  v13.super_class = CKQuerySubscription;
  v5 = [(CKSubscription *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = CKAcceptablePredicateValueClasses();
    v9 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v8, v7, @"predicate");
    predicate = v5->_predicate;
    v5->_predicate = v9;

    v5->_querySubscriptionOptions = objc_msgSend_decodeInt64ForKey_(v4, v11, @"options");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_recordType(self, v6, v7);
  v11 = objc_msgSend_length(v8, v9, v10);

  if (!v11)
  {
    v24 = [CKException alloc];
    v26 = objc_msgSend_initWithName_format_(v24, v25, *MEMORY[0x1E695D940], @"Query subscriptions must have a valid record type");
    objc_exception_throw(v26);
  }

  v27.receiver = self;
  v27.super_class = CKQuerySubscription;
  [(CKSubscription *)&v27 encodeWithCoder:coderCopy];
  v14 = objc_msgSend__predicateWithoutCopy(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"predicate");

  SubscriptionOptions = objc_msgSend_querySubscriptionOptions(self, v16, v17);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v19, SubscriptionOptions, @"options");
  v22 = objc_msgSend_zoneID(self, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"ZoneID");

  objc_autoreleasePoolPop(v5);
}

- (void)_validateQuerySubscriptionOptions:(unint64_t)options
{
  if ((options & 7) == 0)
  {
    v3 = [CKException alloc];
    v5 = objc_msgSend_initWithName_format_(v3, v4, *MEMORY[0x1E695D940], @"Query subscriptions options must include at least one firing behavior");
    objc_exception_throw(v5);
  }
}

- (void)setRecordType:(id)type
{
  typeCopy = type;
  if (!objc_msgSend_length(typeCopy, v5, v6))
  {
    v7 = [CKException alloc];
    v9 = objc_msgSend_initWithName_format_(v7, v8, *MEMORY[0x1E695D940], @"Query subscriptions must have a valid record type");
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = CKQuerySubscription;
  [(CKSubscription *)&v10 setRecordType:typeCopy];
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_recordType(self, a2, v2);
  v8 = objc_msgSend__predicateWithoutCopy(self, v6, v7);
  SubscriptionOptions = objc_msgSend_querySubscriptionOptions(self, v9, v10);
  v14 = objc_msgSend_subscriptionID(self, v12, v13);
  v17 = objc_msgSend_zoneID(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @" Query Subscription: recordType=%@, predicate=%@, subscriptionOptions=%x, subscriptionID=%@, zoneID=%@", v5, v8, SubscriptionOptions, v14, v17);;

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = CKQuerySubscription;
  v4 = [(CKSubscription *)&v12 copyWithZone:zone];
  v7 = objc_msgSend__predicateWithoutCopy(self, v5, v6);
  v8 = v4[6];
  v4[6] = v7;

  v4[7] = objc_msgSend_querySubscriptionOptions(self, v9, v10);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = CKQuerySubscription;
    if ([(CKSubscription *)&v26 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v8 = objc_msgSend__predicateWithoutCopy(self, v6, v7);
      v11 = objc_msgSend__predicateWithoutCopy(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12 && (SubscriptionOptions = objc_msgSend_querySubscriptionOptions(self, v13, v14), SubscriptionOptions == objc_msgSend_querySubscriptionOptions(v5, v16, v17)))
      {
        v20 = objc_msgSend_zoneID(self, v18, v19);
        v23 = objc_msgSend_zoneID(v5, v21, v22);
        v24 = CKObjectsAreBothNilOrEqual(v20, v23);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (void)setPredicate_modelMutation:(id)mutation
{
  v4 = objc_msgSend_CKDeepCopy(mutation, a2, mutation);
  predicate = self->_predicate;
  self->_predicate = v4;

  MEMORY[0x1EEE66BB8](v4, predicate);
}

@end