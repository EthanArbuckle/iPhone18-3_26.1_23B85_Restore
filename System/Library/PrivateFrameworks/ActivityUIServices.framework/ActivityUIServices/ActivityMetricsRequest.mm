@interface ActivityMetricsRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)init;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics systemApertureMetrics:(id)apertureMetrics;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics systemApertureMetrics:(id)apertureMetrics ambientMetrics:(id)ambientMetrics;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setAmbientMetrics:(id)metrics;
- (void)setLockScreenMetrics:(id)metrics;
- (void)setSystemApertureMetrics:(id)metrics;
@end

@implementation ActivityMetricsRequest

- (void)setAmbientMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  sub_18E61E100(metrics);
}

- (void)setLockScreenMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  [metricsCopy copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v7;
}

- (void)setSystemApertureMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  sub_18E61E5C0(metrics);
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics systemApertureMetrics:(id)apertureMetrics ambientMetrics:(id)ambientMetrics
{
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics) = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = metrics;
  *(&self->super.isa + v9) = apertureMetrics;
  *(&self->super.isa + v8) = ambientMetrics;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ActivityMetricsRequest();
  metricsCopy = metrics;
  apertureMetricsCopy = apertureMetrics;
  ambientMetricsCopy = ambientMetrics;
  return [(ActivityMetricsRequest *)&v14 init];
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics systemApertureMetrics:(id)apertureMetrics
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics) = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = metrics;
  *(&self->super.isa + v7) = apertureMetrics;
  *(&self->super.isa + v6) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityMetricsRequest();
  metricsCopy = metrics;
  apertureMetricsCopy = apertureMetrics;
  return [(ActivityMetricsRequest *)&v11 init];
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_18E61EAB0();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_18E61EB78(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E61EEC0();

  v3 = sub_18E65F8F0();

  return v3;
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  v3 = sub_18E61F748();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E61F138(dictionary);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v6 = type metadata accessor for ActivityMetricsRequest();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v3;
  *&v7[v9] = v4;
  *&v7[v8] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return [(ActivityMetricsRequest *)&v14 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E61F3AC(coderCopy);
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E61F96C(coderCopy);

  return v4;
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end