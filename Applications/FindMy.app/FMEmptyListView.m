@interface FMEmptyListView
- (_TtC6FindMy15FMEmptyListView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMEmptyListView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMEmptyListView();
  v2 = v4.receiver;
  v3 = [(FMEmptyListView *)&v4 layoutSubviews];
  (*((swift_isaMask & *v2) + 0x128))(v3);
  if (*(v2 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_isFirstLayout) == 1)
  {
    *(v2 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_isFirstLayout) = 0;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMEmptyListView();
  v4 = a3;
  v5 = v7.receiver;
  v6 = [(FMEmptyListView *)&v7 traitCollectionDidChange:v4];
  (*((swift_isaMask & *v5) + 0x128))(v6);
  sub_10003C1E4();
}

- (_TtC6FindMy15FMEmptyListView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end