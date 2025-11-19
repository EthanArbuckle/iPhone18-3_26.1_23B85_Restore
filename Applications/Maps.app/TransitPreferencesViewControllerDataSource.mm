@interface TransitPreferencesViewControllerDataSource
- (TransitPreferencesViewControllerDataSource)initWithPreferences:(id)a3 displayHints:(id)a4;
- (id)_localizedNameForPriorityOption:(int)a3;
- (id)_surchargeForIndexPath:(id)a3;
- (id)titleForFooterInSection:(int64_t)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (int)_sortForIndexPath:(id)a3;
- (int)_surchargeOptionValueToDisplayAsSelected;
- (int64_t)normalizedSectionIndex:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (unint64_t)_modeForIndexPath:(id)a3;
- (void)_configureWithDisplayHints:(id)a3;
@end

@implementation TransitPreferencesViewControllerDataSource

- (int)_surchargeOptionValueToDisplayAsSelected
{
  v3 = [(TransitPreferences *)self->_preferences surchargeOption];

  if (v3)
  {
    v4 = [(TransitPreferences *)self->_preferences surchargeOption];
    v5 = [v4 integerValue];
  }

  else
  {
    v4 = [(GEOSurchargeOption *)self->_surchargeOptions selectedSurchargeType];
    v5 = [v4 value];
  }

  return v5;
}

- (id)_localizedNameForPriorityOption:(int)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_101628DE8 + a3);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (id)_surchargeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (int)_sortForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  if (v5 >= [(NSArray *)self->_allTransitPrioritizations count])
  {
    v7 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_allTransitPrioritizations, "objectAtIndexedSubscript:", [v4 item]);
    v7 = [v6 integerValue];
  }

  return v7;
}

- (unint64_t)_modeForIndexPath:(id)a3
{
  v3 = a3;
  if (qword_10195D238 != -1)
  {
    dispatch_once(&qword_10195D238, &stru_101628DC8);
  }

  v4 = qword_10195D230;
  v5 = [v3 item];
  if (v5 >= [v4 count])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(v3, "item")}];
    v7 = [v6 integerValue];
  }

  return v7;
}

- (id)titleForFooterInSection:(int64_t)a3
{
  if ([(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:a3]== 3)
  {
    v3 = +[TransitPreferencesText footerTextForICFares];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v3 = [(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:a3];
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

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v4 = [(TransitPreferencesViewControllerDataSource *)self normalizedSectionIndex:a3];
  if (v4 == 2)
  {
    v7 = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v8 = [v7 count];

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

    v5 = [(GEOSurchargeOption *)self->_surchargeOptions surchargeTypes];
    v6 = [v5 count];

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

- (int64_t)normalizedSectionIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSArray *)self->_sections count]<= a3)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (void)_configureWithDisplayHints:(id)a3
{
  v16 = a3;
  v4 = [v16 surchargeOptions];
  surchargeOptions = self->_surchargeOptions;
  self->_surchargeOptions = v4;

  self->_showICFareOption = 0;
  v6 = [v16 availablePaymentTypesCount];
  v7 = v16;
  if (v6)
  {
    v8 = 0;
    while ([v7 availablePaymentTypeAtIndex:v8] != 1)
    {
      ++v8;
      v9 = [v16 availablePaymentTypesCount];
      v7 = v16;
      if (v8 >= v9)
      {
        goto LABEL_7;
      }
    }

    self->_showICFareOption = 1;
    v7 = v16;
  }

LABEL_7:
  v10 = [v7 prioritizationOptions];
  v11 = [v10 copy];
  allTransitPrioritizations = self->_allTransitPrioritizations;
  self->_allTransitPrioritizations = v11;

  v13 = self->_allTransitPrioritizations;
  v14 = [NSNumber numberWithInt:[(TransitPreferences *)self->_preferences sortOption]];
  LOBYTE(v13) = [(NSArray *)v13 containsObject:v14];

  if ((v13 & 1) == 0)
  {
    v15 = [(NSArray *)self->_allTransitPrioritizations firstObject];
    -[TransitPreferences setSortOption:](self->_preferences, "setSortOption:", [v15 integerValue]);
  }
}

- (TransitPreferencesViewControllerDataSource)initWithPreferences:(id)a3 displayHints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TransitPreferencesViewControllerDataSource;
  v8 = [(TransitPreferencesViewControllerDataSource *)&v12 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    preferences = v8->_preferences;
    v8->_preferences = v9;

    if (v7)
    {
      [(TransitPreferencesViewControllerDataSource *)v8 _configureWithDisplayHints:v7];
    }
  }

  return v8;
}

@end