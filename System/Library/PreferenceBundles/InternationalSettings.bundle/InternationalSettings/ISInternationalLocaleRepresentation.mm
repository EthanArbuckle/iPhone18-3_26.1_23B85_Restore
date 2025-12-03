@interface ISInternationalLocaleRepresentation
+ (id)sharedInstance;
- (ISInternationalLocaleRepresentation)init;
- (NSString)calendarIdentifier;
- (unint64_t)calendarDirectionality;
- (void)setCalendarDirectionality:(unint64_t)directionality;
- (void)setCalendarIdentifier:(id)identifier;
@end

@implementation ISInternationalLocaleRepresentation

+ (id)sharedInstance
{
  if (qword_3D050 != -1)
  {
    sub_20B6C();
  }

  v3 = qword_3D058;

  return v3;
}

- (ISInternationalLocaleRepresentation)init
{
  v5.receiver = self;
  v5.super_class = ISInternationalLocaleRepresentation;
  v2 = [(ISInternationalLocaleRepresentation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ISInternationalLocaleRepresentation *)v2 setCurrentlySelectedCalendarIdentifier:0];
  }

  return v3;
}

- (void)setCalendarIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSLocale currentLocale];
  localeIdentifier = [v4 localeIdentifier];

  v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = [IntlUtility defaultCalendarForLocaleID:localeIdentifier];
  if ([v8 isEqual:identifierCopy])
  {
    [v7 removeObjectForKey:@"calendar"];
  }

  else
  {
    [v7 setObject:identifierCopy forKey:@"calendar"];
  }

  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [NSLocale canonicalLocaleIdentifierFromComponents:v7];

    [NSLocale setLocaleOnly:v9];
    +[InternationalSettingsController syncPreferencesForLanguageOrLocaleChange];
    localeIdentifier = v9;
  }

  [(ISInternationalLocaleRepresentation *)self setCurrentlySelectedCalendarIdentifier:identifierCopy];
}

- (NSString)calendarIdentifier
{
  currentlySelectedCalendarIdentifier = [(ISInternationalLocaleRepresentation *)self currentlySelectedCalendarIdentifier];

  if (currentlySelectedCalendarIdentifier)
  {
    currentlySelectedCalendarIdentifier2 = [(ISInternationalLocaleRepresentation *)self currentlySelectedCalendarIdentifier];
  }

  else
  {
    v5 = +[NSLocale currentLocale];
    localeIdentifier = [v5 localeIdentifier];

    v7 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
    currentlySelectedCalendarIdentifier2 = [v7 objectForKey:@"calendar"];
    if (!currentlySelectedCalendarIdentifier2)
    {
      currentlySelectedCalendarIdentifier2 = [IntlUtility defaultCalendarForLocaleID:localeIdentifier];
    }
  }

  return currentlySelectedCalendarIdentifier2;
}

- (void)setCalendarDirectionality:(unint64_t)directionality
{
  v3 = &kCFBooleanTrue;
  if (directionality != 2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  if (directionality)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(@"NSLocaleCalendarDirectionIsRightToLeft", v5, kCFPreferencesAnyApplication);
}

- (unint64_t)calendarDirectionality
{
  v2 = +[NSLocale currentLocale];
  _calendarDirection = [v2 _calendarDirection];

  if (_calendarDirection == &dword_0 + 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end