@interface IdentitySwitcherViewController
- (CGSize)preferredContentSize;
- (IdentitySwitcherViewController)initWithModel:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation IdentitySwitcherViewController

- (IdentitySwitcherViewController)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IdentitySwitcherViewController;
  v6 = [(IdentitySwitcherViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
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
  v9 = [[IdentitySwitcherHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(IdentitySwitcherHeaderView *)v9 setPreservesSuperviewLayoutMargins:1];
  [(IdentitySwitcherHeaderView *)v9 sizeToFit];
  [(UITableView *)self->_tableView setTableHeaderView:v9];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates:a3];
  v5 = [v4 count];

  return v5 + 2;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  v6 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v7 = [v6 count] + 1;

  if (v5 < v7)
  {
    return UITableViewAutomaticDimension;
  }

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 _scaledValueForValue:52.0];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v10 = [v9 count];

  if (v8 <= v10)
  {
    v17 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    if ([v7 row])
    {
      v20 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v18 = [v20 objectAtIndex:{objc_msgSend(v7, "row") - 1}];

      v21 = [v17 isEqual:v18];
    }

    else
    {
      v18 = 0;
      v21 = v17 == 0;
    }

    v22 = [IdentitySwitcherCell cellForSource:v18 withModel:self->_model inTableView:v6];
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
    v24 = [v7 row];
    v25 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
    v26 = [v25 count];

    if (v24 < v26)
    {
      [v11 layoutMargins];
      [v11 setSeparatorInset:{0.0, v27 + 65.0, 0.0, 0.0}];
    }
  }

  else
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v12 = [v6 tintColor];
    v13 = [v11 textLabel];
    [v13 setTextColor:v12];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Add Delegate Calendar…" value:&stru_1002133B8 table:0];
    v16 = [v11 textLabel];
    [v16 setText:v15];

    v17 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:0];
    v18 = [UIFont fontWithDescriptor:v17 size:0.0];
    v19 = [v11 textLabel];
    [v19 setFont:v18];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  [a3 deselectRowAtIndexPath:v16 animated:1];
  v6 = [v16 row];
  v7 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
  v8 = [v7 count];

  if (v6 <= v8)
  {
    if ([v16 row] < 1)
    {
      v13 = 0;
    }

    else
    {
      v12 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates];
      v13 = [v12 objectAtIndex:{objc_msgSend(v16, "row") - 1}];
    }

    model = self->_model;
    v15 = [(CUIKCalendarModel *)model selectedCalendars];
    [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v13 selectedCalendars:v15];

    v10 = [(IdentitySwitcherViewController *)self presentingViewController];
    [v10 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v9 = [(IdentitySwitcherViewController *)self presentingViewController];
    [v9 dismissViewControllerAnimated:1 completion:0];

    v10 = [NSURL URLWithString:@"prefs:root=CALENDAR&path=DELEGATE_CALENDARS"];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openSensitiveURL:v10 withOptions:0 error:0];
  }
}

@end