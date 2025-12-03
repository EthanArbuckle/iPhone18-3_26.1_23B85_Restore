@interface VOTEvent
+ (id)appleTVRemoteEventWithCommand:(id)command info:(id)info;
+ (id)brailleEventWithCommand:(id)command info:(id)info;
+ (id)externalDeviceEventWithCommand:(id)command info:(id)info;
+ (id)internalEventWithCommand:(id)command info:(id)info;
+ (id)keyEventWithCommand:(id)command keyInfo:(id)info otherInfo:(id)otherInfo;
+ (id)systemServerEventWithCommand:(id)command info:(id)info;
+ (id)touchEventWithCommand:(id)command info:(id)info;
- (CGPoint)touchPoint;
- (CGPoint)touchRawLocation;
- (VOTEvent)initWithType:(int64_t)type;
- (id)description;
- (int64_t)tvTouchPadRegion;
- (void)setInfo:(id)info;
- (void)setObject:(id)object forIndex:(unint64_t)index;
@end

@implementation VOTEvent

- (VOTEvent)initWithType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = VOTEvent;
  v4 = [(VOTEvent *)&v6 init];
  if (v4)
  {
    v4->_time = CFAbsoluteTimeGetCurrent();
    v4->_origin = type;
  }

  return v4;
}

+ (id)externalDeviceEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [[VOTEvent alloc] initWithType:3];
  [(VOTEvent *)v7 setCommand:commandCopy];

  [(VOTEvent *)v7 setInfo:infoCopy];

  return v7;
}

+ (id)keyEventWithCommand:(id)command keyInfo:(id)info otherInfo:(id)otherInfo
{
  otherInfoCopy = otherInfo;
  infoCopy = info;
  commandCopy = command;
  v10 = [objc_allocWithZone(VOTEvent) initWithType:4];
  [v10 setCommand:commandCopy];

  [v10 setKeyInfo:infoCopy];
  if (otherInfoCopy)
  {
    [v10 setInfo:otherInfoCopy];
  }

  return v10;
}

+ (id)touchEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:2];
  [v7 setCommand:commandCopy];

  [v7 setInfo:infoCopy];

  return v7;
}

+ (id)internalEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:1];
  [v7 setCommand:commandCopy];

  [v7 setInfo:infoCopy];

  return v7;
}

+ (id)systemServerEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:6];
  [v7 setCommand:commandCopy];

  [v7 setInfo:infoCopy];

  return v7;
}

+ (id)appleTVRemoteEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:7];
  [v7 setCommand:commandCopy];

  [v7 setInfo:infoCopy];

  return v7;
}

+ (id)brailleEventWithCommand:(id)command info:(id)info
{
  infoCopy = info;
  commandCopy = command;
  v7 = [objc_allocWithZone(VOTEvent) initWithType:5];
  [v7 setCommand:commandCopy];

  [v7 setInfo:infoCopy];

  return v7;
}

- (void)setInfo:(id)info
{
  info = self->_info;
  if (info)
  {

    [(AXIndexMap *)info addObjectsFromIndexMap:info];
  }

  else
  {
    self->_info = [info copyWithZone:0];

    _objc_release_x1();
  }
}

- (void)setObject:(id)object forIndex:(unint64_t)index
{
  objectCopy = object;
  info = self->_info;
  v10 = objectCopy;
  if (!info)
  {
    v8 = [objc_allocWithZone(AXIndexMap) init];
    v9 = self->_info;
    self->_info = v8;

    objectCopy = v10;
    info = self->_info;
  }

  [(AXIndexMap *)info setObject:objectCopy forIndex:index];
}

- (id)description
{
  origin = self->_origin;
  info = self->_info;
  command = [(VOTEvent *)self command];
  v6 = [NSString stringWithFormat:@"VOTEvent:[%p] Type: %d. Info: %@ Command:%@", self, origin, info, command];

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