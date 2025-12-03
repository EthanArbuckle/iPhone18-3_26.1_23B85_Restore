@interface EKICSPreviewListController
- (EKICSPreviewListController)initWithModel:(id)model;
- (EKICSPreviewListDelegate)listDelegate;
- (id)_timeZone;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)buildSections;
- (void)dealloc;
- (void)importAllPressed:(id)pressed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setOverrideCalendarColor:(CGColor *)color;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateImportButton;
- (void)viewDidLoad;
@end

@implementation EKICSPreviewListController

- (EKICSPreviewListController)initWithModel:(id)model
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = EKICSPreviewListController;
  v6 = [(EKICSPreviewListController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    [(EKICSPreviewModel *)v7->_model addObserver:v7 forKeyPath:@"importedEvents" options:0 context:0];
    v8 = MEMORY[0x1E696AEC0];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"x_events_ics_title" value:&stru_1F4EF6790 table:0];
    v11 = [v8 localizedStringWithFormat:v10, -[EKICSPreviewModel totalEventCount](v7->_model, "totalEventCount")];
    [(EKICSPreviewListController *)v7 setTitle:v11];

    [(EKICSPreviewListController *)v7 setAllowsSubitems:1];
  }

  return v7;
}

- (void)dealloc
{
  [(EKICSPreviewModel *)self->_model removeObserver:self forKeyPath:@"importedEvents"];
  v3.receiver = self;
  v3.super_class = EKICSPreviewListController;
  [(EKICSPreviewListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = EKICSPreviewListController;
  [(EKICSPreviewListController *)&v10 viewDidLoad];
  [(EKICSPreviewListController *)self buildSections];
  [(EKICSPreviewListController *)self updateImportButton];
  tableView = [(EKICSPreviewListController *)self tableView];
  [tableView setSeparatorStyle:0];
  [tableView setAllowsSelection:self->_allowsSubitems];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [tableView registerClass:v7 forCellReuseIdentifier:v9];

  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"PreviewListControllerHeaderReuseIdentifier"];
}

- (void)updateImportButton
{
  if (self->_allowsImport && [(EKICSPreviewModel *)self->_model unimportedEventCount])
  {
    navigationItem = [(EKICSPreviewListController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (rightBarButtonItem)
    {
      return;
    }

    importedEvents = [(EKICSPreviewModel *)self->_model importedEvents];
    v6 = [importedEvents count];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = EventKitUIBundle();
      v9 = [v8 localizedStringForKey:@"Add (%@)" value:&stru_1F4EF6790 table:0];
      [(EKICSPreviewModel *)self->_model unimportedEventCount];
      v10 = CUIKLocalizedStringForInteger();
      navigationItem3 = [v7 localizedStringWithFormat:v9, v10];
    }

    else
    {
      v8 = EventKitUIBundle();
      navigationItem3 = [v8 localizedStringForKey:@"Add All" value:&stru_1F4EF6790 table:0];
    }

    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:navigationItem3 style:2 target:self action:sel_importAllPressed_];
    navigationItem2 = [(EKICSPreviewListController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v11];
  }

  else
  {
    navigationItem3 = [(EKICSPreviewListController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:0];
  }
}

- (void)importAllPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
  [WeakRetained icsPreviewListControllerDidRequestImportAll:self];
}

- (void)setOverrideCalendarColor:(CGColor *)color
{
  if (self->_overrideCalendarColor != color)
  {
    self->_overrideCalendarColor = color;
    tableView = [(EKICSPreviewListController *)self tableView];
    [tableView reloadData];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  [(EKICSPreviewListController *)self buildSections:path];
  tableView = [(EKICSPreviewListController *)self tableView];
  [tableView reloadData];

  [(EKICSPreviewListController *)self updateImportButton];
}

- (id)_timeZone
{
  eventStore = [(EKICSPreviewModel *)self->_model eventStore];
  timeZone = [eventStore timeZone];

  return timeZone;
}

- (void)buildSections
{
  v25 = *MEMORY[0x1E69E9840];
  allEvents = [(EKICSPreviewModel *)self->_model allEvents];
  v4 = [allEvents mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_16];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  sections = self->_sections;
  self->_sections = v5;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        startDate = [v12 startDate];
        _timeZone = [(EKICSPreviewListController *)self _timeZone];
        v15 = [startDate dateForStartOfDayInTimeZone:_timeZone];

        if (v9)
        {
          date = [v9 date];
          v17 = [v15 isEqualToDate:date];

          if (v17)
          {
            goto LABEL_11;
          }

          v18 = [EKPreviewSection sectionWithDate:v15];

          v9 = v18;
        }

        else
        {
          v9 = [EKPreviewSection sectionWithDate:v15];
        }

        [(NSMutableArray *)self->_sections addObject:v9];
LABEL_11:
        [v9 addEvent:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = 0;
LABEL_15:
}

uint64_t __43__EKICSPreviewListController_buildSections__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 startDate];
  v9 = [v7 startDate];
  v10 = [v8 compare:v9];

  if (!v10)
  {
    if ([v6 isAllDay] && !objc_msgSend(v7, "isAllDay"))
    {
      v10 = -1;
    }

    else if (([v6 isAllDay] & 1) != 0 || (objc_msgSend(v7, "isAllDay") & 1) == 0)
    {
      v11 = [v6 title];
      v12 = [v7 title];
      v10 = [v11 compare:v12 options:1];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v8 = [(NSMutableArray *)sections objectAtIndex:section];
  date = [v8 date];
  _timeZone = [(EKICSPreviewListController *)self _timeZone];
  v14 = 0;
  v15 = 0;
  v11 = [EKUIListViewHeader headerWithTableView:viewCopy reuseIdentifier:@"PreviewListControllerHeaderReuseIdentifier" date:date timeZone:_timeZone currentYearStart:&v15 currentYearEnd:&v14];

  v12 = v15;

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  events = [v4 events];
  v6 = [events count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  events = [v8 events];
  v10 = [events objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  overrideCalendarColor = self->_overrideCalendarColor;
  if (overrideCalendarColor)
  {
    calendar = [v10 calendar];
    [calendar setCGColor:overrideCalendarColor];
  }

  date = [v8 date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  _timeZone = [(EKICSPreviewListController *)self _timeZone];
  [currentCalendar setTimeZone:_timeZone];

  if ([v10 isAllDay])
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [viewCopy dequeueReusableCellWithIdentifier:v17 forIndexPath:pathCopy];

    [v18 updateWithEvent:v10 dimmed:0];
  }

  else
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v18 = [viewCopy dequeueReusableCellWithIdentifier:v20 forIndexPath:pathCopy];

    startDate = [v10 startDate];
    endDateUnadjustedForLegacyClients = [v10 endDateUnadjustedForLegacyClients];
    v23 = [currentCalendar cal_isMultidayEventForUIWithStartDate:startDate endDate:endDateUnadjustedForLegacyClients];

    [v18 updateWithEvent:v10 isMultiday:v23 occurrenceStartDate:date dimmed:0];
  }

  return v18;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (self->_allowsSubitems)
  {
    sections = self->_sections;
    pathCopy = path;
    v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
    events = [v8 events];
    v10 = [pathCopy row];

    v16 = [events objectAtIndex:v10];

    if (v16)
    {
      WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(&self->_listDelegate);
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_listDelegate);
          [v15 icsPreviewListController:self didSelectEvent:v16];
        }
      }
    }
  }
}

- (EKICSPreviewListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end