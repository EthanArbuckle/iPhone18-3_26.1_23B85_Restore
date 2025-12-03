@interface AADOBRepairStateUpdater
- (AADOBRepairStateUpdater)init;
- (void)updateDOBRepairStateWithSettings:(id)settings completionHandler:(id)handler;
@end

@implementation AADOBRepairStateUpdater

- (void)updateDOBRepairStateWithSettings:(id)settings completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

- (AADOBRepairStateUpdater)init
{
  v3.receiver = self;
  v3.super_class = AADOBRepairStateUpdater;
  return [(AADOBRepairStateUpdater *)&v3 init];
}

@end