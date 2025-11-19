@interface GCReplayKitGestureSettings
- (GCReplayKitGestureSettings)init;
- (GCReplayKitGestureSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)gestureModeForGestureType:(int64_t)a3;
- (int64_t)gestureTypeForGestureMode:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setGestureMode:(int64_t)a3 forGestureType:(int64_t)a4;
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

- (int64_t)gestureModeForGestureType:(int64_t)a3
{
  if (a3 > 2)
  {
    return -1;
  }

  else
  {
    return *(&self->super.isa + qword_1D2DEE148[a3]);
  }
}

- (void)setGestureMode:(int64_t)a3 forGestureType:(int64_t)a4
{
  if (a4 <= 2)
  {
    *(&self->super.isa + qword_1D2DEE148[a4]) = a3;
  }
}

- (int64_t)gestureTypeForGestureMode:(int64_t)a3
{
  if (self->_singlePressGesture == a3)
  {
    return 0;
  }

  if (self->_doublePressGesture == a3)
  {
    return 2;
  }

  if (self->_longPressGesture == a3)
  {
    return 1;
  }

  return -1;
}

- (GCReplayKitGestureSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCReplayKitGestureSettings;
  v5 = [(GCReplayKitGestureSettings *)&v9 init];
  if (v5)
  {
    v5->_singlePressGesture = [v4 decodeInt64ForKey:@"_singlePressGesture"];
    v5->_doublePressGesture = [v4 decodeInt64ForKey:@"_doublePressGesture"];
    v5->_longPressGesture = [v4 decodeInt64ForKey:@"_longPressGesture"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_controllerElementMappingKey"];
    controllerElementMappingKey = v5->_controllerElementMappingKey;
    v5->_controllerElementMappingKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  singlePressGesture = self->_singlePressGesture;
  v5 = a3;
  [v5 encodeInt64:singlePressGesture forKey:@"_singlePressGesture"];
  [v5 encodeInt64:self->_doublePressGesture forKey:@"_doublePressGesture"];
  [v5 encodeInt64:self->_longPressGesture forKey:@"_longPressGesture"];
  [v5 encodeObject:self->_controllerElementMappingKey forKey:@"_controllerElementMappingKey"];
}

- (id)copyWithZone:(_NSZone *)a3
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