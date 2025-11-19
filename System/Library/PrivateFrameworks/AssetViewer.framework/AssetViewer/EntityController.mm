@interface EntityController
- (CGRect)calculateAssetScreenBoundingRectIn:(id)a3;
- (NSArray)entityAccessibilityWrappers;
- (NSString)description;
- (NSURL)accessibilityAssetURL;
- (_TtC11AssetViewer16EntityController)init;
- (__n128)assetTransform;
- (__n128)assetWorldPosition;
- (double)assetHeadScreenPositionForScale:(void *)a1;
- (double)assetScreenPosition;
- (float)assetScale;
- (void)dealloc;
- (void)rotateByDeltaYaw:(float)a3 deltaPitch:(float)a4;
- (void)scaleTo:(float)a3 updateARScale:(BOOL)a4;
- (void)setAccessibilityAssetURL:(id)a3;
- (void)setWorldGestureRecognizer:(id)a3;
- (void)turntableGestureRecognizer:(id)a3 rotatedAssetByDeltaYaw:(float)a4 deltaPitch:(float)a5;
- (void)unifiedGestureRecognizer:(id)a3 doubleTappedAtScreenPoint:(BOOL)a4 onAsset:;
- (void)unifiedGestureRecognizer:(id)a3 rotatedAssetByDeltaYaw:(float)a4;
- (void)unifiedGestureRecognizer:(id)a3 scaledAssetToScale:(float)a4;
- (void)unifiedGestureRecognizer:(id)a3 singleTappedAtScreenPoint:(BOOL)a4 onAsset:;
- (void)unifiedGestureRecognizerBeganRotation:(id)a3;
- (void)unifiedGestureRecognizerBeganScaling:(id)a3;
- (void)unifiedGestureRecognizerEndedRotation:(id)a3;
- (void)unifiedGestureRecognizerEndedScaling:(id)a3;
- (void)worldGestureRecognizer:(id)a3 decelerationTranslationDelta:;
- (void)worldGestureRecognizer:(id)a3 levitatedAssetToScreenPoint:;
- (void)worldGestureRecognizer:(id)a3 translatedAssetToScreenPoint:;
- (void)worldGestureRecognizerBeganLevitation:(id)a3;
- (void)worldGestureRecognizerBeganTranslation:(id)a3;
- (void)worldGestureRecognizerBeganTranslationDeceleration:(id)a3;
- (void)worldGestureRecognizerEndedLevitation:(id)a3;
- (void)worldGestureRecognizerEndedTranslation:(id)a3;
- (void)worldGestureRecognizerEndedTranslationDeceleration:(id)a3;
@end

@implementation EntityController

- (void)setWorldGestureRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
  *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) = a3;
  v3 = a3;
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

- (void)setAccessibilityAssetURL:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
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
  v11 = self;
  sub_24124AF2C(v7, self + v10);
  swift_endAccess();
}

- (NSArray)entityAccessibilityWrappers
{
  v2 = self;
  sub_241352BBC();

  sub_2413523BC();
  v3 = sub_241353E1C();

  return v3;
}

- (NSString)description
{
  v2 = self;
  v3 = sub_241352C0C();
  MEMORY[0x245CE20D0](v3);

  MEMORY[0x245CE20D0](93, 0xE100000000000000);

  v4 = sub_241353BDC();

  return v4;
}

- (void)dealloc
{
  v2 = self;
  sub_24124954C();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for EntityController();
  [(EntityController *)&v3 dealloc];
}

- (void)rotateByDeltaYaw:(float)a3 deltaPitch:(float)a4
{
  v6 = self;
  sub_241247088(a3, a4);
}

- (CGRect)calculateAssetScreenBoundingRectIn:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)scaleTo:(float)a3 updateARScale:(BOOL)a4
{
  v5 = self;
  sub_241249F70(a3);
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
  v2 = a1;
  sub_24135193C();
  v5 = v3;

  return v5;
}

- (__n128)assetWorldPosition
{
  v1 = a1;
  sub_241249AA0();
  v4 = v2;

  return v4;
}

- (double)assetScreenPosition
{
  v1 = a1;
  v2 = sub_241249B64();

  return v2;
}

- (double)assetHeadScreenPositionForScale:(void *)a1
{
  v1 = a1;
  v2 = sub_24124A8CC();

  return v2;
}

- (float)assetScale
{
  v2 = self;
  v3 = sub_241249C9C();

  return v3;
}

- (void)worldGestureRecognizerBeganTranslation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D2A64();
}

- (void)worldGestureRecognizerEndedTranslation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D2B60();
}

- (void)worldGestureRecognizerBeganTranslationDeceleration:(id)a3
{
  v3 = self;
  sub_24124954C();
}

- (void)worldGestureRecognizer:(id)a3 decelerationTranslationDelta:
{
  v4 = a3;
  v5 = self;
  sub_2412D2CA8();
}

- (void)worldGestureRecognizerEndedTranslationDeceleration:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_24130EE30(v4);
    swift_unknownObjectRelease();
  }
}

- (void)worldGestureRecognizer:(id)a3 translatedAssetToScreenPoint:
{
  v4 = v3;
  v6 = a3;
  v8 = self;
  v7.i64[0] = v4;
  sub_2412D2DEC(v7);
}

- (void)worldGestureRecognizerBeganLevitation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D38F4();
}

- (void)worldGestureRecognizerEndedLevitation:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_24130EE30(v4);
    sub_2413233C4();
    swift_unknownObjectRelease();
  }
}

- (void)worldGestureRecognizer:(id)a3 levitatedAssetToScreenPoint:
{
  v4 = v3;
  v6 = a3;
  v7 = self;
  sub_2412D1FC0(v6, v4);
}

- (void)turntableGestureRecognizer:(id)a3 rotatedAssetByDeltaYaw:(float)a4 deltaPitch:(float)a5
{
  v8 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
  if (!v8)
  {
    v13 = a3;
    v14 = self;
    goto LABEL_5;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_24124AD38(v8);
  v12 = v8(v11);
  sub_24124B1F0(v8);
  if ((v12 & 1) == 0)
  {
LABEL_5:
    sub_241247088(a4, a5);
  }
}

- (void)unifiedGestureRecognizer:(id)a3 doubleTappedAtScreenPoint:(BOOL)a4 onAsset:
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong entityController:self doubleTappedAt:vcvtq_f64_f32(v5)];

    swift_unknownObjectRelease();
  }
}

- (void)unifiedGestureRecognizer:(id)a3 singleTappedAtScreenPoint:(BOOL)a4 onAsset:
{
  v8 = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *&v8;
    v7 = *(&v8 + 1);
    v9 = self;
    sub_2412AF808(v6, v7);
    swift_unknownObjectRelease();
  }
}

- (void)unifiedGestureRecognizerBeganRotation:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager);
  v4 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8);
  v5 = self;
  sub_24133CDB4(v4);
  sub_24133AFBC(*v3, v3[1]);
}

- (void)unifiedGestureRecognizer:(id)a3 rotatedAssetByDeltaYaw:(float)a4
{
  v6 = a3;
  v7 = self;
  sub_2412D3A08(a4);
}

- (void)unifiedGestureRecognizerEndedRotation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D3B28();
}

- (void)unifiedGestureRecognizerBeganScaling:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412D3BC0();
}

- (void)unifiedGestureRecognizer:(id)a3 scaledAssetToScale:(float)a4
{
  v6 = *(self + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler);
  if (!v6)
  {
    v11 = a3;
    v12 = self;
    goto LABEL_5;
  }

  v7 = a3;
  v8 = self;
  v9 = sub_24124AD38(v6);
  v10 = v6(v9);
  sub_24124B1F0(v6);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_241249F70(a4);
  }
}

- (void)unifiedGestureRecognizerEndedScaling:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_241297D88(v4, 1);
    swift_unknownObjectRelease();
  }
}

@end