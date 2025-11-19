@interface ATXModeDimensionSet
- (ATXModeDimensionSet)initWithMode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreAnalyticsDictionary;
- (id)powerset;
@end

@implementation ATXModeDimensionSet

- (ATXModeDimensionSet)initWithMode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXModeDimensionSet;
  v6 = [(ATXModeDimensionSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mode, a3);
  }

  return v7;
}

- (id)powerset
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  v4 = [[ATXModeDimensionSet alloc] initWithMode:self->_mode];
  [v3 addObject:v4];

  v5 = [v3 allObjects];

  return v5;
}

- (id)coreAnalyticsDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"mode";
  mode = self->_mode;
  v3 = mode;
  if (!mode)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!mode)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXModeDimensionSet allocWithZone:a3];
  mode = self->_mode;

  return [(ATXModeDimensionSet *)v4 initWithMode:mode];
}

@end