@interface TUIImageContent
- (CGSize)intrinsicSize;
- (TUIImageContent)initWithImage:(id)image;
- (TUIImageContent)initWithImage:(id)image insets:(UIEdgeInsets)insets;
- (TUIImageContent)initWithImage:(id)image insets:(UIEdgeInsets)insets intrinsicSize:(CGSize)size flags:(unint64_t)flags;
- (TUIImageContent)initWithIntrinsicSize:(CGSize)size flags:(unint64_t)flags;
- (UIEdgeInsets)insets;
@end

@implementation TUIImageContent

- (TUIImageContent)initWithImage:(id)image
{
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = TUIImageContent;
  v6 = [(TUIImageContent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    v8 = *&UIEdgeInsetsZero.bottom;
    *&v7->_insets.top = *&UIEdgeInsetsZero.top;
    *&v7->_insets.bottom = v8;
    [imageCopy size];
    v7->_intrinsicSize.width = v9;
    v7->_intrinsicSize.height = v10;
    v7->_flags = 0;
  }

  return v7;
}

- (TUIImageContent)initWithImage:(id)image insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = TUIImageContent;
  v11 = [(TUIImageContent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_image, image);
    v12->_insets.top = top;
    v12->_insets.left = left;
    v12->_insets.bottom = bottom;
    v12->_insets.right = right;
    [imageCopy size];
    v12->_intrinsicSize.width = v13;
    v12->_intrinsicSize.height = v14;
    v12->_flags = 0;
  }

  return v12;
}

- (TUIImageContent)initWithImage:(id)image insets:(UIEdgeInsets)insets intrinsicSize:(CGSize)size flags:(unint64_t)flags
{
  height = size.height;
  width = size.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v19.receiver = self;
  v19.super_class = TUIImageContent;
  v16 = [(TUIImageContent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, image);
    v17->_insets.top = top;
    v17->_insets.left = left;
    v17->_insets.bottom = bottom;
    v17->_insets.right = right;
    v17->_intrinsicSize.width = width;
    v17->_intrinsicSize.height = height;
    v17->_flags = flags;
  }

  return v17;
}

- (TUIImageContent)initWithIntrinsicSize:(CGSize)size flags:(unint64_t)flags
{
  height = size.height;
  width = size.width;
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
    v8->_flags = flags;
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