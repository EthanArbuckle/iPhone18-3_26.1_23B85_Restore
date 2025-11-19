@interface HKQuerySubscriptionAnchor
- (BOOL)isEqual:(id)a3;
- (HKQuerySubscriptionAnchor)initWithCoder:(id)a3;
- (HKQuerySubscriptionAnchor)initWithDataAnchor:(id)a3 associationAnchor:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuerySubscriptionAnchor

- (HKQuerySubscriptionAnchor)initWithDataAnchor:(id)a3 associationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKQuerySubscriptionAnchor;
  v8 = [(HKQuerySubscriptionAnchor *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dataAnchor = v8->_dataAnchor;
    v8->_dataAnchor = v9;

    v11 = [v7 copy];
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      dataAnchor = self->_dataAnchor;
      v9 = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if (dataAnchor == v9)
      {
        goto LABEL_9;
      }

      v10 = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if (!v10)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = v10;
      v11 = self->_dataAnchor;
      v4 = [(HKQuerySubscriptionAnchor *)v7 dataAnchor];
      if ([(NSNumber *)v11 isEqual:v4])
      {
LABEL_9:
        associationAnchor = self->_associationAnchor;
        v14 = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
        v15 = v14;
        if (associationAnchor == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
          if (v16)
          {
            v17 = v16;
            v18 = self->_associationAnchor;
            v19 = [(HKQuerySubscriptionAnchor *)v7 associationAnchor];
            v12 = [(NSNumber *)v18 isEqual:v19];
          }

          else
          {

            v12 = 0;
          }
        }

        if (dataAnchor == v9)
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

- (void)encodeWithCoder:(id)a3
{
  dataAnchor = self->_dataAnchor;
  v5 = a3;
  [v5 encodeObject:dataAnchor forKey:@"DataAnchor"];
  [v5 encodeObject:self->_associationAnchor forKey:@"AssociationAnchor"];
}

- (HKQuerySubscriptionAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataAnchor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssociationAnchor"];

  v7 = [(HKQuerySubscriptionAnchor *)self initWithDataAnchor:v5 associationAnchor:v6];
  return v7;
}

@end