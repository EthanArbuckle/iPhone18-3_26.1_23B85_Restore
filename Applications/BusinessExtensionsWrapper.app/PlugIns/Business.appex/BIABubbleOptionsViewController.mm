@interface BIABubbleOptionsViewController
- (_TtC8Business30BIABubbleOptionsViewController)initWithCoder:(id)coder;
- (_TtC8Business30BIABubbleOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation BIABubbleOptionsViewController

- (_TtC8Business30BIABubbleOptionsViewController)initWithCoder:(id)coder
{
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  v11 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController__shouldBeVisible;
  v14[15] = 0;
  sub_1000ABC0C();
  (*(v5 + 32))(self + v12, v9, v4);
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (_TtC8Business30BIABubbleOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end