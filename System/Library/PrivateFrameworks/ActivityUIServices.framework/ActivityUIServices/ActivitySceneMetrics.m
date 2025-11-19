@interface ActivitySceneMetrics
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NSString)description;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)edgeInsets;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)init;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 edgeInsets:(id)a5;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithXPCDictionary:(id)a3;
- (double)cornerRadius;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEdgeInsets:(id)a3;
- (void)setSize:(CGSize)a3;
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

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)edgeInsets
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEdgeInsets:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_18E64A59C();
  swift_unknownObjectRelease();
  return v3;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E6499B0(a3);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 edgeInsets:(id)a5
{
  v7 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius) = a4;
  swift_beginAccess();
  *(&self->super.isa + v7) = a5;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ActivitySceneMetrics();
  v8 = a5;
  return [(ActivitySceneMetrics *)&v10 init];
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius) = a4;
  swift_beginAccess();
  *(&self->super.isa + v5) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySceneMetrics();
  return [(ActivitySceneMetrics *)&v7 init];
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

  v6 = sub_18E649E10(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E64A060(v4);
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E64A748(v3);

  return v4;
}

- (NSString)description
{
  v2 = self;
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