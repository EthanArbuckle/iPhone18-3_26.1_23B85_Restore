@interface MFMessageObserver
@end

@implementation MFMessageObserver

void __36___MFMessageObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(_MFMessageObserver);
  v1 = sharedObserver_sharedObserver;
  sharedObserver_sharedObserver = v0;
}

@end