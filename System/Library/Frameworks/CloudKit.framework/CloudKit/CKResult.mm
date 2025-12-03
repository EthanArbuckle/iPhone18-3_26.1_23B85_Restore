@interface CKResult
- (BOOL)isEqual:(id)equal;
- (CKResult)initWithFailure:(id)failure;
- (CKResult)initWithSuccess:(id)success;
- (unint64_t)hash;
@end

@implementation CKResult

- (CKResult)initWithSuccess:(id)success
{
  successCopy = success;
  v9.receiver = self;
  v9.super_class = CKResult;
  v6 = [(CKResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_successValue, success);
  }

  return v7;
}

- (CKResult)initWithFailure:(id)failure
{
  failureCopy = failure;
  v9.receiver = self;
  v9.super_class = CKResult;
  v6 = [(CKResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, failure);
  }

  return v7;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_successValue(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_error(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_successValue(self, v6, v7);
      v11 = objc_msgSend_successValue(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12)
      {
        v15 = objc_msgSend_error(self, v13, v14);
        v18 = objc_msgSend_error(v5, v16, v17);
        v19 = CKObjectsAreBothNilOrEqual(v15, v18);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

@end