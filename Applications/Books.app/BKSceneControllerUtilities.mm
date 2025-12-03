@interface BKSceneControllerUtilities
+ (NSString)accountInfoKey;
+ (NSString)assetIDKey;
+ (NSString)bookKey;
+ (NSString)endOfBookKey;
+ (NSString)primaryKey;
+ (NSString)sceneTypeKey;
+ (id)sceneTypekeyForSceneController:(id)controller;
+ (unint64_t)sceneTypeFrom:(id)from;
- (BKSceneControllerUtilities)init;
@end

@implementation BKSceneControllerUtilities

+ (NSString)primaryKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)accountInfoKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)endOfBookKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)bookKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)sceneTypeKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)assetIDKey
{
  v2 = sub_1007A2214();

  return v2;
}

+ (id)sceneTypekeyForSceneController:(id)controller
{
  swift_unknownObjectRetain();
  sub_1006984B8(controller);
  swift_unknownObjectRelease();
  v4 = sub_1007A2214();

  return v4;
}

+ (unint64_t)sceneTypeFrom:(id)from
{
  v3 = sub_1007A2254();
  v5 = sub_1006985B0(v3, v4);

  return v5;
}

- (BKSceneControllerUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneControllerUtilities();
  return [(BKSceneControllerUtilities *)&v3 init];
}

@end