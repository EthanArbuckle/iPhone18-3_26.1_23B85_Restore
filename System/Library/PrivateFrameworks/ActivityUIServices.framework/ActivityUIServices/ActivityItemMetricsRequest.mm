@interface ActivityItemMetricsRequest
- (BOOL)isEqual:(id)equal;
- (CGSize)initialSize;
- (CGSize)maximumSize;
- (NSNumber)watchDisplayVariant;
- (NSString)description;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)init;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin scaleFactor:(double)factor watchDisplayVariant:(id)variant;
- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithXPCDictionary:(id)dictionary;
- (double)clipMargin;
- (double)cornerRadius;
- (double)scaleFactor;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setClipMargin:(double)margin;
- (void)setCornerRadius:(double)radius;
- (void)setEdgeInsets:(id)insets;
- (void)setScaleFactor:(double)factor;
- (void)setWatchDisplayVariant:(id)variant;
@end

@implementation ActivityItemMetricsRequest

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (double)clipMargin
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClipMargin:(double)margin
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_clipMargin;
  swift_beginAccess();
  *(&self->super.isa + v5) = margin;
}

- (double)scaleFactor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScaleFactor:(double)factor
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
  swift_beginAccess();
  *(&self->super.isa + v5) = factor;
}

- (NSNumber)watchDisplayVariant
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWatchDisplayVariant:(id)variant
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = variant;
  variantCopy = variant;
}

- (void)setEdgeInsets:(id)insets
{
  insetsCopy = insets;
  selfCopy = self;
  sub_18E653CD8(insets);
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

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin scaleFactor:(double)factor watchDisplayVariant:(id)variant
{
  widthCopy = width;
  heightCopy = height;
  insetsCopy = insets;
  variantCopy = variant;
  v19 = sub_18E655F48(widthCopy, heightCopy, insets, variant, radius, margin, factor);

  return v19;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_18E6549A0();

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

  v6 = sub_18E654B64(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E654F54();

  v3 = sub_18E65F8F0();

  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E6552A8(dictionary);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  v4 = sub_18E656188(dictionary);
  swift_unknownObjectRelease();
  return v4;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_18E6555A4(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E655940(coderCopy);
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E65656C(coderCopy);

  return v4;
}

- (_TtC18ActivityUIServices26ActivityItemMetricsRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end