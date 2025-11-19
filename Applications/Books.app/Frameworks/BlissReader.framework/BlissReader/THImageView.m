@interface THImageView
- (CGSize)nativeSize;
- (THImageView)initWithFrame:(CGRect)a3;
- (void)setImageData:(id)a3 maxSize:(CGSize)a4 setLayerBounds:(BOOL)a5;
@end

@implementation THImageView

- (THImageView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = THImageView;
  result = [(THImageView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->mNativeSize.width = 0.0;
    result->mNativeSize.height = 0.0;
  }

  return result;
}

- (void)setImageData:(id)a3 maxSize:(CGSize)a4 setLayerBounds:(BOOL)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_131E80;
  v5[3] = &unk_45DDD0;
  v5[4] = a3;
  [-[THImageView layer](self "layer")];
}

- (CGSize)nativeSize
{
  width = self->mNativeSize.width;
  height = self->mNativeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end