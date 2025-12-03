@interface AmbientAnimationCoordinator
+ (void)hide:(id)hide completion:(id)completion;
+ (void)show:(id)show completion:(id)completion;
+ (void)transitionFrom:(id)from to:(id)to allowRoll:(BOOL)roll completion:(id)completion;
@end

@implementation AmbientAnimationCoordinator

+ (void)transitionFrom:(id)from to:(id)to allowRoll:(BOOL)roll completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1001F1214(from, to, roll, sub_10016D3D8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (void)show:(id)show completion:(id)completion
{
  v4 = _Block_copy(completion);
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

+ (void)hide:(id)hide completion:(id)completion
{
  v4 = _Block_copy(completion);
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