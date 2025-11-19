@interface STWidgetXPCStoreServerEndpointFactory
- (_TtC32ScreenTimeWidgetIntentsExtension37STWidgetXPCStoreServerEndpointFactory)init;
- (id)newEndpoint;
@end

@implementation STWidgetXPCStoreServerEndpointFactory

- (_TtC32ScreenTimeWidgetIntentsExtension37STWidgetXPCStoreServerEndpointFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STWidgetXPCStoreServerEndpointFactory();
  return [(STWidgetXPCStoreServerEndpointFactory *)&v3 init];
}

- (id)newEndpoint
{
  v0 = [objc_allocWithZone(STSettingsServiceClient) init];
  v17 = 0;
  v1 = [v0 startCoreDataServerWithError:&v17];
  if (v1)
  {
    v2 = v1;
    v3 = qword_1000114A8;
    v4 = v17;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_10000704C();
    sub_100002510(v5, qword_100011500);
    v6 = sub_10000702C();
    v7 = sub_10000710C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Started coreDataServer and obtained XPC listener", v8, 2u);
    }

    return v2;
  }

  else
  {
    v10 = v17;
    sub_10000701C();

    swift_willThrow();
    if (qword_1000114A8 != -1)
    {
      swift_once();
    }

    v11 = sub_10000704C();
    sub_100002510(v11, qword_100011500);
    swift_errorRetain();
    v12 = sub_10000702C();
    v13 = sub_1000070FC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to start coreDataServer and get XPC listener: %@", v14, 0xCu);
      sub_1000033F8(v15);
    }

    else
    {
    }

    return 0;
  }
}

@end