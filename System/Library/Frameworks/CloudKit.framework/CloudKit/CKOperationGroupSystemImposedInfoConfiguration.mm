@interface CKOperationGroupSystemImposedInfoConfiguration
- (BOOL)isEqual:(id)a3;
- (CKOperationGroupSystemImposedInfoConfiguration)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKOperationGroupSystemImposedInfoConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isUplink = objc_msgSend_isUplink(v5, v6, v7);
      if (isUplink == objc_msgSend_isUplink(self, v9, v10))
      {
        v14 = objc_msgSend_allowsCellularAccess(v5, v11, v12);
        v13 = v14 ^ objc_msgSend_allowsCellularAccess(self, v15, v16) ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  if (objc_msgSend_isUplink(self, a2, v2))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6 | objc_msgSend_allowsCellularAccess(self, v4, v5);
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  isUplink = objc_msgSend_isUplink(self, v5, v6);
  objc_msgSend_encodeBool_forKey_(v13, v8, isUplink, @"IsUplink");
  v11 = objc_msgSend_allowsCellularAccess(self, v9, v10);
  objc_msgSend_encodeBool_forKey_(v13, v12, v11, @"AllowsCellularAccess");
  objc_autoreleasePoolPop(v4);
}

- (CKOperationGroupSystemImposedInfoConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKOperationGroupSystemImposedInfoConfiguration;
  v5 = [(CKOperationGroupSystemImposedInfoConfiguration *)&v10 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_isUplink = objc_msgSend_decodeBoolForKey_(v4, v7, @"IsUplink");
    v5->_allowsCellularAccess = objc_msgSend_decodeBoolForKey_(v4, v8, @"AllowsCellularAccess");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end