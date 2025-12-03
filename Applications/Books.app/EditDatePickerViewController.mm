@interface EditDatePickerViewController
- (_TtC5Books28EditDatePickerViewController)initWithCoder:(id)coder;
- (_TtC5Books28EditDatePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation EditDatePickerViewController

- (void)loadView
{
  selfCopy = self;
  sub_10038EFA8();
}

- (_TtC5Books28EditDatePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v14 = [(EditDatePickerViewController *)&v16 initWithNibName:v13 bundle:bundleCopy];

  return v14;
}

- (_TtC5Books28EditDatePickerViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_datePicker;
  v6 = objc_allocWithZone(UIDatePicker);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC5Books28EditDatePickerViewController_initialDate;
  v9 = sub_100796BB4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v12.receiver = self;
  v12.super_class = type metadata accessor for EditDatePickerViewController();
  v10 = [(EditDatePickerViewController *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

@end