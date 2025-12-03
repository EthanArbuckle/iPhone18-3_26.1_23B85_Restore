@interface MediaAssetView
- (CGRect)bounds;
- (CGRect)frame;
- (void)dealloc;
@end

@implementation MediaAssetView

- (CGRect)frame
{
  sub_10032F7C0(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_10032F7C0(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14MediaAssetView_playbackStateObserver);
  if (v3)
  {
    v4 = objc_opt_self();
    selfCopy = self;
    swift_unknownObjectRetain();
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for MediaAssetView();
  [(MediaAssetView *)&v8 dealloc];
}

@end