@interface ISInternationalLocaleRepresentation
+ (id)sharedInstance;
- (ISInternationalLocaleRepresentation)init;
- (NSString)calendarIdentifier;
- (unint64_t)calendarDirectionality;
- (void)setCalendarDirectionality:(unint64_t)a3;
- (void)setCalendarIdentifier:(id)a3;
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

- (void)setCalendarIdentifier:(id)a3
{
  v10 = a3;
  v4 = +[NSLocale currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [NSLocale componentsFromLocaleIdentifier:v5];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = [IntlUtility defaultCalendarForLocaleID:v5];
  if ([v8 isEqual:v10])
  {
    [v7 removeObjectForKey:@"calendar"];
  }

  else
  {
    [v7 setObject:v10 forKey:@"calendar"];
  }

  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [NSLocale canonicalLocaleIdentifierFromComponents:v7];

    [NSLocale setLocaleOnly:v9];
    +[InternationalSettingsController syncPreferencesForLanguageOrLocaleChange];
    v5 = v9;
  }

  [(ISInternationalLocaleRepresentation *)self setCurrentlySelectedCalendarIdentifier:v10];
}

- (NSString)calendarIdentifier
{
  v3 = [(ISInternationalLocaleRepresentation *)self currentlySelectedCalendarIdentifier];

  if (v3)
  {
    v4 = [(ISInternationalLocaleRepresentation *)self currentlySelectedCalendarIdentifier];
  }

  else
  {
    v5 = +[NSLocale currentLocale];
    v6 = [v5 localeIdentifier];

    v7 = [NSLocale componentsFromLocaleIdentifier:v6];
    v4 = [v7 objectForKey:@"calendar"];
    if (!v4)
    {
      v4 = [IntlUtility defaultCalendarForLocaleID:v6];
    }
  }

  return v4;
}

- (void)setCalendarDirectionality:(unint64_t)a3
{
  v3 = &kCFBooleanTrue;
  if (a3 != 2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  if (a3)
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
  v3 = [v2 _calendarDirection];

  if (v3 == &dword_0 + 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end