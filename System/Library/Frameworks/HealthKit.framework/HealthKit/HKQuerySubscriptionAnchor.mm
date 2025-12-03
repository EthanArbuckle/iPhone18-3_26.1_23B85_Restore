@interface HKQuerySubscriptionAnchor
- (BOOL)isEqual:(id)equal;
- (HKQuerySubscriptionAnchor)initWithCoder:(id)coder;
- (HKQuerySubscriptionAnchor)initWithDataAnchor:(id)anchor associationAnchor:(id)associationAnchor;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQuerySubscriptionAnchor

- (HKQuerySubscriptionAnchor)initWithDataAnchor:(id)anchor associationAnchor:(id)associationAnchor
{
  anchorCopy = anchor;
  associationAnchorCopy = associationAnchor;
  v14.receiver = self;
  v14.super_class = HKQuerySubscriptionAnchor;
  v8 = [(HKQuerySubscriptionAnchor *)&v14 init];
  if (v8)
  {
    v9 = [anchorCopy copy];
    dataAnchor = v8->_dataAnchor;
    v8->_dataAnchor = v9;

    v11 = [associationAnchorCopy copy];
    associationAnchor = v8->_associationAnchor;
    v8->_associationAnchor = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p DataAnchor=%@, AssociationAnchor=%@>", v5, self, self->_dataAnchor, self->_associationAnchor];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      dataAnchor = self->_dataAnchor;
      dataAnchor = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if (dataAnchor == dataAnchor)
      {
        goto LABEL_9;
      }

      dataAnchor2 = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if (!dataAnchor2)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = dataAnchor2;
      v11 = self->_dataAnchor;
      dataAnchor3 = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if ([(NSNumber *)v11 isEqual:dataAnchor3])
      {
LABEL_9:
        associationAnchor = self->_associationAnchor;
        associationAnchor = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
        v15 = associationAnchor;
        if (associationAnchor == associationAnchor)
        {

          v12 = 1;
        }

        else
        {
          associationAnchor2 = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
          if (associationAnchor2)
          {
            v17 = associationAnchor2;
            v18 = self->_associationAnchor;
            associationAnchor3 = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
            v12 = [(NSNumber *)v18 isEqual:associationAnchor3];
          }

          else
          {

            v12 = 0;
          }
        }

        if (dataAnchor == dataAnchor)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  dataAnchor = self->_dataAnchor;
  coderCopy = coder;
  [coderCopy encodeObject:dataAnchor forKey:@"DataAnchor"];
  [coderCopy encodeObject:self->_associationAnchor forKey:@"AssociationAnchor"];
}

- (HKQuerySubscriptionAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataAnchor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssociationAnchor"];

  v7 = [(HKQuerySubscriptionAnchor *)self initWithDataAnchor:v5 associationAnchor:v6];
  return v7;
}

@end