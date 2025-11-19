@interface AMSMockURLRequestComparator
- (AMSMockURLRequestComparator)initWithCriteriaBlock:(id)a3;
- (BOOL)shouldOverrideURLRequest:(id)a3;
@end

@implementation AMSMockURLRequestComparator

- (AMSMockURLRequestComparator)initWithCriteriaBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSMockURLRequestComparator;
  v5 = [(AMSMockURLRequestComparator *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    criteriaBlock = v5->_criteriaBlock;
    v5->_criteriaBlock = v6;
  }

  return v5;
}

- (BOOL)shouldOverrideURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(AMSMockURLRequestComparator *)self criteriaBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

@end