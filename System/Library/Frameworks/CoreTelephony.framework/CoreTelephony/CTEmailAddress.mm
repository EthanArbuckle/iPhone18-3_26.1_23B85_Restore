@interface CTEmailAddress
+ (id)emailAddress:(id)a3;
- (CTEmailAddress)initWithAddress:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CTEmailAddress

+ (id)emailAddress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAddress:v4];

  return v5;
}

- (CTEmailAddress)initWithAddress:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTEmailAddress;
  v5 = [(CTEmailAddress *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    address = v5->_address;
    v5->_address = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTEmailAddress allocWithZone:a3];
  address = self->_address;

  return [(CTEmailAddress *)v4 initWithAddress:address];
}

@end