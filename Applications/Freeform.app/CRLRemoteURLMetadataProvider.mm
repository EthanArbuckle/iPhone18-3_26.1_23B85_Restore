@interface CRLRemoteURLMetadataProvider
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation CRLRemoteURLMetadataProvider

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_100FC9588(navigation);
}

@end