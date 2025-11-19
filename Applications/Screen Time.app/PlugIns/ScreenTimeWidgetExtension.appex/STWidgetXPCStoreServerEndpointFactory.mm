@interface STWidgetXPCStoreServerEndpointFactory
- (_TtC25ScreenTimeWidgetExtension37STWidgetXPCStoreServerEndpointFactory)init;
- (id)newEndpoint;
@end

@implementation STWidgetXPCStoreServerEndpointFactory

- (_TtC25ScreenTimeWidgetExtension37STWidgetXPCStoreServerEndpointFactory)init
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
    v3 = qword_10005D6B8;
    v4 = v17;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1000492C8();
    sub_1000143C0(v5, qword_10005E860);
    v6 = sub_1000492A8();
    v7 = sub_10004A0A8();
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
    sub_100048F28();

    swift_willThrow();
    if (qword_10005D6B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1000492C8();
    sub_1000143C0(v11, qword_10005E860);
    swift_errorRetain();
    v12 = sub_1000492A8();
    v13 = sub_10004A088();

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
      sub_100034FA0(v15);
    }

    else
    {
    }

    return 0;
  }
}

@end