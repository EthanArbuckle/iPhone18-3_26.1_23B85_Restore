@interface MOSuggestionSheetJournalButton
- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithCoder:(id)a3;
- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionSheetJournalButton

- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionSheetJournalButton();
  v5 = a3;
  v6 = [(MOSuggestionSheetJournalButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    MOSuggestionSheetJournalButton.sharedInit()();
  }

  return v7;
}

- (_TtC16MomentsUIService30MOSuggestionSheetJournalButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end