@interface AMSMockURLRequestComparator
- (AMSMockURLRequestComparator)initWithCriteriaBlock:(id)block;
- (BOOL)shouldOverrideURLRequest:(id)request;
@end

@implementation AMSMockURLRequestComparator

- (AMSMockURLRequestComparator)initWithCriteriaBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = AMSMockURLRequestComparator;
  v5 = [(AMSMockURLRequestComparator *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    criteriaBlock = v5->_criteriaBlock;
    v5->_criteriaBlock = v6;
  }

  return v5;
}

- (BOOL)shouldOverrideURLRequest:(id)request
{
  requestCopy = request;
  criteriaBlock = [(AMSMockURLRequestComparator *)self criteriaBlock];
  v6 = (criteriaBlock)[2](criteriaBlock, requestCopy);

  return v6;
}

@end