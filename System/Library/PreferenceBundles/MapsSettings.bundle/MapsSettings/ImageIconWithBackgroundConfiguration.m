@interface ImageIconWithBackgroundConfiguration
- (CGSize)iconSize;
- (ImageIconWithBackgroundConfiguration)init;
@end

@implementation ImageIconWithBackgroundConfiguration

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

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end