@interface FCVanityURLRedirectService
- (id)backgroundFetchWithAppConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation FCVanityURLRedirectService

- (id)backgroundFetchWithAppConfiguration:(id)configuration completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032090;
  v7[3] = &unk_1000C3098;
  handlerCopy = handler;
  v5 = handlerCopy;
  [(FCVanityURLRedirectService *)self updateUnderlyingMappingWithQualityOfService:9 completion:v7];

  return 0;
}

@end