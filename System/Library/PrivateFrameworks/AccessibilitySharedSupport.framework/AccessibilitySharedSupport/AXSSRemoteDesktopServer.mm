@interface AXSSRemoteDesktopServer
- (AXSSRemoteDesktopServer)init;
- (AXSSRemoteDesktopServer)initWithDelegate:(id)delegate;
- (int)handleEnableAccessibilityFeature:(unint64_t)feature enabled:(BOOL)enabled settings:(id)settings;
- (int)handleViewerAccessibilityMessageWithFeature:(unint64_t)feature message:(unint64_t)message messageID:(unsigned int)d timeout:(double)timeout userInfo:(id)info;
- (void)dealloc;
@end

@implementation AXSSRemoteDesktopServer

- (AXSSRemoteDesktopServer)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = AXSSRemoteDesktopServer;
  return [(AXSSRemoteDesktopServer *)&v4 init];
}

- (void)dealloc
{
  selfCopy = self;
  [(AXSSRemoteDesktopServer *)selfCopy stop];
  v3.receiver = selfCopy;
  v3.super_class = AXSSRemoteDesktopServer;
  [(AXSSRemoteDesktopServer *)&v3 dealloc];
}

- (int)handleEnableAccessibilityFeature:(unint64_t)feature enabled:(BOOL)enabled settings:(id)settings
{
  settingsCopy = settings;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (int)handleViewerAccessibilityMessageWithFeature:(unint64_t)feature message:(unint64_t)message messageID:(unsigned int)d timeout:(double)timeout userInfo:(id)info
{
  infoCopy = info;
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