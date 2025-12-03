@interface BYODBaseViewController
+ (id)log;
- (BYODBaseViewController)initWithACAccount:(id)account;
- (void)createViewControllerWithTitle:(id)title attributedDetail:(id)detail detailTextAlignment:(int64_t)alignment detailTextFontSize:(double)size icon:(id)icon;
- (void)createViewControllerWithTitle:(id)title detail:(id)detail icon:(id)icon;
- (void)viewDidLoad;
@end

@implementation BYODBaseViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27958;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6480 != -1)
  {
    dispatch_once(&qword_D6480, block);
  }

  v2 = qword_D6478;

  return v2;
}

- (BYODBaseViewController)initWithACAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = BYODBaseViewController;
  v5 = [(BYODBaseViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYODBaseViewController *)v5 setUserAccount:accountCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BYODBaseViewController;
  [(BYODBaseViewController *)&v2 viewDidLoad];
}

- (void)createViewControllerWithTitle:(id)title detail:(id)detail icon:(id)icon
{
  titleCopy = title;
  detailCopy = detail;
  iconCopy = icon;
  v10 = iconCopy;
  if (!iconCopy)
  {
    v15 = [[OBWelcomeController alloc] initWithTitle:titleCopy detailText:detailCopy icon:0 contentLayout:2];
    goto LABEL_9;
  }

  iconType = [iconCopy iconType];
  if (!iconType)
  {
    v16 = [OBWelcomeController alloc];
    symbolName = [v10 symbolName];
    v14 = [v16 initWithTitle:titleCopy detailText:detailCopy symbolName:symbolName contentLayout:2];
    goto LABEL_7;
  }

  if (iconType == &dword_0 + 1)
  {
    v12 = [OBWelcomeController alloc];
    symbolName = [v10 image];
    v14 = [v12 initWithTitle:titleCopy detailText:detailCopy icon:symbolName contentLayout:2];
LABEL_7:
    v15 = v14;

    goto LABEL_9;
  }

  v15 = 0;
LABEL_9:
  [(BYODBaseViewController *)self _addDataCardsView:v15];
  [(BYODBaseViewController *)self _addContentView:v15];
  [(BYODBaseViewController *)self _addButtonTrayButtons:v15];
  [(BYODBaseViewController *)self addChildViewController:v15];
  view = [(BYODBaseViewController *)self view];
  view2 = [v15 view];
  [view addSubview:view2];

  view3 = [(BYODBaseViewController *)self view];
  [view3 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  view4 = [v15 view];
  [view4 setFrame:{v21, v23, v25, v27}];

  view5 = [v15 view];
  [view5 setAutoresizingMask:18];

  [v15 didMoveToParentViewController:self];
}

- (void)createViewControllerWithTitle:(id)title attributedDetail:(id)detail detailTextAlignment:(int64_t)alignment detailTextFontSize:(double)size icon:(id)icon
{
  titleCopy = title;
  detailCopy = detail;
  iconCopy = icon;
  v15 = iconCopy;
  if (!iconCopy)
  {
    v20 = [[OBWelcomeController alloc] initWithTitle:titleCopy detailText:0 icon:0 contentLayout:2];
    goto LABEL_9;
  }

  iconType = [iconCopy iconType];
  if (!iconType)
  {
    v21 = [OBWelcomeController alloc];
    symbolName = [v15 symbolName];
    v19 = [v21 initWithTitle:titleCopy detailText:0 symbolName:symbolName contentLayout:2];
    goto LABEL_7;
  }

  if (iconType == &dword_0 + 1)
  {
    v17 = [OBWelcomeController alloc];
    symbolName = [v15 image];
    v19 = [v17 initWithTitle:titleCopy detailText:0 icon:symbolName contentLayout:2];
LABEL_7:
    v20 = v19;

    goto LABEL_9;
  }

  v20 = 0;
LABEL_9:
  v22 = objc_alloc_init(UITextView);
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAttributedText:detailCopy];
  [v22 setTextAlignment:alignment];
  v23 = [UIFont systemFontOfSize:size];
  [v22 setFont:v23];

  [v22 setSelectable:1];
  [v22 setEditable:0];
  [(BYODBaseViewController *)self _addDataCardsView:v20];
  [(BYODBaseViewController *)self _addContentView:v20];
  [(BYODBaseViewController *)self _addButtonTrayButtons:v20];
  [(BYODBaseViewController *)self addChildViewController:v20];
  view = [(BYODBaseViewController *)self view];
  view2 = [v20 view];
  [view addSubview:view2];

  view3 = [v20 view];
  [view3 addSubview:v22];

  v27 = +[BYODBaseViewController log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *v53 = 0;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Added attributed text view to open a web link", v53, 2u);
  }

  heightAnchor = [v22 heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:400.0];
  [v29 setActive:1];

  topAnchor = [v22 topAnchor];
  contentView = [v20 contentView];
  topAnchor2 = [contentView topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [v33 setActive:1];

  leadingAnchor = [v22 leadingAnchor];
  contentView2 = [v20 contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [v37 setActive:1];

  trailingAnchor = [v22 trailingAnchor];
  contentView3 = [v20 contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [v41 setActive:1];

  view4 = [(BYODBaseViewController *)self view];
  [view4 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  view5 = [v20 view];
  [view5 setFrame:{v44, v46, v48, v50}];

  view6 = [v20 view];
  [view6 setAutoresizingMask:18];

  [v20 didMoveToParentViewController:self];
}

@end