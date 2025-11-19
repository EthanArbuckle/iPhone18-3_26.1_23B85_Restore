@interface ICGroupActivityDebugStatusController
+ (ICGroupActivityDebugStatusController)sharedController;
+ (void)setUp;
- (ICGroupActivityDebugStatusController)init;
@end

@implementation ICGroupActivityDebugStatusController

+ (ICGroupActivityDebugStatusController)sharedController
{
  if (qword_1006BC990 != -1)
  {
    swift_once();
  }

  v3 = qword_1006EFB70;

  return v3;
}

+ (void)setUp
{
  if (qword_1006BC990 != -1)
  {
    swift_once();
  }
}

- (ICGroupActivityDebugStatusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end