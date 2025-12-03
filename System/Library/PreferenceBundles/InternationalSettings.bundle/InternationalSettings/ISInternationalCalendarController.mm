@interface ISInternationalCalendarController
- (ISInternationalCalendarController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ISInternationalCalendarController

- (ISInternationalCalendarController)init
{
  v5.receiver = self;
  v5.super_class = ISInternationalCalendarController;
  v2 = [(ISInternationalCalendarController *)&v5 init];
  if (v2)
  {
    v3 = +[ISInternationalLocaleRepresentation sharedInstance];
    [(ISInternationalCalendarController *)v2 setLocaleRepresentation:v3];
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ISInternationalCalendarController *)self loadSpecifiersFromPlistName:@"InternationalCalendar" target:self];
    v6 = [v5 mutableCopy];

    if ([UIApp userInterfaceLayoutDirection] != &dword_0 + 1)
    {
      v7 = +[NSMutableIndexSet indexSet];
      [v7 addIndex:{objc_msgSend(v6, "indexOfSpecifierWithID:", @"CALENDAR_DIRECTIONALITY_GROUP"}];
      [v7 addIndex:{objc_msgSend(v6, "indexOfSpecifierWithID:", @"CALENDAR_DIRECTIONALITY_LEFT_TO_RIGHT_CELL_ID"}];
      [v7 addIndex:{objc_msgSend(v6, "indexOfSpecifierWithID:", @"CALENDAR_DIRECTIONALITY_RIGHT_TO_LEFT_CELL_ID"}];
      [v6 removeObjectsAtIndexes:v7];
    }

    v8 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ISInternationalCalendarController;
  pathCopy = path;
  v7 = [(ISInternationalCalendarController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  specifier = [v7 specifier];
  v9 = [specifier propertyForKey:PSValueKey];

  section = [pathCopy section];
  if (section == &dword_0 + 1)
  {
    localeRepresentation = [(ISInternationalCalendarController *)self localeRepresentation];
    calendarIdentifier = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [localeRepresentation calendarDirectionality]);
    v13 = [v9 isEqualToNumber:calendarIdentifier];
    goto LABEL_5;
  }

  if (!section)
  {
    localeRepresentation = [(ISInternationalCalendarController *)self localeRepresentation];
    calendarIdentifier = [localeRepresentation calendarIdentifier];
    v13 = [v9 isEqualToString:calendarIdentifier];
LABEL_5:
    v14 = v13;

    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  [v7 setChecked:v14];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:PSValueKey];

  section = [pathCopy section];
  if (section == &dword_0 + 1)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    localeRepresentation = [(ISInternationalCalendarController *)self localeRepresentation];
    [localeRepresentation setCalendarDirectionality:unsignedIntegerValue];
    goto LABEL_5;
  }

  if (!section)
  {
    localeRepresentation = [(ISInternationalCalendarController *)self localeRepresentation];
    [localeRepresentation setCalendarIdentifier:v10];
LABEL_5:
  }

  v14.receiver = self;
  v14.super_class = ISInternationalCalendarController;
  [(ISInternationalCalendarController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy reloadData];
}

@end