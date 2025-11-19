@interface HKStatisticsCollectionCacheSettings
- (HKStatisticsCollectionCacheSettings)initWithCoder:(id)a3;
- (HKStatisticsCollectionCacheSettings)initWithIdentifier:(id)a3 mode:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKStatisticsCollectionCacheSettings

- (HKStatisticsCollectionCacheSettings)initWithIdentifier:(id)a3 mode:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKStatisticsCollectionCacheSettings initWithIdentifier:a2 mode:self];
  }

  v12.receiver = self;
  v12.super_class = HKStatisticsCollectionCacheSettings;
  v8 = [(HKStatisticsCollectionCacheSettings *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_mode = a4;
  }

  return v8;
}

- (HKStatisticsCollectionCacheSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKStatisticsCollectionCacheSettings;
  v5 = [(HKStatisticsCollectionCacheSettings *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_mode = [v4 decodeIntegerForKey:@"mode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
}

- (void)initWithIdentifier:(uint64_t)a1 mode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStatisticsCollectionQuery.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end