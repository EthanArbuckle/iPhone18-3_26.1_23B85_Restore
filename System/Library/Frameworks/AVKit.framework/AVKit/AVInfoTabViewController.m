@interface AVInfoTabViewController
- (NSArray)actions;
- (_TtC5AVKit23AVInfoTabViewController)initWithCoder:(id)a3;
- (_TtC5AVKit23AVInfoTabViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5AVKit23AVInfoTabViewController)initWithPlayerItem:(id)a3 actions:(id)a4;
- (void)dealloc;
- (void)setActions:(id)a3;
- (void)setPlayerItem:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AVInfoTabViewController

- (void)setPlayerItem:(id)a3
{
  v5 = a3;
  v8 = self;
  sub_18B515970(a3);
  v6 = *(v8 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem);
  *(v8 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem) = a3;
  v7 = v5;

  sub_18B515A58();
}

- (NSArray)actions
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  sub_18B6C450C();
  v2 = sub_18B6C575C();

  return v2;
}

- (void)setActions:(id)a3
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v4 = sub_18B6C576C();
  v5 = *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions);
  *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions) = v4;
  v6 = self;
  sub_18B6C450C();
  LOBYTE(self) = sub_18B4F3B48(v5, v4);

  if ((self & 1) == 0)
  {
    sub_18B516EA8();
  }
}

- (_TtC5AVKit23AVInfoTabViewController)initWithPlayerItem:(id)a3 actions:(id)a4
{
  sub_18B4AC60C(0, &qword_1EA9C3980);
  v5 = sub_18B6C576C();
  return sub_18B515F28(a3, v5);
}

- (_TtC5AVKit23AVInfoTabViewController)initWithCoder:(id)a3
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
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
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
  v2 = self;
  sub_18B51628C();
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
  v4 = *(self + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken);
  v5 = self;
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

- (_TtC5AVKit23AVInfoTabViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end