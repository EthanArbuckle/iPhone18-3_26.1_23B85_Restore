@interface CLKSimpleGaugeProvider
+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColor:(UIColor *)color fillFraction:(float)fillFraction;
+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations fillFraction:(float)fillFraction;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (CLKSimpleGaugeProvider)initWithCoder:(id)a3;
- (CLKSimpleGaugeProvider)initWithJSONObjectRepresentation:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)validate;
@end

@implementation CLKSimpleGaugeProvider

+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations fillFraction:(float)fillFraction
{
  v9 = gaugeColorLocations;
  v10 = gaugeColors;
  v11 = [(CLKGaugeProvider *)[CLKSimpleGaugeProvider alloc] _init];
  [v11 setStyle:style];
  [v11 setGaugeColors:v10];

  [v11 setGaugeColorLocations:v9];
  *&v12 = fillFraction;
  [v11 setFillFraction:v12];

  return v11;
}

+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColor:(UIColor *)color fillFraction:(float)fillFraction
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = color;
  v8 = MEMORY[0x277CBEA60];
  v9 = color;
  v10 = [v8 arrayWithObjects:&v14 count:1];

  *&v11 = fillFraction;
  v12 = [a1 gaugeProviderWithStyle:style gaugeColors:v10 gaugeColorLocations:0 fillFraction:{v11, v14, v15}];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLKSimpleGaugeProvider;
  v4 = a3;
  [(CLKGaugeProvider *)&v6 encodeWithCoder:v4];
  *&v5 = self->_fillFraction;
  [v4 encodeFloat:@"_FillFractionKey" forKey:{v5, v6.receiver, v6.super_class}];
}

- (CLKSimpleGaugeProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"_FillFractionKey"];
    v5->_fillFraction = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKSimpleGaugeProvider;
  if ([(CLKGaugeProvider *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    fillFraction = self->_fillFraction;
    [v4 fillFraction];
    v7 = fillFraction == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v8 hash];
  *&v4 = self->_fillFraction;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = (v3 + [v5 hash] * 10000.0);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CLKSimpleGaugeProvider;
  result = [(CLKGaugeProvider *)&v5 copyWithZone:a3];
  if (result != self)
  {
    *(result + 12) = LODWORD(self->_fillFraction);
  }

  return result;
}

- (CLKSimpleGaugeProvider)initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKSimpleGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v9 initWithJSONObjectRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"gaugeFillFraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      v5->_fillFraction = v7;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"gaugeColorLocations" format:{@"value for key '%@' must be a number - invalid value: %@", @"gaugeFillFraction", v6}];
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v8 JSONObjectRepresentation];
  v4 = [v3 mutableCopy];

  *&v5 = self->_fillFraction;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setObject:v6 forKeyedSubscript:@"gaugeFillFraction"];

  return v4;
}

- (BOOL)validate
{
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v8 validate];
  if (v3)
  {
    fillFraction = self->_fillFraction;
    if (fillFraction == -1.0 || (fillFraction >= 0.0 ? (v5 = fillFraction <= 1.0) : (v5 = 0), v5))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v6 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(CLKSimpleGaugeProvider *)self validate];
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)validate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = v3;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = objc_opt_class();
  v5 = v9;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Property 'fillFraction' on %@ must have a value between 0 and 1 when passing %@ to the complication data handler", &v6, 0x16u);
}

@end