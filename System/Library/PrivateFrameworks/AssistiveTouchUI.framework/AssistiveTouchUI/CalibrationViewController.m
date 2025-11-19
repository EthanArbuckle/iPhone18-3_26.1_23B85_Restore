@interface CalibrationViewController
- (_TtC16AssistiveTouchUI25CalibrationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTapGuesture:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CalibrationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2414D941C();
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for CalibrationViewController();
  v2 = v13.receiver;
  [(CalibrationViewController *)&v13 viewDidLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    qword_27E545BE0 = v6;
    *algn_27E545BE8 = v8;
    qword_27E545BF0 = v10;
    qword_27E545BF8 = v12;
    byte_27E545C00 = 0;
  }

  else
  {
    __break(1u);
  }
}

- (void)handleTapGuesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2414DA588();
}

- (_TtC16AssistiveTouchUI25CalibrationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end