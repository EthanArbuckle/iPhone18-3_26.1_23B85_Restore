@interface NEHotspotHelper
+ (BOOL)logoff:(NEHotspotNetwork *)network;
+ (BOOL)registerWithOptions:(NSDictionary *)options queue:(dispatch_queue_t)queue handler:(NEHotspotHelperHandler)handler;
+ (NSArray)supportedNetworkInterfaces;
@end

@implementation NEHotspotHelper

+ (NSArray)supportedNetworkInterfaces
{
  if (MEMORY[0x1EEE84650] && (v2 = CNPluginCopySupportedInterfaces()) != 0)
  {
    v3 = v2;
    v4 = createHotspotNetworkArray(v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)logoff:(NEHotspotNetwork *)network
{
  v3 = network;
  v4 = v3;
  if (MEMORY[0x1EEE84658])
  {
    if (v3)
    {
      v5 = v3->_network;
    }

    v6 = CNPluginLogoffNetwork() != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)registerWithOptions:(NSDictionary *)options queue:(dispatch_queue_t)queue handler:(NEHotspotHelperHandler)handler
{
  v7 = options;
  v8 = queue;
  if (registerWithOptions_queue_handler__S_handler)
  {
    goto LABEL_6;
  }

  v9 = [handler copy];
  v10 = registerWithOptions_queue_handler__S_handler;
  registerWithOptions_queue_handler__S_handler = v9;

  if (!MEMORY[0x1EEE84660] || !CNPluginRegister())
  {
    v12 = registerWithOptions_queue_handler__S_handler;
    registerWithOptions_queue_handler__S_handler = 0;

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

void __53__NEHotspotHelper_registerWithOptions_queue_handler___block_invoke(uint64_t a1, const void *a2)
{
  v3 = [NEHotspotHelperCommand alloc];
  if (v3)
  {
    v9.receiver = v3;
    v9.super_class = NEHotspotHelperCommand;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      if (a2)
      {
        CFRetain(a2);
        v5 = v7;
      }

      v6 = v5[1];
      if (v6)
      {
        CFRelease(v6);
        v5 = v7;
      }

      v5[1] = a2;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  (*(registerWithOptions_queue_handler__S_handler + 16))();
}

@end