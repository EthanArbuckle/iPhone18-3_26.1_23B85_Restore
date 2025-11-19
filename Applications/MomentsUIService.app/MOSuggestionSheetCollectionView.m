@interface MOSuggestionSheetCollectionView
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)layoutSubviews;
@end

@implementation MOSuggestionSheetCollectionView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  v2 = v7.receiver;
  v3 = [(MOSuggestionSheetCollectionView *)&v7 layoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x58))(v3);
  if (v4)
  {
    v6 = v4;
    v4(v4, v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }

  (*((swift_isaMask & *v2) + 0x60))(0, 0);
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  v11 = type metadata accessor for MOSuggestionSheetCollectionView();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(MOSuggestionSheetCollectionView *)&v13 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC16MomentsUIService31MOSuggestionSheetCollectionView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetCollectionView_callback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetCollectionView();
  v5 = a3;
  v6 = [(MOSuggestionSheetCollectionView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end