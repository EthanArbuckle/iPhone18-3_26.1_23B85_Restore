@interface HDEnhancedFTMSData
+ (id)_buildWithBinaryValue:(id)a3 error:(id *)a4;
- (id)description;
- (id)generateDatums:(id)a3;
@end

@implementation HDEnhancedFTMSData

+ (id)_buildWithBinaryValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _init];
  v8 = [v6 bytes];
  v17 = v8;
  v9 = [v6 length];
  v10 = [objc_opt_class() uint8FromData:&v17 before:&v9[v8]];
  if (v10)
  {
    v11 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [objc_opt_class() uint32FromData:&v17 before:&v9[v8]] * 0.000001);
    v12 = v7[2];
    v7[2] = v11;
  }

  if ((v10 & 2) != 0)
  {
    v13 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [objc_opt_class() uint32FromData:&v17 before:&v9[v8]] * 0.000001);
    v14 = v7[3];
    v7[3] = v13;
  }

  if (v17)
  {
    v15 = v7;
  }

  else
  {
    +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", a4, 303, @"Insufficient data (%lu bytes) for Eurotas Enhanced FTMS", [v6 length]);
    v15 = 0;
  }

  return v15;
}

- (id)generateDatums:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (self->_instantaneousSpeed)
  {
    v6 = [HKUnit unitFromString:@"km/hr"];
    [(NSNumber *)self->_instantaneousSpeed doubleValue];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:?];

    v8 = [HDQuantityDatum alloc];
    v9 = +[NSUUID UUID];
    v10 = [v8 initWithIdentifier:v9 dateInterval:v4 resumeContext:0 quantity:v7];

    [v5 setObject:v10 forKeyedSubscript:&off_5F718];
  }

  if (self->_averageSpeed)
  {
    v11 = [HKUnit unitFromString:@"km/hr"];
    [(NSNumber *)self->_averageSpeed doubleValue];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:?];

    v13 = [HDQuantityDatum alloc];
    v14 = +[NSUUID UUID];
    v15 = [v13 initWithIdentifier:v14 dateInterval:v4 resumeContext:0 quantity:v12];

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