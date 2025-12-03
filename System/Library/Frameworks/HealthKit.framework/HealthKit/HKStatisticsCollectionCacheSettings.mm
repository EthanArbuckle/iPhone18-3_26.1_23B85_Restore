@interface HKStatisticsCollectionCacheSettings
- (HKStatisticsCollectionCacheSettings)initWithCoder:(id)coder;
- (HKStatisticsCollectionCacheSettings)initWithIdentifier:(id)identifier mode:(int64_t)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKStatisticsCollectionCacheSettings

- (HKStatisticsCollectionCacheSettings)initWithIdentifier:(id)identifier mode:(int64_t)mode
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [HKStatisticsCollectionCacheSettings initWithIdentifier:a2 mode:self];
  }

  v12.receiver = self;
  v12.super_class = HKStatisticsCollectionCacheSettings;
  v8 = [(HKStatisticsCollectionCacheSettings *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_mode = mode;
  }

  return v8;
}

- (HKStatisticsCollectionCacheSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKStatisticsCollectionCacheSettings;
  v5 = [(HKStatisticsCollectionCacheSettings *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
}

- (void)initWithIdentifier:(uint64_t)a1 mode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStatisticsCollectionQuery.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end