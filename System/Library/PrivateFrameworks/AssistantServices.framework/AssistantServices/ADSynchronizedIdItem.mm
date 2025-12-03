@interface ADSynchronizedIdItem
+ (id)alignToMidnight:(id)midnight;
+ (id)calendar;
- (ADSynchronizedIdItem)initWithBMHomeSeed:(id)seed;
- (ADSynchronizedIdItem)initWithBMUserAggregationId:(id)id;
- (ADSynchronizedIdItem)initWithBMUserSeed:(id)seed;
- (ADSynchronizedIdItem)initWithValue:(id)value andEffectiveFrom:(id)from andValidityDays:(unsigned int)days andCreatedOn:(id)on andAdoptedOn:(id)adoptedOn andSwitchedCount:(unsigned int)count;
- (NSDate)expirationDate;
- (id)initAndAdopt:(id)adopt andSwitchedCount:(unsigned int)count;
- (id)selectEarliest:(id)earliest;
- (id)toBMSiriHomeSeedWithHomeIdentifier:(id)identifier;
- (id)toBMSiriUserAggregationId;
- (id)toBMSiriUserSeed;
- (int64_t)_expirationDaysFrom:(id)from withCalendar:(id)calendar;
- (int64_t)expirationDaysFrom:(id)from;
- (int64_t)timelinePosition;
- (int64_t)timelinePositionWithTime:(id)time;
- (int64_t)timelinePositionWithToday:(id)today withCalendar:(id)calendar;
@end

@implementation ADSynchronizedIdItem

- (id)toBMSiriHomeSeedWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [BMSiriHomeSeed alloc];
  value = self->_value;
  effectiveFrom = self->_effectiveFrom;
  v8 = [NSNumber numberWithInt:self->_validityDays];
  createdOn = self->_createdOn;
  adoptedOn = self->_adoptedOn;
  v11 = [NSNumber numberWithInt:self->_switchedCount];
  v12 = [v5 initWithHomeIdentifier:identifierCopy seed:value effectiveFrom:effectiveFrom validityDays:v8 createdOn:createdOn adoptedOn:adoptedOn switchedCount:v11];

  return v12;
}

- (id)toBMSiriUserAggregationId
{
  v3 = [BMSiriUserAggregationId alloc];
  value = self->_value;
  effectiveFrom = self->_effectiveFrom;
  v6 = [NSNumber numberWithInt:self->_validityDays];
  createdOn = self->_createdOn;
  adoptedOn = self->_adoptedOn;
  v9 = [NSNumber numberWithInt:self->_switchedCount];
  v10 = [v3 initWithAggregationId:value effectiveFrom:effectiveFrom validityDays:v6 createdOn:createdOn adoptedOn:adoptedOn switchedCount:v9];

  return v10;
}

- (id)toBMSiriUserSeed
{
  v3 = [BMSiriUserSeed alloc];
  value = self->_value;
  effectiveFrom = self->_effectiveFrom;
  v6 = [NSNumber numberWithInt:self->_validityDays];
  createdOn = self->_createdOn;
  adoptedOn = self->_adoptedOn;
  v9 = [NSNumber numberWithInt:self->_switchedCount];
  v10 = [v3 initWithSeed:value effectiveFrom:effectiveFrom validityDays:v6 createdOn:createdOn adoptedOn:adoptedOn switchedCount:v9];

  return v10;
}

- (int64_t)timelinePositionWithToday:(id)today withCalendar:(id)calendar
{
  todayCopy = today;
  calendarCopy = calendar;
  if ([(NSDate *)self->_effectiveFrom compare:todayCopy]== 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = [(ADSynchronizedIdItem *)self _expirationDaysFrom:todayCopy withCalendar:calendarCopy]> 0;
  }

  return v8;
}

- (int64_t)timelinePositionWithTime:(id)time
{
  v4 = [ADSynchronizedIdItem alignToMidnight:time];
  v5 = +[ADSynchronizedIdItem calendar];
  v6 = [(ADSynchronizedIdItem *)self timelinePositionWithToday:v4 withCalendar:v5];

  return v6;
}

- (int64_t)timelinePosition
{
  v3 = +[NSDate now];
  v4 = [(ADSynchronizedIdItem *)self timelinePositionWithTime:v3];

  return v4;
}

- (id)selectEarliest:(id)earliest
{
  earliestCopy = earliest;
  createdOn = self->_createdOn;
  createdOn = [(ADSynchronizedIdItem *)earliestCopy createdOn];
  v7 = [(NSDate *)createdOn compare:createdOn];

  if (v7 == -1)
  {
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = earliestCopy;
    if (v7 != 1)
    {
      value = self->_value;
      value = [(ADSynchronizedIdItem *)earliestCopy value];
      v11 = [(NSUUID *)value compare:value];

      if ((v11 + 1) >= 2)
      {
        selfCopy2 = earliestCopy;
      }

      else
      {
        selfCopy2 = self;
      }
    }
  }

  v12 = selfCopy2;

  return v12;
}

- (int64_t)_expirationDaysFrom:(id)from withCalendar:(id)calendar
{
  validityDays = self->_validityDays;
  v5 = [calendar components:16 fromDate:self->_effectiveFrom toDate:from options:0];
  v6 = validityDays - [v5 day];

  return v6;
}

- (int64_t)expirationDaysFrom:(id)from
{
  fromCopy = from;
  v5 = +[ADSynchronizedIdItem calendar];
  v6 = [(ADSynchronizedIdItem *)self _expirationDaysFrom:fromCopy withCalendar:v5];

  return v6;
}

- (NSDate)expirationDate
{
  v3 = +[ADSynchronizedIdItem calendar];
  v4 = [v3 dateByAddingUnit:16 value:self->_validityDays toDate:self->_effectiveFrom options:0];

  return v4;
}

- (id)initAndAdopt:(id)adopt andSwitchedCount:(unsigned int)count
{
  adoptCopy = adopt;
  v17.receiver = self;
  v17.super_class = ADSynchronizedIdItem;
  v7 = [(ADSynchronizedIdItem *)&v17 init];
  if (v7)
  {
    value = [adoptCopy value];
    value = v7->_value;
    v7->_value = value;

    effectiveFrom = [adoptCopy effectiveFrom];
    effectiveFrom = v7->_effectiveFrom;
    v7->_effectiveFrom = effectiveFrom;

    v7->_validityDays = [adoptCopy validityDays];
    createdOn = [adoptCopy createdOn];
    createdOn = v7->_createdOn;
    v7->_createdOn = createdOn;

    v14 = +[NSDate now];
    adoptedOn = v7->_adoptedOn;
    v7->_adoptedOn = v14;

    v7->_switchedCount = count;
  }

  return v7;
}

- (ADSynchronizedIdItem)initWithValue:(id)value andEffectiveFrom:(id)from andValidityDays:(unsigned int)days andCreatedOn:(id)on andAdoptedOn:(id)adoptedOn andSwitchedCount:(unsigned int)count
{
  valueCopy = value;
  fromCopy = from;
  onCopy = on;
  adoptedOnCopy = adoptedOn;
  v22.receiver = self;
  v22.super_class = ADSynchronizedIdItem;
  v18 = [(ADSynchronizedIdItem *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_effectiveFrom, from);
    v19->_validityDays = days;
    objc_storeStrong(&v19->_createdOn, on);
    objc_storeStrong(&v19->_adoptedOn, adoptedOn);
    v19->_switchedCount = count;
  }

  return v19;
}

- (ADSynchronizedIdItem)initWithBMHomeSeed:(id)seed
{
  seedCopy = seed;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    seed = [seedCopy seed];
    value = v5->_value;
    v5->_value = seed;

    effectiveFrom = [seedCopy effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = effectiveFrom;

    v5->_validityDays = [seedCopy validityDays];
    createdOn = [seedCopy createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = createdOn;

    adoptedOn = [seedCopy adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = adoptedOn;

    v5->_switchedCount = [seedCopy switchedCount];
  }

  return v5;
}

- (ADSynchronizedIdItem)initWithBMUserAggregationId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    aggregationId = [idCopy aggregationId];
    value = v5->_value;
    v5->_value = aggregationId;

    effectiveFrom = [idCopy effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = effectiveFrom;

    v5->_validityDays = [idCopy validityDays];
    createdOn = [idCopy createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = createdOn;

    adoptedOn = [idCopy adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = adoptedOn;

    v5->_switchedCount = [idCopy switchedCount];
  }

  return v5;
}

- (ADSynchronizedIdItem)initWithBMUserSeed:(id)seed
{
  seedCopy = seed;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    seed = [seedCopy seed];
    value = v5->_value;
    v5->_value = seed;

    effectiveFrom = [seedCopy effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = effectiveFrom;

    v5->_validityDays = [seedCopy validityDays];
    createdOn = [seedCopy createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = createdOn;

    adoptedOn = [seedCopy adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = adoptedOn;

    v5->_switchedCount = [seedCopy switchedCount];
  }

  return v5;
}

+ (id)alignToMidnight:(id)midnight
{
  midnightCopy = midnight;
  v4 = +[ADSynchronizedIdItem calendar];
  v5 = [v4 startOfDayForDate:midnightCopy];

  return v5;
}

+ (id)calendar
{
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v3 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v3];

  return v2;
}

@end