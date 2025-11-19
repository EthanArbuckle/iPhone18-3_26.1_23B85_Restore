@interface ARQLInlineTouch
+ (id)touchToUUIDMapping;
+ (void)removeUIDForUITouch:(id)a3;
- (ARQLInlineTouch)initWithCoder:(id)a3;
- (ARQLInlineTouch)initWithUITouch:(id)a3;
- (CGPoint)cgLocation;
- (CGPoint)cgPreviousLocation;
- (id)description;
- (id)uuidForTouch:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARQLInlineTouch

+ (id)touchToUUIDMapping
{
  if (touchToUUIDMapping_onceToken != -1)
  {
    +[ARQLInlineTouch touchToUUIDMapping];
  }

  v3 = touchToUUIDMapping__touchToUUIDMapping;

  return v3;
}

uint64_t __37__ARQLInlineTouch_touchToUUIDMapping__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = touchToUUIDMapping__touchToUUIDMapping;
  touchToUUIDMapping__touchToUUIDMapping = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)uuidForTouch:(id)a3
{
  v3 = a3;
  v4 = +[ARQLInlineTouch touchToUUIDMapping];
  v5 = [v4 objectForKey:v3];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v6 UUIDString];

    [v4 setObject:v5 forKey:v3];
  }

  v7 = v5;

  return v7;
}

+ (void)removeUIDForUITouch:(id)a3
{
  v3 = a3;
  v4 = +[ARQLInlineTouch touchToUUIDMapping];
  [v4 removeObjectForKey:v3];
}

- (ARQLInlineTouch)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARQLInlineTouch;
  v5 = [(ARQLInlineTouch *)&v14 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"kTimestampKey"];
    v5->_timestamp = v6;
    [v4 decodeCGPointForKey:@"kCGLocationKey"];
    v5->_cgLocation.x = v7;
    v5->_cgLocation.y = v8;
    [v4 decodeCGPointForKey:@"kCGPreviousLocationKey"];
    v5->_cgPreviousLocation.x = v9;
    v5->_cgPreviousLocation.y = v10;
    v5->_phase = [v4 decodeIntegerForKey:@"kPhaseKey"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUidKey"];
    uid = v5->_uid;
    v5->_uid = v11;
  }

  return v5;
}

- (ARQLInlineTouch)initWithUITouch:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARQLInlineTouch;
  v5 = [(ARQLInlineTouch *)&v14 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    [v4 locationInView:0];
    v5->_cgLocation.x = v7;
    v5->_cgLocation.y = v8;
    [v4 previousLocationInView:0];
    v5->_cgPreviousLocation.x = v9;
    v5->_cgPreviousLocation.y = v10;
    v5->_phase = [v4 phase];
    v11 = [(ARQLInlineTouch *)v5 uuidForTouch:v4];
    uid = v5->_uid;
    v5->_uid = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"kTimestampKey" forKey:timestamp];
  [v5 encodeCGPoint:@"kCGLocationKey" forKey:{self->_cgLocation.x, self->_cgLocation.y}];
  [v5 encodeCGPoint:@"kCGPreviousLocationKey" forKey:{self->_cgPreviousLocation.x, self->_cgPreviousLocation.y}];
  [v5 encodeInteger:self->_phase forKey:@"kPhaseKey"];
  [v5 encodeObject:self->_uid forKey:@"kUidKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uid = self->_uid;
  timestamp = self->_timestamp;
  v6 = NSStringFromCGPoint(self->_cgLocation);
  v7 = NSStringFromCGPoint(self->_cgPreviousLocation);
  v8 = [v3 stringWithFormat:@"ARQLInlineTouch %@, %.11g, location: %@, previousLocation: %@", uid, *&timestamp, v6, v7];

  return v8;
}

- (CGPoint)cgLocation
{
  x = self->_cgLocation.x;
  y = self->_cgLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cgPreviousLocation
{
  x = self->_cgPreviousLocation.x;
  y = self->_cgPreviousLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end