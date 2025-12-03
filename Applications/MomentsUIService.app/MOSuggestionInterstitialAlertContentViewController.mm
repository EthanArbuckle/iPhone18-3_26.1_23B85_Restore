@interface MOSuggestionInterstitialAlertContentViewController
- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithCoder:(id)coder;
- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTraitChange;
@end

@implementation MOSuggestionInterstitialAlertContentViewController

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView);
  selfCopy = self;
  layer = [v2 layer];
  separatorColor = [objc_opt_self() separatorColor];
  cGColor = [separatorColor CGColor];

  [layer setBorderColor:cGColor];
}

- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController_textView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UITextView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService50MOSuggestionInterstitialAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end