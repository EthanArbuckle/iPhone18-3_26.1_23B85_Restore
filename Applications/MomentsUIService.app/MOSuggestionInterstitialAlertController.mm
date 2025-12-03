@interface MOSuggestionInterstitialAlertController
- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithCoder:(id)coder;
- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MOSuggestionInterstitialAlertController

- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v12 = [(MOSuggestionInterstitialAlertController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC16MomentsUIService39MOSuggestionInterstitialAlertController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionInterstitialAlertController_textViewContentController;
  v6 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialAlertContentViewController());
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionInterstitialAlertController();
  v8 = [(MOSuggestionInterstitialAlertController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end