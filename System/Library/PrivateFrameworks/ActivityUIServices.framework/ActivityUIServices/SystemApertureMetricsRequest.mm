@interface SystemApertureMetricsRequest
- (BOOL)isEqual:(id)equal;
- (CGSize)obstructionSize;
- (NSString)description;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)init;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size obstructionTopMargin:(double)margin expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest;
- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithXPCDictionary:(id)dictionary;
- (double)obstructionTopMargin;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setObstructionSize:(CGSize)size;
- (void)setObstructionTopMargin:(double)margin;
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

- (void)setObstructionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setObstructionTopMargin:(double)margin
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  *(&self->super.isa + v5) = margin;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size obstructionTopMargin:(double)margin expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest
{
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize) = size;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin) = margin;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest) = request;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest) = metricsRequest;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest) = trailingMetricsRequest;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest) = minimalMetricsRequest;
  v17.receiver = self;
  v17.super_class = type metadata accessor for SystemApertureMetricsRequest();
  requestCopy = request;
  metricsRequestCopy = metricsRequest;
  trailingMetricsRequestCopy = trailingMetricsRequest;
  minimalMetricsRequestCopy = minimalMetricsRequest;
  return [(SystemApertureMetricsRequest *)&v17 init];
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_18E6269FC();

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

  v6 = sub_18E626C90(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E626F9C();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_18E627294(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  v3 = sub_18E627B18();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E6274F4();
  swift_unknownObjectRelease();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E627670(coderCopy);
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E627DE0(coderCopy);

  return v4;
}

- (_TtC18ActivityUIServices28SystemApertureMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end