@interface WorkoutGradientPathRenderer
- (_TtC20JournalNotifications27WorkoutGradientPathRenderer)initWithOverlay:(id)overlay;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation WorkoutGradientPathRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  contextCopy = context;
  selfCopy = self;
  [-[WorkoutGradientPathRenderer overlay](selfCopy "overlay")];
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = MKRoadWidthAtZoomScale(scale) * 0.666666667;
  [(WorkoutGradientPathRenderer *)selfCopy applyStrokePropertiesToContext:contextCopy atZoomScale:scale];
  v18 = selfCopy;
  sub_2188C(contextCopy, v18, v9, v8, var0, var1, v17, v14, v16);
}

- (_TtC20JournalNotifications27WorkoutGradientPathRenderer)initWithOverlay:(id)overlay
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end