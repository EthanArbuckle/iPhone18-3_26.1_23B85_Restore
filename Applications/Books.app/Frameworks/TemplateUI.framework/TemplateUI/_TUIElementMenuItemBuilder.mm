@interface _TUIElementMenuItemBuilder
- (id)finalizeMenuItem;
- (void)addImageModel:(id)model forRole:(id)role;
- (void)addText:(id)text forRole:(id)role;
- (void)addTrigger:(id)trigger withBehavior:(id)behavior;
@end

@implementation _TUIElementMenuItemBuilder

- (id)finalizeMenuItem
{
  if (self->_title)
  {
    v3 = [_TUIMenuItemContainer alloc];
    v4 = [TUIMenuItemModel menuItemWithTitle:self->_title imageModel:self->_imageModel isEnabled:self->_isEnabled isOn:self->_isOn action:self->_action];
    v5 = [(_TUIMenuItemContainer *)v3 initWithModel:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addTrigger:(id)trigger withBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([trigger isEqualToString:@"press"])
  {
    objc_storeStrong(&self->_action, behavior);
  }
}

- (void)addText:(id)text forRole:(id)role
{
  textCopy = text;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"title"])
  {
    v8 = [textCopy copy];
    title = self->_title;
    self->_title = v8;
  }
}

- (void)addImageModel:(id)model forRole:(id)role
{
  modelCopy = model;
  roleCopy = role;
  v8 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"image"])
  {
    objc_storeStrong(&self->_imageModel, model);
  }
}

@end