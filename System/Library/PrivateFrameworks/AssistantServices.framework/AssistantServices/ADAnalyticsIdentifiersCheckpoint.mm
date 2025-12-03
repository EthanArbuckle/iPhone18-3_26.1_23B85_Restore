@interface ADAnalyticsIdentifiersCheckpoint
+ (id)unarchive:(id)unarchive;
- (ADAnalyticsIdentifiersCheckpoint)initWithCoder:(id)coder;
- (ADAnalyticsIdentifiersCheckpoint)initWithCurrentUserSeed:(id)seed currentUserSeedExpirationDate:(id)date nextUserSeed:(id)userSeed nextUserSeedEffectiveFromDate:(id)fromDate nextUserSeedExpirationDate:(id)expirationDate;
- (BOOL)hasValidCurrentUserSeed:(id)seed;
- (BOOL)hasValidNextUserSeed:(id)seed;
- (id)archive;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  currentUserSeed = self->_currentUserSeed;
  coderCopy = coder;
  [coderCopy encodeObject:currentUserSeed forKey:@"_currentUserSeed"];
  [coderCopy encodeObject:self->_currentUserSeedExpirationDate forKey:@"_currentUserSeedExpirationDate"];
  [coderCopy encodeObject:self->_nextUserSeed forKey:@"_nextUserSeed"];
  [coderCopy encodeObject:self->_nextUserSeedEffectiveFromDate forKey:@"_nextUserSeedEffectiveFromDate"];
  [coderCopy encodeObject:self->_nextUserSeedExpirationDate forKey:@"_nextUserSeedExpirationDate"];
}

- (ADAnalyticsIdentifiersCheckpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ADAnalyticsIdentifiersCheckpoint;
  v5 = [(ADAnalyticsIdentifiersCheckpoint *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserSeed"];
    currentUserSeed = v5->_currentUserSeed;
    v5->_currentUserSeed = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentUserSeedExpirationDate"];
    currentUserSeedExpirationDate = v5->_currentUserSeedExpirationDate;
    v5->_currentUserSeedExpirationDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeed"];
    nextUserSeed = v5->_nextUserSeed;
    v5->_nextUserSeed = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeedEffectiveFromDate"];
    nextUserSeedEffectiveFromDate = v5->_nextUserSeedEffectiveFromDate;
    v5->_nextUserSeedEffectiveFromDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nextUserSeedExpirationDate"];
    nextUserSeedExpirationDate = v5->_nextUserSeedExpirationDate;
    v5->_nextUserSeedExpirationDate = v14;
  }

  return v5;
}

- (BOOL)hasValidNextUserSeed:(id)seed
{
  seedCopy = seed;
  nextUserSeed = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeed];
  if (nextUserSeed)
  {
    nextUserSeedEffectiveFromDate = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeedEffectiveFromDate];
    if ([nextUserSeedEffectiveFromDate compare:seedCopy] == 1)
    {
      v7 = 0;
    }

    else
    {
      nextUserSeedExpirationDate = [(ADAnalyticsIdentifiersCheckpoint *)self nextUserSeedExpirationDate];
      v7 = [nextUserSeedExpirationDate compare:seedCopy] == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasValidCurrentUserSeed:(id)seed
{
  seedCopy = seed;
  currentUserSeed = [(ADAnalyticsIdentifiersCheckpoint *)self currentUserSeed];
  if (currentUserSeed)
  {
    currentUserSeedExpirationDate = [(ADAnalyticsIdentifiersCheckpoint *)self currentUserSeedExpirationDate];
    v7 = [currentUserSeedExpirationDate compare:seedCopy] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ADAnalyticsIdentifiersCheckpoint)initWithCurrentUserSeed:(id)seed currentUserSeedExpirationDate:(id)date nextUserSeed:(id)userSeed nextUserSeedEffectiveFromDate:(id)fromDate nextUserSeedExpirationDate:(id)expirationDate
{
  seedCopy = seed;
  dateCopy = date;
  userSeedCopy = userSeed;
  fromDateCopy = fromDate;
  expirationDateCopy = expirationDate;
  v21.receiver = self;
  v21.super_class = ADAnalyticsIdentifiersCheckpoint;
  v17 = [(ADAnalyticsIdentifiersCheckpoint *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_currentUserSeed, seed);
    if (v18->_currentUserSeed)
    {
      objc_storeStrong(&v18->_currentUserSeedExpirationDate, date);
    }

    objc_storeStrong(&v18->_nextUserSeed, userSeed);
    if (v18->_nextUserSeed)
    {
      objc_storeStrong(&v18->_nextUserSeedEffectiveFromDate, fromDate);
      objc_storeStrong(&v18->_nextUserSeedExpirationDate, expirationDate);
    }
  }

  return v18;
}

+ (id)unarchive:(id)unarchive
{
  unarchiveCopy = unarchive;
  v9 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:unarchiveCopy error:&v9];

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