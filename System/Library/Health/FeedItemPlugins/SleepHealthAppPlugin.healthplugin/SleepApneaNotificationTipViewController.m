@interface SleepApneaNotificationTipViewController
- (_TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation SleepApneaNotificationTipViewController

- (void)loadView
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  v3 = sub_29E642588();
  [(SleepApneaNotificationTipViewController *)v4 setView:v3];
}

- (_TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_29E7541D8();
    a3 = v7;
  }

  v8 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
  v10 = sub_29E74FFA8();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView) = 0;
  v11 = a4;
  if (a3)
  {
    v12 = sub_29E754198();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SleepApneaNotificationTipViewController();
  v13 = [(SleepApneaNotificationTipViewController *)&v15 initWithNibName:v12 bundle:a4];

  return v13;
}

- (_TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
  v7 = sub_29E74FFA8();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SleepApneaNotificationTipViewController();
  v8 = a3;
  v9 = [(SleepApneaNotificationTipViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end