@interface DeviationsUnconfirmedViewController
- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)primaryButtonTapped;
- (void)viewDidLoad;
@end

@implementation DeviationsUnconfirmedViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton_];

  sub_29E02ACE4();
  sub_29E02AF8C();
}

- (void)primaryButtonTapped
{
  selfCopy = self;
  sub_29E02B328();
}

- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end