@interface ShelfHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConfiguration;
@end

@implementation ShelfHeaderView

- (void)prepareForReuse
{
  v2 = self;
  sub_515CDC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(ShelfHeaderView *)v7 traitCollection];
  v9 = ShelfHeaderLayout.measure(toFit:with:)(v8);
  v11 = v10;

  sub_51A608(v6, type metadata accessor for ShelfHeaderLayout);
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
  v7 = self;
  [(ShelfHeaderView *)&v10 layoutSubviews];
  v8 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView);
  [(ShelfHeaderView *)v7 bounds];
  [v8 setFrame:?];
  [(ShelfHeaderView *)v7 bounds];
  v9 = [(ShelfHeaderView *)v7 traitCollection];
  ShelfHeaderLayout.place(at:with:)(v9);

  sub_51A608(v6, type metadata accessor for ShelfHeaderLayout);
}

- (void)updateConfiguration
{
  v2 = self;
  sub_514D18();
}

@end