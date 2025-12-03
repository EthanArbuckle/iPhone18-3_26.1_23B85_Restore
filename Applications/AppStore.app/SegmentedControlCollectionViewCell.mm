@interface SegmentedControlCollectionViewCell
- (_TtC8AppStore34SegmentedControlCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SegmentedControlCollectionViewCell

- (_TtC8AppStore34SegmentedControlCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_isFirstSetup) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(SegmentedControlCollectionViewCell *)&v10 layoutSubviews];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v11);
  v3 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 sizeThatFits:{v5, v6, v10.receiver, v10.super_class}];
  v7 = *&v2[v3];
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 setFrame:v9];
}

@end