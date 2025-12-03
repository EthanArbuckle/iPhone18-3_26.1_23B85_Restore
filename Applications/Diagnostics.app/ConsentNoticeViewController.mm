@interface ConsentNoticeViewController
- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ConsentNoticeViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000BB9C0(appear);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ConsentNoticeViewController();
  v2 = v6.receiver;
  viewDidLoad = [(ConsentNoticeViewController *)&v6 viewDidLoad];
  v4 = (*((swift_isaMask & *v2) + 0x118))(viewDidLoad);
  v5 = (*((swift_isaMask & *v2) + 0x120))(v4);
  (*((swift_isaMask & *v2) + 0x128))(v5);
}

- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1000BBD24(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1000BBD24(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC11Diagnostics27ConsentNoticeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_1000BBF04(v9, v11, text, v13, icon, layout);
}

@end