@interface EKCalendarPublishingEditItem
- (BOOL)configureWithCalendar:(id)calendar;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (id)pubishURL;
- (unint64_t)numberOfSubitems;
- (void)_publishChanged:(id)changed;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)reset;
@end

@implementation EKCalendarPublishingEditItem

- (void)reset
{
  spinner = self->_spinner;
  self->_spinner = 0;
}

- (id)footerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Allow anyone to subscribe to a read-only version of this calendar." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (BOOL)configureWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  -[EKCalendarPublishingEditItem setPublished:](self, "setPublished:", [calendarCopy isPublished]);
  LOBYTE(self) = [calendarCopy canBePublished];

  return self;
}

- (unint64_t)numberOfSubitems
{
  if (![(EKCalendar *)self->super._calendar isPublished])
  {
    return 1;
  }

  publishURL = [(EKCalendar *)self->super._calendar publishURL];
  if (publishURL)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  if (EKUIUnscaledCatalyst())
  {

    return EKUIUnscaledCatalystTableRowHeightDefault();
  }

  else
  {

    return EKUITableRowHeightDefault();
  }
}

- (void)_publishChanged:(id)changed
{
  v21 = *MEMORY[0x1E69E9840];
  if (changed)
  {
    changedCopy = changed;
    -[EKCalendarPublishingEditItem setPublished:](self, "setPublished:", [changedCopy isOn]);
    isOn = [changedCopy isOn];

    [(EKCalendar *)self->super._calendar setIsPublished:isOn];
    delegate = [(EKCalendarEditItem *)self delegate];
    v7 = [delegate editorForCalendarEditItem:self];

    calendar = self->super._calendar;
    v18 = 0;
    v9 = [v7 saveCalendar:calendar error:&v18];
    v10 = v18;
    if ((v9 & 1) == 0)
    {
      v11 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Error Publishing Calendar: %@", buf, 0xCu);
      }
    }

    delegate2 = [(EKCalendarEditItem *)self delegate];
    [delegate2 calendarItemStartedEditing:self];

    [(EKCalendarPublishingEditItem *)self reset];
    delegate3 = [(EKCalendarEditItem *)self delegate];
    tableView = [delegate3 tableView];
    v15 = MEMORY[0x1E696AC90];
    delegate4 = [(EKCalendarEditItem *)self delegate];
    v17 = [v15 indexSetWithIndex:{objc_msgSend(delegate4, "sectionForCalendarEditItem:", self)}];
    [tableView reloadSections:v17 withRowAnimation:100];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (index == 1)
  {
    v5 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"ShareCell"];
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"Share Link…" value:&stru_1F4EF6790 table:0];
    textLabel = [(EKUITableViewCell *)v5 textLabel];
    [textLabel setText:v12];
  }

  else if (index)
  {
    v5 = 0;
  }

  else
  {
    v4 = objc_alloc_init(EKUITableViewCell);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __54__EKCalendarPublishingEditItem_cellForSubitemAtIndex___block_invoke;
    v21 = &unk_1E843EFB8;
    selfCopy = self;
    v5 = v4;
    v23 = v5;
    v6 = _Block_copy(&v18);
    if ([(EKCalendar *)self->super._calendar isPublished:v18]&& ([(EKCalendar *)self->super._calendar publishURL], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      spinner = self->_spinner;
      self->_spinner = v15;

      [(UIActivityIndicatorView *)self->_spinner startAnimating];
      [(EKUITableViewCell *)v5 setAccessoryView:self->_spinner];
      v17 = dispatch_time(0, 5000000000);
      dispatch_after(v17, MEMORY[0x1E69E96A0], v6);
    }

    else
    {
      v6[2](v6);
    }

    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Public Calendar" value:&stru_1F4EF6790 table:0];
    textLabel2 = [(EKUITableViewCell *)v5 textLabel];
    [textLabel2 setText:v9];

    [(EKUITableViewCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

void __54__EKCalendarPublishingEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v2 setOn:*(*(a1 + 32) + 32)];
  [v2 addTarget:*(a1 + 32) action:sel__publishChanged_ forControlEvents:4096];
  [*(a1 + 40) setAccessoryView:v2];
}

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v16[1] = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  if (subitem == 1)
  {
    v7 = [CalendarPublishingActivityViewController alloc];
    pubishURL = [(EKCalendarPublishingEditItem *)self pubishURL];
    v16[0] = pubishURL;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [(CalendarPublishingActivityViewController *)v7 initWithActivityItems:v9 applicationActivities:0];

    [(CalendarPublishingActivityViewController *)v10 setActivityDelegate:self];
    view = [editorCopy view];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
    {
      view2 = [editorCopy view];
      IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

      if (IsRegular)
      {
        [(CalendarPublishingActivityViewController *)v10 setAllowsCustomPresentationStyle:1];
        [(CalendarPublishingActivityViewController *)v10 setModalPresentationStyle:3];
      }
    }

    else
    {
    }

    delegate = [(EKCalendarEditItem *)self delegate];
    owningNavigationController = [delegate owningNavigationController];
    [owningNavigationController presentModalViewController:v10 withTransition:8];
  }
}

- (id)pubishURL
{
  publishURL = [(EKCalendar *)self->super._calendar publishURL];
  absoluteString = [publishURL absoluteString];

  return absoluteString;
}

@end