@interface AXSSRemoteDesktopViewer
- (AXSSRemoteDesktopViewer)init;
- (AXSSRemoteDesktopViewer)initWithDelegate:(id)a3;
- (id)decodeDictForTesting:(id)a3;
- (int)handleServerAccessibilityMessageWithFeature:(unint64_t)a3 message:(unint64_t)a4 userInfo:(id)a5;
- (int)handleServerAccessibilityReplyWithFeature:(unint64_t)a3 messageID:(unsigned int)a4 userInfo:(id)a5;
@end

@implementation AXSSRemoteDesktopViewer

- (AXSSRemoteDesktopViewer)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXSSRemoteDesktopViewer;
  return [(AXSSRemoteDesktopViewer *)&v4 init];
}

- (int)handleServerAccessibilityMessageWithFeature:(unint64_t)a3 message:(unint64_t)a4 userInfo:(id)a5
{
  v5 = a5;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (int)handleServerAccessibilityReplyWithFeature:(unint64_t)a3 messageID:(unsigned int)a4 userInfo:(id)a5
{
  v5 = a5;
  v6 = sub_1C0F4F7B0();
  sub_1C0EFED6C(v6, v7);

  return -1;
}

- (id)decodeDictForTesting:(id)a3
{
  if (a3)
  {
    v4 = a3;
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