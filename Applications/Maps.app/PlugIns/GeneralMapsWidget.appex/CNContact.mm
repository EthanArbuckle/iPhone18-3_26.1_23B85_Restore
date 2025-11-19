@interface CNContact
- (CGImage)imageForCustomImageKey:(unint64_t)a3 suggestedSize:(CGSize)a4 contentScale:(float)a5;
@end

@implementation CNContact

- (CGImage)imageForCustomImageKey:(unint64_t)a3 suggestedSize:(CGSize)a4 contentScale:(float)a5
{
  v5 = [(CNContact *)self avatarImageWithSize:0 scale:a4.width rightToLeft:a4.height, a5];
  v6 = [v5 CGImage];

  return v6;
}

@end