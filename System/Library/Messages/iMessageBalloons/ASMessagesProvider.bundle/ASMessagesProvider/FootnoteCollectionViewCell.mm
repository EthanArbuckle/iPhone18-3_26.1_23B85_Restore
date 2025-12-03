@interface FootnoteCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC18ASMessagesProvider26FootnoteCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation FootnoteCollectionViewCell

- (_TtC18ASMessagesProvider26FootnoteCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_2C3C1C();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(FootnoteCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
  contentView = [v2 contentView];
  sub_2630C();
  sub_75D650();
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

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_2C3E9C(highlighted);
}

@end