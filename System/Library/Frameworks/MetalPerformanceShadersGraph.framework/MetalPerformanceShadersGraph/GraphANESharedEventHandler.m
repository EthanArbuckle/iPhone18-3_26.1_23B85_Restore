@interface GraphANESharedEventHandler
- (GraphANESharedEventHandler)initWithDevice:(id)a3;
@end

@implementation GraphANESharedEventHandler

- (GraphANESharedEventHandler)initWithDevice:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GraphANESharedEventHandler;
  v5 = [(GraphANESharedEventHandler *)&v11 init];
  v6 = objc_alloc_init(MEMORY[0x1E696CE00]);
  ioSurfaceStartSharedEvent = v5->_ioSurfaceStartSharedEvent;
  v5->_ioSurfaceStartSharedEvent = v6;

  v8 = [v4 newSharedEventWithMachPort:{-[IOSurfaceSharedEvent eventPort](v5->_ioSurfaceStartSharedEvent, "eventPort")}];
  sharedEvent = v5->_sharedEvent;
  v5->_sharedEvent = v8;

  return v5;
}

@end