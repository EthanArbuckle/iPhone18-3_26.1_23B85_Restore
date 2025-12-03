@interface TUIRenderModelImage
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (TUIRenderModelImage)initWithSubmodels:(id)submodels;
- (UIEdgeInsets)eraseableInsets;
- (unint64_t)hash;
@end

@implementation TUIRenderModelImage

- (TUIRenderModelImage)initWithSubmodels:(id)submodels
{
  submodelsCopy = submodels;
  v9.receiver = self;
  v9.super_class = TUIRenderModelImage;
  v5 = [(TUIRenderModelImage *)&v9 init];
  if (v5)
  {
    v6 = [submodelsCopy copy];
    submodels = v5->_submodels;
    v5->_submodels = v6;

    v5->_size = CGSizeZero;
  }

  return v5;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && ((-[TUIRenderModelImage eraseableInsets](self, "eraseableInsets"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, [v6 eraseableInsets], v10 == v18) ? (v19 = v8 == v15) : (v19 = 0), v19 ? (v20 = v14 == v17) : (v20 = 0), v20 ? (v21 = v12 == v16) : (v21 = 0), v21))
  {
    image = [(TUIRenderModelImage *)self image];
    image2 = [v6 image];
    v22 = image == image2 || [image isEqual:image2];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelImage *)self identifier];
  v3 = TUIIdentifierHash(identifier);

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

- (UIEdgeInsets)eraseableInsets
{
  top = self->_eraseableInsets.top;
  left = self->_eraseableInsets.left;
  bottom = self->_eraseableInsets.bottom;
  right = self->_eraseableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end