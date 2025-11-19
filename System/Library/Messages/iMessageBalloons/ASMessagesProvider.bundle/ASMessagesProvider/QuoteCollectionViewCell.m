@interface QuoteCollectionViewCell
- (_TtC18ASMessagesProvider23QuoteCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation QuoteCollectionViewCell

- (_TtC18ASMessagesProvider23QuoteCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize);
  *v6 = 0;
  v6[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(QuoteCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView];
  v4 = [v2 contentView];
  sub_2630C();
  sub_75D650();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end