@interface MOSuggestionInterstitialAlertContentViewController
- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithCoder:(id)a3;
- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTraitChange;
@end

@implementation MOSuggestionInterstitialAlertContentViewController

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView);
  v6 = self;
  v3 = [v2 layer];
  v4 = [objc_opt_self() separatorColor];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
}

- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UITextView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end