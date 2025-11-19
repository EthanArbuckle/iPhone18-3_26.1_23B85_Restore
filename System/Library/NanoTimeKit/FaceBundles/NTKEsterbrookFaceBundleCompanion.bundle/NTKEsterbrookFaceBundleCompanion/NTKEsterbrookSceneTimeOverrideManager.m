@interface NTKEsterbrookSceneTimeOverrideManager
+ (NTKEsterbrookSceneTimeOverrideManager)sharedManager;
- (NTKEsterbrookSceneTimeOverrideManager)init;
@end

@implementation NTKEsterbrookSceneTimeOverrideManager

+ (NTKEsterbrookSceneTimeOverrideManager)sharedManager
{
  if (qword_27E1C7A78 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1DC010;

  return v3;
}

- (NTKEsterbrookSceneTimeOverrideManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneTimeOverrideManager();
  return [(NTKEsterbrookSceneTimeOverrideManager *)&v3 init];
}

@end