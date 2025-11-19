@interface TransitSchedulesDepartureInfoProvider
- (NSArray)identifiers;
- (NSString)frequencyString;
- (NSString)operatingHours;
- (TransitSchedulesDepartureInfoProvider)initWithTransitLine:(id)a3 timeZone:(id)a4 referenceDate:(id)a5;
- (TransitSchedulesDepartureInfoProviderDelegate)delegate;
- (id)_operatingHoursDescriptionFromDepartureSequence;
- (id)_operatingHoursDescriptionFromTransitLine;
- (id)_operatingHoursStringForTimeRanges:(id)a3;
- (void)_invalidateFrequencyString;
- (void)_invalidateOperatingHours;
- (void)configureCell:(id)a3 forIndexPath:(id)a4 withIdentifier:(id)a5;
- (void)setDepartureSequence:(id)a3;
- (void)setTransitLine:(id)a3;
@end

@implementation TransitSchedulesDepartureInfoProvider

- (TransitSchedulesDepartureInfoProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_operatingHoursDescriptionFromDepartureSequence
{
  v3 = [(GEOTransitDepartureSequence *)self->_departureSequence operatingHoursForDate:self->_date inTimeZone:self->_timeZone];
  v4 = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursStringForTimeRanges:v3];

  return v4;
}

- (id)_operatingHoursDescriptionFromTransitLine
{
  v3 = [(GEOTransitLine *)self->_transitLine operatingHours];
  if (-[GEOTransitLine departureTimeDisplayStyle](self->_transitLine, "departureTimeDisplayStyle") == 3 && [v3 count])
  {
    v4 = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursStringForTimeRanges:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_operatingHoursStringForTimeRanges:(id)a3
{
  v4 = a3;
  if (qword_10195F088 != -1)
  {
    dispatch_once(&qword_10195F088, &stru_1016519F8);
  }

  [qword_10195F080 setTimeZone:self->_timeZone];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = qword_10195F080;
    v8 = [v5 startDate];
    v9 = [v7 stringFromDate:v8];

    v10 = qword_10195F080;
    v11 = [v6 endDate];
    v12 = [v10 stringFromDate:v11];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Transit Schedule] Operating hours with separator" value:@"localized string not found" table:0];

    v15 = [NSString stringWithFormat:v14, v9, v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)operatingHours
{
  p_operatingHours = &self->_operatingHours;
  if (self->_operatingHours)
  {
LABEL_2:
    v3 = *p_operatingHours;
    goto LABEL_3;
  }

  if (!self->_departureSequence)
  {
LABEL_10:
    if (self->_transitLine)
    {
      v9 = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursDescriptionFromTransitLine];
      if ([v9 length])
      {
        objc_storeStrong(p_operatingHours, v9);
      }
    }

    goto LABEL_2;
  }

  v6 = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursDescriptionFromDepartureSequence];
  if (![v6 length])
  {

    goto LABEL_10;
  }

  v7 = *p_operatingHours;
  *p_operatingHours = v6;
  v8 = v6;

  v3 = *p_operatingHours;
LABEL_3:

  return v3;
}

- (void)_invalidateOperatingHours
{
  operatingHours = self->_operatingHours;
  self->_operatingHours = 0;
}

- (NSString)frequencyString
{
  frequencyString = self->_frequencyString;
  if (!frequencyString)
  {
    frequencyString = self->_departureSequence;
    if (frequencyString)
    {
      v4 = [frequencyString frequencyToDescribeAtDate:self->_date];
      v5 = [(GEOTransitDepartureSequence *)self->_departureSequence firstDepartureValidForDate:self->_date];

      if (!v5 && v4)
      {
        v6 = [NSString _navigation_formattedDescriptionForFrequency:v4];
        v7 = self->_frequencyString;
        self->_frequencyString = v6;
      }

      frequencyString = self->_frequencyString;
    }
  }

  return frequencyString;
}

- (void)_invalidateFrequencyString
{
  frequencyString = self->_frequencyString;
  self->_frequencyString = 0;
}

- (void)setDepartureSequence:(id)a3
{
  v6 = a3;
  if (([(GEOTransitDepartureSequence *)self->_departureSequence isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_departureSequence, a3);
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateOperatingHours];
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateFrequencyString];
    v5 = [(TransitSchedulesDepartureInfoProvider *)self delegate];
    [v5 updatedDepartureInfoProvider:self];
  }
}

- (void)setTransitLine:(id)a3
{
  v7 = a3;
  v5 = [(GEOTransitLine *)self->_transitLine muid];
  if (v5 != [v7 muid])
  {
    objc_storeStrong(&self->_transitLine, a3);
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateOperatingHours];
    v6 = [(TransitSchedulesDepartureInfoProvider *)self delegate];
    [v6 updatedDepartureInfoProvider:self];
  }
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4 withIdentifier:(id)a5
{
  v18 = a3;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = v18;
    if ([v10 isEqualToString:@"DepartureInfoSectionCellFrequencyIdentifier"])
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Transit Schedules] Frequency" value:@"localized string not found" table:0];
      [v11 setTitle:v13];

      v14 = [(TransitSchedulesDepartureInfoProvider *)self frequencyString];
    }

    else
    {
      if (![v10 isEqualToString:@"DepartureInfoSectionCellOperatingHoursIdentifier"])
      {
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"[Transit Schedules] Operating Hours" value:@"localized string not found" table:0];
      [v11 setTitle:v16];

      v14 = [(TransitSchedulesDepartureInfoProvider *)self operatingHours];
    }

    v17 = v14;
    [v11 setContent:v14];

    goto LABEL_11;
  }

LABEL_13:
}

- (NSArray)identifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(TransitSchedulesDepartureInfoProvider *)self frequencyString];
  v5 = [v4 length];

  if (v5)
  {
    [v3 addObject:@"DepartureInfoSectionCellFrequencyIdentifier"];
  }

  v6 = [(TransitSchedulesDepartureInfoProvider *)self operatingHours];
  v7 = [v6 length];

  if (v7)
  {
    [v3 addObject:@"DepartureInfoSectionCellOperatingHoursIdentifier"];
  }

  return v3;
}

- (TransitSchedulesDepartureInfoProvider)initWithTransitLine:(id)a3 timeZone:(id)a4 referenceDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TransitSchedulesDepartureInfoProvider;
  v12 = [(TransitSchedulesDepartureInfoProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transitLine, a3);
    objc_storeStrong(&v13->_timeZone, a4);
    objc_storeStrong(&v13->_date, a5);
  }

  return v13;
}

@end