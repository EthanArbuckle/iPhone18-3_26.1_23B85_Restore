@interface MTRProductIdentity
- (BOOL)isEqual:(id)equal;
- (MTRProductIdentity)initWithCoder:(id)coder;
- (MTRProductIdentity)initWithVendorID:(NSNumber *)vendorID productID:(NSNumber *)productID;
- (void)encodeWithCoder:(id)coder;
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

- (MTRProductIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MTRProductIdentity;
  v5 = [(MTRProductIdentity *)&v7 init];
  v5->_vendorID = [coderCopy decodeIntForKey:@"v"];
  v5->_productID = [coderCopy decodeIntForKey:@"p"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_vendorID forKey:@"v"];
  [coderCopy encodeInt:self->_productID forKey:@"p"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_vendorID == equalCopy[4] && self->_productID == equalCopy[5];

  return v6;
}

@end