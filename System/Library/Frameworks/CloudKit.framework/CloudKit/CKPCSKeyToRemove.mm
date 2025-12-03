@interface CKPCSKeyToRemove
- (BOOL)isEqual:(id)equal;
- (CKPCSKeyToRemove)initWithCoder:(id)coder;
- (CKPCSKeyToRemove)initWithKeyID:(id)d keyType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPCSKeyToRemove

- (CKPCSKeyToRemove)initWithKeyID:(id)d keyType:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKPCSKeyToRemove;
  v8 = [(CKPCSKeyToRemove *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pcsKeyID, d);
    v9->_keyType = type;
  }

  return v9;
}

- (id)initInternal
{
  v6.receiver = self;
  v6.super_class = CKPCSKeyToRemove;
  v2 = [(CKPCSKeyToRemove *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pcsKeyID = v2->_pcsKeyID;
    v2->_pcsKeyID = v3;

    v2->_keyType = 2;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && (objc_msgSend_pcsKeyID(self, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pcsKeyID(equalCopy, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v9, v13, v12), v12, v9, isEqual))
  {
    v17 = objc_msgSend_keyType(self, v15, v16);
    v20 = v17 == objc_msgSend_keyType(equalCopy, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_pcsKeyID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_keyType(self, v8, v9);

  return v10 ^ v7;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = CKPCSKeyToRemove;
  v3 = [(CKPCSKeyToRemove *)&v16 description];
  v6 = objc_msgSend_pcsKeyID(self, v4, v5);
  v9 = objc_msgSend_description(v6, v7, v8);
  v12 = objc_msgSend_keyType(self, v10, v11);
  if ((v12 - 1) > 2)
  {
    objc_msgSend_stringByAppendingFormat_(v3, v13, @": keyID:%@ keyType:%@", v9, @"INVALID");
  }

  else
  {
    objc_msgSend_stringByAppendingFormat_(v3, v13, @": keyID:%@ keyType:%@", v9, off_1E70BDE18[v12 - 1]);
  }
  v14 = ;

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_pcsKeyID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v13 = objc_msgSend_keyType(self, v11, v12);
  v15 = objc_msgSend_initWithKeyID_keyType_(v4, v14, v10, v13);

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_pcsKeyID(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"PCSKeyID");

  v10 = objc_msgSend_keyType(self, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, v10, @"KeyType");
}

- (CKPCSKeyToRemove)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CKPCSKeyToRemove;
  v5 = [(CKPCSKeyToRemove *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"PCSKeyID");
    pcsKeyID = v5->_pcsKeyID;
    v5->_pcsKeyID = v8;

    v5->_keyType = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"KeyType");
  }

  return v5;
}

@end