@interface MonogramInputViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithCoder:(id)coder;
- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)textFieldDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation MonogramInputViewController

- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithCoder:(id)coder
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];

    sub_1000119F0();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  if (window)
  {
    selfCopy = self;
    windowCopy = window;
    sub_100011FA4();
  }
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100011CA4(changeCopy);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_100026A20();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_10001237C(fieldCopy, location, length);

  return length & 1;
}

- (_TtC23MonogramPosterExtension27MonogramInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end