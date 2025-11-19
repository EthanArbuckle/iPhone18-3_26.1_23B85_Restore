@interface NTKFaceState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState)init;
@end

@implementation NTKFaceState

- (NSString)description
{
  v2 = self;
  sub_23BE3219C();

  v3 = sub_23BE32898();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23BE32AB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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