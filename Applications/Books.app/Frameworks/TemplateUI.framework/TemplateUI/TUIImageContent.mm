@interface TUIImageContent
- (CGSize)intrinsicSize;
- (TUIImageContent)initWithImage:(id)a3;
- (TUIImageContent)initWithImage:(id)a3 insets:(UIEdgeInsets)a4;
- (TUIImageContent)initWithImage:(id)a3 insets:(UIEdgeInsets)a4 intrinsicSize:(CGSize)a5 flags:(unint64_t)a6;
- (TUIImageContent)initWithIntrinsicSize:(CGSize)a3 flags:(unint64_t)a4;
- (UIEdgeInsets)insets;
@end

@implementation TUIImageContent

- (TUIImageContent)initWithImage:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TUIImageContent;
  v6 = [(TUIImageContent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->_insets.top = *&UIEdgeInsetsZero.top;
    *&v7->_insets.bottom = v8;
    [v5 size];
    v7->_intrinsicSize.width = v9;
    v7->_intrinsicSize.height = v10;
    v7->_flags = 0;
  }

  return v7;
}

- (TUIImageContent)initWithImage:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = TUIImageContent;
  v11 = [(TUIImageContent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_image, a3);
    v12->_insets.top = top;
    v12->_insets.left = left;
    v12->_insets.bottom = bottom;
    v12->_insets.right = right;
    [v10 size];
    v12->_intrinsicSize.width = v13;
    v12->_intrinsicSize.height = v14;
    v12->_flags = 0;
  }

  return v12;
}

- (TUIImageContent)initWithImage:(id)a3 insets:(UIEdgeInsets)a4 intrinsicSize:(CGSize)a5 flags:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v15 = a3;
  v19.receiver = self;
  v19.super_class = TUIImageContent;
  v16 = [(TUIImageContent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, a3);
    v17->_insets.top = top;
    v17->_insets.left = left;
    v17->_insets.bottom = bottom;
    v17->_insets.right = right;
    v17->_intrinsicSize.width = width;
    v17->_intrinsicSize.height = height;
    v17->_flags = a6;
  }

  return v17;
}

- (TUIImageContent)initWithIntrinsicSize:(CGSize)a3 flags:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = TUIImageContent;
  v7 = [(TUIImageContent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    image = v7->_image;
    v7->_image = 0;

    v10 = *&UIEdgeInsetsZero.bottom;
    *&v8->_insets.top = *&UIEdgeInsetsZero.top;
    *&v8->_insets.bottom = v10;
    v8->_intrinsicSize.width = width;
    v8->_intrinsicSize.height = height;
    v8->_flags = a4;
  }

  return v8;
}

- (CGSize)intrinsicSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end