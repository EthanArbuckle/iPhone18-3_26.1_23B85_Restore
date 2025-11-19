@interface NTKFoghornDataSource
- (void)startUpdatesWithHandler:(id)a3;
@end

@implementation NTKFoghornDataSource

- (void)startUpdatesWithHandler:(id)a3
{
  v4 = MEMORY[0x23EEC15B0](a3, a2);
  updateHandler = self->_updateHandler;
  self->_updateHandler = v4;

  objc_msgSend_start(self, v6, v7);
}

@end