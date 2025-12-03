@interface MOSuggestionSheetOnboardingTipCell
- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithCoder:(id)coder;
- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetOnboardingTipCell

- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  height = [(MOSuggestionSheetOnboardingTipCell *)&v11 initWithFrame:x, y, width, height];
  v8 = *((swift_isaMask & height->super.super.super.super.isa) + 0x70);
  v9 = height;
  v8();

  return v9;
}

@end