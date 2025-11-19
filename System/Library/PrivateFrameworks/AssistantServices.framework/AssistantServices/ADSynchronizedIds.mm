@interface ADSynchronizedIds
- (ADSynchronizedIds)initWithEphemeralSeeds:(id)a3 andAggregationIds:(id)a4;
- (BOOL)setCurrentEphemeralSeedIfNil:(id)a3 andCreationTime:(id)a4;
- (NSUUID)currentAggregationId;
- (NSUUID)currentEphemeralSeed;
- (NSUUID)nextAggregationId;
- (NSUUID)nextEphemeralSeed;
- (unint64_t)_populateNullAggregationIdsWithCreationTime:(id)a3 today:(id)a4;
- (unint64_t)_populateNullEphemeralSeedsWithCreationTime:(id)a3 today:(id)a4;
- (unint64_t)populateNullsWithCreationTime:(id)a3;
@end

@implementation ADSynchronizedIds

- (BOOL)setCurrentEphemeralSeedIfNil:(id)a3 andCreationTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  ephemeralSeeds = self->_ephemeralSeeds;
  if (!ephemeralSeeds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_ephemeralSeeds;
    self->_ephemeralSeeds = v9;

    ephemeralSeeds = self->_ephemeralSeeds;
  }

  v11 = [(ADSynchronizedIdItemPair *)ephemeralSeeds setCurrentIfNil:v6 andCreationTime:v7 andValidityDays:14];

  return v11;
}

- (unint64_t)_populateNullAggregationIdsWithCreationTime:(id)a3 today:(id)a4
{
  v6 = a3;
  v7 = a4;
  aggregationIds = self->_aggregationIds;
  if (!aggregationIds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_aggregationIds;
    self->_aggregationIds = v9;

    aggregationIds = self->_aggregationIds;
  }

  v11 = [(ADSynchronizedIdItemPair *)aggregationIds _populateNullsWithCreationTime:v6 today:v7 minValidityDays:30 maxValidityDays:548 currentOption:4 nextOption:8];

  return v11;
}

- (unint64_t)_populateNullEphemeralSeedsWithCreationTime:(id)a3 today:(id)a4
{
  v6 = a3;
  v7 = a4;
  ephemeralSeeds = self->_ephemeralSeeds;
  if (!ephemeralSeeds)
  {
    v9 = objc_alloc_init(ADSynchronizedIdItemPair);
    v10 = self->_ephemeralSeeds;
    self->_ephemeralSeeds = v9;

    ephemeralSeeds = self->_ephemeralSeeds;
  }

  v11 = [(ADSynchronizedIdItemPair *)ephemeralSeeds _populateNullsWithCreationTime:v6 today:v7 minValidityDays:14 maxValidityDays:14 currentOption:1 nextOption:2];

  return v11;
}

- (unint64_t)populateNullsWithCreationTime:(id)a3
{
  v4 = a3;
  v5 = [ADSynchronizedIdItem alignToMidnight:v4];
  v6 = [(ADSynchronizedIds *)self _populateNullEphemeralSeedsWithCreationTime:v4 today:v5];
  v7 = [(ADSynchronizedIds *)self _populateNullAggregationIdsWithCreationTime:v4 today:v5];

  return v7 | v6;
}

- (NSUUID)nextAggregationId
{
  aggregationIds = self->_aggregationIds;
  if (aggregationIds && ([(ADSynchronizedIdItemPair *)aggregationIds next], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)currentAggregationId
{
  aggregationIds = self->_aggregationIds;
  if (aggregationIds && ([(ADSynchronizedIdItemPair *)aggregationIds current], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)nextEphemeralSeed
{
  ephemeralSeeds = self->_ephemeralSeeds;
  if (ephemeralSeeds && ([(ADSynchronizedIdItemPair *)ephemeralSeeds next], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)currentEphemeralSeed
{
  ephemeralSeeds = self->_ephemeralSeeds;
  if (ephemeralSeeds && ([(ADSynchronizedIdItemPair *)ephemeralSeeds current], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ADSynchronizedIds)initWithEphemeralSeeds:(id)a3 andAggregationIds:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ADSynchronizedIds;
  v9 = [(ADSynchronizedIds *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ephemeralSeeds, a3);
    objc_storeStrong(&v10->_aggregationIds, a4);
  }

  return v10;
}

@end