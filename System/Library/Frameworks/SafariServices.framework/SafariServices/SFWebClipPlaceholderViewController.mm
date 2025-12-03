@interface SFWebClipPlaceholderViewController
- (SFWebClipPlaceholderViewController)initWithStyle:(int64_t)style;
- (UIEdgeInsets)_cellInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation SFWebClipPlaceholderViewController

- (SFWebClipPlaceholderViewController)initWithStyle:(int64_t)style
{
  v14.receiver = self;
  v14.super_class = SFWebClipPlaceholderViewController;
  v3 = [(SFWebClipPlaceholderViewController *)&v14 initWithStyle:1];
  if (v3)
  {
    v4 = _WBSLocalizedString();
    [(SFWebClipPlaceholderViewController *)v3 setTitle:v4];

    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = _WBSLocalizedString();
    v7 = [v5 initWithTitle:v6 style:2 target:v3 action:0];

    [v7 setEnabled:0];
    navigationItem = [(SFWebClipPlaceholderViewController *)v3 navigationItem];
    [navigationItem setRightBarButtonItem:v7];

    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverCancelButtonItem") action:{v3, 0}];
    [v10 setEnabled:0];
    navigationItem2 = [(SFWebClipPlaceholderViewController *)v3 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v10];

    v12 = v3;
  }

  return v3;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = SFWebClipPlaceholderViewController;
  [(SFWebClipPlaceholderViewController *)&v9 loadView];
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  titleCell = self->_titleCell;
  self->_titleCell = v3;

  [(UITableViewCell *)self->_titleCell setSelectionStyle:0];
  textLabel = [(UITableViewCell *)self->_titleCell textLabel];
  [textLabel setEnabled:0];

  v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  addressCell = self->_addressCell;
  self->_addressCell = v6;

  [(UITableViewCell *)self->_addressCell setSelectionStyle:0];
  textLabel2 = [(UITableViewCell *)self->_addressCell textLabel];
  [textLabel2 setEnabled:0];
}

- (void)viewWillLayoutSubviews
{
  [(SFWebClipPlaceholderViewController *)self _cellInset];
  [(UITableViewCell *)self->_titleCell setSeparatorInset:?];
  [(SFWebClipPlaceholderViewController *)self _cellInset];
  addressCell = self->_addressCell;

  [(UITableViewCell *)addressCell setSeparatorInset:?];
}

- (UIEdgeInsets)_cellInset
{
  view = [(SFWebClipPlaceholderViewController *)self view];
  [view _sf_safeAreaInsetsFlippedForLayoutDirectionality];
  v4 = v3 + 90.0;

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v8;
  result.top = v5;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [path row];
  v6 = &OBJC_IVAR___SFWebClipPlaceholderViewController__addressCell;
  if (!v5)
  {
    v6 = &OBJC_IVAR___SFWebClipPlaceholderViewController__titleCell;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  return v7;
}

@end