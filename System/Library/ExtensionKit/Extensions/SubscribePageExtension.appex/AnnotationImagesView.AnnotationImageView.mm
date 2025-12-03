@interface AnnotationImagesView.AnnotationImageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithCoder:(id)coder;
- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithFrame:(CGRect)frame;
- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithImage:(id)image;
- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
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

- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v5 initWithImage:image];
}

- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC22SubscribePageExtension20AnnotationImagesViewP33_D464567CE0E27D6974EDB3600CB1F0F719AnnotationImageView)initWithCoder:(id)coder
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