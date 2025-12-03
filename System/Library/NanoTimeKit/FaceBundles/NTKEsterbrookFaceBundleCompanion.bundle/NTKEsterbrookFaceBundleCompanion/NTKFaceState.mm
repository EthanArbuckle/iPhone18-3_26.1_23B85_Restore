@interface NTKFaceState
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState)init;
@end

@implementation NTKFaceState

- (NSString)description
{
  selfCopy = self;
  sub_23BE3219C();

  v3 = sub_23BE32898();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BE32AB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BE322AC(v8);

  sub_23BE31338(v8);
  return v6;
}

- (_TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end