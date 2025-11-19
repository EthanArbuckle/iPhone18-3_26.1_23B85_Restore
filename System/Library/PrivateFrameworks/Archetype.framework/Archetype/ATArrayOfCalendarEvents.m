@interface ATArrayOfCalendarEvents
- (_TtC9Archetype23ATArrayOfCalendarEvents)init;
- (_TtC9Archetype23ATArrayOfCalendarEvents)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATArrayOfCalendarEvents

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype23ATArrayOfCalendarEvents_calendarEvents);
  type metadata accessor for ATCalendarEvent();
  v6 = a3;
  v9 = self;
  v7 = sub_240FAE9C0();
  v8 = sub_240FAE970();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC9Archetype23ATArrayOfCalendarEvents)initWithCoder:(id)a3
{
  type metadata accessor for ATCalendarEvent();
  v5 = a3;
  if (sub_240FAEA60())
  {
    v6 = sub_240FAE9C0();

    v7 = [(ATArrayOfCalendarEvents *)self initWithCalendarEvents:v6];

    return v7;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (_TtC9Archetype23ATArrayOfCalendarEvents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end