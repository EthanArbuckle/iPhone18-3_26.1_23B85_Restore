@interface ActivitySceneMetrics
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NSString)description;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)edgeInsets;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)init;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius edgeInsets:(id)insets;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithXPCDictionary:(id)dictionary;
- (double)cornerRadius;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setCornerRadius:(double)radius;
- (void)setEdgeInsets:(id)insets;
- (void)setSize:(CGSize)size;
@end

@implementation ActivitySceneMetrics

- (CGSize)size
{
  v2 = (self + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = (self + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)edgeInsets
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEdgeInsets:(id)insets
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = insets;
  insetsCopy = insets;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  v3 = sub_18E64A59C();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E6499B0(dictionary);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius edgeInsets:(id)insets
{
  v7 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size) = size;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius) = radius;
  swift_beginAccess();
  *(&self->super.isa + v7) = insets;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ActivitySceneMetrics();
  insetsCopy = insets;
  return [(ActivitySceneMetrics *)&v10 init];
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size) = size;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius) = radius;
  swift_beginAccess();
  *(&self->super.isa + v5) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySceneMetrics();
  return [(ActivitySceneMetrics *)&v7 init];
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

  v6 = sub_18E649E10(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E64A060(coderCopy);
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E64A748(coderCopy);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E64A340();

  v3 = sub_18E65F8F0();

  return v3;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end