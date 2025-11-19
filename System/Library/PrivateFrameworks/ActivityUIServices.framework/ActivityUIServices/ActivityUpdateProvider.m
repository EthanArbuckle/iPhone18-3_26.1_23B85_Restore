@interface ActivityUpdateProvider
- (ACActivityDescriptor)descriptor;
- (NSString)identifier;
- (_TtC18ActivityUIServices22ActivityUpdateProvider)init;
- (_TtC18ActivityUIServices22ActivityUpdateProvider)initWithActivityDescriptor:(id)a3 activityState:(int64_t)a4 systemMetricsRequest:(id)a5;
- (int64_t)activityState;
- (void)setActivityState:(int64_t)a3;
- (void)setDescriptor:(id)a3;
@end

@implementation ActivityUpdateProvider

- (int64_t)activityState
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setActivityState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (ACActivityDescriptor)descriptor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDescriptor:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier);
  v3 = *(&self->activityState + OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier);

  v4 = sub_18E65F8F0();

  return v4;
}

- (_TtC18ActivityUIServices22ActivityUpdateProvider)initWithActivityDescriptor:(id)a3 activityState:(int64_t)a4 systemMetricsRequest:(id)a5
{
  v7 = sub_18E65F4C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E625368();
  sub_18E65F670();
  return ActivityUpdateProvider.init(activityDescriptor:activityState:systemMetricsRequest:)(v10, a4, a5);
}

- (_TtC18ActivityUIServices22ActivityUpdateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end