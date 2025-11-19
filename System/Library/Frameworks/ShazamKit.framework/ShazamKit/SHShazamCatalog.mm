@interface SHShazamCatalog
- (SHShazamCatalog)init;
- (id)_createMatcher;
@end

@implementation SHShazamCatalog

- (SHShazamCatalog)init
{
  v3 = objc_opt_new();
  v6.receiver = self;
  v6.super_class = SHShazamCatalog;
  v4 = [(SHCatalog *)&v6 initWithConfiguration:v3 error:0];

  return v4;
}

- (id)_createMatcher
{
  v2 = [SHShazamKitServiceConnection alloc];
  v3 = objc_opt_new();
  v4 = [(SHShazamKitServiceConnection *)v2 initWithConnectionProvider:v3];

  return v4;
}

@end