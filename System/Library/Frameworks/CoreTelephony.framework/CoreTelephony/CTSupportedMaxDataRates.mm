@interface CTSupportedMaxDataRates
- (CTSupportedMaxDataRates)initWithCoder:(id)a3;
- (CTSupportedMaxDataRates)initWithRates:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTSupportedMaxDataRates

- (CTSupportedMaxDataRates)initWithRates:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTSupportedMaxDataRates;
  v6 = [(CTSupportedMaxDataRates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rates, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSupportedMaxDataRates *)self rates];
  [v3 appendFormat:@" rates=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTSupportedMaxDataRates *)self rates];
  v6 = [v5 copy];
  [v4 setRates:v6];

  return v4;
}

- (CTSupportedMaxDataRates)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"rates"];
    rates = v5->_rates;
    v5->_rates = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end