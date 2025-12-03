@interface MOSuggestionSheetJournalButton
- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithCoder:(id)coder;
- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetJournalButton

- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionSheetJournalButton();
  coderCopy = coder;
  v6 = [(MOSuggestionSheetJournalButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    MOSuggestionSheetJournalButton.sharedInit()();
  }

  return v7;
}

- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end