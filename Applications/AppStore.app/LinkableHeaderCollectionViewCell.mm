@interface LinkableHeaderCollectionViewCell
- (_TtC8AppStore32LinkableHeaderCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LinkableHeaderCollectionViewCell

- (_TtC8AppStore32LinkableHeaderCollectionViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
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
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView] setFrame:{v5, v7, v9, v11}];
}

@end