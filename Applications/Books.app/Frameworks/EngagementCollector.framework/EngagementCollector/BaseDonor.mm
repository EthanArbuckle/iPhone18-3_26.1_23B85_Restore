@interface BaseDonor
- (BOOL)isObservedBy:(id)by;
- (NSArray)eventConfigurations;
- (NSString)type;
- (_TtC19EngagementCollector9BaseDonor)init;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration;
- (void)setEventConfigurations:(id)configurations;
- (void)setType:(id)type;
@end

@implementation BaseDonor

- (NSString)type
{
  v2 = (self + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_31300();

  return v5;
}

- (void)setType:(id)type
{
  v4 = sub_31320();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)eventConfigurations
{
  v3 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for BasePropertyConfiguration();

  v5.super.isa = sub_313D0().super.isa;

  return v5.super.isa;
}

- (void)setEventConfigurations:(id)configurations
{
  type metadata accessor for BasePropertyConfiguration();
  v4 = sub_313E0();
  v5 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block
{
  _Block_copy(block);
  sub_317A0();
  __break(1u);
}

- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  sub_24508(change, configurationCopy);
  swift_unknownObjectRelease();
}

- (_TtC19EngagementCollector9BaseDonor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isObservedBy:(id)by
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = BaseDonor.isObserved(by:)(by);
  swift_unknownObjectRelease();

  return v6 & 1;
}

@end