@interface CTSweetgumDataPlanMetricsItem
- (BOOL)isEqual:(id)equal;
- (CTSweetgumDataPlanMetricsItem)init;
- (CTSweetgumDataPlanMetricsItem)initWithCoder:(id)coder;
- (id)description;
@end

@implementation CTSweetgumDataPlanMetricsItem

- (CTSweetgumDataPlanMetricsItem)init
{
  v6.receiver = self;
  v6.super_class = CTSweetgumDataPlanMetricsItem;
  v2 = [(CTSweetgumDataPlanMetricsItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    capacityBytes = v2->_capacityBytes;
    v2->_capacityBytes = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  capacityBytes = [(CTSweetgumDataPlanMetricsItem *)self capacityBytes];
  [v3 appendFormat:@", capacityBytes=%@", capacityBytes];

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
      capacityBytes = [(CTSweetgumDataPlanMetricsItem *)self capacityBytes];
      capacityBytes2 = [(CTSweetgumDataPlanMetricsItem *)equalCopy capacityBytes];
      if (capacityBytes == capacityBytes2)
      {
        v9 = 1;
      }

      else
      {
        capacityBytes3 = [(CTSweetgumDataPlanMetricsItem *)self capacityBytes];
        capacityBytes4 = [(CTSweetgumDataPlanMetricsItem *)equalCopy capacityBytes];
        v9 = [capacityBytes3 isEqualToNumber:capacityBytes4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTSweetgumDataPlanMetricsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTSweetgumDataPlanMetricsItem;
  v5 = [(CTSweetgumDataPlanMetricsItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacityBytes"];
    capacityBytes = v5->_capacityBytes;
    v5->_capacityBytes = v6;
  }

  return v5;
}

@end