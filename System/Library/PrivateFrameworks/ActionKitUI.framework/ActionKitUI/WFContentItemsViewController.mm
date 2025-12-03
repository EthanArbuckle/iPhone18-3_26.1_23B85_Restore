@interface WFContentItemsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setContentItems:(id)items;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFContentItemsViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v23 = -[NSArray objectAtIndex:](self->_contentItems, "objectAtIndex:", [path row]);
  if (self->_allowsCoercion)
  {
    v5 = [[WFContentGraphViewController alloc] initWithContentItem:v23];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      navigationController4 = objc_alloc_init(MEMORY[0x277D75D28]);
      navigationController = [(WFContentItemsViewController *)self navigationController];
      view = [navigationController view];
      [view bounds];
      v12 = v11;
      navigationController2 = [(WFContentItemsViewController *)self navigationController];
      view2 = [navigationController2 view];
      [view2 bounds];
      v16 = v15 + 20.0;
      view3 = [(WFContentGraphViewController *)v5 view];
      [view3 setFrame:{0.0, 0.0, v12, v16}];

      view4 = [(WFContentGraphViewController *)v5 view];
      [view4 setAutoresizingMask:0];

      [navigationController4 addChildViewController:v5];
      [(WFContentGraphViewController *)v5 didMoveToParentViewController:navigationController4];
      view5 = [navigationController4 view];
      view6 = [(WFContentGraphViewController *)v5 view];
      [view5 addSubview:view6];

      title = [(WFContentGraphViewController *)v5 title];
      [navigationController4 setTitle:title];

      navigationController3 = [(WFContentItemsViewController *)self navigationController];
      [navigationController3 pushViewController:navigationController4 animated:1];

      goto LABEL_6;
    }
  }

  else
  {
    v5 = [[WFContentItemViewController alloc] initWithContentItem:v23];
  }

  navigationController4 = [(WFContentItemsViewController *)self navigationController];
  [navigationController4 pushViewController:v5 animated:1];
LABEL_6:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WFContentItemCellIdentifier" forIndexPath:pathCopy];
  contentItems = self->_contentItems;
  v9 = [pathCopy row];

  v10 = [(NSArray *)contentItems objectAtIndex:v9];
  [v7 setAccessoryType:1];
  icon = [v10 icon];
  uIImage = [icon UIImage];
  imageView = [v7 imageView];
  [imageView setImage:uIImage];

  name = [v10 name];
  textLabel = [v7 textLabel];
  [textLabel setText:name];

  return v7;
}

- (void)setContentItems:(id)items
{
  objc_storeStrong(&self->_contentItems, items);
  tableView = [(WFContentItemsViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFContentItemsViewController;
  [(WFContentItemsViewController *)&v5 viewDidLoad];
  v3 = WFLocalizedString(@"Items");
  [(WFContentItemsViewController *)self setTitle:v3];

  tableView = [(WFContentItemsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFContentItemCellIdentifier"];
}

@end