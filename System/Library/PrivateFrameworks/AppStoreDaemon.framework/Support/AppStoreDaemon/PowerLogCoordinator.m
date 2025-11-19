@interface PowerLogCoordinator
- (PowerLogCoordinator)init;
@end

@implementation PowerLogCoordinator

- (PowerLogCoordinator)init
{
  v3.receiver = self;
  v3.super_class = PowerLogCoordinator;
  return [(PowerLogCoordinator *)&v3 init];
}

@end