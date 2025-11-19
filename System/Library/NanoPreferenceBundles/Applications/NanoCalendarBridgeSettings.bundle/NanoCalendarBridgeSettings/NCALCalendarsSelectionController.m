@interface NCALCalendarsSelectionController
- (NCALCalendarsSelectionController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_saveFilterAndNotify;
- (void)_updateSelectedCalendars;
- (void)calendarChooserDidFinish:(id)a3;
- (void)calendarChooserSelectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation NCALCalendarsSelectionController

- (NCALCalendarsSelectionController)initWithNibName:(id)a3 bundle:(id)a4
{
  v19.receiver = self;
  v19.super_class = NCALCalendarsSelectionController;
  v4 = [(NCALCalendarsSelectionController *)&v19 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    model = v4->_model;
    v4->_model = v5;

    [(NCALCalendarsSelectionController *)v4 _updateSelectedCalendars];
    v7 = [(NCALCalendarsSelectionController *)v4 navigationBar];
    v21 = NSForegroundColorAttributeName;
    v8 = BPSTextColor();
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v7 setTitleTextAttributes:v9];

    v10 = [(NCALCalendarsSelectionController *)v4 navigationBar];
    [v10 setTranslucent:0];

    v11 = [(NCALCalendarsSelectionController *)v4 toolbar];
    [v11 setTranslucent:0];

    v12 = [EKCalendarChooser alloc];
    v13 = [(CalendarModel *)v4->_model eventStore];
    BYTE2(v18) = 0;
    LOWORD(v18) = 0;
    v14 = [v12 initWithRemoteUI:0 selectionStyle:1 displayStyle:0 entityType:0 forEvent:0 eventStore:v13 limitedToSource:0 showIdentityChooser:v18 showDelegateSetupCell:? showAccountStatus:?];

    if (v14)
    {
      v15 = [(CalendarModel *)v4->_model selectedCalendars];
      [v14 setSelectedCalendars:v15];

      [v14 setDelegate:v4];
      [v14 setShowsDoneButton:1];
      [v14 setShowDetailAccessories:0];
      [v14 setDisableCalendarEditing:1];
      v20 = v14;
      v16 = [NSArray arrayWithObjects:&v20 count:1];
      [(NCALCalendarsSelectionController *)v4 setViewControllers:v16 animated:0];
    }
  }

  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = NCALCalendarsSelectionController;
  [(NCALCalendarsSelectionController *)&v7 viewDidLoad];
  v3 = BPSBridgeTintColor();
  v4 = [(NCALCalendarsSelectionController *)self view];
  [v4 setTintColor:v3];

  v5 = BPSBackgroundColor();
  v6 = [(NCALCalendarsSelectionController *)self view];
  [v6 setBackgroundColor:v5];
}

- (void)calendarChooserSelectionDidChange:(id)a3
{
  v5 = [a3 selectedCalendars];
  v4 = [(NCALCalendarsSelectionController *)self model];
  [v4 setSelectedCalendars:v5];
}

- (void)_saveFilterAndNotify
{
  v3 = [(CalendarModel *)self->_model selectedCalendars];
  v4 = [(CalendarModel *)self->_model eventStore];
  v5 = [v4 calendarsForEntityType:0];

  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (([v3 containsObject:{v13, v18}] & 1) == 0)
        {
          v14 = [v13 syncHash];
          [v6 addObject:v14];
          v15 = [v13 selectionSyncIdentifier];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = +[NanoCalendarPreferences sharedPreferences];
  [v16 setCustomDeselectedCalendarHashes:v6];

  v17 = +[NanoCalendarPreferences sharedPreferences];
  [v17 setCustomDeselectedCalendarIdentifiers:v7];
}

- (void)calendarChooserDidFinish:(id)a3
{
  v4 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "NCALCalendarsSelectionController calendarChooserDidFinish", v5, 2u);
  }

  [(NCALCalendarsSelectionController *)self _saveFilterAndNotify];
  [(NCALCalendarsSelectionController *)self dismiss];
}

- (void)_updateSelectedCalendars
{
  v3 = [(CalendarModel *)self->_model eventStore];
  v4 = [NanoCalendarPreferences currentSelectedCalendarsForEventStore:v3];

  [(CalendarModel *)self->_model setSelectedCalendars:v4];
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NCALCalendarsSelectionController updated selected calendars", v6, 2u);
  }
}

@end