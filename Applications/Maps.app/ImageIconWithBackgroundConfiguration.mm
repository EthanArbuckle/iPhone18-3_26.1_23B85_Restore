@interface ImageIconWithBackgroundConfiguration
+ (id)offlineIconConfigurationWithBackgroundColor:(id)color;
- (CGSize)iconSize;
- (ImageIconWithBackgroundConfiguration)init;
@end

@implementation ImageIconWithBackgroundConfiguration

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ImageIconWithBackgroundConfiguration)init
{
  v9.receiver = self;
  v9.super_class = ImageIconWithBackgroundConfiguration;
  v2 = [(ImageIconWithBackgroundConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_iconSize = CGSizeZero;
    v4 = +[UIColor whiteColor];
    tintColor = v3->_tintColor;
    v3->_tintColor = v4;

    v3->_cornerRadius = 0.0;
    v6 = +[UIColor clearColor];
    backgroundColor = v3->_backgroundColor;
    v3->_backgroundColor = v6;
  }

  return v3;
}

+ (id)offlineIconConfigurationWithBackgroundColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
  [(ImageIconWithBackgroundConfiguration *)v4 setBackgroundColor:colorCopy];

  v5 = +[UIColor whiteColor];
  [(ImageIconWithBackgroundConfiguration *)v4 setTintColor:v5];

  [(ImageIconWithBackgroundConfiguration *)v4 setCornerRadius:6.0];
  [(ImageIconWithBackgroundConfiguration *)v4 setIconSize:30.0, 30.0];

  return v4;
}

@end