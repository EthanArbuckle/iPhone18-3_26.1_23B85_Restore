@interface VisitedPlacesDataProvider
+ (uint64_t)markVisitedPlacesEntrySeen;
- (_TtC4Maps25VisitedPlacesDataProvider)init;
- (void)setActive:(BOOL)active;
- (void)setObservers:(id)observers;
@end

@implementation VisitedPlacesDataProvider

- (void)setObservers:(id)observers
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_observers);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_observers) = observers;
  observersCopy = observers;
}

- (void)setActive:(BOOL)active
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_active) = active;
  if (active)
  {
    selfCopy = self;
    sub_100460DE0();
  }
}

- (_TtC4Maps25VisitedPlacesDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (uint64_t)markVisitedPlacesEntrySeen
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_10195FF58);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "The Visited Places entry will be marked as seen and saved in maps config", v3, 2u);
  }

  return GEOConfigSetBOOL();
}

@end