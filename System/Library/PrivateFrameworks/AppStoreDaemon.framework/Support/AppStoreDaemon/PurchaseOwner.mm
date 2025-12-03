@interface PurchaseOwner
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation PurchaseOwner

- (id)description
{
  v6.receiver = self;
  v6.super_class = PurchaseOwner;
  v3 = [(PurchaseOwner *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: {type = %ld DSID = %@}", v3, self->_ownerType, self->_purchaserDSID];;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v8 = v6;
    if (self)
    {
      purchaserDSID = self->_purchaserDSID;
      v11 = objc_getProperty(v6, v7, 16, 1);
      LOBYTE(self) = (purchaserDSID == v11 || [(NSNumber *)self->_purchaserDSID isEqual:objc_getProperty(v8, v10, 16, 1)]) && self->_ownerType == v8->_ownerType;
    }
  }

  else
  {
LABEL_8:
    LOBYTE(self) = 0;
  }

LABEL_13:

  return self;
}

@end