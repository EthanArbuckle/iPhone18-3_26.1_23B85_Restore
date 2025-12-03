@interface CTSweetgumUsageInfo
- (BOOL)isEqual:(id)equal;
- (CTSweetgumUsageInfo)init;
- (CTSweetgumUsageInfo)initWithCoder:(id)coder;
- (id)description;
@end

@implementation CTSweetgumUsageInfo

- (CTSweetgumUsageInfo)init
{
  v6.receiver = self;
  v6.super_class = CTSweetgumUsageInfo;
  v2 = [(CTSweetgumUsageInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    accountMetrics = v2->_accountMetrics;
    v2->_accountMetrics = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  accountMetrics = [(CTSweetgumUsageInfo *)self accountMetrics];
  [v3 appendFormat:@" accountMetrics=%@", accountMetrics];

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
      accountMetrics = [(CTSweetgumUsageInfo *)self accountMetrics];
      accountMetrics2 = [(CTSweetgumUsageInfo *)equalCopy accountMetrics];
      if (accountMetrics == accountMetrics2)
      {
        v9 = 1;
      }

      else
      {
        accountMetrics3 = [(CTSweetgumUsageInfo *)self accountMetrics];
        accountMetrics4 = [(CTSweetgumUsageInfo *)equalCopy accountMetrics];
        v9 = [accountMetrics3 isEqual:accountMetrics4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTSweetgumUsageInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTSweetgumUsageInfo;
  v5 = [(CTSweetgumUsageInfo *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"account_metrics"];
    accountMetrics = v5->_accountMetrics;
    v5->_accountMetrics = v9;
  }

  return v5;
}

@end