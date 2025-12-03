@interface BundleID
- (BOOL)isEqual:(id)equal;
- (_TtC22ManagedAppDistribution8BundleID)init;
- (int64_t)hash;
@end

@implementation BundleID

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D95C00EC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = BundleID.isEqual(_:)(v8);

  sub_1D953F434(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue);
  v3 = *&self->rawValue[OBJC_IVAR____TtC22ManagedAppDistribution8BundleID_rawValue];
  selfCopy = self;
  v5 = MEMORY[0x1DA7324B0](v2, v3);

  return v5;
}

- (_TtC22ManagedAppDistribution8BundleID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end