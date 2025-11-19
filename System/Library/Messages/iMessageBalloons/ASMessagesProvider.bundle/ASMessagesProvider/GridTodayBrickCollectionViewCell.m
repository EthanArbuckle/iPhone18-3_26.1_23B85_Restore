@interface GridTodayBrickCollectionViewCell
- (_TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GridTodayBrickCollectionViewCell

- (_TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell_grid;
  *(&self->super.super.super.super.super.super.isa + v9) = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BaseTodayBrickCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  [*(&v10->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView) addSubview:*(&v10->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell_grid)];
  return v10;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(BaseTodayBrickCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell_grid];
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ArtworkGrid();
  [(GridTodayBrickCollectionViewCell *)&v12 setFrame:v5, v7, v9, v11];
  sub_44CB80();
  [v3 setNeedsLayout];
}

@end