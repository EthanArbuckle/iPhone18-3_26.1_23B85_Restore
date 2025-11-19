@interface HKDataCollectorCollectionConfiguration
+ (HKDataCollectorCollectionConfiguration)new;
- (BOOL)isEqual:(id)a3;
- (HKDataCollectorCollectionConfiguration)init;
- (HKDataCollectorCollectionConfiguration)initWithCoder:(id)a3;
- (HKDataCollectorCollectionConfiguration)initWithCollectionInterval:(double)a3 collectionLatency:(double)a4 collectionType:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDataCollectorCollectionConfiguration

- (HKDataCollectorCollectionConfiguration)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKDataCollectorCollectionConfiguration)new
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HKDataCollectorCollectionConfiguration)initWithCollectionInterval:(double)a3 collectionLatency:(double)a4 collectionType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = HKDataCollectorCollectionConfiguration;
  result = [(HKDataCollectorCollectionConfiguration *)&v9 init];
  if (result)
  {
    result->_collectionInterval = a3;
    result->_collectionLatency = a4;
    result->_collectionType = a5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(HKDataCollectorCollectionConfiguration *)self collectionInterval];
  v6 = v5;
  [(HKDataCollectorCollectionConfiguration *)self collectionLatency];
  v8 = v7;
  v9 = HKDataCollectionTypeToString([(HKDataCollectorCollectionConfiguration *)self collectionType]);
  v10 = [v3 stringWithFormat:@"<%@: interval:%f latency:%f type:%@>", v4, v6, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_collectionType == *(v4 + 3) && self->_collectionInterval == v4[1] && self->_collectionLatency == v4[2];

  return v5;
}

- (HKDataCollectorCollectionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKDataCollectorCollectionConfiguration;
  v5 = [(HKDataCollectorCollectionConfiguration *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"collection_interval"];
    v5->_collectionInterval = v6;
    [v4 decodeDoubleForKey:@"collection_latency"];
    v5->_collectionLatency = v7;
    [v4 decodeDoubleForKey:@"collection_type"];
    v5->_collectionType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  collectionInterval = self->_collectionInterval;
  v5 = a3;
  [v5 encodeDouble:@"collection_interval" forKey:collectionInterval];
  [v5 encodeDouble:@"collection_latency" forKey:self->_collectionLatency];
  [v5 encodeDouble:@"collection_type" forKey:self->_collectionType];
}

@end