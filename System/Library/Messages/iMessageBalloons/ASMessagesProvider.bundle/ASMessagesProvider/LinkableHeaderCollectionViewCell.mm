@interface LinkableHeaderCollectionViewCell
- (_TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LinkableHeaderCollectionViewCell

- (_TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v2 = v12.receiver;
  [(LinkableHeaderCollectionViewCell *)&v12 layoutSubviews];
  contentView = [v2 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView] setFrame:{v5, v7, v9, v11}];
}

@end