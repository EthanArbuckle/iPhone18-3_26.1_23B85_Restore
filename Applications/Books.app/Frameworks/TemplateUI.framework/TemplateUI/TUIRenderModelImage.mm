@interface TUIRenderModelImage
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (TUIRenderModelImage)initWithSubmodels:(id)a3;
- (UIEdgeInsets)eraseableInsets;
- (unint64_t)hash;
@end

@implementation TUIRenderModelImage

- (TUIRenderModelImage)initWithSubmodels:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIRenderModelImage;
  v5 = [(TUIRenderModelImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    submodels = v5->_submodels;
    v5->_submodels = v6;

    v5->_size = CGSizeZero;
  }

  return v5;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && ((-[TUIRenderModelImage eraseableInsets](self, "eraseableInsets"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, [v6 eraseableInsets], v10 == v18) ? (v19 = v8 == v15) : (v19 = 0), v19 ? (v20 = v14 == v17) : (v20 = 0), v20 ? (v21 = v12 == v16) : (v21 = 0), v21))
  {
    v23 = [(TUIRenderModelImage *)self image];
    v24 = [v6 image];
    v22 = v23 == v24 || [v23 isEqual:v24];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelImage *)self identifier];
  v3 = TUIIdentifierHash(v2);

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