@interface RCApplicationFileCoordinator
+ (id)createCaptureDirectoryAndReturnError:(id *)error;
- (RCApplicationFileCoordinator)init;
@end

@implementation RCApplicationFileCoordinator

+ (id)createCaptureDirectoryAndReturnError:(id *)error
{
  v3 = sub_100177A20();

  return v3;
}

- (RCApplicationFileCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ApplicationFileCoordinator();
  return [(RCApplicationFileCoordinator *)&v3 init];
}

@end