@interface LPButtonAction
+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler;
- (LPImage)visibleImage;
- (NSString)visibleTitle;
@end

@implementation LPButtonAction

+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  handlerCopy = handler;
  v11 = objc_alloc_init(self);
  [v11 setTitle:titleCopy];
  [v11 setImage:imageCopy];
  [v11 setHandler:handlerCopy];

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