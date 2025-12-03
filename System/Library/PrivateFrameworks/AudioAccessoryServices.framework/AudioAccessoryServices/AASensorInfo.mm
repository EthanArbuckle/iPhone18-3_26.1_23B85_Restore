@interface AASensorInfo
- (AASensorInfo)initWithBTAddress:(id)address;
- (AASensorInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AASensorInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  btAddress = [(AASensorInfo *)self btAddress];
  v6 = [v4 initWithBTAddress:btAddress];

  return v6;
}

- (AASensorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AASensorInfo *)self init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  btAddress = self->_btAddress;
  if (btAddress)
  {
    [coder encodeObject:btAddress forKey:@"btAd"];
  }
}

- (AASensorInfo)initWithBTAddress:(id)address
{
  v4 = [address copy];
  btAddress = self->_btAddress;
  self->_btAddress = v4;

  self->_pid = -1;
  return self;
}

@end