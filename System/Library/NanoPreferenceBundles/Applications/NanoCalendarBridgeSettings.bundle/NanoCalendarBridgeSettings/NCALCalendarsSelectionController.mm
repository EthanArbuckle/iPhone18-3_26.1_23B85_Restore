@interface NCALCalendarsSelectionController
- (NCALCalendarsSelectionController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_saveFilterAndNotify;
- (void)_updateSelectedCalendars;
- (void)calendarChooserDidFinish:(id)finish;
- (void)calendarChooserSelectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation NCALCalendarsSelectionController

- (NCALCalendarsSelectionController)initWithNibName:(id)name bundle:(id)bundle
{
  v19.receiver = self;
  v19.super_class = NCALCalendarsSelectionController;
  v4 = [(NCALCalendarsSelectionController *)&v19 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    model = v4->_model;
    v4->_model = v5;

    [(NCALCalendarsSelectionController *)v4 _updateSelectedCalendars];
    navigationBar = [(NCALCalendarsSelectionController *)v4 navigationBar];
    v21 = NSForegroundColorAttributeName;
    v8 = BPSTextColor();
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [navigationBar setTitleTextAttributes:v9];

    navigationBar2 = [(NCALCalendarsSelectionController *)v4 navigationBar];
    [navigationBar2 setTranslucent:0];

    toolbar = [(NCALCalendarsSelectionController *)v4 toolbar];
    [toolbar setTranslucent:0];

    v12 = [EKCalendarChooser alloc];
    eventStore = [(CalendarModel *)v4->_model eventStore];
    BYTE2(v18) = 0;
    LOWORD(v18) = 0;
    v14 = [v12 initWithRemoteUI:0 selectionStyle:1 displayStyle:0 entityType:0 forEvent:0 eventStore:eventStore limitedToSource:0 showIdentityChooser:v18 showDelegateSetupCell:? showAccountStatus:?];

    if (v14)
    {
      selectedCalendars = [(CalendarModel *)v4->_model selectedCalendars];
      [v14 setSelectedCalendars:selectedCalendars];

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
  view = [(NCALCalendarsSelectionController *)self view];
  [view setTintColor:v3];

  v5 = BPSBackgroundColor();
  view2 = [(NCALCalendarsSelectionController *)self view];
  [view2 setBackgroundColor:v5];
}

- (void)calendarChooserSelectionDidChange:(id)change
{
  selectedCalendars = [change selectedCalendars];
  model = [(NCALCalendarsSelectionController *)self model];
  [model setSelectedCalendars:selectedCalendars];
}

- (void)_saveFilterAndNotify
{
  selectedCalendars = [(CalendarModel *)self->_model selectedCalendars];
  eventStore = [(CalendarModel *)self->_model eventStore];
  v5 = [eventStore calendarsForEntityType:0];

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
        if (([selectedCalendars containsObject:{v13, v18}] & 1) == 0)
        {
          syncHash = [v13 syncHash];
          [v6 addObject:syncHash];
          selectionSyncIdentifier = [v13 selectionSyncIdentifier];
          [v7 addObject:selectionSyncIdentifier];
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

- (void)calendarChooserDidFinish:(id)finish
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
  eventStore = [(CalendarModel *)self->_model eventStore];
  v4 = [NanoCalendarPreferences currentSelectedCalendarsForEventStore:eventStore];

  [(CalendarModel *)self->_model setSelectedCalendars:v4];
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NCALCalendarsSelectionController updated selected calendars", v6, 2u);
  }
}

@end