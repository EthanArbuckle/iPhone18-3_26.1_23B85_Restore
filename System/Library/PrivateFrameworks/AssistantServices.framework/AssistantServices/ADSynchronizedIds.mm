@interface ADSynchronizedIds
- (ADSynchronizedIds)initWithEphemeralSeeds:(id)seeds andAggregationIds:(id)ids;
- (BOOL)setCurrentEphemeralSeedIfNil:(id)nil andCreationTime:(id)time;
- (NSUUID)currentAggregationId;
- (NSUUID)currentEphemeralSeed;
- (NSUUID)nextAggregationId;
- (NSUUID)nextEphemeralSeed;
- (unint64_t)_populateNullAggregationIdsWithCreationTime:(id)time today:(id)today;
- (unint64_t)_populateNullEphemeralSeedsWithCreationTime:(id)time today:(id)today;
- (unint64_t)populateNullsWithCreationTime:(id)time;
@end

@implementation ADSynchronizedIds

- (BOOL)setCurrentEphemeralSeedIfNil:(id)nil andCreationTime:(id)time
{
  nilCopy = nil;
  timeCopy = time;
  ephemeralSeeds = self->_ephemeralSeeds;
  if (!ephemeralSeeds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_ephemeralSeeds;
    self->_ephemeralSeeds = v9;

    ephemeralSeeds = self->_ephemeralSeeds;
  }

  v11 = [(ADSynchronizedIdItemPair *)ephemeralSeeds setCurrentIfNil:nilCopy andCreationTime:timeCopy andValidityDays:14];

  return v11;
}

- (unint64_t)_populateNullAggregationIdsWithCreationTime:(id)time today:(id)today
{
  timeCopy = time;
  todayCopy = today;
  aggregationIds = self->_aggregationIds;
  if (!aggregationIds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_aggregationIds;
    self->_aggregationIds = v9;

    aggregationIds = self->_aggregationIds;
  }

  v11 = [(ADSynchronizedIdItemPair *)aggregationIds _populateNullsWithCreationTime:timeCopy today:todayCopy minValidityDays:30 maxValidityDays:548 currentOption:4 nextOption:8];

  return v11;
}

- (unint64_t)_populateNullEphemeralSeedsWithCreationTime:(id)time today:(id)today
{
  timeCopy = time;
  todayCopy = today;
  ephemeralSeeds = self->_ephemeralSeeds;
  if (!ephemeralSeeds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_ephemeralSeeds;
    self->_ephemeralSeeds = v9;

    ephemeralSeeds = self->_ephemeralSeeds;
  }

  v11 = [(ADSynchronizedIdItemPair *)ephemeralSeeds _populateNullsWithCreationTime:timeCopy today:todayCopy minValidityDays:14 maxValidityDays:14 currentOption:1 nextOption:2];

  return v11;
}

- (unint64_t)populateNullsWithCreationTime:(id)time
{
  timeCopy = time;
  v5 = [ADSynchronizedIdItem alignToMidnight:timeCopy];
  v6 = [(ADSynchronizedIds *)self _populateNullEphemeralSeedsWithCreationTime:timeCopy today:v5];
  v7 = [(ADSynchronizedIds *)self _populateNullAggregationIdsWithCreationTime:timeCopy today:v5];

  return v7 | v6;
}

- (NSUUID)nextAggregationId
{
  aggregationIds = self->_aggregationIds;
  if (aggregationIds && ([(ADSynchronizedIdItemPair *)aggregationIds next], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    value = [v3 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSUUID)currentAggregationId
{
  aggregationIds = self->_aggregationIds;
  if (aggregationIds && ([(ADSynchronizedIdItemPair *)aggregationIds current], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    value = [v3 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSUUID)nextEphemeralSeed
{
  ephemeralSeeds = self->_ephemeralSeeds;
  if (ephemeralSeeds && ([(ADSynchronizedIdItemPair *)ephemeralSeeds next], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    value = [v3 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (NSUUID)currentEphemeralSeed
{
  ephemeralSeeds = self->_ephemeralSeeds;
  if (ephemeralSeeds && ([(ADSynchronizedIdItemPair *)ephemeralSeeds current], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    value = [v3 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (ADSynchronizedIds)initWithEphemeralSeeds:(id)seeds andAggregationIds:(id)ids
{
  seedsCopy = seeds;
  idsCopy = ids;
  v12.receiver = self;
  v12.super_class = ADSynchronizedIds;
  v9 = [(ADSynchronizedIds *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ephemeralSeeds, seeds);
    objc_storeStrong(&v10->_aggregationIds, ids);
  }

  return v10;
}

@end