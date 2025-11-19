@interface ATXCoreAnalyticsModeDNDDimensions
- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)a3 nullableIsDND:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreAnalyticsDictionary;
- (id)powerset;
@end

@implementation ATXCoreAnalyticsModeDNDDimensions

- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)a3 nullableIsDND:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXCoreAnalyticsModeDNDDimensions;
  v9 = [(ATXCoreAnalyticsModeDNDDimensions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mode, a3);
    objc_storeStrong(&v10->_isDND, a4);
  }

  return v10;
}

- (id)powerset
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  v4 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:0 nullableIsDND:0];
  [v3 addObject:v4];
  v5 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:0 nullableIsDND:self->_isDND];
  [v3 addObject:v5];
  v6 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:self->_mode nullableIsDND:0];
  [v3 addObject:v6];
  v7 = [v3 allObjects];

  return v7;
}

- (id)coreAnalyticsDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"mode";
  mode = self->_mode;
  v4 = mode;
  if (!mode)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"isDND";
  v11[0] = v4;
  isDND = self->_isDND;
  v6 = isDND;
  if (!isDND)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (isDND)
  {
    if (mode)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (mode)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXCoreAnalyticsModeDNDDimensions allocWithZone:a3];
  mode = self->_mode;
  isDND = self->_isDND;

  return [(ATXCoreAnalyticsModeDNDDimensions *)v4 initWithMode:mode nullableIsDND:isDND];
}

@end