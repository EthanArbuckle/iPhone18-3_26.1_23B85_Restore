@interface CKDistributedTimestamp
- (BOOL)isEqual:(id)a3;
- (CKDistributedTimestamp)initWithCoder:(id)a3;
- (CKDistributedTimestamp)initWithSiteIdentifier:(id)a3 clockValue:(unint64_t)a4;
- (CKDistributedTimestamp)initWithSiteIdentifierObject:(id)a3 clockValue:(unint64_t)a4;
- (NSData)siteIdentifier;
- (id)description;
- (id)descriptionWithStringSiteIdentifiers;
- (int64_t)compareToTimestamp:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDistributedTimestamp

- (CKDistributedTimestamp)initWithSiteIdentifier:(id)a3 clockValue:(unint64_t)a4
{
  v6 = a3;
  v7 = [CKDistributedSiteIdentifier alloc];
  v9 = objc_msgSend_initWithIdentifier_(v7, v8, v6);
  v11 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(self, v10, v9, a4);

  return v11;
}

- (CKDistributedTimestamp)initWithSiteIdentifierObject:(id)a3 clockValue:(unint64_t)a4
{
  v7 = a3;
  if (a4 == -1)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, *MEMORY[0x1E695D940], @"Clock value NSUIntegerMax is reserved");
  }

  v14.receiver = self;
  v14.super_class = CKDistributedTimestamp;
  v10 = [(CKDistributedTimestamp *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v7, v8, v9);
    siteIdentifierObject = v10->_siteIdentifierObject;
    v10->_siteIdentifierObject = v11;

    v10->_clockValue = a4;
  }

  return v10;
}

- (NSData)siteIdentifier
{
  v3 = objc_msgSend_siteIdentifierObject(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CKDistributedTimestamp;
  v5 = [(CKDistributedTimestamp *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_siteIdentifierObject);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
    siteIdentifierObject = v5->_siteIdentifierObject;
    v5->_siteIdentifierObject = v9;

    v11 = NSStringFromSelector(sel_clockValue);
    v5->_clockValue = objc_msgSend_decodeIntegerForKey_(v4, v12, v11);

    if (!v5->_siteIdentifierObject)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_siteIdentifier);
      v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v13, v14);

      v17 = [CKDistributedSiteIdentifier alloc];
      v19 = objc_msgSend_initWithIdentifier_modifier_(v17, v18, v16, 0);
      v20 = v5->_siteIdentifierObject;
      v5->_siteIdentifierObject = v19;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_siteIdentifierObject(self, v5, v6);
  v8 = NSStringFromSelector(sel_siteIdentifierObject);
  objc_msgSend_encodeObject_forKey_(v23, v9, v7, v8);

  v12 = objc_msgSend_clockValue(self, v10, v11);
  v13 = NSStringFromSelector(sel_clockValue);
  objc_msgSend_encodeInteger_forKey_(v23, v14, v12, v13);

  v17 = objc_msgSend_siteIdentifierObject(self, v15, v16);
  v20 = objc_msgSend_identifier(v17, v18, v19);
  v21 = NSStringFromSelector(sel_siteIdentifier);
  objc_msgSend_encodeObject_forKey_(v23, v22, v20, v21);

  objc_autoreleasePoolPop(v4);
}

- (int64_t)compareToTimestamp:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_siteIdentifierObject(self, v5, v6);
  v10 = objc_msgSend_siteIdentifierObject(v4, v8, v9);
  isEqual = objc_msgSend_isEqual_(v7, v11, v10);

  if (isEqual)
  {
    v15 = objc_msgSend_clockValue(self, v13, v14);
    if (v15 >= objc_msgSend_clockValue(v4, v16, v17))
    {
      v21 = objc_msgSend_clockValue(self, v18, v19);
      v20 = v21 > objc_msgSend_clockValue(v4, v22, v23);
    }

    else
    {
      v20 = -1;
    }
  }

  else
  {
    v20 = 3;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v14 = ((v4 != 0) & objc_opt_isKindOfClass()) != 0 && (v7 = objc_msgSend_hash(self, v5, v6), v7 == objc_msgSend_hash(v4, v8, v9)) && (v11 = objc_msgSend_compareToTimestamp_(self, v10, v4), v11 == objc_msgSend_compareToTimestamp_(v4, v12, self)) && objc_msgSend_compareToTimestamp_(self, v13, v4) == 0;

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_siteIdentifierObject(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  v11 = objc_msgSend_clockValue(self, v9, v10);
  v13 = objc_msgSend_numberWithUnsignedInteger_(v8, v12, v11);
  v16 = objc_msgSend_hash(v13, v14, v15);

  return v16 ^ v7;
}

- (id)description
{
  v4 = objc_msgSend_siteIdentifierObject(self, a2, v2);
  v7 = objc_msgSend_description(v4, v5, v6);

  v8 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_clockValue(self, v9, v10);
  if (v13 == -1)
  {
    v17 = @"_";
    objc_msgSend_stringWithFormat_(v8, v11, @"%@:%@", v7, @"_");
  }

  else
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = objc_msgSend_clockValue(self, v11, v12);
    v17 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v15);
    objc_msgSend_stringWithFormat_(v8, v18, @"%@:%@", v7, v17);
  }
  v19 = ;
  if (v13 != -1)
  {
  }

  return v19;
}

- (id)descriptionWithStringSiteIdentifiers
{
  v4 = objc_msgSend_siteIdentifierObject(self, a2, v2);
  v7 = objc_msgSend_descriptionWithStringSiteIdentifiers(v4, v5, v6);

  v8 = MEMORY[0x1E696AEC0];
  v13 = objc_msgSend_clockValue(self, v9, v10);
  if (v13 == -1)
  {
    v17 = @"_";
    objc_msgSend_stringWithFormat_(v8, v11, @"%@:%@", v7, @"_");
  }

  else
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = objc_msgSend_clockValue(self, v11, v12);
    v17 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v15);
    objc_msgSend_stringWithFormat_(v8, v18, @"%@:%@", v7, v17);
  }
  v19 = ;
  if (v13 != -1)
  {
  }

  return v19;
}

@end