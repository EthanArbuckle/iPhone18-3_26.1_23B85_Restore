@interface LabsTipViewController
- (_TtC13HealthRecords21LabsTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation LabsTipViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for LabsTipViewController();
  v2 = v8.receiver;
  [(LabsTipViewController *)&v8 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    v5 = sub_29D4A7A50();
    [v4 addSubview_];

    sub_29D4A8250(v2, 22.0);
    v6 = objc_opt_self();
    sub_29D48F51C(0, &qword_2A17A3F80);
    v7 = sub_29D5B401C();

    [v6 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_29D5B374C();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29D5B2C2C();
  MEMORY[0x2A1C7C4A8](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1D60]);
  selfCopy = self;
  sub_29D5B436C();
  sub_29D5B373C();
  sub_29D5B437C();
  v10 = type metadata accessor for LabsTipViewController();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(LabsTipViewController *)&v11 viewIsAppearing:appearingCopy];
}

- (_TtC13HealthRecords21LabsTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D4A85F0(v5, v7, bundle);
}

@end