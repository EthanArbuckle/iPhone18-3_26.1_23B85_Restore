@interface MTRProductIdentity
- (BOOL)isEqual:(id)a3;
- (MTRProductIdentity)initWithCoder:(id)a3;
- (MTRProductIdentity)initWithVendorID:(NSNumber *)vendorID productID:(NSNumber *)productID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRProductIdentity

- (MTRProductIdentity)initWithVendorID:(NSNumber *)vendorID productID:(NSNumber *)productID
{
  v6 = vendorID;
  v7 = productID;
  v11.receiver = self;
  v11.super_class = MTRProductIdentity;
  v8 = [(MTRProductIdentity *)&v11 init];
  v9 = 0;
  if (v6 && v7)
  {
    v8->_vendorID = [(NSNumber *)v6 unsignedShortValue];
    v8->_productID = [(NSNumber *)v7 unsignedShortValue];
    v9 = v8;
  }

  return v9;
}

- (MTRProductIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MTRProductIdentity;
  v5 = [(MTRProductIdentity *)&v7 init];
  v5->_vendorID = [v4 decodeIntForKey:@"v"];
  v5->_productID = [v4 decodeIntForKey:@"p"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_vendorID forKey:@"v"];
  [v4 encodeInt:self->_productID forKey:@"p"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_vendorID == v4[4] && self->_productID == v4[5];

  return v6;
}

@end