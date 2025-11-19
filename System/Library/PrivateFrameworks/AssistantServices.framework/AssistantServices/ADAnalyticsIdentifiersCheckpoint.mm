@interface ADAnalyticsIdentifiersCheckpoint
+ (id)unarchive:(id)a3;
- (ADAnalyticsIdentifiersCheckpoint)initWithCoder:(id)a3;
- (ADAnalyticsIdentifiersCheckpoint)initWithCurrentUserSeed:(id)a3 currentUserSeedExpirationDate:(id)a4 nextUserSeed:(id)a5 nextUserSeedEffectiveFromDate:(id)a6 nextUserSeedExpirationDate:(id)a7;
- (BOOL)hasValidCurrentUserSeed:(id)a3;
- (BOOL)hasValidNextUserSeed:(id)a3;
- (id)archive;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAnalyticsIdentifiersCheckpoint

- (id)archive
{
  v7 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Checkpoint could not be archived; Error:%@", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  currentUserSeed = self->_currentUserSeed;
  v5 = a3;
  [v5 encodeObject:currentUserSeed forKey:@"_currentUserSeed"];
  [v5 encodeObject:self->_currentUserSeedExpirationDate forKey:@"_currentUserSeedExpirationDate"];
  [v5 encodeObject:self->_nextUserSeed forKey:@"_nextUserSeed"];
  [v5 encodeObject:self->_nextUserSeedEffectiveFromDate forKey:@"_nextUserSeedEffectiveFromDate"];
  [v5 encodeObject:self->_nextUserSeedExpirationDate forKey:@"_nextUserSeedExpirationDate"];
}

- (ADAnalyticsIdentifiersCheckpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ADAnalyticsIdentifiersCheckpoint;
  v5 = [(ADAnalyticsIdentifiersCheckpoint *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserSeed"];
    currentUserSeed = v5->_currentUserSeed;
    v5->_currentUserSeed = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserSeedExpirationDate"];
    currentUserSeedExpirationDate = v5->_currentUserSeedExpirationDate;
    v5->_currentUserSeedExpirationDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeed"];
    nextUserSeed = v5->_nextUserSeed;
    v5->_nextUserSeed = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeedEffectiveFromDate"];
    nextUserSeedEffectiveFromDate = v5->_nextUserSeedEffectiveFromDate;
    v5->_nextUserSeedEffectiveFromDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeedExpirationDate"];
    nextUserSeedExpirationDate = v5->_nextUserSeedExpirationDate;
    v5->_nextUserSeedExpirationDate = v14;
  }

  return v5;
}

- (BOOL)hasValidNextUserSeed:(id)a3
{
  v4 = a3;
  v5 = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeed];
  if (v5)
  {
    v6 = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeedEffectiveFromDate];
    if ([v6 compare:v4] == 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeedExpirationDate];
      v7 = [v8 compare:v4] == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasValidCurrentUserSeed:(id)a3
{
  v4 = a3;
  v5 = [(ADAnalyticsIdentifiersCheckpoint *)self currentUserSeed];
  if (v5)
  {
    v6 = [(ADAnalyticsIdentifiersCheckpoint *)self currentUserSeedExpirationDate];
    v7 = [v6 compare:v4] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ADAnalyticsIdentifiersCheckpoint)initWithCurrentUserSeed:(id)a3 currentUserSeedExpirationDate:(id)a4 nextUserSeed:(id)a5 nextUserSeedEffectiveFromDate:(id)a6 nextUserSeedExpirationDate:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ADAnalyticsIdentifiersCheckpoint;
  v17 = [(ADAnalyticsIdentifiersCheckpoint *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_currentUserSeed, a3);
    if (v18->_currentUserSeed)
    {
      objc_storeStrong(&v18->_currentUserSeedExpirationDate, a4);
    }

    objc_storeStrong(&v18->_nextUserSeed, a5);
    if (v18->_nextUserSeed)
    {
      objc_storeStrong(&v18->_nextUserSeedEffectiveFromDate, a6);
      objc_storeStrong(&v18->_nextUserSeedExpirationDate, a7);
    }
  }

  return v18;
}

+ (id)unarchive:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];

  v5 = v9;
  if (v5)
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Checkpoint object could not be decoded; Error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

@end