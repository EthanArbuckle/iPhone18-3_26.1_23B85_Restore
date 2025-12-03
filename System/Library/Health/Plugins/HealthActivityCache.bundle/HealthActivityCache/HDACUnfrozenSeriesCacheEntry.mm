@interface HDACUnfrozenSeriesCacheEntry
- (HDACUnfrozenSeriesCacheEntry)initWithSeriesId:(int64_t)id timestamp:(double)timestamp dataTypeCode:(int64_t)code workoutSourceIdentifier:(int64_t)identifier sourceIdentifier:(int64_t)sourceIdentifier isWatchSource:(BOOL)source isConnectedGymSource:(BOOL)gymSource typeIsValidForAllDayFromCompanion:(BOOL)self0;
- (id)predicateForSeries;
- (void)setTimestamp:(double)timestamp;
@end

@implementation HDACUnfrozenSeriesCacheEntry

- (HDACUnfrozenSeriesCacheEntry)initWithSeriesId:(int64_t)id timestamp:(double)timestamp dataTypeCode:(int64_t)code workoutSourceIdentifier:(int64_t)identifier sourceIdentifier:(int64_t)sourceIdentifier isWatchSource:(BOOL)source isConnectedGymSource:(BOOL)gymSource typeIsValidForAllDayFromCompanion:(BOOL)self0
{
  v18.receiver = self;
  v18.super_class = HDACUnfrozenSeriesCacheEntry;
  result = [(HDACUnfrozenSeriesCacheEntry *)&v18 init];
  if (result)
  {
    result->_series_identifier = id;
    result->_timestamp = timestamp;
    result->_dataTypeCode = code;
    result->_workoutSourceIdentifier = identifier;
    result->_sourceIdentifier = sourceIdentifier;
    result->_isWatchSource = source;
    result->_isConnectedGymSource = gymSource;
    result->_typeIsValidForAllDayFromCompanion = companion;
    *&result->_hasTimestampBeenSet = 0;
  }

  return result;
}

- (void)setTimestamp:(double)timestamp
{
  if (self->_timestamp < timestamp)
  {
    self->_timestamp = timestamp;
  }

  self->_hasTimestampBeenSet = 1;
}

- (id)predicateForSeries
{
  v3 = [NSNumber numberWithLongLong:self->_series_identifier];
  v4 = [HDSQLiteComparisonPredicate predicateWithProperty:@"series_identifier" equalToValue:v3];

  hasTimestampBeenSet = self->_hasTimestampBeenSet;
  v6 = [NSNumber numberWithDouble:self->_timestamp];
  if (hasTimestampBeenSet)
  {
    [HDSQLiteComparisonPredicate predicateWithProperty:@"timestamp" greaterThanValue:v6];
  }

  else
  {
    [HDSQLiteComparisonPredicate predicateWithProperty:@"timestamp" greaterThanOrEqualToValue:v6];
  }
  v7 = ;

  v8 = [HDSQLitePredicate compoundPredicateWithPredicate:v4 otherPredicate:v7];

  return v8;
}

@end