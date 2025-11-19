@interface SFContactAutoFillDetailViewController
- (SFContactAutoFillDetailViewController)initWithPropertyValues:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SFContactAutoFillDetailViewController

- (SFContactAutoFillDetailViewController)initWithPropertyValues:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFContactAutoFillDetailViewController;
  v6 = [(SFContactAutoFillDetailViewController *)&v10 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_propertyValues, a3);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SFContactAutoFillDetailViewController;
  [(SFContactAutoFillDetailViewController *)&v5 viewDidLoad];
  v3 = [(SFContactAutoFillDetailViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTableFooterView:v4];

  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setEstimatedRowHeight:100.0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SFContactAutoFillPropertyValues *)self->_propertyValues values:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v6];
  [v7 setUsesDetailAppearance:1];
  v8 = [(SFContactAutoFillPropertyValues *)self->_propertyValues selectedIndex];
  if (v8 == [v6 row])
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [v7 setAccessoryType:v9];
  v10 = [(SFContactAutoFillPropertyValues *)self->_propertyValues values];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];
  v13 = [(SFContactAutoFillPropertyValues *)self->_propertyValues property];
  [v7 setValue:v12 property:v13];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 row];

  [(SFContactAutoFillPropertyValues *)self->_propertyValues setSelectedIndex:v7];
  v9 = [(SFContactAutoFillDetailViewController *)self navigationController];
  v8 = [v9 popViewControllerAnimated:1];
}

@end