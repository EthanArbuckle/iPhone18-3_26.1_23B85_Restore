@interface HKPairedFeatureAttributes
- (BOOL)isEqual:(id)equal;
- (HKFeatureAttributes)companionAttributes;
- (HKFeatureAttributes)watchAttributes;
- (HKPairedFeatureAttributes)initWithCoder:(id)coder;
- (HKPairedFeatureAttributes)initWithLocalAttributes:(id)attributes pairedAttributes:(id)pairedAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKPairedFeatureAttributes

- (HKPairedFeatureAttributes)initWithLocalAttributes:(id)attributes pairedAttributes:(id)pairedAttributes
{
  attributesCopy = attributes;
  pairedAttributesCopy = pairedAttributes;
  v14.receiver = self;
  v14.super_class = HKPairedFeatureAttributes;
  v8 = [(HKPairedFeatureAttributes *)&v14 init];
  if (v8)
  {
    v9 = [attributesCopy copy];
    localAttributes = v8->_localAttributes;
    v8->_localAttributes = v9;

    v11 = [pairedAttributesCopy copy];
    pairedAttributes = v8->_pairedAttributes;
    v8->_pairedAttributes = v11;
  }

  return v8;
}

- (HKFeatureAttributes)companionAttributes
{
  v3 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v3 isAppleWatch];
  v5 = 8;
  if (isAppleWatch)
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
  isAppleWatch = [v3 isAppleWatch];
  v5 = 16;
  if (isAppleWatch)
  {
    v5 = 8;
  }

  v6 = *(&self->super.isa + v5);
  v7 = v6;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = HKPairedFeatureAttributes;
  if (![(HKPairedFeatureAttributes *)&v12 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = equalCopy;
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

- (HKPairedFeatureAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKPairedFeatureAttributes;
  v5 = [(HKPairedFeatureAttributes *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localAttributes"];
    localAttributes = v5->_localAttributes;
    v5->_localAttributes = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedAttributes"];
    pairedAttributes = v5->_pairedAttributes;
    v5->_pairedAttributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localAttributes = self->_localAttributes;
  coderCopy = coder;
  [coderCopy encodeObject:localAttributes forKey:@"localAttributes"];
  [coderCopy encodeObject:self->_pairedAttributes forKey:@"pairedAttributes"];
}

@end