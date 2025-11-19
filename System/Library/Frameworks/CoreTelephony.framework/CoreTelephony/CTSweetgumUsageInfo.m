@interface CTSweetgumUsageInfo
- (BOOL)isEqual:(id)a3;
- (CTSweetgumUsageInfo)init;
- (CTSweetgumUsageInfo)initWithCoder:(id)a3;
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
  v4 = [(CTSweetgumUsageInfo *)self accountMetrics];
  [v3 appendFormat:@" accountMetrics=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTSweetgumUsageInfo *)self accountMetrics];
      v6 = [(CTSweetgumUsageInfo *)v4 accountMetrics];
      if (v5 == v6)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(CTSweetgumUsageInfo *)self accountMetrics];
        v8 = [(CTSweetgumUsageInfo *)v4 accountMetrics];
        v9 = [v7 isEqual:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTSweetgumUsageInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTSweetgumUsageInfo;
  v5 = [(CTSweetgumUsageInfo *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"account_metrics"];
    accountMetrics = v5->_accountMetrics;
    v5->_accountMetrics = v9;
  }

  return v5;
}

@end