@interface EKICSPreviewListController
- (EKICSPreviewListController)initWithModel:(id)a3;
- (EKICSPreviewListDelegate)listDelegate;
- (id)_timeZone;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)buildSections;
- (void)dealloc;
- (void)importAllPressed:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setOverrideCalendarColor:(CGColor *)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateImportButton;
- (void)viewDidLoad;
@end

@implementation EKICSPreviewListController

- (EKICSPreviewListController)initWithModel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EKICSPreviewListController;
  v6 = [(EKICSPreviewListController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
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
  v3 = [(EKICSPreviewListController *)self tableView];
  [v3 setSeparatorStyle:0];
  [v3 setAllowsSelection:self->_allowsSubitems];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v3 registerClass:v7 forCellReuseIdentifier:v9];

  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"PreviewListControllerHeaderReuseIdentifier"];
}

- (void)updateImportButton
{
  if (self->_allowsImport && [(EKICSPreviewModel *)self->_model unimportedEventCount])
  {
    v3 = [(EKICSPreviewListController *)self navigationItem];
    v4 = [v3 rightBarButtonItem];

    if (v4)
    {
      return;
    }

    v5 = [(EKICSPreviewModel *)self->_model importedEvents];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = EventKitUIBundle();
      v9 = [v8 localizedStringForKey:@"Add (%@)" value:&stru_1F4EF6790 table:0];
      [(EKICSPreviewModel *)self->_model unimportedEventCount];
      v10 = CUIKLocalizedStringForInteger();
      v13 = [v7 localizedStringWithFormat:v9, v10];
    }

    else
    {
      v8 = EventKitUIBundle();
      v13 = [v8 localizedStringForKey:@"Add All" value:&stru_1F4EF6790 table:0];
    }

    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v13 style:2 target:self action:sel_importAllPressed_];
    v12 = [(EKICSPreviewListController *)self navigationItem];
    [v12 setRightBarButtonItem:v11];
  }

  else
  {
    v13 = [(EKICSPreviewListController *)self navigationItem];
    [v13 setRightBarButtonItem:0];
  }
}

- (void)importAllPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
  [WeakRetained icsPreviewListControllerDidRequestImportAll:self];
}

- (void)setOverrideCalendarColor:(CGColor *)a3
{
  if (self->_overrideCalendarColor != a3)
  {
    self->_overrideCalendarColor = a3;
    v4 = [(EKICSPreviewListController *)self tableView];
    [v4 reloadData];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  [(EKICSPreviewListController *)self buildSections:a3];
  v7 = [(EKICSPreviewListController *)self tableView];
  [v7 reloadData];

  [(EKICSPreviewListController *)self updateImportButton];
}

- (id)_timeZone
{
  v2 = [(EKICSPreviewModel *)self->_model eventStore];
  v3 = [v2 timeZone];

  return v3;
}

- (void)buildSections
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(EKICSPreviewModel *)self->_model allEvents];
  v4 = [v3 mutableCopy];

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
        v13 = [v12 startDate];
        v14 = [(EKICSPreviewListController *)self _timeZone];
        v15 = [v13 dateForStartOfDayInTimeZone:v14];

        if (v9)
        {
          v16 = [v9 date];
          v17 = [v15 isEqualToDate:v16];

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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v7 = a3;
  v8 = [(NSMutableArray *)sections objectAtIndex:a4];
  v9 = [v8 date];
  v10 = [(EKICSPreviewListController *)self _timeZone];
  v14 = 0;
  v15 = 0;
  v11 = [EKUIListViewHeader headerWithTableView:v7 reuseIdentifier:@"PreviewListControllerHeaderReuseIdentifier" date:v9 timeZone:v10 currentYearStart:&v15 currentYearEnd:&v14];

  v12 = v15;

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 events];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v7 section]);
  v9 = [v8 events];
  v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

  overrideCalendarColor = self->_overrideCalendarColor;
  if (overrideCalendarColor)
  {
    v12 = [v10 calendar];
    [v12 setCGColor:overrideCalendarColor];
  }

  v13 = [v8 date];
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [(EKICSPreviewListController *)self _timeZone];
  [v14 setTimeZone:v15];

  if ([v10 isAllDay])
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v6 dequeueReusableCellWithIdentifier:v17 forIndexPath:v7];

    [v18 updateWithEvent:v10 dimmed:0];
  }

  else
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v18 = [v6 dequeueReusableCellWithIdentifier:v20 forIndexPath:v7];

    v21 = [v10 startDate];
    v22 = [v10 endDateUnadjustedForLegacyClients];
    v23 = [v14 cal_isMultidayEventForUIWithStartDate:v21 endDate:v22];

    [v18 updateWithEvent:v10 isMultiday:v23 occurrenceStartDate:v13 dimmed:0];
  }

  return v18;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if (self->_allowsSubitems)
  {
    sections = self->_sections;
    v7 = a4;
    v8 = -[NSMutableArray objectAtIndex:](sections, "objectAtIndex:", [v7 section]);
    v9 = [v8 events];
    v10 = [v7 row];

    v16 = [v9 objectAtIndex:v10];

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