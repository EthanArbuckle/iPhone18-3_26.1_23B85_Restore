@interface NSURLHostNameAddressInfo
+ (id)addressInfoForHost:(id)host;
+ (void)asyncResolveWithCallbackClient:(id)client;
- (id)_initWithAddressInfo:(addrinfo *)info;
- (void)dealloc;
@end

@implementation NSURLHostNameAddressInfo

+ (id)addressInfoForHost:(id)host
{
  pthread_once(&initControl_0, NSURLHostNameAddressInfoInit);
  [_MergedGlobals_125 lock];
  v4 = [qword_1ED43FC38 objectForKey:host];
  v5 = v4;
  if (v4)
  {
    [v4 _timestamp];
    if (v6 + 600.0 <= CFAbsoluteTimeGetCurrent())
    {
      [qword_1ED43FC38 removeObjectForKey:host];
      v5 = 0;
    }

    else
    {
      v7 = v5;
      v8 = v5;
    }
  }

  [_MergedGlobals_125 unlock];
  return v5;
}

+ (void)asyncResolveWithCallbackClient:(id)client
{
  v8 = *MEMORY[0x1E69E9840];
  pthread_once(&initControl_0, NSURLHostNameAddressInfoInit);
  clientCopy = client;
  __dmb(0xBu);
  v6 = 0;
  memset(&__attr, 0, sizeof(__attr));
  pthread_attr_init(&__attr);
  pthread_attr_setdetachstate(&__attr, 2);
  v5 = qos_class_main();
  pthread_attr_set_qos_class_np(&__attr, v5, 0);
  pthread_create(&v6, &__attr, resolveHostName, client);
  pthread_attr_destroy(&__attr);
}

- (id)_initWithAddressInfo:(addrinfo *)info
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSURLHostNameAddressInfo;
  v4 = [(NSURLHostNameAddressInfo *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->addressInfo = info;
    v4->timestamp = CFAbsoluteTimeGetCurrent();
  }

  return v5;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  addressInfo = self->addressInfo;
  if (addressInfo)
  {
    freeaddrinfo(addressInfo);
  }

  v4.receiver = self;
  v4.super_class = NSURLHostNameAddressInfo;
  [(NSURLHostNameAddressInfo *)&v4 dealloc];
}

@end