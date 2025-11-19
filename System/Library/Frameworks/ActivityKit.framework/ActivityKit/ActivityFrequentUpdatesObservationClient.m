@interface ActivityFrequentUpdatesObservationClient
- (_TtC11ActivityKit40ActivityFrequentUpdatesObservationClient)init;
@end

@implementation ActivityFrequentUpdatesObservationClient

- (_TtC11ActivityKit40ActivityFrequentUpdatesObservationClient)init
{
  if (qword_1ED709978 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED709988;
  *(&self->super.isa + OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton) = qword_1ED709988;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityFrequentUpdatesObservationClient();
  v4 = v3;
  return [(ActivityFrequentUpdatesObservationClient *)&v6 init];
}

@end