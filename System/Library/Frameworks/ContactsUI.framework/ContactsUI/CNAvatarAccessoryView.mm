@interface CNAvatarAccessoryView
+ (id)badgeWithSystemImageNamed:(id)a3;
+ (id)mediaContextBadgeWithImageData:(id)a3;
@end

@implementation CNAvatarAccessoryView

+ (id)badgeWithSystemImageNamed:(id)a3
{
  v3 = MEMORY[0x1E6996BA0];
  v4 = a3;
  v5 = [[v3 alloc] initWithSystemImageNamed:v4];

  return v5;
}

+ (id)mediaContextBadgeWithImageData:(id)a3
{
  v3 = MEMORY[0x1E6996B88];
  v4 = a3;
  v5 = [[v3 alloc] initWithImageData:v4];

  return v5;
}

@end