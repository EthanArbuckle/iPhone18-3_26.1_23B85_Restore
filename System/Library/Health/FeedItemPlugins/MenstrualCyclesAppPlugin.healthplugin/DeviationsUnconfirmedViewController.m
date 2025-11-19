@interface DeviationsUnconfirmedViewController
- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton_];

  sub_29E02ACE4();
  sub_29E02AF8C();
}

- (void)primaryButtonTapped
{
  v2 = self;
  sub_29E02B328();
}

- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end