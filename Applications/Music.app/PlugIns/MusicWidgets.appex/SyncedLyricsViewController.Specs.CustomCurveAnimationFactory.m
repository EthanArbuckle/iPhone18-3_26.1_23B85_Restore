@interface SyncedLyricsViewController.Specs.CustomCurveAnimationFactory
- (_TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory)init;
- (id)_timingFunctionForAnimation;
@end

@implementation SyncedLyricsViewController.Specs.CustomCurveAnimationFactory

- (id)_timingFunctionForAnimation
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1);
  v3 = *&self->controlPoint1[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1];
  v4 = *(&self->super.isa + OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2);
  v5 = *&self->controlPoint1[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2];
  v6 = objc_allocWithZone(CAMediaTimingFunction);
  *&v7 = v2;
  *&v8 = v3;
  *&v9 = v4;
  *&v10 = v5;
  v11 = [v6 initWithControlPoints:v7 :v8 :v9 :v10];

  return v11;
}

- (_TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end