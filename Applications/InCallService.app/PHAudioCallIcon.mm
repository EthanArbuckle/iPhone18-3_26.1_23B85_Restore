@interface PHAudioCallIcon
- (PHAudioCallIcon)initWithIconView:(id)view IconImage:(id)image;
- (UIImage)iconImage;
- (UIView)iconView;
@end

@implementation PHAudioCallIcon

- (UIView)iconView
{
  v2 = AudioCallIcon.iconView.getter();

  return v2;
}

- (UIImage)iconImage
{
  v2 = AudioCallIcon.iconImage.getter();

  return v2;
}

- (PHAudioCallIcon)initWithIconView:(id)view IconImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  return AudioCallIcon.init(iconView:iconImage:)(view, image);
}

@end