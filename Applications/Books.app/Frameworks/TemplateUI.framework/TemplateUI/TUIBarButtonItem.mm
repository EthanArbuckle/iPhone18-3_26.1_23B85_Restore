@interface TUIBarButtonItem
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_postDebouncedMenuUpdateNotification;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)setAxAttributes:(id)a3;
- (void)setCustomView:(id)a3;
- (void)setImageModelIDToResource:(id)a3;
- (void)setMenuModel:(id)a3;
@end

@implementation TUIBarButtonItem

- (void)setAxAttributes:(id)a3
{
  if (self->_axAttributes != a3)
  {
    v4 = [a3 copy];
    axAttributes = self->_axAttributes;
    self->_axAttributes = v4;
  }
}

- (void)setCustomView:(id)a3
{
  v3.receiver = self;
  v3.super_class = TUIBarButtonItem;
  [(TUIBarButtonItem *)&v3 setCustomView:a3];
}

- (void)setMenuModel:(id)a3
{
  v5 = a3;
  menuModel = self->_menuModel;
  if (menuModel != v5)
  {
    v9 = v5;
    v7 = [(TUIMenuModel *)menuModel isEqual:v5];
    v5 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_menuModel, a3);
      if ([(NSDictionary *)self->_imageModelIDToResource count])
      {
        [(TUIMenuModel *)self->_menuModel loadImagesFromResourceMap:self->_imageModelIDToResource];
      }

      v8 = [(TUIMenuModel *)v9 newUIMenuElement];
      [(TUIBarButtonItem *)self setMenu:v8];

      v5 = v9;
    }
  }
}

- (void)setImageModelIDToResource:(id)a3
{
  v4 = a3;
  if (![(NSDictionary *)self->_imageModelIDToResource isEqualToDictionary:v4])
  {
    [v4 enumerateKeysAndObjectsUsingBlock:&stru_25DD70];
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
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
    v6 = [v4 copy];
    v7 = self->_imageModelIDToResource;
    self->_imageModelIDToResource = v6;

    if (self->_menuModel)
    {
      if ([(NSDictionary *)self->_imageModelIDToResource count])
      {
        [(TUIMenuModel *)self->_menuModel loadImagesFromResourceMap:self->_imageModelIDToResource];
        v8 = [(TUIMenuModel *)self->_menuModel newUIMenuElement];
        [(TUIBarButtonItem *)self setMenu:v8];
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

- (void)imageResourceDidChangeImage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_131F0;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
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
  v3 = [(TUIBarButtonItem *)self customView];
  v4 = [v3 accessibilityLabel];

  if (v4)
  {
    v5 = [(TUIBarButtonItem *)self customView];
    v6 = [v5 accessibilityLabel];
  }

  else
  {
    v6 = [(TUIAXAttributes *)self->_axAttributes axLabel];
  }

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(TUIBarButtonItem *)self customView];
  v4 = [v3 accessibilityValue];

  if (v4)
  {
    v5 = [(TUIBarButtonItem *)self customView];
    v6 = [v5 accessibilityValue];
  }

  else
  {
    v6 = [(TUIAXAttributes *)self->_axAttributes axValue];
  }

  return v6;
}

- (id)accessibilityHint
{
  v3 = [(TUIBarButtonItem *)self customView];
  v4 = [v3 accessibilityHint];

  if (v4)
  {
    v5 = [(TUIBarButtonItem *)self customView];
    v6 = [v5 accessibilityHint];
  }

  else
  {
    v6 = [(TUIAXAttributes *)self->_axAttributes axHint];
  }

  return v6;
}

- (id)accessibilityIdentifier
{
  v3 = [(TUIBarButtonItem *)self customView];
  v4 = [v3 accessibilityIdentifier];

  if (v4)
  {
    v5 = [(TUIBarButtonItem *)self customView];
    v6 = [v5 accessibilityIdentifier];
  }

  else
  {
    v6 = [(TUIAXAttributes *)self->_axAttributes axIdentifier];
  }

  return v6;
}

@end