@interface IdentitySwitcherViewController
- (CGSize)preferredContentSize;
- (IdentitySwitcherViewController)initWithModel:(id)model;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation IdentitySwitcherViewController

- (IdentitySwitcherViewController)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = IdentitySwitcherViewController;
  v6 = [(IdentitySwitcherViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)loadView
{
  v3 = [UITableView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  tableView = self->_tableView;
  self->_tableView = v7;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  +[IdentitySwitcherCell cellHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];
  height = [[IdentitySwitcherHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(IdentitySwitcherHeaderView *)height setPreservesSuperviewLayoutMargins:1];
  [(IdentitySwitcherHeaderView *)height sizeToFit];
  [(UITableView *)self->_tableView setTableHeaderView:height];
  [(IdentitySwitcherViewController *)self setView:self->_tableView];
}

- (CGSize)preferredContentSize
{
  tableView = self->_tableView;
  [(UITableView *)tableView bounds];

  [(UITableView *)tableView sizeThatFits:v3, 1.79769313e308];
  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates:view];
  v5 = [v4 count];

  return v5 + 2;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = [path row];
  sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v7 = [sortedEnabledDelegates count] + 1;

  if (v5 < v7)
  {
    return UITableViewAutomaticDimension;
  }

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 _scaledValueForValue:52.0];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v10 = [sortedEnabledDelegates count];

  if (v8 <= v10)
  {
    sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    if ([pathCopy row])
    {
      sortedEnabledDelegates2 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v18 = [sortedEnabledDelegates2 objectAtIndex:{objc_msgSend(pathCopy, "row") - 1}];

      v21 = [sourceForSelectedIdentity isEqual:v18];
    }

    else
    {
      v18 = 0;
      v21 = sourceForSelectedIdentity == 0;
    }

    v22 = [IdentitySwitcherCell cellForSource:v18 withModel:self->_model inTableView:viewCopy];
    v11 = v22;
    if (v21)
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    [v22 setAccessoryType:v23];
    v24 = [pathCopy row];
    sortedEnabledDelegates3 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
    v26 = [sortedEnabledDelegates3 count];

    if (v24 < v26)
    {
      [v11 layoutMargins];
      [v11 setSeparatorInset:{0.0, v27 + 65.0, 0.0, 0.0}];
    }
  }

  else
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    tintColor = [viewCopy tintColor];
    textLabel = [v11 textLabel];
    [textLabel setTextColor:tintColor];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Add Delegate Calendar…" value:&stru_1002133B8 table:0];
    textLabel2 = [v11 textLabel];
    [textLabel2 setText:v15];

    sourceForSelectedIdentity = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:0];
    v18 = [UIFont fontWithDescriptor:sourceForSelectedIdentity size:0.0];
    textLabel3 = [v11 textLabel];
    [textLabel3 setFont:v18];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = [pathCopy row];
  sortedEnabledDelegates = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v8 = [sortedEnabledDelegates count];

  if (v6 <= v8)
  {
    if ([pathCopy row] < 1)
    {
      v13 = 0;
    }

    else
    {
      sortedEnabledDelegates2 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v13 = [sortedEnabledDelegates2 objectAtIndex:{objc_msgSend(pathCopy, "row") - 1}];
    }

    model = self->_model;
    selectedCalendars = [(CUIKCalendarModel *)model selectedCalendars];
    [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v13 selectedCalendars:selectedCalendars];

    presentingViewController = [(IdentitySwitcherViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    presentingViewController2 = [(IdentitySwitcherViewController *)self presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];

    presentingViewController = [NSURL URLWithString:@"prefs:root=CALENDAR&path=DELEGATE_CALENDARS"];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openSensitiveURL:presentingViewController withOptions:0 error:0];
  }
}

@end