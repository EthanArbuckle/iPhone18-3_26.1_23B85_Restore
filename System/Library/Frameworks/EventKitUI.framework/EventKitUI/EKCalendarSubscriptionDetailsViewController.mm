@interface EKCalendarSubscriptionDetailsViewController
- (BOOL)enableDoneInitially;
- (BOOL)isNewCalendar;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (EKCalendarEditItemDelegate)delegate;
- (EKCalendarSubscriptionDetailsViewController)initWithCalendar:(id)calendar store:(id)store;
- (id)_tableHeaderView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int)sectionForCalendarEditItem:(id)item;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)calendarItemStartedEditing:(id)editing;
- (void)resetBackgroundColor;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation EKCalendarSubscriptionDetailsViewController

- (EKCalendarSubscriptionDetailsViewController)initWithCalendar:(id)calendar store:(id)store
{
  v41[2] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  storeCopy = store;
  v38.receiver = self;
  v38.super_class = EKCalendarSubscriptionDetailsViewController;
  v7 = [(EKCalendarSubscriptionDetailsViewController *)&v38 initWithStyle:2];
  if (v7)
  {
    v8 = objc_alloc_init(EKCalendarSubscriptionURLEditItem);
    [(EKCalendarSubscriptionURLEditItem *)v8 setEditable:0];
    v26 = objc_alloc_init(EKCalendarRemoveExtraInfoEditItem);
    v41[0] = v8;
    v41[1] = v26;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v9 = MEMORY[0x1E696AE18];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __70__EKCalendarSubscriptionDetailsViewController_initWithCalendar_store___block_invoke;
    v35[3] = &unk_1E8442500;
    v10 = calendarCopy;
    v36 = v10;
    v11 = storeCopy;
    v37 = v11;
    v12 = [v9 predicateWithBlock:v35];
    v13 = [v25 filteredArrayUsingPredicate:v12];
    sections = v7->_sections;
    v7->_sections = v13;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v7->_sections;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v16)
    {
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          [v19 setCalendar:v10 store:v11];
          [v19 setDelegate:v7];
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
    }

    v20 = EventKitUIBundle();
    v21 = [v20 localizedStringForKey:@"Subscription Details" value:&stru_1F4EF6790 table:0];
    [(EKCalendarSubscriptionDetailsViewController *)v7 setTitle:v21];

    objc_initWeak(&location, v7);
    v39 = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__EKCalendarSubscriptionDetailsViewController_initWithCalendar_store___block_invoke_2;
    v28[3] = &unk_1E843EBE8;
    objc_copyWeak(&v29, &location);
    v23 = [(EKCalendarSubscriptionDetailsViewController *)v7 registerForTraitChanges:v22 withHandler:v28];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __70__EKCalendarSubscriptionDetailsViewController_initWithCalendar_store___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = EKCalendarSubscriptionDetailsViewController;
  [(EKCalendarSubscriptionDetailsViewController *)&v3 viewDidLoad];
  [(EKCalendarSubscriptionDetailsViewController *)self resetBackgroundColor];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  tableView = [(EKCalendarSubscriptionDetailsViewController *)self tableView];
  if (isPresentedInsidePopover)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [tableView setBackgroundColor:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EKCalendarSubscriptionDetailsViewController;
  [(EKCalendarSubscriptionDetailsViewController *)&v6 viewWillAppear:appear];
  _tableHeaderView = [(EKCalendarSubscriptionDetailsViewController *)self _tableHeaderView];
  tableView = [(EKCalendarSubscriptionDetailsViewController *)self tableView];
  [tableView setTableHeaderView:_tableHeaderView];
}

- (id)_tableHeaderView
{
  tableHeaderView = self->_tableHeaderView;
  if (!tableHeaderView)
  {
    v4 = [EKSubscribedCalendarDescriptionHeader alloc];
    tableView = [(EKCalendarSubscriptionDetailsViewController *)self tableView];
    [tableView bounds];
    v6 = [(EKSubscribedCalendarDescriptionHeader *)v4 initWithParentWidth:CGRectGetWidth(v10)];
    v7 = self->_tableHeaderView;
    self->_tableHeaderView = v6;

    tableHeaderView = self->_tableHeaderView;
  }

  return tableHeaderView;
}

- (void)viewWillLayoutSubviews
{
  tableHeaderView = self->_tableHeaderView;
  tableView = [(EKCalendarSubscriptionDetailsViewController *)self tableView];
  [tableView bounds];
  [(EKSubscribedCalendarDescriptionHeader *)tableHeaderView updateLayoutForWidth:CGRectGetWidth(v5)];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  numberOfSubitems = [v4 numberOfSubitems];

  return numberOfSubitems;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 cellForSubitemAtIndex:v7];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  headerTitle = [v4 headerTitle];

  return headerTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  footerTitle = [v4 footerTitle];

  return footerTitle;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  [v8 calendarEditor:0 didSelectSubitem:v7];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  LOBYTE(pathCopy) = [v6 calendarEditor:0 shouldSelectSubitem:v7];
  return pathCopy;
}

- (void)calendarItemStartedEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(EKCalendarSubscriptionDetailsViewController *)self delegate];
  [delegate calendarItemStartedEditing:editingCopy];
}

- (int)sectionForCalendarEditItem:(id)item
{
  itemCopy = item;
  if ([(NSArray *)self->_sections count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:v5];

      if (v6 == itemCopy)
      {
        break;
      }

      if ([(NSArray *)self->_sections count]<= ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v5) = -1;
  }

  return v5;
}

- (BOOL)isNewCalendar
{
  delegate = [(EKCalendarSubscriptionDetailsViewController *)self delegate];
  isNewCalendar = [delegate isNewCalendar];

  return isNewCalendar;
}

- (BOOL)enableDoneInitially
{
  delegate = [(EKCalendarSubscriptionDetailsViewController *)self delegate];
  enableDoneInitially = [delegate enableDoneInitially];

  return enableDoneInitially;
}

- (EKCalendarEditItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end