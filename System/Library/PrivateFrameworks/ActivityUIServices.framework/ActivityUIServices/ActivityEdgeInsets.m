@interface ActivityEdgeInsets
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)init;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithBSXPCCoder:(id)a3;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithCoder:(id)a3;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithTop:(double)a3 leading:(double)a4 bottom:(double)a5 trailing:(double)a6;
- (double)bottom;
- (double)leading;
- (double)top;
- (double)trailing;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBottom:(double)a3;
- (void)setLeading:(double)a3;
- (void)setTop:(double)a3;
- (void)setTrailing:(double)a3;
@end

@implementation ActivityEdgeInsets

- (double)top
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTop:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)leading
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLeading:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)bottom
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBottom:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)trailing
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTrailing:(double)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)init
{
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityEdgeInsets();
  return [(ActivityEdgeInsets *)&v3 init];
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithTop:(double)a3 leading:(double)a4 bottom:(double)a5 trailing:(double)a6
{
  v10 = [(ActivityEdgeInsets *)self init];
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *(&v10->super.isa + v11) = a3;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *(&v10->super.isa + v12) = a4;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *(&v10->super.isa + v13) = a5;
  v14 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *(&v10->super.isa + v14) = a6;
  return v10;
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

  v6 = sub_18E63F4E4(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_18E63F768();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_18E63F91C(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E63FEC4(a3);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_18E6409BC(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E63FEC4(v4);
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18E6409BC(v3);

  return v4;
}

@end