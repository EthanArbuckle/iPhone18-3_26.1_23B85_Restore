@interface MonogramInputViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithCoder:(id)a3;
- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation MonogramInputViewController

- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_textField;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UITextField) init];
  *&self->textField[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_100026D10();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MonogramInputViewController();
  v2 = v6.receiver;
  [(MonogramInputViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    sub_1000119F0();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  if (a3)
  {
    v6 = self;
    v5 = a3;
    sub_100011FA4();
  }
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100011CA4(v4);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_100026A20();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_10001237C(v9, location, length);

  return length & 1;
}

- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end