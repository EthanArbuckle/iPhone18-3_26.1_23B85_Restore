@interface ManualEntryCardViewController
- (_TtC23NewDeviceSetupUIService29ManualEntryCardViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewDidLoad;
@end

@implementation ManualEntryCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000126DC();
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_100012A18(entryCopy);
}

- (_TtC23NewDeviceSetupUIService29ManualEntryCardViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end