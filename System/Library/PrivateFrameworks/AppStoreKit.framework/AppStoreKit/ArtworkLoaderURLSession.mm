@interface ArtworkLoaderURLSession
- (_TtC11AppStoreKit23ArtworkLoaderURLSession)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
@end

@implementation ArtworkLoaderURLSession

- (_TtC11AppStoreKit23ArtworkLoaderURLSession)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(AMSURLSession *)&v9 initWithConfiguration:configuration delegate:delegate delegateQueue:queue];
}

@end