@interface CKShareBlockedIdentity
- (BOOL)isEqual:(id)equal;
- (CKShareBlockedIdentity)initWithCoder:(id)coder;
- (CKShareBlockedIdentity)initWithUserIdentity:(id)identity;
- (CKShareBlockedIdentity)initWithUserIdentity:(id)identity contactStore:(id)store;
- (CNContact)contact;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKShareBlockedIdentity

- (CKShareBlockedIdentity)initWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = CKShareBlockedIdentity;
  v7 = [(CKShareBlockedIdentity *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(identityCopy, v5, v6);
    userIdentity = v7->_userIdentity;
    v7->_userIdentity = v8;
  }

  return v7;
}

- (CKShareBlockedIdentity)initWithUserIdentity:(id)identity contactStore:(id)store
{
  storeCopy = store;
  v9 = objc_msgSend_initWithUserIdentity_(self, v8, identity);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 16), store);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_userIdentity(self, v8, v9);
  v12 = objc_msgSend_initWithUserIdentity_(v7, v11, v10);

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v8 = objc_msgSend_userIdentity(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v7, @"identity", v8, 0);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKShareBlockedIdentity;
  v4 = [(CKShareBlockedIdentity *)&v11 description];
  v7 = objc_msgSend_userIdentity(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"[%@ userIdentity=%@]", v4, v7);

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_userIdentity(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v8, @"UserIdentity");
}

- (CKShareBlockedIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CKShareBlockedIdentity;
  v5 = [(CKShareBlockedIdentity *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"UserIdentity");
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v8;
  }

  return v5;
}

- (CNContact)contact
{
  v4 = objc_msgSend_userIdentity(self, a2, v2);
  v7 = objc_msgSend_contactStore(self, v5, v6);
  v9 = objc_msgSend_contactForUserIdentity_contactStore_(CKContactFetcher, v8, v4, v7);

  return v9;
}

@end