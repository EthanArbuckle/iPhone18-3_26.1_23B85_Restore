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
- (void)setButtonNumber:(int64_t)number;
- (void)setDeltaX:(double)x;
- (void)setDeltaY:(double)y;
- (void)setIsEyeTrackingEvent:(BOOL)event;
- (void)setIsGamepadEvent:(BOOL)event;
- (void)setIsHeadTrackingEvent:(BOOL)event;
- (void)setIsVirtualTrackpadEvent:(BOOL)event;
- (void)setLocation:(CGPoint)location;
- (void)setType:(int)type;
@end

@implementation HNDEvent

- (int)type
{
  v3 = OBJC_IVAR___HNDEvent_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int)type
{
  v5 = OBJC_IVAR___HNDEvent_type;
  swift_beginAccess();
  *(self + v5) = type;
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

- (void)setLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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

- (void)setDeltaX:(double)x
{
  v5 = OBJC_IVAR___HNDEvent_deltaX;
  swift_beginAccess();
  *(self + v5) = x;
}

- (double)deltaY
{
  v3 = OBJC_IVAR___HNDEvent_deltaY;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeltaY:(double)y
{
  v5 = OBJC_IVAR___HNDEvent_deltaY;
  swift_beginAccess();
  *(self + v5) = y;
}

- (int64_t)buttonNumber
{
  v3 = OBJC_IVAR___HNDEvent_buttonNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setButtonNumber:(int64_t)number
{
  v5 = OBJC_IVAR___HNDEvent_buttonNumber;
  swift_beginAccess();
  *(self + v5) = number;
}

- (BOOL)isEyeTrackingEvent
{
  v3 = OBJC_IVAR___HNDEvent_isEyeTrackingEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsEyeTrackingEvent:(BOOL)event
{
  v5 = OBJC_IVAR___HNDEvent_isEyeTrackingEvent;
  swift_beginAccess();
  *(self + v5) = event;
}

- (BOOL)isVirtualTrackpadEvent
{
  v3 = OBJC_IVAR___HNDEvent_isVirtualTrackpadEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsVirtualTrackpadEvent:(BOOL)event
{
  v5 = OBJC_IVAR___HNDEvent_isVirtualTrackpadEvent;
  swift_beginAccess();
  *(self + v5) = event;
}

- (BOOL)isHeadTrackingEvent
{
  v3 = OBJC_IVAR___HNDEvent_isHeadTrackingEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHeadTrackingEvent:(BOOL)event
{
  v5 = OBJC_IVAR___HNDEvent_isHeadTrackingEvent;
  swift_beginAccess();
  *(self + v5) = event;
}

- (BOOL)isGamepadEvent
{
  v3 = OBJC_IVAR___HNDEvent_isGamepadEvent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsGamepadEvent:(BOOL)event
{
  v5 = OBJC_IVAR___HNDEvent_isGamepadEvent;
  swift_beginAccess();
  *(self + v5) = event;
}

- (NSString)description
{
  selfCopy = self;
  sub_100112148();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end