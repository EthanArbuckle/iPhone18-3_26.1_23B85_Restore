@interface CTPNRSupportStatus
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTPNRSupportStatus:(id)status;
- (CTPNRSupportStatus)init;
- (CTPNRSupportStatus)initWithCoder:(id)coder;
- (CTPNRSupportStatus)initWithSupportType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CTPNRSupportStatus

- (CTPNRSupportStatus)init
{
  v3.receiver = self;
  v3.super_class = CTPNRSupportStatus;
  result = [(CTPNRSupportStatus *)&v3 init];
  if (result)
  {
    result->_supportType = 1;
  }

  return result;
}

- (CTPNRSupportStatus)initWithSupportType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CTPNRSupportStatus;
  result = [(CTPNRSupportStatus *)&v5 init];
  if (result)
  {
    result->_supportType = type;
  }

  return result;
}

- (BOOL)isEqualToCTPNRSupportStatus:(id)status
{
  if (!status)
  {
    return 0;
  }

  statusCopy = status;
  supportType = [(CTPNRSupportStatus *)self supportType];
  supportType2 = [statusCopy supportType];

  return supportType == supportType2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRSupportStatus *)self isEqualToCTPNRSupportStatus:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSupportType:{-[CTPNRSupportStatus supportType](self, "supportType")}];
  return v4;
}

- (CTPNRSupportStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTPNRSupportStatus;
  v5 = [(CTPNRSupportStatus *)&v7 init];
  if (v5)
  {
    v5->_supportType = [coderCopy decodeIntegerForKey:@"supportType"];
  }

  return v5;
}

@end