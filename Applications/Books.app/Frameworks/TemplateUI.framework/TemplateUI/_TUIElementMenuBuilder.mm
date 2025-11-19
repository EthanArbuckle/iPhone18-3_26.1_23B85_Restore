@interface _TUIElementMenuBuilder
- (id)finalizeMenuItem;
- (void)addImageModel:(id)a3 forRole:(id)a4;
- (void)addMenuItem:(id)a3;
- (void)addModel:(id)a3;
- (void)addText:(id)a3 forRole:(id)a4;
@end

@implementation _TUIElementMenuBuilder

- (void)addMenuItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if (!self->_children)
    {
      v5 = objc_opt_new();
      children = self->_children;
      self->_children = v5;
    }

    v7 = [[_TUIMenuItemContainer alloc] initWithModel:v8];
    [(NSMutableArray *)self->_children addObject:v7];

    v4 = v8;
  }
}

- (void)addModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    children = self->_children;
    v8 = v4;
    if (!children)
    {
      v6 = objc_opt_new();
      v7 = self->_children;
      self->_children = v6;

      children = self->_children;
    }

    [(NSMutableArray *)children addObject:v8];
    v4 = v8;
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