@interface FootnoteCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC22SubscribePageExtension26FootnoteCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation FootnoteCollectionViewCell

- (_TtC22SubscribePageExtension26FootnoteCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10025B00C();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(FootnoteCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
  v4 = [v2 contentView];
  sub_100009D34();
  sub_1007477B4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FootnoteCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_10025B28C(a3);
}

@end