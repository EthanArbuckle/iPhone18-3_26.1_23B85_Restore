@interface _BSUIRenderModelBooksUIComponent
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (_BSUIRenderModelBooksUIComponent)initWithRawComponentModel:(id)a3 identifier:(id)a4;
- (unint64_t)hash;
@end

@implementation _BSUIRenderModelBooksUIComponent

- (_BSUIRenderModelBooksUIComponent)initWithRawComponentModel:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _BSUIRenderModelBooksUIComponent;
  v9 = [(_BSUIRenderModelBooksUIComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rawComponentModel, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  IsEqualToRenderModel = TUIRenderModelIsEqualToRenderModel();
  return IsEqualToRenderModel;
}

- (unint64_t)hash
{
  v2 = [(_BSUIRenderModelBooksUIComponent *)self identifier];
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