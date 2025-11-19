@interface BaseDonor
- (BOOL)isObservedBy:(id)a3;
- (NSArray)eventConfigurations;
- (NSString)type;
- (_TtC19EngagementCollector9BaseDonor)init;
- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5;
- (void)propertyDidChange:(id)a3 propertyConfiguration:(id)a4;
- (void)setEventConfigurations:(id)a3;
- (void)setType:(id)a3;
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

- (void)setType:(id)a3
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

- (void)setEventConfigurations:(id)a3
{
  type metadata accessor for BasePropertyConfiguration();
  v4 = sub_313E0();
  v5 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5
{
  _Block_copy(a5);
  sub_317A0();
  __break(1u);
}

- (void)propertyDidChange:(id)a3 propertyConfiguration:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_24508(a3, v7);
  swift_unknownObjectRelease();
}

- (_TtC19EngagementCollector9BaseDonor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isObservedBy:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = BaseDonor.isObserved(by:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

@end