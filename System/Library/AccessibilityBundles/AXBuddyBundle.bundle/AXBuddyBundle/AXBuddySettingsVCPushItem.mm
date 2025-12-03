@interface AXBuddySettingsVCPushItem
- (AXBuddySettingsVCPushItem)initWithName:(id)name image:(id)image viewControllerInstantiator:(id)instantiator;
- (id)representativeCellForIndexPath:(id)path inTableView:(id)view;
- (id)viewControllerInstantiator;
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation AXBuddySettingsVCPushItem

- (AXBuddySettingsVCPushItem)initWithName:(id)name image:(id)image viewControllerInstantiator:(id)instantiator
{
  nameCopy = name;
  imageCopy = image;
  instantiatorCopy = instantiator;
  v17.receiver = self;
  v17.super_class = AXBuddySettingsVCPushItem;
  v11 = [(AXBuddySettingsVCPushItem *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_image, image);
    v14 = [instantiatorCopy copy];
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

- (id)representativeCellForIndexPath:(id)path inTableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  reuseIdentifier = [(AXBuddySettingsVCPushItem *)self reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];

  name = [(AXBuddySettingsVCPushItem *)self name];
  textLabel = [v9 textLabel];
  [textLabel setText:name];

  image = [(AXBuddySettingsVCPushItem *)self image];

  if (image)
  {
    image2 = [(AXBuddySettingsVCPushItem *)self image];
    imageView = [v9 imageView];
    [imageView setImage:image2];
  }

  [v9 setAccessoryType:1];

  return v9;
}

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  cellClass = [(AXBuddySettingsVCPushItem *)self cellClass];
  reuseIdentifier = [(AXBuddySettingsVCPushItem *)self reuseIdentifier];
  [viewCopy registerClass:cellClass forCellReuseIdentifier:reuseIdentifier];
}

@end