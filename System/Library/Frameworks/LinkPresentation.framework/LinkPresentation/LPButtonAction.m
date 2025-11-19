@interface LPButtonAction
+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (LPImage)visibleImage;
- (NSString)visibleTitle;
@end

@implementation LPButtonAction

+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(a1);
  [v11 setTitle:v8];
  [v11 setImage:v9];
  [v11 setHandler:v10];

  return v11;
}

- (NSString)visibleTitle
{
  visibleTitle = self->_visibleTitle;
  if (!visibleTitle)
  {
    visibleTitle = self->_title;
  }

  return visibleTitle;
}

- (LPImage)visibleImage
{
  visibleImage = self->_visibleImage;
  if (!visibleImage)
  {
    visibleImage = self->_image;
  }

  return visibleImage;
}

@end