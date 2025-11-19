@interface TUIMenuItemModel
+ (id)menuItemWithTitle:(id)a3 imageModel:(id)a4 isEnabled:(BOOL)a5 isOn:(BOOL)a6 action:(id)a7;
- (BOOL)isEqual:(id)a3;
- (TUIMenuItemModel)initWithTitle:(id)a3 imageModel:(id)a4 isEnabled:(BOOL)a5 isOn:(BOOL)a6 action:(id)a7;
- (id)newUIMenuElementWithActionObject:(id)a3 delegate:(id)a4;
- (void)loadImagesFromResourceMap:(id)a3;
@end

@implementation TUIMenuItemModel

- (TUIMenuItemModel)initWithTitle:(id)a3 imageModel:(id)a4 isEnabled:(BOOL)a5 isOn:(BOOL)a6 action:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = TUIMenuItemModel;
  v15 = [(TUIMenuItemModel *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    title = v15->_title;
    v15->_title = v16;

    objc_storeStrong(&v15->_imageModel, a4);
    v15->_isEnabled = a5;
    v15->_isOn = a6;
    objc_storeStrong(&v15->_action, a7);
  }

  return v15;
}

+ (id)menuItemWithTitle:(id)a3 imageModel:(id)a4 isEnabled:(BOOL)a5 isOn:(BOOL)a6 action:(id)a7
{
  v7 = a6;
  v8 = a5;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [[TUIMenuItemModel alloc] initWithTitle:v13 imageModel:v12 isEnabled:v8 isOn:v7 action:v11];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6 && ((title = self->_title, title == *(v6 + 16)) || [(NSString *)title isEqualToString:?]) && ((imageModel = self->_imageModel, imageModel == *(v6 + 24)) || [(TUIImageModel *)imageModel isEqual:?]) && self->_isEnabled == *(v6 + 8) && self->_isOn == *(v6 + 9))
  {
    action = self->_action;
    if (action == *(v6 + 32))
    {
      v10 = 1;
    }

    else
    {
      v10 = [(TUIElementBehaviorArgumentsMap *)action isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)loadImagesFromResourceMap:(id)a3
{
  v9 = a3;
  imageModel = self->_imageModel;
  if (imageModel && !-[TUIImageModel isLoaded](imageModel, "isLoaded") && [v9 count])
  {
    v5 = [(TUIImageModel *)self->_imageModel identifier];
    v6 = [v9 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = self->_imageModel;
      v8 = objc_alloc_init(UIImage);
      [(TUIImageModel *)v7 loadImageFromResource:v6 placeholderImage:v8];
    }
  }
}

- (id)newUIMenuElementWithActionObject:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  title = self->_title;
  if (title)
  {
    v9 = [(TUIImageModel *)self->_imageModel image];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1336A8;
    v11[3] = &unk_262560;
    v12 = v7;
    v13 = v6;
    v14 = self;
    title = [UIAction actionWithTitle:title image:v9 identifier:0 handler:v11];

    if (!self->_isEnabled)
    {
      [title setAttributes:1];
    }

    if (self->_isOn)
    {
      [title setState:1];
    }
  }

  return title;
}

@end