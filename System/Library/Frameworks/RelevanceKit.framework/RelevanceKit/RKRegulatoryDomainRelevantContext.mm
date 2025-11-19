@interface RKRegulatoryDomainRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKRegulatoryDomainRelevantContext)initWithCoder:(id)a3;
- (RKRegulatoryDomainRelevantContext)initWithCountryCodes:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RKRegulatoryDomainRelevantContext

- (RKRegulatoryDomainRelevantContext)initWithCountryCodes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RKRegulatoryDomainRelevantContext;
  v5 = [(RKRelevantContext *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    countryCodes = v5->_countryCodes;
    v5->_countryCodes = v6;
  }

  return v5;
}

- (RKRegulatoryDomainRelevantContext)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"countryCodes"];

  v9 = [(RKRegulatoryDomainRelevantContext *)self initWithCountryCodes:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
  [v4 encodeObject:v5 forKey:@"countryCodes"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RKRegulatoryDomainRelevantContext *)v4 countryCodes];
      v6 = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
  v4 = [v2 stringWithFormat:@"<regulatory domain: %@>", v3];

  return v4;
}

@end