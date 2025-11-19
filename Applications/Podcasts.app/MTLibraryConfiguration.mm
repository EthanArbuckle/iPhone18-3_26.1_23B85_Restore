@interface MTLibraryConfiguration
+ (id)defaultConfiguration;
- (id)initSupportsPlayback:(BOOL)a3 supportsLocalMedia:(BOOL)a4;
@end

@implementation MTLibraryConfiguration

+ (id)defaultConfiguration
{
  v2 = [[a1 alloc] initSupportsPlayback:1 supportsLocalMedia:1];

  return v2;
}

- (id)initSupportsPlayback:(BOOL)a3 supportsLocalMedia:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTLibraryConfiguration;
  v6 = [(MTLibraryConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTLibraryConfiguration *)v6 setSupportsPlayback:v5];
    [(MTLibraryConfiguration *)v7 setSupportsLocalMedia:v4];
  }

  return v7;
}

@end