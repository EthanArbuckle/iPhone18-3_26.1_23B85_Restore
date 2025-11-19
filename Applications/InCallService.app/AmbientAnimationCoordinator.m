@interface AmbientAnimationCoordinator
+ (void)hide:(id)a3 completion:(id)a4;
+ (void)show:(id)a3 completion:(id)a4;
+ (void)transitionFrom:(id)a3 to:(id)a4 allowRoll:(BOOL)a5 completion:(id)a6;
@end

@implementation AmbientAnimationCoordinator

+ (void)transitionFrom:(id)a3 to:(id)a4 allowRoll:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1001F1214(a3, a4, a5, sub_10016D3D8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (void)show:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_10016D3D8;
  }

  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  sub_1001F1FB0();
  sub_1000081F4(v4);

  swift_unknownObjectRelease();
}

+ (void)hide:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_10016D258;
  }

  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  sub_1001F2164();
  sub_1000081F4(v4);

  swift_unknownObjectRelease();
}

@end