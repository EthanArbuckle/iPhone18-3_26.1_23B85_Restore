@interface DebugStorefrontPickerViewController
- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10007E0A4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10007E678();
}

- (void)setStorefront
{
  selfCopy = self;
  sub_10074CE54();
}

- (void)setStorefrontToUS
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_countryPicker);
  selfCopy = self;
  [v2 selectRow:157 inComponent:0 animated:1];
  sub_10074CE94();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_languagePicker) selectRow:0 inComponent:0 animated:1];
  sub_10074CEA4();
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_10007F100();

  return v7;
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  selfCopy = self;
  view = [(DebugStorefrontPickerViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    sub_100016C60(0, &qword_100922300);
    sub_1007477B4();
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
  sub_10007F1A4();
  v9 = v8;

  if (v9)
  {
    v10 = sub_100753064();
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
  sub_10007F260();
}

- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end