@interface WFContentItemsViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setContentItems:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFContentItemsViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = -[NSArray objectAtIndex:](self->_contentItems, "objectAtIndex:", [a4 row]);
  if (self->_allowsCoercion)
  {
    v5 = [[WFContentGraphViewController alloc] initWithContentItem:v23];
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D28]);
      v9 = [(WFContentItemsViewController *)self navigationController];
      v10 = [v9 view];
      [v10 bounds];
      v12 = v11;
      v13 = [(WFContentItemsViewController *)self navigationController];
      v14 = [v13 view];
      [v14 bounds];
      v16 = v15 + 20.0;
      v17 = [(WFContentGraphViewController *)v5 view];
      [v17 setFrame:{0.0, 0.0, v12, v16}];

      v18 = [(WFContentGraphViewController *)v5 view];
      [v18 setAutoresizingMask:0];

      [v8 addChildViewController:v5];
      [(WFContentGraphViewController *)v5 didMoveToParentViewController:v8];
      v19 = [v8 view];
      v20 = [(WFContentGraphViewController *)v5 view];
      [v19 addSubview:v20];

      v21 = [(WFContentGraphViewController *)v5 title];
      [v8 setTitle:v21];

      v22 = [(WFContentItemsViewController *)self navigationController];
      [v22 pushViewController:v8 animated:1];

      goto LABEL_6;
    }
  }

  else
  {
    v5 = [[WFContentItemViewController alloc] initWithContentItem:v23];
  }

  v8 = [(WFContentItemsViewController *)self navigationController];
  [v8 pushViewController:v5 animated:1];
LABEL_6:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WFContentItemCellIdentifier" forIndexPath:v6];
  contentItems = self->_contentItems;
  v9 = [v6 row];

  v10 = [(NSArray *)contentItems objectAtIndex:v9];
  [v7 setAccessoryType:1];
  v11 = [v10 icon];
  v12 = [v11 UIImage];
  v13 = [v7 imageView];
  [v13 setImage:v12];

  v14 = [v10 name];
  v15 = [v7 textLabel];
  [v15 setText:v14];

  return v7;
}

- (void)setContentItems:(id)a3
{
  objc_storeStrong(&self->_contentItems, a3);
  v4 = [(WFContentItemsViewController *)self tableView];
  [v4 reloadData];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFContentItemsViewController;
  [(WFContentItemsViewController *)&v5 viewDidLoad];
  v3 = WFLocalizedString(@"Items");
  [(WFContentItemsViewController *)self setTitle:v3];

  v4 = [(WFContentItemsViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFContentItemCellIdentifier"];
}

@end