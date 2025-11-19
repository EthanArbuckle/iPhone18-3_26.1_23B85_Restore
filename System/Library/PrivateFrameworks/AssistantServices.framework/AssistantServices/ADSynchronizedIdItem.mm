@interface ADSynchronizedIdItem
+ (id)alignToMidnight:(id)a3;
+ (id)calendar;
- (ADSynchronizedIdItem)initWithBMHomeSeed:(id)a3;
- (ADSynchronizedIdItem)initWithBMUserAggregationId:(id)a3;
- (ADSynchronizedIdItem)initWithBMUserSeed:(id)a3;
- (ADSynchronizedIdItem)initWithValue:(id)a3 andEffectiveFrom:(id)a4 andValidityDays:(unsigned int)a5 andCreatedOn:(id)a6 andAdoptedOn:(id)a7 andSwitchedCount:(unsigned int)a8;
- (NSDate)expirationDate;
- (id)initAndAdopt:(id)a3 andSwitchedCount:(unsigned int)a4;
- (id)selectEarliest:(id)a3;
- (id)toBMSiriHomeSeedWithHomeIdentifier:(id)a3;
- (id)toBMSiriUserAggregationId;
- (id)toBMSiriUserSeed;
- (int64_t)_expirationDaysFrom:(id)a3 withCalendar:(id)a4;
- (int64_t)expirationDaysFrom:(id)a3;
- (int64_t)timelinePosition;
- (int64_t)timelinePositionWithTime:(id)a3;
- (int64_t)timelinePositionWithToday:(id)a3 withCalendar:(id)a4;
@end

@implementation ADSynchronizedIdItem

- (id)toBMSiriHomeSeedWithHomeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [BMSiriHomeSeed alloc];
  value = self->_value;
  effectiveFrom = self->_effectiveFrom;
  v8 = [NSNumber numberWithInt:self->_validityDays];
  createdOn = self->_createdOn;
  adoptedOn = self->_adoptedOn;
  v11 = [NSNumber numberWithInt:self->_switchedCount];
  v12 = [v5 initWithHomeIdentifier:v4 seed:value effectiveFrom:effectiveFrom validityDays:v8 createdOn:createdOn adoptedOn:adoptedOn switchedCount:v11];

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

- (int64_t)timelinePositionWithToday:(id)a3 withCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSDate *)self->_effectiveFrom compare:v6]== 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = [(ADSynchronizedIdItem *)self _expirationDaysFrom:v6 withCalendar:v7]> 0;
  }

  return v8;
}

- (int64_t)timelinePositionWithTime:(id)a3
{
  v4 = [ADSynchronizedIdItem alignToMidnight:a3];
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

- (id)selectEarliest:(id)a3
{
  v4 = a3;
  createdOn = self->_createdOn;
  v6 = [(ADSynchronizedIdItem *)v4 createdOn];
  v7 = [(NSDate *)createdOn compare:v6];

  if (v7 == -1)
  {
    v8 = self;
  }

  else
  {
    v8 = v4;
    if (v7 != 1)
    {
      value = self->_value;
      v10 = [(ADSynchronizedIdItem *)v4 value];
      v11 = [(NSUUID *)value compare:v10];

      if ((v11 + 1) >= 2)
      {
        v8 = v4;
      }

      else
      {
        v8 = self;
      }
    }
  }

  v12 = v8;

  return v12;
}

- (int64_t)_expirationDaysFrom:(id)a3 withCalendar:(id)a4
{
  validityDays = self->_validityDays;
  v5 = [a4 components:16 fromDate:self->_effectiveFrom toDate:a3 options:0];
  v6 = validityDays - [v5 day];

  return v6;
}

- (int64_t)expirationDaysFrom:(id)a3
{
  v4 = a3;
  v5 = +[ADSynchronizedIdItem calendar];
  v6 = [(ADSynchronizedIdItem *)self _expirationDaysFrom:v4 withCalendar:v5];

  return v6;
}

- (NSDate)expirationDate
{
  v3 = +[ADSynchronizedIdItem calendar];
  v4 = [v3 dateByAddingUnit:16 value:self->_validityDays toDate:self->_effectiveFrom options:0];

  return v4;
}

- (id)initAndAdopt:(id)a3 andSwitchedCount:(unsigned int)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = ADSynchronizedIdItem;
  v7 = [(ADSynchronizedIdItem *)&v17 init];
  if (v7)
  {
    v8 = [v6 value];
    value = v7->_value;
    v7->_value = v8;

    v10 = [v6 effectiveFrom];
    effectiveFrom = v7->_effectiveFrom;
    v7->_effectiveFrom = v10;

    v7->_validityDays = [v6 validityDays];
    v12 = [v6 createdOn];
    createdOn = v7->_createdOn;
    v7->_createdOn = v12;

    v14 = +[NSDate now];
    adoptedOn = v7->_adoptedOn;
    v7->_adoptedOn = v14;

    v7->_switchedCount = a4;
  }

  return v7;
}

- (ADSynchronizedIdItem)initWithValue:(id)a3 andEffectiveFrom:(id)a4 andValidityDays:(unsigned int)a5 andCreatedOn:(id)a6 andAdoptedOn:(id)a7 andSwitchedCount:(unsigned int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = ADSynchronizedIdItem;
  v18 = [(ADSynchronizedIdItem *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, a3);
    objc_storeStrong(&v19->_effectiveFrom, a4);
    v19->_validityDays = a5;
    objc_storeStrong(&v19->_createdOn, a6);
    objc_storeStrong(&v19->_adoptedOn, a7);
    v19->_switchedCount = a8;
  }

  return v19;
}

- (ADSynchronizedIdItem)initWithBMHomeSeed:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 seed];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = v8;

    v5->_validityDays = [v4 validityDays];
    v10 = [v4 createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = v10;

    v12 = [v4 adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = v12;

    v5->_switchedCount = [v4 switchedCount];
  }

  return v5;
}

- (ADSynchronizedIdItem)initWithBMUserAggregationId:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 aggregationId];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = v8;

    v5->_validityDays = [v4 validityDays];
    v10 = [v4 createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = v10;

    v12 = [v4 adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = v12;

    v5->_switchedCount = [v4 switchedCount];
  }

  return v5;
}

- (ADSynchronizedIdItem)initWithBMUserSeed:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADSynchronizedIdItem;
  v5 = [(ADSynchronizedIdItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 seed];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 effectiveFrom];
    effectiveFrom = v5->_effectiveFrom;
    v5->_effectiveFrom = v8;

    v5->_validityDays = [v4 validityDays];
    v10 = [v4 createdOn];
    createdOn = v5->_createdOn;
    v5->_createdOn = v10;

    v12 = [v4 adoptedOn];
    adoptedOn = v5->_adoptedOn;
    v5->_adoptedOn = v12;

    v5->_switchedCount = [v4 switchedCount];
  }

  return v5;
}

+ (id)alignToMidnight:(id)a3
{
  v3 = a3;
  v4 = +[ADSynchronizedIdItem calendar];
  v5 = [v4 startOfDayForDate:v3];

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