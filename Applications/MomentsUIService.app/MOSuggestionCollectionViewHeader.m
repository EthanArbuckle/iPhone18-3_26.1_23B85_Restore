@interface MOSuggestionCollectionViewHeader
- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithCoder:(id)a3;
- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MOSuggestionCollectionViewHeader

- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MOSuggestionCollectionViewHeader();
  v7 = [(MOSuggestionCollectionViewHeader *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondarySystemBackgroundColor];
  [(MOSuggestionCollectionViewHeader *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  MOSuggestionCollectionViewHeader.layoutSubviews()();
}

@end