@interface AASensorInfo
- (AASensorInfo)initWithBTAddress:(id)a3;
- (AASensorInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AASensorInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AASensorInfo *)self btAddress];
  v6 = [v4 initWithBTAddress:v5];

  return v6;
}

- (AASensorInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AASensorInfo *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  btAddress = self->_btAddress;
  if (btAddress)
  {
    [a3 encodeObject:btAddress forKey:@"btAd"];
  }
}

- (AASensorInfo)initWithBTAddress:(id)a3
{
  v4 = [a3 copy];
  btAddress = self->_btAddress;
  self->_btAddress = v4;

  self->_pid = -1;
  return self;
}

@end