@interface MOSuggestionSheetCollectionView
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
@end

@implementation MOSuggestionSheetCollectionView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  v2 = v7.receiver;
  layoutSubviews = [(MOSuggestionSheetCollectionView *)&v7 layoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x58))(layoutSubviews);
  if (v4)
  {
    v6 = v4;
    v4(v4, v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }

  (*((swift_isaMask & *v2) + 0x60))(0, 0);
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  v11 = type metadata accessor for MOSuggestionSheetCollectionView();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(MOSuggestionSheetCollectionView *)&v13 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  coderCopy = coder;
  v6 = [(MOSuggestionSheetCollectionView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end