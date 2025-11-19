@interface BYODBaseViewController
+ (id)log;
- (BYODBaseViewController)initWithACAccount:(id)a3;
- (void)createViewControllerWithTitle:(id)a3 attributedDetail:(id)a4 detailTextAlignment:(int64_t)a5 detailTextFontSize:(double)a6 icon:(id)a7;
- (void)createViewControllerWithTitle:(id)a3 detail:(id)a4 icon:(id)a5;
- (void)viewDidLoad;
@end

@implementation BYODBaseViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27958;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6480 != -1)
  {
    dispatch_once(&qword_D6480, block);
  }

  v2 = qword_D6478;

  return v2;
}

- (BYODBaseViewController)initWithACAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BYODBaseViewController;
  v5 = [(BYODBaseViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYODBaseViewController *)v5 setUserAccount:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BYODBaseViewController;
  [(BYODBaseViewController *)&v2 viewDidLoad];
}

- (void)createViewControllerWithTitle:(id)a3 detail:(id)a4 icon:(id)a5
{
  v30 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    v15 = [[OBWelcomeController alloc] initWithTitle:v30 detailText:v8 icon:0 contentLayout:2];
    goto LABEL_9;
  }

  v11 = [v9 iconType];
  if (!v11)
  {
    v16 = [OBWelcomeController alloc];
    v13 = [v10 symbolName];
    v14 = [v16 initWithTitle:v30 detailText:v8 symbolName:v13 contentLayout:2];
    goto LABEL_7;
  }

  if (v11 == &dword_0 + 1)
  {
    v12 = [OBWelcomeController alloc];
    v13 = [v10 image];
    v14 = [v12 initWithTitle:v30 detailText:v8 icon:v13 contentLayout:2];
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
  v17 = [(BYODBaseViewController *)self view];
  v18 = [v15 view];
  [v17 addSubview:v18];

  v19 = [(BYODBaseViewController *)self view];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v15 view];
  [v28 setFrame:{v21, v23, v25, v27}];

  v29 = [v15 view];
  [v29 setAutoresizingMask:18];

  [v15 didMoveToParentViewController:self];
}

- (void)createViewControllerWithTitle:(id)a3 attributedDetail:(id)a4 detailTextAlignment:(int64_t)a5 detailTextFontSize:(double)a6 icon:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = v14;
  if (!v14)
  {
    v20 = [[OBWelcomeController alloc] initWithTitle:v12 detailText:0 icon:0 contentLayout:2];
    goto LABEL_9;
  }

  v16 = [v14 iconType];
  if (!v16)
  {
    v21 = [OBWelcomeController alloc];
    v18 = [v15 symbolName];
    v19 = [v21 initWithTitle:v12 detailText:0 symbolName:v18 contentLayout:2];
    goto LABEL_7;
  }

  if (v16 == &dword_0 + 1)
  {
    v17 = [OBWelcomeController alloc];
    v18 = [v15 image];
    v19 = [v17 initWithTitle:v12 detailText:0 icon:v18 contentLayout:2];
LABEL_7:
    v20 = v19;

    goto LABEL_9;
  }

  v20 = 0;
LABEL_9:
  v22 = objc_alloc_init(UITextView);
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAttributedText:v13];
  [v22 setTextAlignment:a5];
  v23 = [UIFont systemFontOfSize:a6];
  [v22 setFont:v23];

  [v22 setSelectable:1];
  [v22 setEditable:0];
  [(BYODBaseViewController *)self _addDataCardsView:v20];
  [(BYODBaseViewController *)self _addContentView:v20];
  [(BYODBaseViewController *)self _addButtonTrayButtons:v20];
  [(BYODBaseViewController *)self addChildViewController:v20];
  v24 = [(BYODBaseViewController *)self view];
  v25 = [v20 view];
  [v24 addSubview:v25];

  v26 = [v20 view];
  [v26 addSubview:v22];

  v27 = +[BYODBaseViewController log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *v53 = 0;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Added attributed text view to open a web link", v53, 2u);
  }

  v28 = [v22 heightAnchor];
  v29 = [v28 constraintEqualToConstant:400.0];
  [v29 setActive:1];

  v30 = [v22 topAnchor];
  v31 = [v20 contentView];
  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:0.0];
  [v33 setActive:1];

  v34 = [v22 leadingAnchor];
  v35 = [v20 contentView];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:0.0];
  [v37 setActive:1];

  v38 = [v22 trailingAnchor];
  v39 = [v20 contentView];
  v40 = [v39 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:0.0];
  [v41 setActive:1];

  v42 = [(BYODBaseViewController *)self view];
  [v42 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = [v20 view];
  [v51 setFrame:{v44, v46, v48, v50}];

  v52 = [v20 view];
  [v52 setAutoresizingMask:18];

  [v20 didMoveToParentViewController:self];
}

@end