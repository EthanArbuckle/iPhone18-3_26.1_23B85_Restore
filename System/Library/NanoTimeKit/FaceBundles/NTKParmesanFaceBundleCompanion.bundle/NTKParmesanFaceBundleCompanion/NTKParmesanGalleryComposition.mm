@interface NTKParmesanGalleryComposition
- (BOOL)isEqual:(id)equal;
- (NSString)swatchKey;
- (NTKParmesanGalleryComposition)init;
- (int64_t)hash;
- (void)setTimeLayout:(id)layout;
@end

@implementation NTKParmesanGalleryComposition

- (void)setTimeLayout:(id)layout
{
  v4 = *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout) = layout;
  layoutCopy = layout;
}

- (NSString)swatchKey
{
  selfCopy = self;
  sub_23BF85830();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_23BF85A04();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BF85A88(v8);

  sub_23BF6D5A0(v8);
  return v6;
}

- (NTKParmesanGalleryComposition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end