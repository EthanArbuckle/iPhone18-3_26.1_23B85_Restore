@interface CTPNRSupportStatus
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTPNRSupportStatus:(id)a3;
- (CTPNRSupportStatus)init;
- (CTPNRSupportStatus)initWithCoder:(id)a3;
- (CTPNRSupportStatus)initWithSupportType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (CTPNRSupportStatus)initWithSupportType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CTPNRSupportStatus;
  result = [(CTPNRSupportStatus *)&v5 init];
  if (result)
  {
    result->_supportType = a3;
  }

  return result;
}

- (BOOL)isEqualToCTPNRSupportStatus:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(CTPNRSupportStatus *)self supportType];
  v6 = [v4 supportType];

  return v5 == v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRSupportStatus *)self isEqualToCTPNRSupportStatus:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSupportType:{-[CTPNRSupportStatus supportType](self, "supportType")}];
  return v4;
}

- (CTPNRSupportStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTPNRSupportStatus;
  v5 = [(CTPNRSupportStatus *)&v7 init];
  if (v5)
  {
    v5->_supportType = [v4 decodeIntegerForKey:@"supportType"];
  }

  return v5;
}

@end