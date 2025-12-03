@interface AVInfoTabViewController
- (NSArray)actions;
- (_TtC5AVKit23AVInfoTabViewController)initWithCoder:(id)coder;
- (_TtC5AVKit23AVInfoTabViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5AVKit23AVInfoTabViewController)initWithPlayerItem:(id)item actions:(id)actions;
- (void)dealloc;
- (void)setActions:(id)actions;
- (void)setPlayerItem:(id)item;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AVInfoTabViewController

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_18B515970(item);
  v6 = *(selfCopy + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem);
  *(selfCopy + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem) = item;
  v7 = itemCopy;

  sub_18B515A58();
}

- (NSArray)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  sub_18B6C450C();
  v2 = sub_18B6C575C();

  return v2;
}

- (void)setActions:(id)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v4 = sub_18B6C576C();
  v5 = *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions);
  *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions) = v4;
  selfCopy = self;
  sub_18B6C450C();
  LOBYTE(self) = sub_18B4F3B48(v5, v4);

  if ((self & 1) == 0)
  {
    sub_18B516EA8();
  }
}

- (_TtC5AVKit23AVInfoTabViewController)initWithPlayerItem:(id)item actions:(id)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v5 = sub_18B6C576C();
  return sub_18B515F28(item, v5);
}

- (_TtC5AVKit23AVInfoTabViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem) = 0;
  *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_hostingController) = 0;
  *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken) = 0;
  result = sub_18B6C5C5C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AVInfoTabViewController();
  v2 = v6.receiver;
  [(AVInfoTabViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    sub_18B516684();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_18B51628C();
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
  v4 = *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken);
  selfCopy = self;
  if (v4)
  {
    v6 = v4;
    sub_18B6C404C();

    v7 = *(self + v3);
  }

  else
  {
    v7 = 0;
  }

  *(self + v3) = 0;

  v8.receiver = self;
  v8.super_class = type metadata accessor for AVInfoTabViewController();
  [(AVInfoTabViewController *)&v8 dealloc];
}

- (_TtC5AVKit23AVInfoTabViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end