@interface AVTAvatarStoreServer
+ (id)defaultServerWithImageHandlingDelegate:(id)delegate;
@end

@implementation AVTAvatarStoreServer

+ (id)defaultServerWithImageHandlingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [AVTCoreDataStoreServer alloc];
  v5 = +[AVTCoreEnvironment defaultEnvironment];
  v6 = [(AVTCoreDataStoreServer *)v4 initWithEnvironment:v5 imageHandlingDelegate:delegateCopy];

  return v6;
}

@end