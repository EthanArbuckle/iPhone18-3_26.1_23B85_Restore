@interface ATCalendarEvent
- (NSString)description;
- (_TtC9Archetype15ATCalendarEvent)init;
- (_TtC9Archetype15ATCalendarEvent)initWithEventTitle:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATCalendarEvent

- (_TtC9Archetype15ATCalendarEvent)initWithEventTitle:(id)a3
{
  v4 = sub_240FAE990();
  v5 = (self + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ATCalendarEvent();
  return [(ATCalendarEvent *)&v8 init];
}

- (id)copyWithZone:(void *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);
  v3 = *&self->eventTitle[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  v5 = type metadata accessor for ATCalendarEvent();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return [(ATCalendarEvent *)&v9 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);
  v5 = *&self->eventTitle[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  v6 = a3;
  v9 = self;
  v7 = sub_240FAE970();
  v8 = sub_240FAE970();
  [v6 encodeObject:v7 forKey:v8];
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);
  v3 = *&self->eventTitle[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  v4 = self;
  MEMORY[0x245CD5BD0](v2, v3);
  MEMORY[0x245CD5BD0](34, 0xE100000000000000);

  v5 = sub_240FAE970();

  return v5;
}

- (_TtC9Archetype15ATCalendarEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end