@interface CRLRemoteURLMetadataProvider
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation CRLRemoteURLMetadataProvider

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100FC9588(a4);
}

@end