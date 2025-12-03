@interface AXSSRemoteDesktopViewer
- (AXSSRemoteDesktopViewer)init;
- (AXSSRemoteDesktopViewer)initWithDelegate:(id)delegate;
- (id)decodeDictForTesting:(id)testing;
- (int)handleServerAccessibilityMessageWithFeature:(unint64_t)feature message:(unint64_t)message userInfo:(id)info;
- (int)handleServerAccessibilityReplyWithFeature:(unint64_t)feature messageID:(unsigned int)d userInfo:(id)info;
@end

@implementation AXSSRemoteDesktopViewer

- (AXSSRemoteDesktopViewer)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = AXSSRemoteDesktopViewer;
  return [(AXSSRemoteDesktopViewer *)&v4 init];
}

- (int)handleServerAccessibilityMessageWithFeature:(unint64_t)feature message:(unint64_t)message userInfo:(id)info
{
  infoCopy = info;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (int)handleServerAccessibilityReplyWithFeature:(unint64_t)feature messageID:(unsigned int)d userInfo:(id)info
{
  infoCopy = info;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (id)decodeDictForTesting:(id)testing
{
  if (testing)
  {
    testingCopy = testing;
    v5 = sub_1C0F4F7B0();
    sub_1C0EFED6C(v5, v6);

    v3 = vars8;
  }

  return 0;
}

- (AXSSRemoteDesktopViewer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end