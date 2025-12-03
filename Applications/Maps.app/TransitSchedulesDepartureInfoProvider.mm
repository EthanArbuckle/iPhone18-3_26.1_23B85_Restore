@interface TransitSchedulesDepartureInfoProvider
- (NSArray)identifiers;
- (NSString)frequencyString;
- (NSString)operatingHours;
- (TransitSchedulesDepartureInfoProvider)initWithTransitLine:(id)line timeZone:(id)zone referenceDate:(id)date;
- (TransitSchedulesDepartureInfoProviderDelegate)delegate;
- (id)_operatingHoursDescriptionFromDepartureSequence;
- (id)_operatingHoursDescriptionFromTransitLine;
- (id)_operatingHoursStringForTimeRanges:(id)ranges;
- (void)_invalidateFrequencyString;
- (void)_invalidateOperatingHours;
- (void)configureCell:(id)cell forIndexPath:(id)path withIdentifier:(id)identifier;
- (void)setDepartureSequence:(id)sequence;
- (void)setTransitLine:(id)line;
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
  operatingHours = [(GEOTransitLine *)self->_transitLine operatingHours];
  if (-[GEOTransitLine departureTimeDisplayStyle](self->_transitLine, "departureTimeDisplayStyle") == 3 && [operatingHours count])
  {
    v4 = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursStringForTimeRanges:operatingHours];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_operatingHoursStringForTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  if (qword_10195F088 != -1)
  {
    dispatch_once(&qword_10195F088, &stru_1016519F8);
  }

  [qword_10195F080 setTimeZone:self->_timeZone];
  firstObject = [rangesCopy firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    v7 = qword_10195F080;
    startDate = [firstObject startDate];
    v9 = [v7 stringFromDate:startDate];

    v10 = qword_10195F080;
    endDate = [v6 endDate];
    v12 = [v10 stringFromDate:endDate];

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
      _operatingHoursDescriptionFromTransitLine = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursDescriptionFromTransitLine];
      if ([_operatingHoursDescriptionFromTransitLine length])
      {
        objc_storeStrong(p_operatingHours, _operatingHoursDescriptionFromTransitLine);
      }
    }

    goto LABEL_2;
  }

  _operatingHoursDescriptionFromDepartureSequence = [(TransitSchedulesDepartureInfoProvider *)self _operatingHoursDescriptionFromDepartureSequence];
  if (![_operatingHoursDescriptionFromDepartureSequence length])
  {

    goto LABEL_10;
  }

  v7 = *p_operatingHours;
  *p_operatingHours = _operatingHoursDescriptionFromDepartureSequence;
  v8 = _operatingHoursDescriptionFromDepartureSequence;

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

- (void)setDepartureSequence:(id)sequence
{
  sequenceCopy = sequence;
  if (([(GEOTransitDepartureSequence *)self->_departureSequence isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_departureSequence, sequence);
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateOperatingHours];
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateFrequencyString];
    delegate = [(TransitSchedulesDepartureInfoProvider *)self delegate];
    [delegate updatedDepartureInfoProvider:self];
  }
}

- (void)setTransitLine:(id)line
{
  lineCopy = line;
  muid = [(GEOTransitLine *)self->_transitLine muid];
  if (muid != [lineCopy muid])
  {
    objc_storeStrong(&self->_transitLine, line);
    [(TransitSchedulesDepartureInfoProvider *)self _invalidateOperatingHours];
    delegate = [(TransitSchedulesDepartureInfoProvider *)self delegate];
    [delegate updatedDepartureInfoProvider:self];
  }
}

- (void)configureCell:(id)cell forIndexPath:(id)path withIdentifier:(id)identifier
{
  cellCopy = cell;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = identifierCopy;
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

    v11 = cellCopy;
    if ([v10 isEqualToString:@"DepartureInfoSectionCellFrequencyIdentifier"])
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Transit Schedules] Frequency" value:@"localized string not found" table:0];
      [v11 setTitle:v13];

      frequencyString = [(TransitSchedulesDepartureInfoProvider *)self frequencyString];
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

      frequencyString = [(TransitSchedulesDepartureInfoProvider *)self operatingHours];
    }

    v17 = frequencyString;
    [v11 setContent:frequencyString];

    goto LABEL_11;
  }

LABEL_13:
}

- (NSArray)identifiers
{
  v3 = +[NSMutableArray array];
  frequencyString = [(TransitSchedulesDepartureInfoProvider *)self frequencyString];
  v5 = [frequencyString length];

  if (v5)
  {
    [v3 addObject:@"DepartureInfoSectionCellFrequencyIdentifier"];
  }

  operatingHours = [(TransitSchedulesDepartureInfoProvider *)self operatingHours];
  v7 = [operatingHours length];

  if (v7)
  {
    [v3 addObject:@"DepartureInfoSectionCellOperatingHoursIdentifier"];
  }

  return v3;
}

- (TransitSchedulesDepartureInfoProvider)initWithTransitLine:(id)line timeZone:(id)zone referenceDate:(id)date
{
  lineCopy = line;
  zoneCopy = zone;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = TransitSchedulesDepartureInfoProvider;
  v12 = [(TransitSchedulesDepartureInfoProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transitLine, line);
    objc_storeStrong(&v13->_timeZone, zone);
    objc_storeStrong(&v13->_date, date);
  }

  return v13;
}

@end