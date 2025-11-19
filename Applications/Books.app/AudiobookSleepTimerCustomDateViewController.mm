@interface AudiobookSleepTimerCustomDateViewController
- (_TtC5Books43AudiobookSleepTimerCustomDateViewController)initWithCoder:(id)a3;
- (_TtC5Books43AudiobookSleepTimerCustomDateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation AudiobookSleepTimerCustomDateViewController

- (void)loadView
{
  v2 = self;
  sub_1003A9FA0();
}

- (_TtC5Books43AudiobookSleepTimerCustomDateViewController)initWithNibName:(id)a3 bundle:(id)a4
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

  v8 = OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker;
  v9 = objc_allocWithZone(UIDatePicker);
  v10 = a4;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = sub_1007A2214();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for AudiobookSleepTimerCustomDateViewController();
  v12 = [(AudiobookSleepTimerCustomDateViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC5Books43AudiobookSleepTimerCustomDateViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker;
  v6 = objc_allocWithZone(UIDatePicker);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for AudiobookSleepTimerCustomDateViewController();
  v8 = [(AudiobookSleepTimerCustomDateViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end