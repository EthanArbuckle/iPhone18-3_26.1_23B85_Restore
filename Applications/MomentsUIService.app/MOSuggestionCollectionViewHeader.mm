@interface MOSuggestionCollectionViewHeader
- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithCoder:(id)coder;
- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MOSuggestionCollectionViewHeader

- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MOSuggestionCollectionViewHeader();
  height = [(MOSuggestionCollectionViewHeader *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  secondarySystemBackgroundColor = [v8 secondarySystemBackgroundColor];
  [(MOSuggestionCollectionViewHeader *)v9 setBackgroundColor:secondarySystemBackgroundColor];

  return v9;
}

- (_TtC16MomentsUIService32MOSuggestionCollectionViewHeader)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  MOSuggestionCollectionViewHeader.layoutSubviews()();
}

@end