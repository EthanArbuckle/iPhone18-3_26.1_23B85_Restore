@interface ExtensionLabelViewController
- (ExtensionLabelViewController)initWithTitle:(id)a3 advertisementText:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)text;
- (void)configureLabelView;
- (void)configureTableView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ExtensionLabelViewController

- (id)text
{
  v2 = [(ExtensionLabelViewController *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)configureLabelView
{
  v3 = +[UIColor clearColor];
  v4 = [(ExtensionLabelViewController *)self label];
  [v4 setBackgroundColor:v3];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [(ExtensionLabelViewController *)self label];
  [v5 setFont:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 dequeueReusableCellWithIdentifier:v7];

  v9 = [v8 advertisementLabel];
  [(ExtensionLabelViewController *)self setLabel:v9];

  v10 = [(ExtensionLabelViewController *)self advertisementText];
  v11 = [(ExtensionLabelViewController *)self label];
  [v11 setText:v10];

  [(ExtensionLabelViewController *)self configureLabelView];

  return v8;
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [(ExtensionLabelViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(ExtensionLabelViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 registerClass:v6 forCellReuseIdentifier:v8];

  v9 = [(ExtensionLabelViewController *)self tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(ExtensionLabelViewController *)self tableView];
  [v10 setScrollEnabled:0];

  v11 = [(ExtensionLabelViewController *)self tableView];
  [v11 setAllowsSelection:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ExtensionLabelViewController;
  [(ExtensionLabelViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ExtensionLabelViewController;
  [(ExtensionLabelViewController *)&v3 viewDidLoad];
  [(ExtensionLabelViewController *)self configureTableView];
}

- (ExtensionLabelViewController)initWithTitle:(id)a3 advertisementText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ExtensionLabelViewController;
  v8 = [(ExtensionLabelViewController *)&v13 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    [(ExtensionLabelViewController *)v8 setTitle:v6];
    v10 = [v7 copy];
    advertisementText = v9->_advertisementText;
    v9->_advertisementText = v10;
  }

  return v9;
}

@end