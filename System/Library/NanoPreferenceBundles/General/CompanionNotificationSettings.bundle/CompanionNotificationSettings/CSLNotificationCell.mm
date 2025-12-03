@interface CSLNotificationCell
- (id)getLazyIcon;
@end

@implementation CSLNotificationCell

- (id)getLazyIcon
{
  specifier = [(CSLNotificationCell *)self specifier];
  v4 = [specifier propertyForKey:BPSNotificationAppBBSectionInfo];

  icon = [v4 icon];
  v6 = [icon _bestVariantForFormat:1];
  imageData = [v6 imageData];

  if (imageData)
  {
    iconData = [v4 iconData];
    v9 = [UIImage imageWithData:iconData];
    imageData = [v9 _applicationIconImageForFormat:0 precomposed:objc_msgSend(v6, "isPrecomposed")];
  }

  bundlePath = [v6 bundlePath];
  if (bundlePath)
  {
    v11 = bundlePath;
    imageName = [v6 imageName];

    if (imageName)
    {
      bundlePath2 = [v6 bundlePath];
      v14 = [NSBundle bundleWithPath:bundlePath2];

      if (v14)
      {
        imageName2 = [v6 imageName];
        v16 = [UIImage imageNamed:imageName2 inBundle:v14];
        v17 = [v16 _applicationIconImageForFormat:0 precomposed:objc_msgSend(v6, "isPrecomposed")];

        imageData = v17;
      }
    }
  }

  if (!imageData)
  {
    v19.receiver = self;
    v19.super_class = CSLNotificationCell;
    imageData = [(CSLNotificationCell *)&v19 getLazyIcon];
  }

  return imageData;
}

@end