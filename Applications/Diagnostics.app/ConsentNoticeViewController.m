@interface ConsentNoticeViewController
- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ConsentNoticeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000BB9C0(a3);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ConsentNoticeViewController();
  v2 = v6.receiver;
  v3 = [(ConsentNoticeViewController *)&v6 viewDidLoad];
  v4 = (*((swift_isaMask & *v2) + 0x118))(v3);
  v5 = (*((swift_isaMask & *v2) + 0x120))(v4);
  (*((swift_isaMask & *v2) + 0x128))(v5);
}

- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1000BBD24(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1000BBD24(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_1000BBF04(v9, v11, a4, v13, a5, a6);
}

@end