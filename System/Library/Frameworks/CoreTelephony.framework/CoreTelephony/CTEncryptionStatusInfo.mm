@interface CTEncryptionStatusInfo
- (BOOL)isEqual:(id)equal;
- (CTEncryptionStatusInfo)initWithCoder:(id)coder;
- (CTEncryptionStatusInfo)initWithStatus:(int64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTEncryptionStatusInfo

- (CTEncryptionStatusInfo)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = CTEncryptionStatusInfo;
  result = [(CTEncryptionStatusInfo *)&v5 init];
  if (result)
  {
    result->_status = status;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      status = [(CTEncryptionStatusInfo *)equalCopy status];
      v6 = status == [(CTEncryptionStatusInfo *)self status];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStatus:{-[CTEncryptionStatusInfo status](self, "status")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTEncryptionStatusInfo status](self forKey:{"status"), @"status"}];
}

- (CTEncryptionStatusInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTEncryptionStatusInfo;
  v5 = [(CTEncryptionStatusInfo *)&v7 init];
  if (v5)
  {
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
  }

  return v5;
}

@end