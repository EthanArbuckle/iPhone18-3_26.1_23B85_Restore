@interface THImageView
- (CGSize)nativeSize;
- (THImageView)initWithFrame:(CGRect)frame;
- (void)setImageData:(id)data maxSize:(CGSize)size setLayerBounds:(BOOL)bounds;
@end

@implementation THImageView

- (THImageView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = THImageView;
  result = [(THImageView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->mNativeSize.width = 0.0;
    result->mNativeSize.height = 0.0;
  }

  return result;
}

- (void)setImageData:(id)data maxSize:(CGSize)size setLayerBounds:(BOOL)bounds
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_131E80;
  v5[3] = &unk_45DDD0;
  v5[4] = data;
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