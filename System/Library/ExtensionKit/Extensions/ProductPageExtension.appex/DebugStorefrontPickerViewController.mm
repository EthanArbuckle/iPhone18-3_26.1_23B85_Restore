@interface DebugStorefrontPickerViewController
- (_TtC20ProductPageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC20ProductPageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004FB5EC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1004FBBC0();
}

- (void)setStorefront
{
  selfCopy = self;
  sub_100769ABC();
}

- (void)setStorefrontToUS
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_countryPicker);
  selfCopy = self;
  [v2 selectRow:157 inComponent:0 animated:1];
  sub_100769AFC();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_languagePicker) selectRow:0 inComponent:0 animated:1];
  sub_100769B0C();
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1004FC648();

  return v7;
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  selfCopy = self;
  view = [(DebugStorefrontPickerViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
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
  sub_1004FC6EC();
  v9 = v8;

  if (v9)
  {
    v10 = sub_10076FF6C();
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
  sub_1004FC7A8();
}

- (_TtC20ProductPageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end