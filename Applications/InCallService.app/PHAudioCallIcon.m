@interface PHAudioCallIcon
- (PHAudioCallIcon)initWithIconView:(id)a3 IconImage:(id)a4;
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

- (PHAudioCallIcon)initWithIconView:(id)a3 IconImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  return AudioCallIcon.init(iconView:iconImage:)(a3, a4);
}

@end