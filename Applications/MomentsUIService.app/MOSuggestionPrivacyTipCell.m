@interface MOSuggestionPrivacyTipCell
- (_TtC16MomentsUIService26MOSuggestionPrivacyTipCell)initWithCoder:(id)a3;
- (_TtC16MomentsUIService26MOSuggestionPrivacyTipCell)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionPrivacyTipCell

- (_TtC16MomentsUIService26MOSuggestionPrivacyTipCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_tipModel) = 0;
  v4 = (self + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss);
  *v4 = closure #1 in variable initialization expression of MOSuggestionPrivacyTipCell.didDismiss;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService26MOSuggestionPrivacyTipCell)initWithFrame:(CGRect)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_tipModel) = 0;
  v4 = (self + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss);
  *v4 = closure #1 in variable initialization expression of MOSuggestionPrivacyTipCell.didDismiss;
  v4[1] = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MOSuggestionPrivacyTipCell();
  v8 = [(MOSuggestionPrivacyTipCell *)&v12 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = *((swift_isaMask & v8->super.super.super.super.isa) + 0xB0);
  v10 = v8;
  v9();

  return v10;
}

@end