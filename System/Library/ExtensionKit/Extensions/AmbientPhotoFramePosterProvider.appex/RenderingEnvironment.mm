@interface RenderingEnvironment
- ($D63DA504A8ACE1B9904210608313F5EB)deviceAttitude;
- (BOOL)px_isCallServices;
- (BOOL)px_isPreview;
- (BOOL)px_isSnapshot;
- (CGRect)px_backdropInspectorOcclusionRect;
- (CGRect)px_backdropPrimaryOcclusionRect;
- (CGRect)px_callServicesOcclusionRect;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)a3;
- (NSURL)px_assetDirectory;
- (UITraitCollection)px_traitCollection;
- (double)px_backlightProgress;
- (double)px_unlockProgress;
- (int64_t)px_boundingShape;
- (int64_t)px_contentsType;
- (int64_t)px_significantEventsCounter;
- (unint64_t)effectiveMotionEffectsMode;
- (void)setPx_traitCollection:(id)a3;
@end

@implementation RenderingEnvironment

- (UITraitCollection)px_traitCollection
{
  v2 = sub_1000042B0();

  return v2;
}

- (void)setPx_traitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000433C(a3);
}

- (BOOL)px_isSnapshot
{
  v2 = self;
  v3 = sub_100004504();

  return v3 & 1;
}

- (BOOL)px_isPreview
{
  v2 = self;
  v3 = sub_100004564();

  return v3 & 1;
}

- (BOOL)px_isCallServices
{
  v2 = self;
  v3 = sub_1000045D4();

  return v3 & 1;
}

- (int64_t)px_boundingShape
{
  v2 = self;
  v3 = sub_100004748();

  return v3;
}

- (NSURL)px_assetDirectory
{
  v3 = (*(*(sub_10000597C(&qword_100023958, qword_100012A78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = self;
  sub_10000485C(v5);

  v7 = sub_100010484();
  v9 = 0;
  if (sub_10000BAD0(v5, 1, v7) != 1)
  {
    sub_100010464(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v9;
}

- (int64_t)px_significantEventsCounter
{
  v2 = self;
  v3 = sub_100004A30();

  return v3;
}

- (int64_t)px_contentsType
{
  v2 = self;
  v3 = sub_100004A7C();

  return v3;
}

- (CGRect)px_floatingObscurableBounds
{
  v2 = self;
  sub_100004C24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)effectiveMotionEffectsMode
{
  v2 = self;
  v3 = sub_100004D04();

  return v3;
}

- ($D63DA504A8ACE1B9904210608313F5EB)deviceAttitude
{
  v3 = v2;
  v4 = self;
  *&v5 = sub_100004D8C();
  v10 = v6;
  v11 = v5;
  v8 = v7;

  *v3 = v11;
  *(v3 + 16) = v10;
  *(v3 + 32) = v8;
  return v9;
}

- (double)px_unlockProgress
{
  v2 = self;
  sub_100004DFC();
  v4 = v3;

  return v4;
}

- (double)px_backlightProgress
{
  v2 = self;
  sub_100004E50();
  v4 = v3;

  return v4;
}

- (CGRect)px_salientContentRectangle
{
  v2 = sub_100004E8C();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropPrimaryOcclusionRect
{
  v2 = sub_100004EEC();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropInspectorOcclusionRect
{
  v2 = sub_100004F4C();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_callServicesOcclusionRect
{
  v2 = sub_100004FAC();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end