@interface GCReplayKitGestureSettings
- (GCReplayKitGestureSettings)init;
- (GCReplayKitGestureSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)gestureModeForGestureType:(int64_t)type;
- (int64_t)gestureTypeForGestureMode:(int64_t)mode;
- (void)encodeWithCoder:(id)coder;
- (void)setGestureMode:(int64_t)mode forGestureType:(int64_t)type;
@end

@implementation GCReplayKitGestureSettings

- (GCReplayKitGestureSettings)init
{
  v3.receiver = self;
  v3.super_class = GCReplayKitGestureSettings;
  result = [(GCReplayKitGestureSettings *)&v3 init];
  if (result)
  {
    result->_doublePressGesture = -1;
    result->_longPressGesture = -1;
    result->_singlePressGesture = -1;
  }

  return result;
}

- (int64_t)gestureModeForGestureType:(int64_t)type
{
  if (type > 2)
  {
    return -1;
  }

  else
  {
    return *(&self->super.isa + qword_1D2DEE148[type]);
  }
}

- (void)setGestureMode:(int64_t)mode forGestureType:(int64_t)type
{
  if (type <= 2)
  {
    *(&self->super.isa + qword_1D2DEE148[type]) = mode;
  }
}

- (int64_t)gestureTypeForGestureMode:(int64_t)mode
{
  if (self->_singlePressGesture == mode)
  {
    return 0;
  }

  if (self->_doublePressGesture == mode)
  {
    return 2;
  }

  if (self->_longPressGesture == mode)
  {
    return 1;
  }

  return -1;
}

- (GCReplayKitGestureSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCReplayKitGestureSettings;
  v5 = [(GCReplayKitGestureSettings *)&v9 init];
  if (v5)
  {
    v5->_singlePressGesture = [coderCopy decodeInt64ForKey:@"_singlePressGesture"];
    v5->_doublePressGesture = [coderCopy decodeInt64ForKey:@"_doublePressGesture"];
    v5->_longPressGesture = [coderCopy decodeInt64ForKey:@"_longPressGesture"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_controllerElementMappingKey"];
    controllerElementMappingKey = v5->_controllerElementMappingKey;
    v5->_controllerElementMappingKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  singlePressGesture = self->_singlePressGesture;
  coderCopy = coder;
  [coderCopy encodeInt64:singlePressGesture forKey:@"_singlePressGesture"];
  [coderCopy encodeInt64:self->_doublePressGesture forKey:@"_doublePressGesture"];
  [coderCopy encodeInt64:self->_longPressGesture forKey:@"_longPressGesture"];
  [coderCopy encodeObject:self->_controllerElementMappingKey forKey:@"_controllerElementMappingKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[GCReplayKitGestureSettings allocWithZone:?]];
  v4->_singlePressGesture = self->_singlePressGesture;
  v4->_doublePressGesture = self->_doublePressGesture;
  v4->_longPressGesture = self->_longPressGesture;
  v5 = [(NSString *)self->_controllerElementMappingKey copy];
  controllerElementMappingKey = v4->_controllerElementMappingKey;
  v4->_controllerElementMappingKey = v5;

  return v4;
}

@end