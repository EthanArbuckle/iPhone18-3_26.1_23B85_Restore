@interface DSSafetyCheckPlacardCell
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithCoder:(id)a3;
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation DSSafetyCheckPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_4E4C();
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v8 = sub_89C8();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = a5;
  v11 = sub_48D4(a3, v8, a4, a5);

  return v11;
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_89C8();
    a4 = sub_89B8();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(DSSafetyCheckPlacardCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC25DigitalSeparationSettings24DSSafetyCheckPlacardCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_8A18();
  sub_8A08();
  sub_89F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(DSSafetyCheckPlacardCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end