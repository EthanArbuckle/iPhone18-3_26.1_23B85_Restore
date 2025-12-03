@interface RCShareTableViewController
- (void)_setupTitleCellTextWithDefaultFileName:(id)name;
- (void)loadView;
- (void)setSharedFileName:(id)name;
@end

@implementation RCShareTableViewController

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = RCShareTableViewController;
  [(RCShareTableViewController *)&v14 loadView];
  v3 = +[UIColor secondarySystemBackgroundColor];
  view = [(RCShareTableViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = RCLocalizedFrameworkString();
  [(RCShareTableViewController *)self setTitle:v5];

  v6 = objc_alloc_init(UITableViewCell);
  voiceMemoTitleCell = self->_voiceMemoTitleCell;
  self->_voiceMemoTitleCell = v6;

  v8 = +[UIColor systemBackgroundColor];
  [(UITableViewCell *)self->_voiceMemoTitleCell setBackgroundColor:v8];

  v9 = [UITextField alloc];
  contentView = [(UITableViewCell *)self->_voiceMemoTitleCell contentView];
  [contentView bounds];
  v16 = CGRectInset(v15, 15.0, 0.0);
  v11 = [v9 initWithFrame:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
  voiceMemoTitleText = self->_voiceMemoTitleText;
  self->_voiceMemoTitleText = v11;

  [(UITextField *)self->_voiceMemoTitleText setAutoresizingMask:18];
  contentView2 = [(UITableViewCell *)self->_voiceMemoTitleCell contentView];
  [contentView2 addSubview:self->_voiceMemoTitleText];
}

- (void)setSharedFileName:(id)name
{
  objc_storeStrong(&self->_sharedFileName, name);
  nameCopy = name;
  [(RCShareTableViewController *)self _setupTitleCellTextWithDefaultFileName:nameCopy];
}

- (void)_setupTitleCellTextWithDefaultFileName:(id)name
{
  nameCopy = name;
  voiceMemoTitleText = self->_voiceMemoTitleText;
  if (voiceMemoTitleText && !self->_didSetupTitleCellText)
  {
    v6 = nameCopy;
    [(UITextField *)voiceMemoTitleText setText:nameCopy];
    [(UITextField *)self->_voiceMemoTitleText setPlaceholder:v6];
    self->_didSetupTitleCellText = 1;
  }

  _objc_release_x1();
}

@end