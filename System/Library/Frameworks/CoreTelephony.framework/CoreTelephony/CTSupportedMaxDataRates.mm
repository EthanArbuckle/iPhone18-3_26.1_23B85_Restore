@interface CTSupportedMaxDataRates
- (CTSupportedMaxDataRates)initWithCoder:(id)coder;
- (CTSupportedMaxDataRates)initWithRates:(id)rates;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTSupportedMaxDataRates

- (CTSupportedMaxDataRates)initWithRates:(id)rates
{
  ratesCopy = rates;
  v9.receiver = self;
  v9.super_class = CTSupportedMaxDataRates;
  v6 = [(CTSupportedMaxDataRates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rates, rates);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  rates = [(CTSupportedMaxDataRates *)self rates];
  [v3 appendFormat:@" rates=%@", rates];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  rates = [(CTSupportedMaxDataRates *)self rates];
  v6 = [rates copy];
  [v4 setRates:v6];

  return v4;
}

- (CTSupportedMaxDataRates)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSupportedMaxDataRates;
  v5 = [(CTSupportedMaxDataRates *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"rates"];
    rates = v5->_rates;
    v5->_rates = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end