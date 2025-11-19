@interface VOTEvent
+ (id)appleTVRemoteEventWithCommand:(id)a3 info:(id)a4;
+ (id)brailleEventWithCommand:(id)a3 info:(id)a4;
+ (id)externalDeviceEventWithCommand:(id)a3 info:(id)a4;
+ (id)internalEventWithCommand:(id)a3 info:(id)a4;
+ (id)keyEventWithCommand:(id)a3 keyInfo:(id)a4 otherInfo:(id)a5;
+ (id)systemServerEventWithCommand:(id)a3 info:(id)a4;
+ (id)touchEventWithCommand:(id)a3 info:(id)a4;
- (CGPoint)touchPoint;
- (CGPoint)touchRawLocation;
- (VOTEvent)initWithType:(int64_t)a3;
- (id)description;
- (int64_t)tvTouchPadRegion;
- (void)setInfo:(id)a3;
- (void)setObject:(id)a3 forIndex:(unint64_t)a4;
@end

@implementation VOTEvent

- (VOTEvent)initWithType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = VOTEvent;
  v4 = [(VOTEvent *)&v6 init];
  if (v4)
  {
    v4->_time = CFAbsoluteTimeGetCurrent();
    v4->_origin = a3;
  }

  return v4;
}

+ (id)externalDeviceEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[VOTEvent alloc] initWithType:3];
  [(VOTEvent *)v7 setCommand:v6];

  [(VOTEvent *)v7 setInfo:v5];

  return v7;
}

+ (id)keyEventWithCommand:(id)a3 keyInfo:(id)a4 otherInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_allocWithZone(VOTEvent) initWithType:4];
  [v10 setCommand:v9];

  [v10 setKeyInfo:v8];
  if (v7)
  {
    [v10 setInfo:v7];
  }

  return v10;
}

+ (id)touchEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:2];
  [v7 setCommand:v6];

  [v7 setInfo:v5];

  return v7;
}

+ (id)internalEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:1];
  [v7 setCommand:v6];

  [v7 setInfo:v5];

  return v7;
}

+ (id)systemServerEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:6];
  [v7 setCommand:v6];

  [v7 setInfo:v5];

  return v7;
}

+ (id)appleTVRemoteEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:7];
  [v7 setCommand:v6];

  [v7 setInfo:v5];

  return v7;
}

+ (id)brailleEventWithCommand:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:5];
  [v7 setCommand:v6];

  [v7 setInfo:v5];

  return v7;
}

- (void)setInfo:(id)a3
{
  info = self->_info;
  if (info)
  {

    [(AXIndexMap *)info addObjectsFromIndexMap:a3];
  }

  else
  {
    self->_info = [a3 copyWithZone:0];

    _objc_release_x1();
  }
}

- (void)setObject:(id)a3 forIndex:(unint64_t)a4
{
  v6 = a3;
  info = self->_info;
  v10 = v6;
  if (!info)
  {
    v8 = [objc_allocWithZone(AXIndexMap) init];
    v9 = self->_info;
    self->_info = v8;

    v6 = v10;
    info = self->_info;
  }

  [(AXIndexMap *)info setObject:v6 forIndex:a4];
}

- (id)description
{
  origin = self->_origin;
  info = self->_info;
  v5 = [(VOTEvent *)self command];
  v6 = [NSString stringWithFormat:@"VOTEvent:[%p] Type: %d. Info: %@ Command:%@", self, origin, info, v5];

  return v6;
}

- (int64_t)tvTouchPadRegion
{
  [(VOTEvent *)self touchRawLocation];
  v3 = v2 * 2.0 + -1.0;
  v5 = v4 * 2.0 + -1.0;
  v6 = -v5;
  if (v3 <= -v5 && v5 <= v3)
  {
    return 0;
  }

  if (v3 >= v6 && v5 >= v3)
  {
    return 2;
  }

  if (v5 > v3 || v3 < v6)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)touchPoint
{
  x = self->_touchPoint.x;
  y = self->_touchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchRawLocation
{
  x = self->_touchRawLocation.x;
  y = self->_touchRawLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end