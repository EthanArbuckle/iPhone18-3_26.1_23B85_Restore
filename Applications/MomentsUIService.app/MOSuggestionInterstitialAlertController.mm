@interface MOSuggestionInterstitialAlertController
- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithCoder:(id)a3;
- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation MOSuggestionInterstitialAlertController

- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController;
  v9 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialAlertContentViewController());
  v10 = a4;
  *(&self->super.super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for MOSuggestionInterstitialAlertController();
  v12 = [(MOSuggestionInterstitialAlertController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController;
  v6 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialAlertContentViewController());
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionInterstitialAlertController();
  v8 = [(MOSuggestionInterstitialAlertController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end