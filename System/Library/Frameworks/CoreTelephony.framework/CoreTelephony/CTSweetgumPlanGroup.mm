@interface CTSweetgumPlanGroup
- (BOOL)isEqual:(id)equal;
- (CTSweetgumPlanGroup)init;
- (CTSweetgumPlanGroup)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSweetgumPlanGroup

- (CTSweetgumPlanGroup)init
{
  v6.receiver = self;
  v6.super_class = CTSweetgumPlanGroup;
  v2 = [(CTSweetgumPlanGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    plans = v2->_plans;
    v2->_planCategory = 0;
    v2->_plans = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", planCategory=%s", CTSweetgumPlanCategoryAsString(-[CTSweetgumPlanGroup planCategory](self, "planCategory"))];
  plans = [(CTSweetgumPlanGroup *)self plans];
  [v3 appendFormat:@", plans=%@", plans];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSweetgumPlanGroup *)self planCategory], v5 == [(CTSweetgumPlanGroup *)equalCopy planCategory]))
    {
      plans = [(CTSweetgumPlanGroup *)self plans];
      plans2 = [(CTSweetgumPlanGroup *)equalCopy plans];
      if (plans == plans2)
      {
        v10 = 1;
      }

      else
      {
        plans3 = [(CTSweetgumPlanGroup *)self plans];
        plans4 = [(CTSweetgumPlanGroup *)equalCopy plans];
        v10 = [plans3 isEqualToArray:plans4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  planCategory = self->_planCategory;
  coderCopy = coder;
  [coderCopy encodeInteger:planCategory forKey:@"planCategory"];
  [coderCopy encodeObject:self->_plans forKey:@"plans"];
}

- (CTSweetgumPlanGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTSweetgumPlanGroup;
  v5 = [(CTSweetgumPlanGroup *)&v12 init];
  if (v5)
  {
    v5->_planCategory = [coderCopy decodeIntegerForKey:@"planCategory"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"plans"];
    plans = v5->_plans;
    v5->_plans = v9;
  }

  return v5;
}

@end