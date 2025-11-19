@interface CKDistributedSiteIdentifier
+ (id)SHADescription:(id)a3;
+ (id)pSiteIdentifierFromSiteIdentifier:(id)a3;
+ (id)siteIdentifierFromPSiteIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKDistributedSiteIdentifier)initWithCoder:(id)a3;
- (CKDistributedSiteIdentifier)initWithIdentifier:(id)a3 modifier:(id)a4;
- (id)description;
- (id)descriptionWithStringSiteIdentifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDistributedSiteIdentifier

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_modifier(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (CKDistributedSiteIdentifier)initWithIdentifier:(id)a3 modifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CKDistributedSiteIdentifier;
  v10 = [(CKDistributedSiteIdentifier *)&v20 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_opt_new();
    }

    modifier = v10->_modifier;
    v10->_modifier = v17;
  }

  return v10;
}

- (CKDistributedSiteIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_modifier);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v9, v10);

  v14 = objc_msgSend_initWithIdentifier_modifier_(self, v13, v8, v12);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_identifier(self, v5, v6);
  v8 = NSStringFromSelector(sel_identifier);
  objc_msgSend_encodeObject_forKey_(v15, v9, v7, v8);

  v12 = objc_msgSend_modifier(self, v10, v11);
  v13 = NSStringFromSelector(sel_modifier);
  objc_msgSend_encodeObject_forKey_(v15, v14, v12, v13);

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (((v5 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v6 = v5;
    v9 = objc_msgSend_identifier(self, v7, v8);
    v14 = objc_msgSend_identifier(v6, v10, v11);
    if (v9 == v14 || (objc_msgSend_identifier(self, v12, v13), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_identifier(v6, v15, v16), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqual_(v32, v17, v3)))
    {
      v19 = objc_msgSend_modifier(self, v12, v13);
      v22 = objc_msgSend_modifier(v6, v20, v21);
      v25 = v22;
      if (v19 == v22)
      {

        isEqual = 1;
      }

      else
      {
        v26 = objc_msgSend_modifier(self, v23, v24);
        v29 = objc_msgSend_modifier(v6, v27, v28);
        isEqual = objc_msgSend_isEqual_(v26, v30, v29);
      }

      if (v9 == v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      isEqual = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  isEqual = 0;
LABEL_12:

  return isEqual;
}

+ (id)SHADescription:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_string(MEMORY[0x1E696AD60], v4, v5);
  if (objc_msgSend_length(v3, v7, v8))
  {
    v10 = v3;
    v13 = objc_msgSend_bytes(v10, v11, v12);
    v16 = objc_msgSend_length(v3, v14, v15);
    CC_SHA1(v13, v16, md);
    for (i = 0; i != 4; ++i)
    {
      objc_msgSend_appendFormat_(v6, v17, @"%02x", md[i]);
    }
  }

  else
  {
    v19 = 4;
    do
    {
      objc_msgSend_appendFormat_(v6, v9, @"%02x", 0);
      --v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_identifier(self, v4, v5);
  v8 = objc_msgSend_SHADescription_(v3, v7, v6);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  v14 = objc_msgSend_modifier(self, v12, v13);
  v17 = objc_msgSend_length(v14, v15, v16);

  if (v17)
  {
    v18 = objc_opt_class();
    v21 = objc_msgSend_modifier(self, v19, v20);
    v23 = objc_msgSend_SHADescription_(v18, v22, v21);
    objc_msgSend_appendFormat_(v11, v24, @"(%@)", v23);
  }

  return v11;
}

- (id)descriptionWithStringSiteIdentifiers
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_identifier(self, v4, v5);
  v8 = objc_msgSend_initWithData_encoding_(v3, v7, v6, 4);
  v11 = v8;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v13 = objc_msgSend_identifier(self, v9, v10);
    v12 = objc_msgSend_description(v13, v14, v15);
  }

  v18 = objc_msgSend_mutableCopy(v12, v16, v17);
  v21 = objc_msgSend_modifier(self, v19, v20);
  v24 = objc_msgSend_length(v21, v22, v23);

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v28 = objc_msgSend_modifier(self, v26, v27);
    v30 = objc_msgSend_initWithData_encoding_(v25, v29, v28, 4);
    v33 = v30;
    if (v30)
    {
      v34 = v30;
    }

    else
    {
      v35 = objc_msgSend_modifier(self, v31, v32);
      v34 = objc_msgSend_description(v35, v36, v37);
    }

    objc_msgSend_appendFormat_(v18, v38, @"(%@)", v34);
  }

  return v18;
}

+ (id)pSiteIdentifierFromSiteIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7 = objc_msgSend_identifier(v3, v5, v6);
  objc_msgSend_setIdentifier_(v4, v8, v7);

  v11 = objc_msgSend_modifier(v3, v9, v10);

  objc_msgSend_setModifier_(v4, v12, v11);

  return v4;
}

+ (id)siteIdentifierFromPSiteIdentifier:(id)a3
{
  v3 = a3;
  v4 = [CKDistributedSiteIdentifier alloc];
  v7 = objc_msgSend_identifier(v3, v5, v6);
  v10 = objc_msgSend_modifier(v3, v8, v9);

  v12 = objc_msgSend_initWithIdentifier_modifier_(v4, v11, v7, v10);

  return v12;
}

@end