@interface CalendarPlacardCell
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithCoder:(id)a3;
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CalendarPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = sub_A92C(&qword_1A258, "26");
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v11[-1] - v7;
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = self;
  [(CalendarPlacardCell *)v9 setSelectionStyle:0];
  sub_A92C(&qword_1A260, &qword_E180);
  sub_A9BC(&qword_1A268, &qword_1A260, &qword_E180);
  sub_B5EC();
  sub_B5FC();
  v11[3] = v4;
  v11[4] = sub_A9BC(&qword_1A270, &qword_1A258, "26");
  sub_AA04(v11);
  sub_B5DC();
  (*(v5 + 8))(v8, v4);
  sub_B6CC();
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v8 = sub_B65C();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = a5;
  v11 = sub_A554(a3, v8, a4, a5);

  return v11;
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_B65C();
    a4 = sub_B62C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CalendarPlacardCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(CalendarPlacardCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end