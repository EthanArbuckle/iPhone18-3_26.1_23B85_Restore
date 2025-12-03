@interface BLSHEnvironmentAndSource
- (BLSHEnvironmentAndSource)initWithEnvironment:(id)environment environmentSource:(id)source;
@end

@implementation BLSHEnvironmentAndSource

- (BLSHEnvironmentAndSource)initWithEnvironment:(id)environment environmentSource:(id)source
{
  environmentCopy = environment;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = BLSHEnvironmentAndSource;
  v9 = [(BLSHEnvironmentAndSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_environmentSource, source);
  }

  return v10;
}

@end