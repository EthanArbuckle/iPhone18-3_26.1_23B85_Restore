@interface CTSweetgumPlanGroup
- (BOOL)isEqual:(id)a3;
- (CTSweetgumPlanGroup)init;
- (CTSweetgumPlanGroup)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTSweetgumPlanGroup *)self plans];
  [v3 appendFormat:@", plans=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSweetgumPlanGroup *)self planCategory], v5 == [(CTSweetgumPlanGroup *)v4 planCategory]))
    {
      v6 = [(CTSweetgumPlanGroup *)self plans];
      v7 = [(CTSweetgumPlanGroup *)v4 plans];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(CTSweetgumPlanGroup *)self plans];
        v9 = [(CTSweetgumPlanGroup *)v4 plans];
        v10 = [v8 isEqualToArray:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  planCategory = self->_planCategory;
  v5 = a3;
  [v5 encodeInteger:planCategory forKey:@"planCategory"];
  [v5 encodeObject:self->_plans forKey:@"plans"];
}

- (CTSweetgumPlanGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTSweetgumPlanGroup;
  v5 = [(CTSweetgumPlanGroup *)&v12 init];
  if (v5)
  {
    v5->_planCategory = [v4 decodeIntegerForKey:@"planCategory"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"plans"];
    plans = v5->_plans;
    v5->_plans = v9;
  }

  return v5;
}

@end