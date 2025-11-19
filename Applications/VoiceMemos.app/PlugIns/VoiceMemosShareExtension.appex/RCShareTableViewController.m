@interface RCShareTableViewController
- (void)_setupTitleCellTextWithDefaultFileName:(id)a3;
- (void)loadView;
- (void)setSharedFileName:(id)a3;
@end

@implementation RCShareTableViewController

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = RCShareTableViewController;
  [(RCShareTableViewController *)&v14 loadView];
  v3 = +[UIColor secondarySystemBackgroundColor];
  v4 = [(RCShareTableViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = RCLocalizedFrameworkString();
  [(RCShareTableViewController *)self setTitle:v5];

  v6 = objc_alloc_init(UITableViewCell);
  voiceMemoTitleCell = self->_voiceMemoTitleCell;
  self->_voiceMemoTitleCell = v6;

  v8 = +[UIColor systemBackgroundColor];
  [(UITableViewCell *)self->_voiceMemoTitleCell setBackgroundColor:v8];

  v9 = [UITextField alloc];
  v10 = [(UITableViewCell *)self->_voiceMemoTitleCell contentView];
  [v10 bounds];
  v16 = CGRectInset(v15, 15.0, 0.0);
  v11 = [v9 initWithFrame:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
  voiceMemoTitleText = self->_voiceMemoTitleText;
  self->_voiceMemoTitleText = v11;

  [(UITextField *)self->_voiceMemoTitleText setAutoresizingMask:18];
  v13 = [(UITableViewCell *)self->_voiceMemoTitleCell contentView];
  [v13 addSubview:self->_voiceMemoTitleText];
}

- (void)setSharedFileName:(id)a3
{
  objc_storeStrong(&self->_sharedFileName, a3);
  v5 = a3;
  [(RCShareTableViewController *)self _setupTitleCellTextWithDefaultFileName:v5];
}

- (void)_setupTitleCellTextWithDefaultFileName:(id)a3
{
  v4 = a3;
  voiceMemoTitleText = self->_voiceMemoTitleText;
  if (voiceMemoTitleText && !self->_didSetupTitleCellText)
  {
    v6 = v4;
    [(UITextField *)voiceMemoTitleText setText:v4];
    [(UITextField *)self->_voiceMemoTitleText setPlaceholder:v6];
    self->_didSetupTitleCellText = 1;
  }

  _objc_release_x1();
}

@end