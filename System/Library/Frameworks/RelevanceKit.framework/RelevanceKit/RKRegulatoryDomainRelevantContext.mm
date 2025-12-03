@interface RKRegulatoryDomainRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKRegulatoryDomainRelevantContext)initWithCoder:(id)coder;
- (RKRegulatoryDomainRelevantContext)initWithCountryCodes:(id)codes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RKRegulatoryDomainRelevantContext

- (RKRegulatoryDomainRelevantContext)initWithCountryCodes:(id)codes
{
  codesCopy = codes;
  v9.receiver = self;
  v9.super_class = RKRegulatoryDomainRelevantContext;
  _init = [(RKRelevantContext *)&v9 _init];
  if (_init)
  {
    v6 = [codesCopy copy];
    countryCodes = _init->_countryCodes;
    _init->_countryCodes = v6;
  }

  return _init;
}

- (RKRegulatoryDomainRelevantContext)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"countryCodes"];

  v9 = [(RKRegulatoryDomainRelevantContext *)self initWithCountryCodes:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  countryCodes = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
  [coderCopy encodeObject:countryCodes forKey:@"countryCodes"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      countryCodes = [(RKRegulatoryDomainRelevantContext *)equalCopy countryCodes];
      countryCodes2 = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
      v7 = [countryCodes isEqual:countryCodes2];
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
  countryCodes = [(RKRegulatoryDomainRelevantContext *)self countryCodes];
  v4 = [v2 stringWithFormat:@"<regulatory domain: %@>", countryCodes];

  return v4;
}

@end