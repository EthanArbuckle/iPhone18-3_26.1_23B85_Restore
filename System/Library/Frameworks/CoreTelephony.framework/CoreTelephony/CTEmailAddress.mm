@interface CTEmailAddress
+ (id)emailAddress:(id)address;
- (CTEmailAddress)initWithAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CTEmailAddress

+ (id)emailAddress:(id)address
{
  addressCopy = address;
  v5 = [[self alloc] initWithAddress:addressCopy];

  return v5;
}

- (CTEmailAddress)initWithAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = CTEmailAddress;
  v5 = [(CTEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    address = v5->_address;
    v5->_address = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTEmailAddress allocWithZone:zone];
  address = self->_address;

  return [(CTEmailAddress *)v4 initWithAddress:address];
}

@end