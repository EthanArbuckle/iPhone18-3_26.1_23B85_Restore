@interface ActivityEdgeInsets
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)init;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithBSXPCCoder:(id)coder;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithCoder:(id)coder;
- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithTop:(double)top leading:(double)leading bottom:(double)bottom trailing:(double)trailing;
- (double)bottom;
- (double)leading;
- (double)top;
- (double)trailing;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setBottom:(double)bottom;
- (void)setLeading:(double)leading;
- (void)setTop:(double)top;
- (void)setTrailing:(double)trailing;
@end

@implementation ActivityEdgeInsets

- (double)top
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTop:(double)top
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *(&self->super.isa + v5) = top;
}

- (double)leading
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLeading:(double)leading
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *(&self->super.isa + v5) = leading;
}

- (double)bottom
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBottom:(double)bottom
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *(&self->super.isa + v5) = bottom;
}

- (double)trailing
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTrailing:(double)trailing
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *(&self->super.isa + v5) = trailing;
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

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithTop:(double)top leading:(double)leading bottom:(double)bottom trailing:(double)trailing
{
  v10 = [(ActivityEdgeInsets *)self init];
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *(&v10->super.isa + v11) = top;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *(&v10->super.isa + v12) = leading;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *(&v10->super.isa + v13) = bottom;
  v14 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *(&v10->super.isa + v14) = trailing;
  return v10;
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

  v6 = sub_18E63F4E4(v8);

  sub_18E61D6A8(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E63F768();

  v3 = sub_18E65F8F0();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_18E63F91C(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_18E65FDD0();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E63FEC4(coder);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v4 = sub_18E6409BC(coder);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E63FEC4(coderCopy);
}

- (_TtC18ActivityUIServices18ActivityEdgeInsets)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18E6409BC(coderCopy);

  return v4;
}

@end