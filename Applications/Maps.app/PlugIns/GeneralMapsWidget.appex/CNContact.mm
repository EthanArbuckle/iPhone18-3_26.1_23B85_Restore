@interface CNContact
- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale;
@end

@implementation CNContact

- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale
{
  scale = [(CNContact *)self avatarImageWithSize:0 scale:size.width rightToLeft:size.height, scale];
  cGImage = [scale CGImage];

  return cGImage;
}

@end