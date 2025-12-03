@interface ShowMetadataView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShowMetadataView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2CA2E4(change);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ShowMetadataView();
  v2 = v4.receiver;
  [(ShowMetadataView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_2CA918();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end