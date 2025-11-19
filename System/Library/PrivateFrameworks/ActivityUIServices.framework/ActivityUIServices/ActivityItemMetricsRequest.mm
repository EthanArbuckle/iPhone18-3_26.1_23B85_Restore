@interface ActivityItemMetricsRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)initialSize;
- (CGSize)maximumSize;
- (NSNumber)watchDisplayVariant;
- (NSString)description;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)init;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7 scaleFactor:(double)a8 watchDisplayVariant:(id)a9;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithXPCDictionary:(id)a3;
- (double)clipMargin;
- (double)cornerRadius;
- (double)scaleFactor;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setClipMargin:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEdgeInsets:(id)a3;
- (void)setScaleFactor:(double)a3;
- (void)setWatchDisplayVariant:(id)a3;
@end

@implementation ActivityItemMetricsRequest

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)clipMargin
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClipMargin:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)scaleFactor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScaleFactor:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (NSNumber)watchDisplayVariant
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWatchDisplayVariant:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setEdgeInsets:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E653CD8(a3);
}

- (CGSize)initialSize
{
  v2 = sub_18E653E60();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumSize
{
  v3 = *(*(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  v6 = v3 * v5;
  v7 = v5 * *(*(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7 scaleFactor:(double)a8 watchDisplayVariant:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  v19 = sub_18E655F48(v15, v16, a6, a9, a5, a7, a8);

  return v19;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_18E6549A0();

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

  v6 = sub_18E654B64(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_18E654F54();

  v3 = sub_18E65F8F0();

  return v3;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E6552A8(a3);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_18E656188(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_18E6555A4(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E655940(v4);
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E65656C(v3);

  return v4;
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end