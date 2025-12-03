@interface ShelfHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConfiguration;
@end

@implementation ShelfHeaderView

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10005D2B0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  traitCollection = [(ShelfHeaderView *)selfCopy traitCollection];
  v9 = ShelfHeaderLayout.measure(toFit:with:)(traitCollection);
  v11 = v10;

  sub_100066518(v6, type metadata accessor for ShelfHeaderLayout);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(ShelfHeaderView *)&v10 layoutSubviews];
  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView);
  [(ShelfHeaderView *)selfCopy bounds];
  [v8 setFrame:?];
  [(ShelfHeaderView *)selfCopy bounds];
  traitCollection = [(ShelfHeaderView *)selfCopy traitCollection];
  ShelfHeaderLayout.place(at:with:)(traitCollection);

  sub_100066518(v6, type metadata accessor for ShelfHeaderLayout);
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_10005C2EC();
}

@end