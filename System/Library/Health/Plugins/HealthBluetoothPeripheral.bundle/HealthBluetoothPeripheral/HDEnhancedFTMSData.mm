@interface HDEnhancedFTMSData
+ (id)_buildWithBinaryValue:(id)value error:(id *)error;
- (id)description;
- (id)generateDatums:(id)datums;
@end

@implementation HDEnhancedFTMSData

+ (id)_buildWithBinaryValue:(id)value error:(id *)error
{
  valueCopy = value;
  _init = [[self alloc] _init];
  bytes = [valueCopy bytes];
  v17 = bytes;
  v9 = [valueCopy length];
  v10 = [objc_opt_class() uint8FromData:&v17 before:&v9[bytes]];
  if (v10)
  {
    v11 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [objc_opt_class() uint32FromData:&v17 before:&v9[bytes]] * 0.000001);
    v12 = _init[2];
    _init[2] = v11;
  }

  if ((v10 & 2) != 0)
  {
    v13 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [objc_opt_class() uint32FromData:&v17 before:&v9[bytes]] * 0.000001);
    v14 = _init[3];
    _init[3] = v13;
  }

  if (v17)
  {
    v15 = _init;
  }

  else
  {
    +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", error, 303, @"Insufficient data (%lu bytes) for Eurotas Enhanced FTMS", [valueCopy length]);
    v15 = 0;
  }

  return v15;
}

- (id)generateDatums:(id)datums
{
  datumsCopy = datums;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (self->_instantaneousSpeed)
  {
    v6 = [HKUnit unitFromString:@"km/hr"];
    [(NSNumber *)self->_instantaneousSpeed doubleValue];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:?];

    v8 = [HDQuantityDatum alloc];
    v9 = +[NSUUID UUID];
    v10 = [v8 initWithIdentifier:v9 dateInterval:datumsCopy resumeContext:0 quantity:v7];

    [v5 setObject:v10 forKeyedSubscript:&off_5F718];
  }

  if (self->_averageSpeed)
  {
    v11 = [HKUnit unitFromString:@"km/hr"];
    [(NSNumber *)self->_averageSpeed doubleValue];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:?];

    v13 = [HDQuantityDatum alloc];
    v14 = +[NSUUID UUID];
    v15 = [v13 initWithIdentifier:v14 dateInterval:datumsCopy resumeContext:0 quantity:v12];

    [v5 setObject:v15 forKeyedSubscript:&off_5F730];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  instantaneousSpeed = self->_instantaneousSpeed;
  return [NSString stringWithFormat:@"<%@: instantaneousSpeed=%@, averageSpeed=%@>", v3, instantaneousSpeed, self->_averageSpeed];
}

@end