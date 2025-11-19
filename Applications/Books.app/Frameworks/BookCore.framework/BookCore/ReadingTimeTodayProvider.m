@interface ReadingTimeTodayProvider
- (_TtC8BookCore24ReadingTimeTodayProvider)init;
- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5;
@end

@implementation ReadingTimeTodayProvider

- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  if (a4)
  {
    swift_unknownObjectRetain();
    v7 = self;
    swift_unknownObjectRetain();
    sub_1EF444();
    swift_unknownObjectRelease();
    if (a5)
    {
LABEL_3:
      sub_1EF444();
      swift_unknownObjectRelease();
      sub_1927B4(v12, &qword_33F9D8);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    swift_unknownObjectRetain();
    v8 = self;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  sub_1927B4(v12, &qword_33F9D8);
  memset(v11, 0, sizeof(v11));
LABEL_6:
  sub_1927B4(v11, &qword_33F9D8);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC8BookCore24ReadingTimeTodayProvider_dynamicProgress);
  swift_unknownObjectRetain();

  return v9;
}

- (_TtC8BookCore24ReadingTimeTodayProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end