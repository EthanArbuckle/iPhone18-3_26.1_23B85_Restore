@interface _TUIElementMenuBuilder
- (id)finalizeMenuItem;
- (void)addImageModel:(id)model forRole:(id)role;
- (void)addMenuItem:(id)item;
- (void)addModel:(id)model;
- (void)addText:(id)text forRole:(id)role;
@end

@implementation _TUIElementMenuBuilder

- (void)addMenuItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v8 = itemCopy;
    if (!self->_children)
    {
      v5 = objc_opt_new();
      children = self->_children;
      self->_children = v5;
    }

    v7 = [[_TUIMenuItemContainer alloc] initWithModel:v8];
    [(NSMutableArray *)self->_children addObject:v7];

    itemCopy = v8;
  }
}

- (void)addModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    children = self->_children;
    v8 = modelCopy;
    if (!children)
    {
      v6 = objc_opt_new();
      v7 = self->_children;
      self->_children = v6;

      children = self->_children;
    }

    [(NSMutableArray *)children addObject:v8];
    modelCopy = v8;
  }
}

- (id)finalizeMenuItem
{
  if ([(NSMutableArray *)self->_children count])
  {
    v3 = [[TUIMenuContainer alloc] initWithTitle:self->_title imageModel:self->_imageModel isInline:self->_isInline];
  }

  else
  {
    v3 = 0;
  }

  [(TUIMenuContainer *)v3 updateModelChildren:self->_children];

  return v3;
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