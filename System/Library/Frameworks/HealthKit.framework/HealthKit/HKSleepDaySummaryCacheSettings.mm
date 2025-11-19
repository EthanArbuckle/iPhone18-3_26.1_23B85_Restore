@interface HKSleepDaySummaryCacheSettings
- (HKSleepDaySummaryCacheSettings)initWithCoder:(id)a3;
- (HKSleepDaySummaryCacheSettings)initWithIdentifier:(id)a3 mode:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepDaySummaryCacheSettings

- (HKSleepDaySummaryCacheSettings)initWithIdentifier:(id)a3 mode:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [HKSleepDaySummaryCacheSettings initWithIdentifier:a2 mode:self];
  }

  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryCacheSettings;
  v8 = [(HKSleepDaySummaryCacheSettings *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_mode = a4;
  }

  return v8;
}

- (HKSleepDaySummaryCacheSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeIntegerForKey:@"mode"];

  v7 = [(HKSleepDaySummaryCacheSettings *)self initWithIdentifier:v5 mode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = HKSleepDaySummaryCacheSettings;
  v4 = [(HKSleepDaySummaryCacheSettings *)&v11 description];
  v5 = v4;
  mode = self->_mode;
  v7 = @"-";
  if (mode == 1)
  {
    v7 = @"user interactive";
  }

  if (mode)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"default";
  }

  v9 = [v3 initWithFormat:@"<%@ Cache Settings - identifier: %@, mode: %@>", v4, self->_identifier, v8];

  return v9;
}

- (void)initWithIdentifier:(uint64_t)a1 mode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepDaySummaryQuery.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end