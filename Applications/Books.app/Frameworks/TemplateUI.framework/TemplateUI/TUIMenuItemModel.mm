@interface TUIMenuItemModel
+ (id)menuItemWithTitle:(id)title imageModel:(id)model isEnabled:(BOOL)enabled isOn:(BOOL)on action:(id)action;
- (BOOL)isEqual:(id)equal;
- (TUIMenuItemModel)initWithTitle:(id)title imageModel:(id)model isEnabled:(BOOL)enabled isOn:(BOOL)on action:(id)action;
- (id)newUIMenuElementWithActionObject:(id)object delegate:(id)delegate;
- (void)loadImagesFromResourceMap:(id)map;
@end

@implementation TUIMenuItemModel

- (TUIMenuItemModel)initWithTitle:(id)title imageModel:(id)model isEnabled:(BOOL)enabled isOn:(BOOL)on action:(id)action
{
  titleCopy = title;
  modelCopy = model;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = TUIMenuItemModel;
  v15 = [(TUIMenuItemModel *)&v19 init];
  if (v15)
  {
    v16 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v16;

    objc_storeStrong(&v15->_imageModel, model);
    v15->_isEnabled = enabled;
    v15->_isOn = on;
    objc_storeStrong(&v15->_action, action);
  }

  return v15;
}

+ (id)menuItemWithTitle:(id)title imageModel:(id)model isEnabled:(BOOL)enabled isOn:(BOOL)on action:(id)action
{
  onCopy = on;
  enabledCopy = enabled;
  actionCopy = action;
  modelCopy = model;
  titleCopy = title;
  v14 = [[TUIMenuItemModel alloc] initWithTitle:titleCopy imageModel:modelCopy isEnabled:enabledCopy isOn:onCopy action:actionCopy];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, equalCopy);

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

- (void)loadImagesFromResourceMap:(id)map
{
  mapCopy = map;
  imageModel = self->_imageModel;
  if (imageModel && !-[TUIImageModel isLoaded](imageModel, "isLoaded") && [mapCopy count])
  {
    identifier = [(TUIImageModel *)self->_imageModel identifier];
    v6 = [mapCopy objectForKeyedSubscript:identifier];

    if (v6)
    {
      v7 = self->_imageModel;
      v8 = objc_alloc_init(UIImage);
      [(TUIImageModel *)v7 loadImageFromResource:v6 placeholderImage:v8];
    }
  }
}

- (id)newUIMenuElementWithActionObject:(id)object delegate:(id)delegate
{
  objectCopy = object;
  delegateCopy = delegate;
  title = self->_title;
  if (title)
  {
    image = [(TUIImageModel *)self->_imageModel image];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1336A8;
    v11[3] = &unk_262560;
    v12 = delegateCopy;
    v13 = objectCopy;
    selfCopy = self;
    title = [UIAction actionWithTitle:title image:image identifier:0 handler:v11];

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