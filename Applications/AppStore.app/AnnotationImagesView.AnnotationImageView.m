@interface AnnotationImagesView.AnnotationImageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithCoder:(id)a3;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithFrame:(CGRect)a3;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)a3;
- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation AnnotationImagesView.AnnotationImageView

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(AnnotationImagesView.AnnotationImageView *)self frame:a3.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v5 initWithImage:a3];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AnnotationImagesView.AnnotationImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8AppStore20AnnotationImagesViewP33_BF6C5C54A8EE0938638694F5E53171EB19AnnotationImageView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AnnotationImagesView.AnnotationImageView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end