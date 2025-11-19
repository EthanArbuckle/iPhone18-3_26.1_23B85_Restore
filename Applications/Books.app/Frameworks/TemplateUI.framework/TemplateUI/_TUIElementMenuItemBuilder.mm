@interface _TUIElementMenuItemBuilder
- (id)finalizeMenuItem;
- (void)addImageModel:(id)a3 forRole:(id)a4;
- (void)addText:(id)a3 forRole:(id)a4;
- (void)addTrigger:(id)a3 withBehavior:(id)a4;
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

- (void)addTrigger:(id)a3 withBehavior:(id)a4
{
  v7 = a4;
  if ([a3 isEqualToString:@"press"])
  {
    objc_storeStrong(&self->_action, a4);
  }
}

- (void)addText:(id)a3 forRole:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || [v6 isEqualToString:@"title"])
  {
    v8 = [v10 copy];
    title = self->_title;
    self->_title = v8;
  }
}

- (void)addImageModel:(id)a3 forRole:(id)a4
{
  v9 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || [v7 isEqualToString:@"image"])
  {
    objc_storeStrong(&self->_imageModel, a3);
  }
}

@end