@interface EditDatePickerViewController
- (_TtC5Books28EditDatePickerViewController)initWithCoder:(id)a3;
- (_TtC5Books28EditDatePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation EditDatePickerViewController

- (void)loadView
{
  v2 = self;
  sub_10038EFA8();
}

- (_TtC5Books28EditDatePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1007A2254();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker;
  v9 = objc_allocWithZone(UIDatePicker);
  v10 = a4;
  *(&self->super.super.super.isa + v8) = [v9 init];
  v11 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_initialDate;
  v12 = sub_100796BB4();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  if (v7)
  {
    v13 = sub_1007A2214();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for EditDatePickerViewController();
  v14 = [(EditDatePickerViewController *)&v16 initWithNibName:v13 bundle:v10];

  return v14;
}

- (_TtC5Books28EditDatePickerViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker;
  v6 = objc_allocWithZone(UIDatePicker);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_initialDate;
  v9 = sub_100796BB4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v12.receiver = self;
  v12.super_class = type metadata accessor for EditDatePickerViewController();
  v10 = [(EditDatePickerViewController *)&v12 initWithCoder:v7];

  if (v10)
  {
  }

  return v10;
}

@end