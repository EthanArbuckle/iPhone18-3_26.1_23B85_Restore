@interface CNAvatarAccessoryView
+ (id)badgeWithSystemImageNamed:(id)named;
+ (id)mediaContextBadgeWithImageData:(id)data;
@end

@implementation CNAvatarAccessoryView

+ (id)badgeWithSystemImageNamed:(id)named
{
  v3 = MEMORY[0x1E6996BA0];
  namedCopy = named;
  v5 = [[v3 alloc] initWithSystemImageNamed:namedCopy];

  return v5;
}

+ (id)mediaContextBadgeWithImageData:(id)data
{
  v3 = MEMORY[0x1E6996B88];
  dataCopy = data;
  v5 = [[v3 alloc] initWithImageData:dataCopy];

  return v5;
}

@end