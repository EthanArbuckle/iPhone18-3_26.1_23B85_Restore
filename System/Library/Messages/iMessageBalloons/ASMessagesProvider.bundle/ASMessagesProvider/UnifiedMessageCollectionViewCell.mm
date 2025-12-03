@interface UnifiedMessageCollectionViewCell
- (_TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation UnifiedMessageCollectionViewCell

- (_TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v2 = v7.receiver;
  [(UnifiedMessageCollectionViewCell *)&v7 layoutSubviews];
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  if (v3)
  {
    v4 = *&stru_68.segname[(swift_isaMask & *v2) + 16];
    v5 = v3;
    v4(v5, v6);
    [v5 setFrame:{v7.receiver, v7.super_class}];
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_51C4D8();
}

@end