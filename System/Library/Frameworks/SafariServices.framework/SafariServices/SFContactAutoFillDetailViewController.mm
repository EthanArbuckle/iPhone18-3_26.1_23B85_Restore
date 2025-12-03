@interface SFContactAutoFillDetailViewController
- (SFContactAutoFillDetailViewController)initWithPropertyValues:(id)values;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SFContactAutoFillDetailViewController

- (SFContactAutoFillDetailViewController)initWithPropertyValues:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = SFContactAutoFillDetailViewController;
  v6 = [(SFContactAutoFillDetailViewController *)&v10 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_propertyValues, values);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SFContactAutoFillDetailViewController;
  [(SFContactAutoFillDetailViewController *)&v5 viewDidLoad];
  tableView = [(SFContactAutoFillDetailViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [tableView setTableFooterView:v4];

  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedRowHeight:100.0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SFContactAutoFillPropertyValues *)self->_propertyValues values:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  [v7 setUsesDetailAppearance:1];
  selectedIndex = [(SFContactAutoFillPropertyValues *)self->_propertyValues selectedIndex];
  if (selectedIndex == [pathCopy row])
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [v7 setAccessoryType:v9];
  values = [(SFContactAutoFillPropertyValues *)self->_propertyValues values];
  v11 = [pathCopy row];

  v12 = [values objectAtIndexedSubscript:v11];
  property = [(SFContactAutoFillPropertyValues *)self->_propertyValues property];
  [v7 setValue:v12 property:property];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [pathCopy row];

  [(SFContactAutoFillPropertyValues *)self->_propertyValues setSelectedIndex:v7];
  navigationController = [(SFContactAutoFillDetailViewController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

@end