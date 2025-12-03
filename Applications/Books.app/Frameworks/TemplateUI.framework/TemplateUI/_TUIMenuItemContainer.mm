@interface _TUIMenuItemContainer
- (TUIModelContaining)parentModel;
- (_TUIMenuItemContainer)initWithModel:(id)model;
- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array;
@end

@implementation _TUIMenuItemContainer

- (_TUIMenuItemContainer)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _TUIMenuItemContainer;
  v6 = [(_TUIMenuItemContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array
{
  protocolCopy = protocol;
  arrayCopy = array;
  model = self->_model;
  if (model)
  {
    v8 = &OBJC_PROTOCOL___TUIMenuItemModel == protocolCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [arrayCopy addObject:?];
    model = self->_model;
  }

  imageModel = [(TUIMenuItemModel *)model imageModel];

  if (imageModel)
  {
    v10 = &OBJC_PROTOCOL___TUIImageModel == protocolCopy;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    imageModel2 = [(TUIMenuItemModel *)self->_model imageModel];
    [arrayCopy addObject:imageModel2];
  }
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end