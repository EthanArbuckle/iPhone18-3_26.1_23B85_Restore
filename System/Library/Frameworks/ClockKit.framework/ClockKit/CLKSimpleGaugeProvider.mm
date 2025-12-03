@interface CLKSimpleGaugeProvider
+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColor:(UIColor *)color fillFraction:(float)fillFraction;
+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations fillFraction:(float)fillFraction;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (CLKSimpleGaugeProvider)initWithCoder:(id)coder;
- (CLKSimpleGaugeProvider)initWithJSONObjectRepresentation:(id)representation;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)validate;
@end

@implementation CLKSimpleGaugeProvider

+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations fillFraction:(float)fillFraction
{
  v9 = gaugeColorLocations;
  v10 = gaugeColors;
  _init = [(CLKGaugeProvider *)[CLKSimpleGaugeProvider alloc] _init];
  [_init setStyle:style];
  [_init setGaugeColors:v10];

  [_init setGaugeColorLocations:v9];
  *&v12 = fillFraction;
  [_init setFillFraction:v12];

  return _init;
}

+ (CLKSimpleGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColor:(UIColor *)color fillFraction:(float)fillFraction
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = color;
  v8 = MEMORY[0x277CBEA60];
  v9 = color;
  v10 = [v8 arrayWithObjects:&v14 count:1];

  *&v11 = fillFraction;
  v12 = [self gaugeProviderWithStyle:style gaugeColors:v10 gaugeColorLocations:0 fillFraction:{v11, v14, v15}];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLKSimpleGaugeProvider;
  coderCopy = coder;
  [(CLKGaugeProvider *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_fillFraction;
  [coderCopy encodeFloat:@"_FillFractionKey" forKey:{v5, v6.receiver, v6.super_class}];
}

- (CLKSimpleGaugeProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"_FillFractionKey"];
    v5->_fillFraction = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = CLKSimpleGaugeProvider;
  if ([(CLKGaugeProvider *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    fillFraction = self->_fillFraction;
    [equalCopy fillFraction];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CLKSimpleGaugeProvider;
  result = [(CLKGaugeProvider *)&v5 copyWithZone:zone];
  if (result != self)
  {
    *(result + 12) = LODWORD(self->_fillFraction);
  }

  return result;
}

- (CLKSimpleGaugeProvider)initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = CLKSimpleGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v9 initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"gaugeFillFraction"];
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
  jSONObjectRepresentation = [(CLKGaugeProvider *)&v8 JSONObjectRepresentation];
  v4 = [jSONObjectRepresentation mutableCopy];

  *&v5 = self->_fillFraction;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setObject:v6 forKeyedSubscript:@"gaugeFillFraction"];

  return v4;
}

- (BOOL)validate
{
  v8.receiver = self;
  v8.super_class = CLKSimpleGaugeProvider;
  validate = [(CLKGaugeProvider *)&v8 validate];
  if (validate)
  {
    fillFraction = self->_fillFraction;
    if (fillFraction == -1.0 || (fillFraction >= 0.0 ? (v5 = fillFraction <= 1.0) : (v5 = 0), v5))
    {
      LOBYTE(validate) = 1;
    }

    else
    {
      v6 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(CLKSimpleGaugeProvider *)self validate];
      }

      LOBYTE(validate) = 0;
    }
  }

  return validate;
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