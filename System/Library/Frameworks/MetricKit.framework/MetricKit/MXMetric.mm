@interface MXMetric
- (MXMetric)init;
- (MXMetric)initWithCoder:(id)coder;
- (NSData)JSONRepresentation;
@end

@implementation MXMetric

- (MXMetric)init
{
  v8.receiver = self;
  v8.super_class = MXMetric;
  v2 = [(MXMetric *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v2->_measurementFormatter;
    v2->_measurementFormatter = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v2->_measurementFormatter setLocale:v5];

    [(NSMeasurementFormatter *)v2->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v2->_measurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v2->_measurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v2;
}

- (MXMetric)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MXMetric;
  v3 = [(MXMetric *)&v9 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v3->_measurementFormatter;
    v3->_measurementFormatter = v4;

    v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v3->_measurementFormatter setLocale:v6];

    [(NSMeasurementFormatter *)v3->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v3->_measurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v3->_measurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v3;
}

- (NSData)JSONRepresentation
{
  toDictionary = [(MXMetric *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end