@interface ActivityMetricsRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)init;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)a3 systemApertureMetrics:(id)a4;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)a3 systemApertureMetrics:(id)a4 ambientMetrics:(id)a5;
- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setAmbientMetrics:(id)a3;
- (void)setLockScreenMetrics:(id)a3;
- (void)setSystemApertureMetrics:(id)a3;
@end

@implementation ActivityMetricsRequest

- (void)setAmbientMetrics:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E61E100(a3);
}

- (void)setLockScreenMetrics:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v6 = *(&v5->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(&v5->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v7;
}

- (void)setSystemApertureMetrics:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E61E5C0(a3);
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)a3 systemApertureMetrics:(id)a4 ambientMetrics:(id)a5
{
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics) = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = a3;
  *(&self->super.isa + v9) = a4;
  *(&self->super.isa + v8) = a5;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ActivityMetricsRequest();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  return [(ActivityMetricsRequest *)&v14 init];
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithLockScreenMetrics:(id)a3 systemApertureMetrics:(id)a4
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics) = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = a3;
  *(&self->super.isa + v7) = a4;
  *(&self->super.isa + v6) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityMetricsRequest();
  v8 = a3;
  v9 = a4;
  return [(ActivityMetricsRequest *)&v11 init];
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_18E61EAB0();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_18E61EB78(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_18E61EEC0();

  v3 = sub_18E65F8F0();

  return v3;
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_18E61F748();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E61F138(a3);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E61F3AC(v4);
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E61F96C(v3);

  return v4;
}

- (_TtC18ActivityUIServices22ActivityMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end