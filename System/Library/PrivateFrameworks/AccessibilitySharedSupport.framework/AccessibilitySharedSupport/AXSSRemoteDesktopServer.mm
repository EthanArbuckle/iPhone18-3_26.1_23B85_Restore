@interface AXSSRemoteDesktopServer
- (AXSSRemoteDesktopServer)init;
- (AXSSRemoteDesktopServer)initWithDelegate:(id)a3;
- (int)handleEnableAccessibilityFeature:(unint64_t)a3 enabled:(BOOL)a4 settings:(id)a5;
- (int)handleViewerAccessibilityMessageWithFeature:(unint64_t)a3 message:(unint64_t)a4 messageID:(unsigned int)a5 timeout:(double)a6 userInfo:(id)a7;
- (void)dealloc;
@end

@implementation AXSSRemoteDesktopServer

- (AXSSRemoteDesktopServer)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXSSRemoteDesktopServer;
  return [(AXSSRemoteDesktopServer *)&v4 init];
}

- (void)dealloc
{
  v2 = self;
  [(AXSSRemoteDesktopServer *)v2 stop];
  v3.receiver = v2;
  v3.super_class = AXSSRemoteDesktopServer;
  [(AXSSRemoteDesktopServer *)&v3 dealloc];
}

- (int)handleEnableAccessibilityFeature:(unint64_t)a3 enabled:(BOOL)a4 settings:(id)a5
{
  v5 = a5;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (int)handleViewerAccessibilityMessageWithFeature:(unint64_t)a3 message:(unint64_t)a4 messageID:(unsigned int)a5 timeout:(double)a6 userInfo:(id)a7
{
  v7 = a7;
  v8 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v8, v9);

  return -1;
}

- (AXSSRemoteDesktopServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end