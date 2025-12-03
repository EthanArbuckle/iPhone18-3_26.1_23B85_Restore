@interface CalibrationViewController
- (_TtC16AssistiveTouchUI25CalibrationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTapGuesture:(id)guesture;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CalibrationViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2414D941C();
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for CalibrationViewController();
  v2 = v13.receiver;
  [(CalibrationViewController *)&v13 viewDidLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view safeAreaInsets];
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

- (void)handleTapGuesture:(id)guesture
{
  guestureCopy = guesture;
  selfCopy = self;
  sub_2414DA588();
}

- (_TtC16AssistiveTouchUI25CalibrationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end