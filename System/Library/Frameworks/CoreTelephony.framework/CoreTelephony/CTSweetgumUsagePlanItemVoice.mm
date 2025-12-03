@interface CTSweetgumUsagePlanItemVoice
- (BOOL)isEqual:(id)equal;
- (CTSweetgumUsagePlanItemVoice)init;
- (CTSweetgumUsagePlanItemVoice)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSweetgumUsagePlanItemVoice

- (CTSweetgumUsagePlanItemVoice)init
{
  v7.receiver = self;
  v7.super_class = CTSweetgumUsagePlanItemVoice;
  v2 = [(CTSweetgumUsagePlanItemVoice *)&v7 init];
  v3 = v2;
  if (v2)
  {
    minutesCapacity = v2->_minutesCapacity;
    v2->_minutesCapacity = 0;

    minutesUsed = v3->_minutesUsed;
    v3->_minutesUsed = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  minutesCapacity = [(CTSweetgumUsagePlanItemVoice *)self minutesCapacity];
  [v3 appendFormat:@", minutesCapacity=%@", minutesCapacity];

  minutesUsed = [(CTSweetgumUsagePlanItemVoice *)self minutesUsed];
  [v3 appendFormat:@", minutesUsed=%@", minutesUsed];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minutesCapacity = [(CTSweetgumUsagePlanItemVoice *)self minutesCapacity];
      minutesCapacity2 = [(CTSweetgumUsagePlanItemVoice *)equalCopy minutesCapacity];
      if (minutesCapacity == minutesCapacity2 || (-[CTSweetgumUsagePlanItemVoice minutesCapacity](self, "minutesCapacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumUsagePlanItemVoice minutesCapacity](equalCopy, "minutesCapacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        minutesUsed = [(CTSweetgumUsagePlanItemVoice *)self minutesUsed];
        minutesUsed2 = [(CTSweetgumUsagePlanItemVoice *)equalCopy minutesUsed];
        if (minutesUsed == minutesUsed2)
        {
          v9 = 1;
        }

        else
        {
          minutesUsed3 = [(CTSweetgumUsagePlanItemVoice *)self minutesUsed];
          minutesUsed4 = [(CTSweetgumUsagePlanItemVoice *)equalCopy minutesUsed];
          v9 = [minutesUsed3 isEqualToString:minutesUsed4];
        }

        if (minutesCapacity == minutesCapacity2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  minutesCapacity = self->_minutesCapacity;
  coderCopy = coder;
  [coderCopy encodeObject:minutesCapacity forKey:@"minutesCapacity"];
  [coderCopy encodeObject:self->_minutesUsed forKey:@"minutesUsed"];
}

- (CTSweetgumUsagePlanItemVoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTSweetgumUsagePlanItemVoice;
  v5 = [(CTSweetgumUsagePlanItemVoice *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minutesCapacity"];
    minutesCapacity = v5->_minutesCapacity;
    v5->_minutesCapacity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minutesUsed"];
    minutesUsed = v5->_minutesUsed;
    v5->_minutesUsed = v8;
  }

  return v5;
}

@end