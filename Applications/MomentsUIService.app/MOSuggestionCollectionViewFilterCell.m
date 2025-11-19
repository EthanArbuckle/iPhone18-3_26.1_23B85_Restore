@interface MOSuggestionCollectionViewFilterCell
- (BOOL)isSelected;
- (_TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell)initWithCoder:(id)a3;
- (_TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation MOSuggestionCollectionViewFilterCell

- (_TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton;
  *(&self->super.super.super.super.super.isa + v9) = closure #1 in variable initialization expression of MOSuggestionCollectionViewFilterCell.filterButton();
  v12.receiver = self;
  v12.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  v10 = [(MOSuggestionCollectionViewFilterCell *)&v12 initWithFrame:x, y, width, height];
  MOSuggestionCollectionViewFilterCell.setupView()();

  return v10;
}

- (_TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionCollectionViewFilterCell_filterButton;
  *(&self->super.super.super.super.super.isa + v4) = closure #1 in variable initialization expression of MOSuggestionCollectionViewFilterCell.filterButton();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  return [(MOSuggestionCollectionViewFilterCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MOSuggestionCollectionViewFilterCell();
  v4 = v5.receiver;
  [(MOSuggestionCollectionViewFilterCell *)&v5 setSelected:v3];
  MOSuggestionCollectionViewFilterCell.isSelected.didset();
}

@end