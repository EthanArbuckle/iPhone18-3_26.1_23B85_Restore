@interface REBookReaderModuleFactory
- (REBookReaderModuleFactory)init;
@end

@implementation REBookReaderModuleFactory

- (REBookReaderModuleFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(REBookReaderModuleFactory *)&v3 init];
}

@end