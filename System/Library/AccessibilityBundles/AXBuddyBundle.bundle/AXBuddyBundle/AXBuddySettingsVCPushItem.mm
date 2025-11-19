@interface AXBuddySettingsVCPushItem
- (AXBuddySettingsVCPushItem)initWithName:(id)a3 image:(id)a4 viewControllerInstantiator:(id)a5;
- (id)representativeCellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)viewControllerInstantiator;
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation AXBuddySettingsVCPushItem

- (AXBuddySettingsVCPushItem)initWithName:(id)a3 image:(id)a4 viewControllerInstantiator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = AXBuddySettingsVCPushItem;
  v11 = [(AXBuddySettingsVCPushItem *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_image, a4);
    v14 = [v10 copy];
    viewControllerInstantiator = v11->_viewControllerInstantiator;
    v11->_viewControllerInstantiator = v14;
  }

  return v11;
}

- (id)viewControllerInstantiator
{
  v2 = objc_retainBlock(self->_viewControllerInstantiator);

  return v2;
}

- (id)representativeCellForIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXBuddySettingsVCPushItem *)self reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];

  v10 = [(AXBuddySettingsVCPushItem *)self name];
  v11 = [v9 textLabel];
  [v11 setText:v10];

  v12 = [(AXBuddySettingsVCPushItem *)self image];

  if (v12)
  {
    v13 = [(AXBuddySettingsVCPushItem *)self image];
    v14 = [v9 imageView];
    [v14 setImage:v13];
  }

  [v9 setAccessoryType:1];

  return v9;
}

- (void)registerCellClassWithTableView:(id)a3
{
  v4 = a3;
  v5 = [(AXBuddySettingsVCPushItem *)self cellClass];
  v6 = [(AXBuddySettingsVCPushItem *)self reuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];
}

@end