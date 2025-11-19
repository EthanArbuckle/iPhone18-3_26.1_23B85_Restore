@interface CTEncryptionStatusInfo
- (BOOL)isEqual:(id)a3;
- (CTEncryptionStatusInfo)initWithCoder:(id)a3;
- (CTEncryptionStatusInfo)initWithStatus:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTEncryptionStatusInfo

- (CTEncryptionStatusInfo)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CTEncryptionStatusInfo;
  result = [(CTEncryptionStatusInfo *)&v5 init];
  if (result)
  {
    result->_status = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTEncryptionStatusInfo *)v4 status];
      v6 = v5 == [(CTEncryptionStatusInfo *)self status];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStatus:{-[CTEncryptionStatusInfo status](self, "status")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTEncryptionStatusInfo status](self forKey:{"status"), @"status"}];
}

- (CTEncryptionStatusInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTEncryptionStatusInfo;
  v5 = [(CTEncryptionStatusInfo *)&v7 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
  }

  return v5;
}

@end