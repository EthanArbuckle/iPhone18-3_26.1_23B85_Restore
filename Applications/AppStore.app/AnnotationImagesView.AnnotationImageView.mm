@interface AnnotationImagesView.AnnotationImageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithCoder:(id)coder;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithFrame:(CGRect)frame;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)image;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation AnnotationImagesView.AnnotationImageView

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(AnnotationImagesView.AnnotationImageView *)self frame:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v5 initWithImage:image];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AnnotationImagesView.AnnotationImageView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end