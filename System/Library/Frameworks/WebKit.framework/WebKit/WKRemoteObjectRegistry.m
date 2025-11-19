@interface WKRemoteObjectRegistry
@end

@implementation WKRemoteObjectRegistry

void __41___WKRemoteObjectRegistry__invokeMethod___block_invoke(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(WKRemoteObjectEncoder);
  [(WKRemoteObjectEncoder *)v4 encodeObject:a2 forKey:@"invocation"];
  v5 = *(a1[5] + 8);
  if (v5)
  {
    (**v5)(v5);
    v6 = a1[6];
    v7 = [(WKRemoteObjectEncoder *)v4 rootObjectDictionary];
    v8 = v7;
    if (v7)
    {
      CFRetain(*(v7 + 8));
    }

    v10 = v8;
    v11[0] = v6;
    v11[1] = &v10;
    WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::CallReplyBlock>(v5, v11);
    v9 = v10;
    v10 = 0;
    if (v9)
    {
      CFRelease(*(v9 + 8));
    }

    (*(*v5 + 8))(v5);
  }

  *(a1[7] + 24) = 1;
  if (v4)
  {
  }
}

@end