@interface CRLLayerAnimationDisplayLink
+ (_TtC8Freeform28CRLLayerAnimationDisplayLink)shared;
- (BOOL)isRunning;
- (void)dealloc;
- (void)endDisplayLink;
- (void)startDisplayLink;
@end

@implementation CRLLayerAnimationDisplayLink

+ (_TtC8Freeform28CRLLayerAnimationDisplayLink)shared
{
  if (qword_1019F2B20 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD9398;

  return v3;
}

- (BOOL)isRunning
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink);
  if (v2)
  {
    LOBYTE(v2) = [v2 paused] ^ 1;
  }

  return v2;
}

- (void)startDisplayLink
{
  v2 = self;
  sub_10123661C();
}

- (void)endDisplayLink
{
  v2 = self;
  sub_101236F30();
}

- (void)dealloc
{
  v2 = self;
  sub_101236F30();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for CRLLayerAnimationDisplayLink();
  [(CRLLayerAnimationDisplayLink *)&v3 dealloc];
}

@end