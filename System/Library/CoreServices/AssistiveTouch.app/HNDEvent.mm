@interface HNDEvent
- (BOOL)isEyeTrackingEvent;
- (BOOL)isGamepadEvent;
- (BOOL)isHeadTrackingEvent;
- (BOOL)isVirtualTrackpadEvent;
- (CGPoint)location;
- (NSString)description;
- (double)deltaX;
- (double)deltaY;
- (int)type;
- (int64_t)buttonNumber;
- (void)setButtonNumber:(int64_t)a3;
- (void)setDeltaX:(double)a3;
- (void)setDeltaY:(double)a3;
- (void)setIsEyeTrackingEvent:(BOOL)a3;
- (void)setIsGamepadEvent:(BOOL)a3;
- (void)setIsHeadTrackingEvent:(BOOL)a3;
- (void)setIsVirtualTrackpadEvent:(BOOL)a3;
- (void)setLocation:(CGPoint)a3;
- (void)setType:(int)a3;
@end

@implementation HNDEvent

- (int)type
{
  v3 = OBJC_IVAR___HNDEvent_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int)a3
{
  v5 = OBJC_IVAR___HNDEvent_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CGPoint)location
{
  v2 = (self + OBJC_IVAR___HNDEvent_location);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = (self + OBJC_IVAR___HNDEvent_location);
  swift_beginAccess();
  *v5 = x;
  v5[1] = y;
}

- (double)deltaX
{
  v3 = OBJC_IVAR___HNDEvent_deltaX;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeltaX:(double)a3
{
  v5 = OBJC_IVAR___HNDEvent_deltaX;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)deltaY
{
  v3 = OBJC_IVAR___HNDEvent_deltaY;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeltaY:(double)a3
{
  v5 = OBJC_IVAR___HNDEvent_deltaY;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)buttonNumber
{
  v3 = OBJC_IVAR___HNDEvent_buttonNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setButtonNumber:(int64_t)a3
{
  v5 = OBJC_IVAR___HNDEvent_buttonNumber;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isEyeTrackingEvent
{
  v3 = OBJC_IVAR___HNDEvent_isEyeTrackingEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsEyeTrackingEvent:(BOOL)a3
{
  v5 = OBJC_IVAR___HNDEvent_isEyeTrackingEvent;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isVirtualTrackpadEvent
{
  v3 = OBJC_IVAR___HNDEvent_isVirtualTrackpadEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsVirtualTrackpadEvent:(BOOL)a3
{
  v5 = OBJC_IVAR___HNDEvent_isVirtualTrackpadEvent;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isHeadTrackingEvent
{
  v3 = OBJC_IVAR___HNDEvent_isHeadTrackingEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHeadTrackingEvent:(BOOL)a3
{
  v5 = OBJC_IVAR___HNDEvent_isHeadTrackingEvent;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isGamepadEvent
{
  v3 = OBJC_IVAR___HNDEvent_isGamepadEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsGamepadEvent:(BOOL)a3
{
  v5 = OBJC_IVAR___HNDEvent_isGamepadEvent;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)description
{
  v2 = self;
  sub_100112148();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end