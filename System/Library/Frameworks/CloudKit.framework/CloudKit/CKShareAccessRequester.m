@interface CKShareAccessRequester
- (BOOL)isEqual:(id)a3;
- (CKShareAccessRequester)initWithCoder:(id)a3;
- (CKShareAccessRequester)initWithUserIdentity:(id)a3;
- (CKShareAccessRequester)initWithUserIdentity:(id)a3 contactStore:(id)a4;
- (CKUserIdentityLookupInfo)participantLookupInfo;
- (CNContact)contact;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKShareAccessRequester

- (CKShareAccessRequester)initWithUserIdentity:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKShareAccessRequester;
  v7 = [(CKShareAccessRequester *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    userIdentity = v7->_userIdentity;
    v7->_userIdentity = v8;
  }

  return v7;
}

- (CKShareAccessRequester)initWithUserIdentity:(id)a3 contactStore:(id)a4
{
  v7 = a4;
  v9 = objc_msgSend_initWithUserIdentity_(self, v8, a3);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 16), a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_userIdentity(self, v8, v9);
  v12 = objc_msgSend_initWithUserIdentity_(v7, v11, v10);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_userIdentity(self, v6, v7);
      v11 = objc_msgSend_userIdentity(v5, v9, v10);

      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_userIdentity(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_userIdentity(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v7, @"identity", v8, 0);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKShareAccessRequester;
  v4 = [(CKShareAccessRequester *)&v11 description];
  v7 = objc_msgSend_userIdentity(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"[%@ userIdentity=%@]", v4, v7);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_userIdentity(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v9, v8, v7, @"UserIdentity");

  objc_autoreleasePoolPop(v4);
}

- (CKShareAccessRequester)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKShareAccessRequester;
  v5 = [(CKShareAccessRequester *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"UserIdentity");
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CKUserIdentityLookupInfo)participantLookupInfo
{
  v3 = objc_msgSend_userIdentity(self, a2, v2);
  v6 = objc_msgSend_lookupInfo(v3, v4, v5);

  return v6;
}

- (CNContact)contact
{
  v4 = objc_msgSend_userIdentity(self, a2, v2);
  v7 = objc_msgSend_contactStore(self, v5, v6);
  v9 = objc_msgSend_contactForUserIdentity_contactStore_(CKContactFetcher, v8, v4, v7);

  return v9;
}

@end