@interface _BSUIGoalsSharableImageProvider
- (_BSUIGoalsSharableImageProvider)initWithSharableImage:(id)image;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation _BSUIGoalsSharableImageProvider

- (_BSUIGoalsSharableImageProvider)initWithSharableImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = _BSUIGoalsSharableImageProvider;
  v6 = [(_BSUIGoalsSharableImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedImage, image);
  }

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:UIActivityTypeMail])
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_sharedImage;
  }

  return v5;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(UIImage);

  return v3;
}

@end