@interface ATArrayOfCalendarEvents
- (_TtC9Archetype23ATArrayOfCalendarEvents)init;
- (_TtC9Archetype23ATArrayOfCalendarEvents)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATArrayOfCalendarEvents

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype23ATArrayOfCalendarEvents_calendarEvents);
  type metadata accessor for ATCalendarEvent();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_240FAE9C0();
  v8 = sub_240FAE970();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC9Archetype23ATArrayOfCalendarEvents)initWithCoder:(id)coder
{
  type metadata accessor for ATCalendarEvent();
  coderCopy = coder;
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