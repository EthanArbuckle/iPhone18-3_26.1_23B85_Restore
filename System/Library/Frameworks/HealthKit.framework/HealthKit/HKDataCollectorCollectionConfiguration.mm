@interface HKDataCollectorCollectionConfiguration
+ (HKDataCollectorCollectionConfiguration)new;
- (BOOL)isEqual:(id)equal;
- (HKDataCollectorCollectionConfiguration)init;
- (HKDataCollectorCollectionConfiguration)initWithCoder:(id)coder;
- (HKDataCollectorCollectionConfiguration)initWithCollectionInterval:(double)interval collectionLatency:(double)latency collectionType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKDataCollectorCollectionConfiguration)initWithCollectionInterval:(double)interval collectionLatency:(double)latency collectionType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = HKDataCollectorCollectionConfiguration;
  result = [(HKDataCollectorCollectionConfiguration *)&v9 init];
  if (result)
  {
    result->_collectionInterval = interval;
    result->_collectionLatency = latency;
    result->_collectionType = type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_collectionType == *(equalCopy + 3) && self->_collectionInterval == equalCopy[1] && self->_collectionLatency == equalCopy[2];

  return v5;
}

- (HKDataCollectorCollectionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKDataCollectorCollectionConfiguration;
  v5 = [(HKDataCollectorCollectionConfiguration *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"collection_interval"];
    v5->_collectionInterval = v6;
    [coderCopy decodeDoubleForKey:@"collection_latency"];
    v5->_collectionLatency = v7;
    [coderCopy decodeDoubleForKey:@"collection_type"];
    v5->_collectionType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  collectionInterval = self->_collectionInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"collection_interval" forKey:collectionInterval];
  [coderCopy encodeDouble:@"collection_latency" forKey:self->_collectionLatency];
  [coderCopy encodeDouble:@"collection_type" forKey:self->_collectionType];
}

@end