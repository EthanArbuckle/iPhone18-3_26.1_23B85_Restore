@interface AADOBRepairStateUpdater
- (AADOBRepairStateUpdater)init;
- (void)updateDOBRepairStateWithSettings:(id)a3 completionHandler:(id)a4;
@end

@implementation AADOBRepairStateUpdater

- (void)updateDOBRepairStateWithSettings:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
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