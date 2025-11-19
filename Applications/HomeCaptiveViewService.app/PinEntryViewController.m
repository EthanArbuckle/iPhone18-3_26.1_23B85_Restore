@interface PinEntryViewController
- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)a3;
- (void)didCompleteTextEntry:(id)a3;
- (void)viewDidLoad;
@end

@implementation PinEntryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100008B44();
}

- (void)didCompleteTextEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000949C();
}

- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)a3
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for PinEntryViewController();
  return [(PinEntryViewController *)&v6 initWithContentView:a3];
}

@end