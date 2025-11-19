@interface HKPairedFeatureAttributes
- (BOOL)isEqual:(id)a3;
- (HKFeatureAttributes)companionAttributes;
- (HKFeatureAttributes)watchAttributes;
- (HKPairedFeatureAttributes)initWithCoder:(id)a3;
- (HKPairedFeatureAttributes)initWithLocalAttributes:(id)a3 pairedAttributes:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKPairedFeatureAttributes

- (HKPairedFeatureAttributes)initWithLocalAttributes:(id)a3 pairedAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKPairedFeatureAttributes;
  v8 = [(HKPairedFeatureAttributes *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    localAttributes = v8->_localAttributes;
    v8->_localAttributes = v9;

    v11 = [v7 copy];
    pairedAttributes = v8->_pairedAttributes;
    v8->_pairedAttributes = v11;
  }

  return v8;
}

- (HKFeatureAttributes)companionAttributes
{
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 isAppleWatch];
  v5 = 8;
  if (v4)
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);
  v7 = v6;

  return v6;
}

- (HKFeatureAttributes)watchAttributes
{
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 isAppleWatch];
  v5 = 16;
  if (v4)
  {
    v5 = 8;
  }

  v6 = *(&self->super.isa + v5);
  v7 = v6;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKPairedFeatureAttributes;
  if (![(HKPairedFeatureAttributes *)&v12 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = v4;
    localAttributes = self->_localAttributes;
    v8 = v6[1];
    if (localAttributes != v8 && (!v8 || ![(HKFeatureAttributes *)localAttributes isEqual:?]))
    {
      goto LABEL_11;
    }

    pairedAttributes = self->_pairedAttributes;
    v10 = v6[2];
    if (pairedAttributes == v10)
    {
      v5 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      v5 = [(HKFeatureAttributes *)pairedAttributes isEqual:?];
    }

    else
    {
LABEL_11:
      v5 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (HKPairedFeatureAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKPairedFeatureAttributes;
  v5 = [(HKPairedFeatureAttributes *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localAttributes"];
    localAttributes = v5->_localAttributes;
    v5->_localAttributes = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedAttributes"];
    pairedAttributes = v5->_pairedAttributes;
    v5->_pairedAttributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localAttributes = self->_localAttributes;
  v5 = a3;
  [v5 encodeObject:localAttributes forKey:@"localAttributes"];
  [v5 encodeObject:self->_pairedAttributes forKey:@"pairedAttributes"];
}

@end