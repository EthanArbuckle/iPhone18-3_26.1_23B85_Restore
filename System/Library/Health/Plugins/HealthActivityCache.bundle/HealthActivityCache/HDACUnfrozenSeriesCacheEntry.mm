@interface HDACUnfrozenSeriesCacheEntry
- (HDACUnfrozenSeriesCacheEntry)initWithSeriesId:(int64_t)a3 timestamp:(double)a4 dataTypeCode:(int64_t)a5 workoutSourceIdentifier:(int64_t)a6 sourceIdentifier:(int64_t)a7 isWatchSource:(BOOL)a8 isConnectedGymSource:(BOOL)a9 typeIsValidForAllDayFromCompanion:(BOOL)a10;
- (id)predicateForSeries;
- (void)setTimestamp:(double)a3;
@end

@implementation HDACUnfrozenSeriesCacheEntry

- (HDACUnfrozenSeriesCacheEntry)initWithSeriesId:(int64_t)a3 timestamp:(double)a4 dataTypeCode:(int64_t)a5 workoutSourceIdentifier:(int64_t)a6 sourceIdentifier:(int64_t)a7 isWatchSource:(BOOL)a8 isConnectedGymSource:(BOOL)a9 typeIsValidForAllDayFromCompanion:(BOOL)a10
{
  v18.receiver = self;
  v18.super_class = HDACUnfrozenSeriesCacheEntry;
  result = [(HDACUnfrozenSeriesCacheEntry *)&v18 init];
  if (result)
  {
    result->_series_identifier = a3;
    result->_timestamp = a4;
    result->_dataTypeCode = a5;
    result->_workoutSourceIdentifier = a6;
    result->_sourceIdentifier = a7;
    result->_isWatchSource = a8;
    result->_isConnectedGymSource = a9;
    result->_typeIsValidForAllDayFromCompanion = a10;
    *&result->_hasTimestampBeenSet = 0;
  }

  return result;
}

- (void)setTimestamp:(double)a3
{
  if (self->_timestamp < a3)
  {
    self->_timestamp = a3;
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