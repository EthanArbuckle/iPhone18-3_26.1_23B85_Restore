@interface TUIBarButtonItem
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_postDebouncedMenuUpdateNotification;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)image;
- (void)setAxAttributes:(id)attributes;
- (void)setCustomView:(id)view;
- (void)setImageModelIDToResource:(id)resource;
- (void)setMenuModel:(id)model;
@end

@implementation TUIBarButtonItem

- (void)setAxAttributes:(id)attributes
{
  if (self->_axAttributes != attributes)
  {
    v4 = [attributes copy];
    axAttributes = self->_axAttributes;
    self->_axAttributes = v4;
  }
}

- (void)setCustomView:(id)view
{
  v3.receiver = self;
  v3.super_class = TUIBarButtonItem;
  [(TUIBarButtonItem *)&v3 setCustomView:view];
}

- (void)setMenuModel:(id)model
{
  modelCopy = model;
  menuModel = self->_menuModel;
  if (menuModel != modelCopy)
  {
    v9 = modelCopy;
    v7 = [(TUIMenuModel *)menuModel isEqual:modelCopy];
    modelCopy = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_menuModel, model);
      if ([(NSDictionary *)self->_imageModelIDToResource count])
      {
        [(TUIMenuModel *)self->_menuModel loadImagesFromResourceMap:self->_imageModelIDToResource];
      }

      newUIMenuElement = [(TUIMenuModel *)v9 newUIMenuElement];
      [(TUIBarButtonItem *)self setMenu:newUIMenuElement];

      modelCopy = v9;
    }
  }
}

- (void)setImageModelIDToResource:(id)resource
{
  resourceCopy = resource;
  if (![(NSDictionary *)self->_imageModelIDToResource isEqualToDictionary:resourceCopy])
  {
    [resourceCopy enumerateKeysAndObjectsUsingBlock:&stru_25DD70];
    imageModelIDToResource = self->_imageModelIDToResource;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_12FF0;
    v10[3] = &unk_25DD98;
    v10[4] = self;
    [(NSDictionary *)imageModelIDToResource enumerateKeysAndObjectsUsingBlock:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_13044;
    v9[3] = &unk_25DD98;
    v9[4] = self;
    [resourceCopy enumerateKeysAndObjectsUsingBlock:v9];
    v6 = [resourceCopy copy];
    v7 = self->_imageModelIDToResource;
    self->_imageModelIDToResource = v6;

    if (self->_menuModel)
    {
      if ([(NSDictionary *)self->_imageModelIDToResource count])
      {
        [(TUIMenuModel *)self->_menuModel loadImagesFromResourceMap:self->_imageModelIDToResource];
        newUIMenuElement = [(TUIMenuModel *)self->_menuModel newUIMenuElement];
        [(TUIBarButtonItem *)self setMenu:newUIMenuElement];
      }
    }
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_menuUpdateTimer invalidate];
  imageModelIDToResource = self->_imageModelIDToResource;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_13104;
  v5[3] = &unk_25DD98;
  v5[4] = self;
  [(NSDictionary *)imageModelIDToResource enumerateKeysAndObjectsUsingBlock:v5];
  v4.receiver = self;
  v4.super_class = TUIBarButtonItem;
  [(TUIBarButtonItem *)&v4 dealloc];
}

- (void)imageResourceDidChangeImage:(id)image
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_131F0;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  imageCopy = image;
  v3 = imageCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_postDebouncedMenuUpdateNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"TUIBarButtonItemMenuDidUpdate" object:self];

  menuUpdateTimer = self->_menuUpdateTimer;
  self->_menuUpdateTimer = 0;
}

- (id)accessibilityLabel
{
  customView = [(TUIBarButtonItem *)self customView];
  accessibilityLabel = [customView accessibilityLabel];

  if (accessibilityLabel)
  {
    customView2 = [(TUIBarButtonItem *)self customView];
    accessibilityLabel2 = [customView2 accessibilityLabel];
  }

  else
  {
    accessibilityLabel2 = [(TUIAXAttributes *)self->_axAttributes axLabel];
  }

  return accessibilityLabel2;
}

- (id)accessibilityValue
{
  customView = [(TUIBarButtonItem *)self customView];
  accessibilityValue = [customView accessibilityValue];

  if (accessibilityValue)
  {
    customView2 = [(TUIBarButtonItem *)self customView];
    accessibilityValue2 = [customView2 accessibilityValue];
  }

  else
  {
    accessibilityValue2 = [(TUIAXAttributes *)self->_axAttributes axValue];
  }

  return accessibilityValue2;
}

- (id)accessibilityHint
{
  customView = [(TUIBarButtonItem *)self customView];
  accessibilityHint = [customView accessibilityHint];

  if (accessibilityHint)
  {
    customView2 = [(TUIBarButtonItem *)self customView];
    accessibilityHint2 = [customView2 accessibilityHint];
  }

  else
  {
    accessibilityHint2 = [(TUIAXAttributes *)self->_axAttributes axHint];
  }

  return accessibilityHint2;
}

- (id)accessibilityIdentifier
{
  customView = [(TUIBarButtonItem *)self customView];
  accessibilityIdentifier = [customView accessibilityIdentifier];

  if (accessibilityIdentifier)
  {
    customView2 = [(TUIBarButtonItem *)self customView];
    accessibilityIdentifier2 = [customView2 accessibilityIdentifier];
  }

  else
  {
    accessibilityIdentifier2 = [(TUIAXAttributes *)self->_axAttributes axIdentifier];
  }

  return accessibilityIdentifier2;
}

@end