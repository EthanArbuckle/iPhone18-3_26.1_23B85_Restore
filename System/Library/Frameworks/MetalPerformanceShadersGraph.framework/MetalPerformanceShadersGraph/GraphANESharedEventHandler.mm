@interface GraphANESharedEventHandler
- (GraphANESharedEventHandler)initWithDevice:(id)device;
@end

@implementation GraphANESharedEventHandler

- (GraphANESharedEventHandler)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = GraphANESharedEventHandler;
  v5 = [(GraphANESharedEventHandler *)&v11 init];
  v6 = objc_alloc_init(MEMORY[0x1E696CE00]);
  ioSurfaceStartSharedEvent = v5->_ioSurfaceStartSharedEvent;
  v5->_ioSurfaceStartSharedEvent = v6;

  v8 = [deviceCopy newSharedEventWithMachPort:{-[IOSurfaceSharedEvent eventPort](v5->_ioSurfaceStartSharedEvent, "eventPort")}];
  sharedEvent = v5->_sharedEvent;
  v5->_sharedEvent = v8;

  return v5;
}

@end