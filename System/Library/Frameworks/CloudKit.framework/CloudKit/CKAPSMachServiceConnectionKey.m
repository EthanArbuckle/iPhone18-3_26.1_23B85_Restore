@interface CKAPSMachServiceConnectionKey
- (BOOL)isEqual:(id)a3;
- (CKAPSMachServiceConnectionKey)initWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4;
- (unint64_t)hash;
@end

@implementation CKAPSMachServiceConnectionKey

- (CKAPSMachServiceConnectionKey)initWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CKAPSMachServiceConnectionKey;
  v10 = [(CKAPSMachServiceConnectionKey *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    environmentName = v10->_environmentName;
    v10->_environmentName = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    namedDelegatePort = v10->_namedDelegatePort;
    v10->_namedDelegatePort = v15;
  }

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_environmentName(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_namedDelegatePort(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    v7 = v4;
    v10 = objc_msgSend_environmentName(self, v8, v9);
    v13 = objc_msgSend_environmentName(v7, v11, v12);
    if (objc_msgSend_isEqualToString_(v10, v14, v13))
    {
      v17 = objc_msgSend_namedDelegatePort(self, v15, v16);
      v20 = objc_msgSend_namedDelegatePort(v7, v18, v19);
      isEqualToString = objc_msgSend_isEqualToString_(v17, v21, v20);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end