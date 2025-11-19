@interface _TUIMenuItemContainer
- (TUIModelContaining)parentModel;
- (_TUIMenuItemContainer)initWithModel:(id)a3;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
@end

@implementation _TUIMenuItemContainer

- (_TUIMenuItemContainer)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIMenuItemContainer;
  v6 = [(_TUIMenuItemContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v12 = a3;
  v6 = a4;
  model = self->_model;
  if (model)
  {
    v8 = &OBJC_PROTOCOL___TUIMenuItemModel == v12;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [v6 addObject:?];
    model = self->_model;
  }

  v9 = [(TUIMenuItemModel *)model imageModel];

  if (v9)
  {
    v10 = &OBJC_PROTOCOL___TUIImageModel == v12;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [(TUIMenuItemModel *)self->_model imageModel];
    [v6 addObject:v11];
  }
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end