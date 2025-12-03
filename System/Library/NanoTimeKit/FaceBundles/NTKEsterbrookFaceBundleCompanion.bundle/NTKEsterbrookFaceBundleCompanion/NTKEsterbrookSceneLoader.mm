@interface NTKEsterbrookSceneLoader
+ (NSBundle)esterbrookBundle;
- (NTKEsterbrookSceneLoader)init;
- (id)allSceneURLsAt:(id)at;
- (id)allSceneURLsIn:(id)in;
@end

@implementation NTKEsterbrookSceneLoader

+ (NSBundle)esterbrookBundle
{
  swift_getObjCClassMetadata();
  v2 = sub_23BDF31AC();

  return v2;
}

- (id)allSceneURLsIn:(id)in
{
  v5 = sub_23BE32658();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  inCopy = in;
  selfCopy = self;
  bundleURL = [inCopy bundleURL];
  sub_23BE32648();

  sub_23BDF5274(v8);
  (*(v6 + 8))(v8, v5);
  v12 = sub_23BE32968();

  return v12;
}

- (id)allSceneURLsAt:(id)at
{
  v3 = sub_23BE32658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE32648();
  sub_23BDF5274(v6);
  (*(v4 + 8))(v6, v3);
  v7 = sub_23BE32968();

  return v7;
}

- (NTKEsterbrookSceneLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneLoader();
  return [(NTKEsterbrookSceneLoader *)&v3 init];
}

@end