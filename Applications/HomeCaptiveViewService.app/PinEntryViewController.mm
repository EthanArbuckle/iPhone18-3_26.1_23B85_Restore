@interface PinEntryViewController
- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewDidLoad;
@end

@implementation PinEntryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100008B44();
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_10000949C();
}

- (_TtC22HomeCaptiveViewService22PinEntryViewController)initWithContentView:(id)view
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for PinEntryViewController();
  return [(PinEntryViewController *)&v6 initWithContentView:view];
}

@end