@interface DebugStorefrontPickerViewController
- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setStorefront;
- (void)setStorefrontToUS;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugStorefrontPickerViewController

- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10007E0A4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10007E678();
}

- (void)setStorefront
{
  v2 = self;
  sub_10074CE54();
}

- (void)setStorefrontToUS
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_countryPicker);
  v3 = self;
  [v2 selectRow:157 inComponent:0 animated:1];
  sub_10074CE94();
  [*(&v3->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35DebugStorefrontPickerViewController_languagePicker) selectRow:0 inComponent:0 animated:1];
  sub_10074CEA4();
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10007F100();

  return v7;
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  v4 = self;
  v5 = [(DebugStorefrontPickerViewController *)v4 view];
  if (v5)
  {
    v7 = v5;
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = a3;
  v7 = self;
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_10007F260();
}

- (_TtC22SubscribePageExtension35DebugStorefrontPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end