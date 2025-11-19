@interface AVTAvatarStore
+ (id)avatarStoreForWatch;
@end

@implementation AVTAvatarStore

+ (id)avatarStoreForWatch
{
  v2 = +[AVTUIEnvironment createFunCamEnvironment];
  v3 = [[AVTAvatarStore alloc] initWithImageGenerator:0 environment:v2];

  return v3;
}

@end