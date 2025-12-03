@interface _BSUIRenderModelBooksUIComponent
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (_BSUIRenderModelBooksUIComponent)initWithRawComponentModel:(id)model identifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation _BSUIRenderModelBooksUIComponent

- (_BSUIRenderModelBooksUIComponent)initWithRawComponentModel:(id)model identifier:(id)identifier
{
  modelCopy = model;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = _BSUIRenderModelBooksUIComponent;
  v9 = [(_BSUIRenderModelBooksUIComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rawComponentModel, model);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v4 = BUDynamicCast();

  IsEqualToRenderModel = TUIRenderModelIsEqualToRenderModel();
  return IsEqualToRenderModel;
}

- (unint64_t)hash
{
  identifier = [(_BSUIRenderModelBooksUIComponent *)self identifier];
  v3 = TUIIdentifierHash();

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end