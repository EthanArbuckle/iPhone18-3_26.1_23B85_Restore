@interface CKFetchArchivedRecordsOptions
+ (id)new;
- (CKFetchArchivedRecordsOptions)init;
- (CKFetchArchivedRecordsOptions)initWithCoder:(id)a3;
- (CKFetchArchivedRecordsOptions)initWithPreviousServerChangeToken:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchArchivedRecordsOptions

- (CKFetchArchivedRecordsOptions)init
{
  v3.receiver = self;
  v3.super_class = CKFetchArchivedRecordsOptions;
  return [(CKFetchArchivedRecordsOptions *)&v3 init];
}

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CKFetchArchivedRecordsOptions;
  return objc_msgSendSuper2(&v3, "new");
}

- (CKFetchArchivedRecordsOptions)initWithPreviousServerChangeToken:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKFetchArchivedRecordsOptions;
  v7 = [(CKFetchArchivedRecordsOptions *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    previousServerChangeToken = v7->_previousServerChangeToken;
    v7->_previousServerChangeToken = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKFetchArchivedRecordsOptions alloc];
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  v9 = objc_msgSend_initWithPreviousServerChangeToken_(v4, v8, v7);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v9, v8, v7, @"previousServerChangeToken");

  objc_autoreleasePoolPop(v4);
}

- (CKFetchArchivedRecordsOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKFetchArchivedRecordsOptions;
  v5 = [(CKFetchArchivedRecordsOptions *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"previousServerChangeToken");
    previousServerChangeToken = v5->_previousServerChangeToken;
    v5->_previousServerChangeToken = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end