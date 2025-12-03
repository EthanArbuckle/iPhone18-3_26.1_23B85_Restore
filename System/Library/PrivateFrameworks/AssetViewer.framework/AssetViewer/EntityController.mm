@interface EntityController
- (CGRect)calculateAssetScreenBoundingRectIn:(id)in;
- (NSArray)entityAccessibilityWrappers;
- (NSString)description;
- (NSURL)accessibilityAssetURL;
- (_TtC11AssetViewer16EntityController)init;
- (__n128)assetTransform;
- (__n128)assetWorldPosition;
- (double)assetHeadScreenPositionForScale:(void *)scale;
- (double)assetScreenPosition;
- (float)assetScale;
- (void)dealloc;
- (void)rotateByDeltaYaw:(float)yaw deltaPitch:(float)pitch;
- (void)scaleTo:(float)to updateARScale:(BOOL)scale;
- (void)setAccessibilityAssetURL:(id)l;
- (void)setWorldGestureRecognizer:(id)recognizer;
- (void)turntableGestureRecognizer:(id)recognizer rotatedAssetByDeltaYaw:(float)yaw deltaPitch:(float)pitch;
- (void)unifiedGestureRecognizer:(id)recognizer doubleTappedAtScreenPoint:(BOOL)point onAsset:;
- (void)unifiedGestureRecognizer:(id)recognizer rotatedAssetByDeltaYaw:(float)yaw;
- (void)unifiedGestureRecognizer:(id)recognizer scaledAssetToScale:(float)scale;
- (void)unifiedGestureRecognizer:(id)recognizer singleTappedAtScreenPoint:(BOOL)point onAsset:;
- (void)unifiedGestureRecognizerBeganRotation:(id)rotation;
- (void)unifiedGestureRecognizerBeganScaling:(id)scaling;
- (void)unifiedGestureRecognizerEndedRotation:(id)rotation;
- (void)unifiedGestureRecognizerEndedScaling:(id)scaling;
- (void)worldGestureRecognizer:(id)recognizer decelerationTranslationDelta:;
- (void)worldGestureRecognizer:(id)recognizer levitatedAssetToScreenPoint:;
- (void)worldGestureRecognizer:(id)recognizer translatedAssetToScreenPoint:;
- (void)worldGestureRecognizerBeganLevitation:(id)levitation;
- (void)worldGestureRecognizerBeganTranslation:(id)translation;
- (void)worldGestureRecognizerBeganTranslationDeceleration:(id)deceleration;
- (void)worldGestureRecognizerEndedLevitation:(id)levitation;
- (void)worldGestureRecognizerEndedTranslation:(id)translation;
- (void)worldGestureRecognizerEndedTranslationDeceleration:(id)deceleration;
@end

@implementation EntityController

- (void)setWorldGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
  *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (NSURL)accessibilityAssetURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  swift_beginAccess();
  sub_24124AF9C(self + v6, v5);
  v7 = sub_24135152C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_24135144C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setAccessibilityAssetURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_2413514AC();
    v8 = sub_24135152C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_24135152C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  swift_beginAccess();
  selfCopy = self;
  sub_24124AF2C(v7, self + v10);
  swift_endAccess();
}

- (NSArray)entityAccessibilityWrappers
{
  selfCopy = self;
  sub_241352BBC();

  sub_2413523BC();
  v3 = sub_241353E1C();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  v3 = sub_241352C0C();
  MEMORY[0x245CE20D0](v3);

  MEMORY[0x245CE20D0](93, 0xE100000000000000);

  v4 = sub_241353BDC();

  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  sub_24124954C();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for EntityController();
  [(EntityController *)&v3 dealloc];
}

- (void)rotateByDeltaYaw:(float)yaw deltaPitch:(float)pitch
{
  selfCopy = self;
  sub_241247088(yaw, pitch);
}

- (CGRect)calculateAssetScreenBoundingRectIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_241352BDC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)scaleTo:(float)to updateARScale:(BOOL)scale
{
  selfCopy = self;
  sub_241249F70(to);
}

- (_TtC11AssetViewer16EntityController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (__n128)assetTransform
{
  sub_241352C5C();
  selfCopy = self;
  sub_24135193C();
  v5 = v3;

  return v5;
}

- (__n128)assetWorldPosition
{
  selfCopy = self;
  sub_241249AA0();
  v4 = v2;

  return v4;
}

- (double)assetScreenPosition
{
  selfCopy = self;
  v2 = sub_241249B64();

  return v2;
}

- (double)assetHeadScreenPositionForScale:(void *)scale
{
  scaleCopy = scale;
  v2 = sub_24124A8CC();

  return v2;
}

- (float)assetScale
{
  selfCopy = self;
  v3 = sub_241249C9C();

  return v3;
}

- (void)worldGestureRecognizerBeganTranslation:(id)translation
{
  translationCopy = translation;
  selfCopy = self;
  sub_2412D2A64();
}

- (void)worldGestureRecognizerEndedTranslation:(id)translation
{
  translationCopy = translation;
  selfCopy = self;
  sub_2412D2B60();
}

- (void)worldGestureRecognizerBeganTranslationDeceleration:(id)deceleration
{
  selfCopy = self;
  sub_24124954C();
}

- (void)worldGestureRecognizer:(id)recognizer decelerationTranslationDelta:
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_2412D2CA8();
}

- (void)worldGestureRecognizerEndedTranslationDeceleration:(id)deceleration
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_24130EE30(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (void)worldGestureRecognizer:(id)recognizer translatedAssetToScreenPoint:
{
  v4 = v3;
  recognizerCopy = recognizer;
  selfCopy = self;
  v7.i64[0] = v4;
  sub_2412D2DEC(v7);
}

- (void)worldGestureRecognizerBeganLevitation:(id)levitation
{
  levitationCopy = levitation;
  selfCopy = self;
  sub_2412D38F4();
}

- (void)worldGestureRecognizerEndedLevitation:(id)levitation
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_24130EE30(selfCopy);
    sub_2413233C4();
    swift_unknownObjectRelease();
  }
}

- (void)worldGestureRecognizer:(id)recognizer levitatedAssetToScreenPoint:
{
  v4 = v3;
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_2412D1FC0(recognizerCopy, v4);
}

- (void)turntableGestureRecognizer:(id)recognizer rotatedAssetByDeltaYaw:(float)yaw deltaPitch:(float)pitch
{
  v8 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
  if (!v8)
  {
    recognizerCopy = recognizer;
    selfCopy = self;
    goto LABEL_5;
  }

  recognizerCopy2 = recognizer;
  selfCopy2 = self;
  v11 = sub_24124AD38(v8);
  v12 = v8(v11);
  sub_24124B1F0(v8);
  if ((v12 & 1) == 0)
  {
LABEL_5:
    sub_241247088(yaw, pitch);
  }
}

- (void)unifiedGestureRecognizer:(id)recognizer doubleTappedAtScreenPoint:(BOOL)point onAsset:
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong entityController:self doubleTappedAt:vcvtq_f64_f32(v5)];

    swift_unknownObjectRelease();
  }
}

- (void)unifiedGestureRecognizer:(id)recognizer singleTappedAtScreenPoint:(BOOL)point onAsset:
{
  v8 = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *&v8;
    v7 = *(&v8 + 1);
    selfCopy = self;
    sub_2412AF808(v6, v7);
    swift_unknownObjectRelease();
  }
}

- (void)unifiedGestureRecognizerBeganRotation:(id)rotation
{
  v3 = (self + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager);
  v4 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8);
  selfCopy = self;
  sub_24133CDB4(v4);
  sub_24133AFBC(*v3, v3[1]);
}

- (void)unifiedGestureRecognizer:(id)recognizer rotatedAssetByDeltaYaw:(float)yaw
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_2412D3A08(yaw);
}

- (void)unifiedGestureRecognizerEndedRotation:(id)rotation
{
  rotationCopy = rotation;
  selfCopy = self;
  sub_2412D3B28();
}

- (void)unifiedGestureRecognizerBeganScaling:(id)scaling
{
  scalingCopy = scaling;
  selfCopy = self;
  sub_2412D3BC0();
}

- (void)unifiedGestureRecognizer:(id)recognizer scaledAssetToScale:(float)scale
{
  v6 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
  if (!v6)
  {
    recognizerCopy = recognizer;
    selfCopy = self;
    goto LABEL_5;
  }

  recognizerCopy2 = recognizer;
  selfCopy2 = self;
  v9 = sub_24124AD38(v6);
  v10 = v6(v9);
  sub_24124B1F0(v6);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_241249F70(scale);
  }
}

- (void)unifiedGestureRecognizerEndedScaling:(id)scaling
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_241297D88(selfCopy, 1);
    swift_unknownObjectRelease();
  }
}

@end