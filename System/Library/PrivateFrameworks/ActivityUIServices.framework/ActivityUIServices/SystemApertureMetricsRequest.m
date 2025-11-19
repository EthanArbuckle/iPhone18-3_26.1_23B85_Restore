@interface SystemApertureMetricsRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)obstructionSize;
- (NSString)description;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)init;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 obstructionTopMargin:(double)a4 expandedMetricsRequest:(id)a5 compactLeadingMetricsRequest:(id)a6 compactTrailingMetricsRequest:(id)a7 minimalMetricsRequest:(id)a8;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithXPCDictionary:(id)a3;
- (double)obstructionTopMargin;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setObstructionSize:(CGSize)a3;
- (void)setObstructionTopMargin:(double)a3;
@end

@implementation SystemApertureMetricsRequest

- (CGSize)obstructionSize
{
  v2 = (self + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setObstructionSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (double)obstructionTopMargin
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObstructionTopMargin:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 obstructionTopMargin:(double)a4 expandedMetricsRequest:(id)a5 compactLeadingMetricsRequest:(id)a6 compactTrailingMetricsRequest:(id)a7 minimalMetricsRequest:(id)a8
{
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest) = a7;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest) = a8;
  v17.receiver = self;
  v17.super_class = type metadata accessor for SystemApertureMetricsRequest();
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  return [(SystemApertureMetricsRequest *)&v17 init];
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_18E6269FC();

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

  v6 = sub_18E626C90(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_18E626F9C();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_18E627294(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_18E627B18();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_18E6274F4();
  swift_unknownObjectRelease();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E627670(v4);
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E627DE0(v3);

  return v4;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end