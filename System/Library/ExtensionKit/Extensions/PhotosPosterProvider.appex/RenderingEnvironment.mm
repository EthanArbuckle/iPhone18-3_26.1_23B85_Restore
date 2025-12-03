@interface RenderingEnvironment
- (BOOL)px_isBackdrop;
- (BOOL)px_isCallServices;
- (BOOL)px_isDepthEffectDisabled;
- (BOOL)px_isPreview;
- (BOOL)px_isSnapshot;
- (CGRect)px_backdropInspectorOcclusionRect;
- (CGRect)px_backdropPrimaryOcclusionRect;
- (CGRect)px_callServicesOcclusionRect;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)layout;
- (NSURL)px_assetDirectory;
- (UITraitCollection)px_traitCollection;
- (double)px_backlightProgress;
- (double)px_unlockProgress;
- (int64_t)px_backlightLuminance;
- (int64_t)px_boundingShape;
- (int64_t)px_contentsType;
- (int64_t)px_deviceOrientation;
- (int64_t)px_significantEventsCounter;
- (unint64_t)effectiveMotionEffectsMode;
@end

@implementation RenderingEnvironment

- (BOOL)px_isSnapshot
{
  selfCopy = self;
  v3 = sub_100006B38();

  return v3 & 1;
}

- (BOOL)px_isPreview
{
  selfCopy = self;
  v3 = sub_100006B98();

  return v3 & 1;
}

- (BOOL)px_isCallServices
{
  selfCopy = self;
  v3 = sub_100006C04();

  return v3 & 1;
}

- (BOOL)px_isBackdrop
{
  selfCopy = self;
  v3 = sub_100006C5C();

  return v3 & 1;
}

- (int64_t)px_boundingShape
{
  selfCopy = self;
  v3 = sub_100006CB4();

  return v3;
}

- (NSURL)px_assetDirectory
{
  v3 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  selfCopy = self;
  sub_100006DC4(v6);

  v8 = sub_10002F1B4();
  v10 = 0;
  if (sub_1000103D4(v6, 1, v8) != 1)
  {
    sub_10002F134(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v10;
}

- (int64_t)px_backlightLuminance
{
  selfCopy = self;
  v3 = sub_100006E98();

  return v3;
}

- (int64_t)px_significantEventsCounter
{
  selfCopy = self;
  v3 = sub_100006F30();

  return v3;
}

- (int64_t)px_contentsType
{
  selfCopy = self;
  v3 = sub_100006F7C();

  return v3;
}

- (CGRect)px_floatingObscurableBounds
{
  sub_100007314(self, a2, sub_100007024);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)px_deviceOrientation
{
  selfCopy = self;
  v3 = sub_100007064();

  return v3;
}

- (UITraitCollection)px_traitCollection
{
  selfCopy = self;
  v3 = sub_1000070C0();

  return v3;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_100007100);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_100010A04);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout
{
  sub_10000713C(self, a2, layout, sub_100010A04);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)effectiveMotionEffectsMode
{
  selfCopy = self;
  v3 = sub_1000071E4();

  return v3;
}

- (double)px_unlockProgress
{
  selfCopy = self;
  sub_100007290();
  v4 = v3;

  return v4;
}

- (double)px_backlightProgress
{
  selfCopy = self;
  sub_1000072E4();
  v4 = v3;

  return v4;
}

- (CGRect)px_salientContentRectangle
{
  sub_100007314(self, a2, sub_100007360);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropPrimaryOcclusionRect
{
  sub_100007314(self, a2, sub_100007398);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropInspectorOcclusionRect
{
  sub_100007314(self, a2, sub_1000073D0);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_callServicesOcclusionRect
{
  sub_100007314(self, a2, sub_100007408);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)px_isDepthEffectDisabled
{
  selfCopy = self;
  v3 = sub_10000745C();

  return v3 & 1;
}

@end