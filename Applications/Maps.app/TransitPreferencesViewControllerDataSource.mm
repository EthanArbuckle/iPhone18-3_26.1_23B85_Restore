@interface TransitPreferencesViewControllerDataSource
- (TransitPreferencesViewControllerDataSource)initWithPreferences:(id)preferences displayHints:(id)hints;
- (id)_localizedNameForPriorityOption:(int)option;
- (id)_surchargeForIndexPath:(id)path;
- (id)titleForFooterInSection:(int64_t)section;
- (id)titleForHeaderInSection:(int64_t)section;
- (int)_sortForIndexPath:(id)path;
- (int)_surchargeOptionValueToDisplayAsSelected;
- (int64_t)normalizedSectionIndex:(int64_t)index;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (unint64_t)_modeForIndexPath:(id)path;
- (void)_configureWithDisplayHints:(id)hints;
@end

@implementation TransitPreferencesViewControllerDataSource

- (int)_surchargeOptionValueToDisplayAsSelected
{
  surchargeOption = [(TransitPreferences *)self->_preferences surchargeOption];

  if (surchargeOption)
  {
    surchargeOption2 = [(TransitPreferences *)self->_preferences surchargeOption];
    integerValue = [surchargeOption2 integerValue];
  }

  else
  {
    surchargeOption2 = [(GEOSurchargeOption *)self->_surchargeOptions selectedSurchargeType];
    integerValue = [surchargeOption2 value];
  }

  return integerValue;
}

- (id)_localizedNameForPriorityOption:(int)option
{
  if (option > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_101628DE8 + option);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (id)_surchargeForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  surchargeTypes = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
  v7 = [surchargeTypes count];

  if (item >= v7)
  {
    v9 = 0;
  }

  else
  {
    surchargeTypes2 = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v9 = [surchargeTypes2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v9;
}

- (int)_sortForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if (item >= [(NSArray *)self->_allTransitPrioritizations count])
  {
    integerValue = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_allTransitPrioritizations, "objectAtIndexedSubscript:", [pathCopy item]);
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (unint64_t)_modeForIndexPath:(id)path
{
  pathCopy = path;
  if (qword_10195D238 != -1)
  {
    dispatch_once(&qword_10195D238, &stru_101628DC8);
  }

  v4 = qword_10195D230;
  item = [pathCopy item];
  if (item >= [v4 count])
  {
    integerValue = 0;
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (id)titleForFooterInSection:(int64_t)section
{
  if ([(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:section]== 3)
  {
    v3 = +[TransitPreferencesText footerTextForICFares];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v3 = [(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:section];
  if (v3 == 2)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Surcharge Options";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Prefer";
LABEL_7:
    v4 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    goto LABEL_9;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = +[TransitPreferencesText headerTextForDisabledModes];
  }

LABEL_9:

  return v4;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v4 = [(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:section];
  if (v4 == 2)
  {
    surchargeTypes = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v8 = [surchargeTypes count];

    return v8;
  }

  if (v4 == 1)
  {
    allTransitPrioritizations = self->_allTransitPrioritizations;
  }

  else
  {
    if (v4)
    {
      return 1;
    }

    if (qword_10195D238 != -1)
    {
      dispatch_once(&qword_10195D238, &stru_101628DC8);
    }

    allTransitPrioritizations = qword_10195D230;
  }

  return [(NSArray *)allTransitPrioritizations count];
}

- (int64_t)numberOfSections
{
  sections = self->_sections;
  if (!sections)
  {
    v4 = [NSMutableArray arrayWithCapacity:4];
    [v4 addObject:&off_1016E6C20];
    if ([(NSArray *)self->_allTransitPrioritizations count])
    {
      [v4 addObject:&off_1016E6C38];
    }

    surchargeTypes = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v6 = [surchargeTypes count];

    if (v6)
    {
      [v4 addObject:&off_1016E6C50];
    }

    if (self->_showICFareOption)
    {
      [v4 addObject:&off_1016E6C68];
    }

    v7 = [v4 copy];
    v8 = self->_sections;
    self->_sections = v7;

    sections = self->_sections;
  }

  return [(NSArray *)sections count];
}

- (int64_t)normalizedSectionIndex:(int64_t)index
{
  if (index < 0 || [(NSArray *)self->_sections count]<= index)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)_configureWithDisplayHints:(id)hints
{
  hintsCopy = hints;
  surchargeOptions = [hintsCopy surchargeOptions];
  surchargeOptions = self->_surchargeOptions;
  self->_surchargeOptions = surchargeOptions;

  self->_showICFareOption = 0;
  availablePaymentTypesCount = [hintsCopy availablePaymentTypesCount];
  v7 = hintsCopy;
  if (availablePaymentTypesCount)
  {
    v8 = 0;
    while ([v7 availablePaymentTypeAtIndex:v8] != 1)
    {
      ++v8;
      availablePaymentTypesCount2 = [hintsCopy availablePaymentTypesCount];
      v7 = hintsCopy;
      if (v8 >= availablePaymentTypesCount2)
      {
        goto LABEL_7;
      }
    }

    self->_showICFareOption = 1;
    v7 = hintsCopy;
  }

LABEL_7:
  prioritizationOptions = [v7 prioritizationOptions];
  v11 = [prioritizationOptions copy];
  allTransitPrioritizations = self->_allTransitPrioritizations;
  self->_allTransitPrioritizations = v11;

  v13 = self->_allTransitPrioritizations;
  v14 = [NSNumber numberWithInt:[(TransitPreferences *)self->_preferences sortOption]];
  LOBYTE(v13) = [(NSArray *)v13 containsObject:v14];

  if ((v13 & 1) == 0)
  {
    firstObject = [(NSArray *)self->_allTransitPrioritizations firstObject];
    -[TransitPreferences setSortOption:](self->_preferences, "setSortOption:", [firstObject integerValue]);
  }
}

- (TransitPreferencesViewControllerDataSource)initWithPreferences:(id)preferences displayHints:(id)hints
{
  preferencesCopy = preferences;
  hintsCopy = hints;
  v12.receiver = self;
  v12.super_class = TransitPreferencesViewControllerDataSource;
  v8 = [(TransitPreferencesViewControllerDataSource *)&v12 init];
  if (v8)
  {
    v9 = [preferencesCopy mutableCopy];
    preferences = v8->_preferences;
    v8->_preferences = v9;

    if (hintsCopy)
    {
      [(TransitPreferencesViewControllerDataSource *)v8 _configureWithDisplayHints:hintsCopy];
    }
  }

  return v8;
}

@end