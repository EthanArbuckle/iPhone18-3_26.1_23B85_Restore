@interface CMIOExtensionProxyAttribution
+ (id)sharedAttribution;
- (CMIOExtensionProxyAttribution)init;
- (void)dealloc;
@end

@implementation CMIOExtensionProxyAttribution

+ (id)sharedAttribution
{
  if (sharedAttribution_onceToken != -1)
  {
    +[CMIOExtensionProxyAttribution sharedAttribution];
  }

  return sharedAttribution_gAttribution;
}

CMIOExtensionProxyAttribution *__50__CMIOExtensionProxyAttribution_sharedAttribution__block_invoke()
{
  result = objc_alloc_init(CMIOExtensionProxyAttribution);
  sharedAttribution_gAttribution = result;
  return result;
}

- (CMIOExtensionProxyAttribution)init
{
  v7.receiver = self;
  v7.super_class = CMIOExtensionProxyAttribution;
  v2 = [(CMIOExtensionProxyAttribution *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v3->_queue = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProxyAttribution", v4, global_queue);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionProxyAttribution;
  [(CMIOExtensionProxyAttribution *)&v3 dealloc];
}

@end