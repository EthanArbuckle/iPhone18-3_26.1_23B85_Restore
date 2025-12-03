@interface CKSubscriptionInfo
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKSubscriptionInfo

- (unint64_t)hash
{
  if (self)
  {
    subscriptionID = self->_subscriptionID;
  }

  else
  {
    subscriptionID = 0;
  }

  v4 = subscriptionID;
  v7 = objc_msgSend_hash(v4, v5, v6);
  if (self)
  {
    container = self->_container;
  }

  else
  {
    container = 0;
  }

  v9 = container;
  v12 = objc_msgSend_hash(v9, v10, v11);
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  v14 = database;
  v19 = objc_msgSend_scope(v14, v15, v16);
  if (self)
  {
    environment = self->_environment;
  }

  else
  {
    environment = 0;
  }

  v21 = v12 ^ v7;
  v22 = v19 ^ objc_msgSend_hash(environment, v17, v18);

  return v21 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5)
    {
      v7 = v5[5];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (self)
    {
      subscriptionID = self->_subscriptionID;
    }

    else
    {
      subscriptionID = 0;
    }

    v10 = subscriptionID;
    if (!CKObjectsAreBothNilOrEqual(v8, v10))
    {
      isEqual = 0;
LABEL_27:

      goto LABEL_28;
    }

    if (v6)
    {
      v11 = v6[2];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (self)
    {
      container = self->_container;
    }

    else
    {
      container = 0;
    }

    v14 = container;
    if (!objc_msgSend_isEqual_(v12, v15, v14))
    {
      isEqual = 0;
LABEL_26:

      goto LABEL_27;
    }

    if (v6)
    {
      v16 = v6[1];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v20 = objc_msgSend_scope(v17, v18, v19);
    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    v22 = database;
    if (v20 != objc_msgSend_scope(v22, v23, v24))
    {
      isEqual = 0;
      goto LABEL_25;
    }

    if (v6)
    {
      v25 = v6[3];
      if (!self)
      {
LABEL_20:
        v26 = v25;
        isEqual = objc_msgSend_isEqual_(v26, v27, self);

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      v25 = 0;
      if (!self)
      {
        goto LABEL_20;
      }
    }

    self = self->_environment;
    goto LABEL_20;
  }

  isEqual = 0;
LABEL_28:

  return isEqual;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    v7 = self->_database;
    v8 = self->_environment;
    objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p; database=%@ environment=%@ subscriptionID=%@>", v6, self, v7, v8, self->_subscriptionID);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p; database=%@ environment=%@ subscriptionID=%@>", v6, 0, 0, 0, 0);
  }
  v10 = ;

  return v10;
}

@end