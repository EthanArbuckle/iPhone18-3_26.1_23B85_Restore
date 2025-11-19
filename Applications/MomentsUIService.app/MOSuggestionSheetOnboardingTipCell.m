@interface MOSuggestionSheetOnboardingTipCell
- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithCoder:(id)a3;
- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionSheetOnboardingTipCell

- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  v7 = [(MOSuggestionSheetOnboardingTipCell *)&v11 initWithFrame:x, y, width, height];
  v8 = *((swift_isaMask & v7->super.super.super.super.isa) + 0x70);
  v9 = v7;
  v8();

  return v9;
}

@end