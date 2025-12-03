@interface DebugStorefrontPickerViewController
- (_TtC8AppStore35DebugStorefrontPickerViewController)initWithCoder:(id)coder;
- (_TtC8AppStore35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setStorefront;
- (void)setStorefrontToUS;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugStorefrontPickerViewController

- (_TtC8AppStore35DebugStorefrontPickerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002CC9DC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1002CCFB0();
}

- (void)setStorefront
{
  selfCopy = self;
  dispatch thunk of StorefrontPickerPagePresenter.updateStorefront()();
}

- (void)setStorefrontToUS
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker);
  selfCopy = self;
  [v2 selectRow:157 inComponent:0 animated:1];
  dispatch thunk of StorefrontPickerPagePresenter.didSelectCountry(at:)();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker) selectRow:0 inComponent:0 animated:1];
  dispatch thunk of StorefrontPickerPagePresenter.didSelectLanguage(at:)();
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1002CD9E8();

  return v7;
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  selfCopy = self;
  view = [(DebugStorefrontPickerViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    Width = CGRectGetWidth(v17);

    return Width;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1002CDA8C();
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1002CDB48();
}

- (_TtC8AppStore35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end