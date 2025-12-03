@interface ExtensionLabelViewController
- (ExtensionLabelViewController)initWithTitle:(id)title advertisementText:(id)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)text;
- (void)configureLabelView;
- (void)configureTableView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ExtensionLabelViewController

- (id)text
{
  label = [(ExtensionLabelViewController *)self label];
  text = [label text];

  return text;
}

- (void)configureLabelView
{
  v3 = +[UIColor clearColor];
  label = [(ExtensionLabelViewController *)self label];
  [label setBackgroundColor:v3];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  label2 = [(ExtensionLabelViewController *)self label];
  [label2 setFont:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7];

  advertisementLabel = [v8 advertisementLabel];
  [(ExtensionLabelViewController *)self setLabel:advertisementLabel];

  advertisementText = [(ExtensionLabelViewController *)self advertisementText];
  label = [(ExtensionLabelViewController *)self label];
  [label setText:advertisementText];

  [(ExtensionLabelViewController *)self configureLabelView];

  return v8;
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = [(ExtensionLabelViewController *)self tableView];
  [tableView setTableFooterView:v3];

  tableView2 = [(ExtensionLabelViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [tableView2 registerClass:v6 forCellReuseIdentifier:v8];

  tableView3 = [(ExtensionLabelViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(ExtensionLabelViewController *)self tableView];
  [tableView4 setScrollEnabled:0];

  tableView5 = [(ExtensionLabelViewController *)self tableView];
  [tableView5 setAllowsSelection:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ExtensionLabelViewController;
  [(ExtensionLabelViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ExtensionLabelViewController;
  [(ExtensionLabelViewController *)&v3 viewDidLoad];
  [(ExtensionLabelViewController *)self configureTableView];
}

- (ExtensionLabelViewController)initWithTitle:(id)title advertisementText:(id)text
{
  titleCopy = title;
  textCopy = text;
  v13.receiver = self;
  v13.super_class = ExtensionLabelViewController;
  v8 = [(ExtensionLabelViewController *)&v13 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    [(ExtensionLabelViewController *)v8 setTitle:titleCopy];
    v10 = [textCopy copy];
    advertisementText = v9->_advertisementText;
    v9->_advertisementText = v10;
  }

  return v9;
}

@end