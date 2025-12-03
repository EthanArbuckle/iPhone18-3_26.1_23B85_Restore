@interface ARQLInlineTouch
+ (id)touchToUUIDMapping;
+ (void)removeUIDForUITouch:(id)touch;
- (ARQLInlineTouch)initWithCoder:(id)coder;
- (ARQLInlineTouch)initWithUITouch:(id)touch;
- (CGPoint)cgLocation;
- (CGPoint)cgPreviousLocation;
- (id)description;
- (id)uuidForTouch:(id)touch;
- (void)encodeWithCoder:(id)coder;
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

- (id)uuidForTouch:(id)touch
{
  touchCopy = touch;
  v4 = +[ARQLInlineTouch touchToUUIDMapping];
  uUIDString = [v4 objectForKey:touchCopy];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [v4 setObject:uUIDString forKey:touchCopy];
  }

  v7 = uUIDString;

  return v7;
}

+ (void)removeUIDForUITouch:(id)touch
{
  touchCopy = touch;
  v4 = +[ARQLInlineTouch touchToUUIDMapping];
  [v4 removeObjectForKey:touchCopy];
}

- (ARQLInlineTouch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ARQLInlineTouch;
  v5 = [(ARQLInlineTouch *)&v14 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"kTimestampKey"];
    v5->_timestamp = v6;
    [coderCopy decodeCGPointForKey:@"kCGLocationKey"];
    v5->_cgLocation.x = v7;
    v5->_cgLocation.y = v8;
    [coderCopy decodeCGPointForKey:@"kCGPreviousLocationKey"];
    v5->_cgPreviousLocation.x = v9;
    v5->_cgPreviousLocation.y = v10;
    v5->_phase = [coderCopy decodeIntegerForKey:@"kPhaseKey"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUidKey"];
    uid = v5->_uid;
    v5->_uid = v11;
  }

  return v5;
}

- (ARQLInlineTouch)initWithUITouch:(id)touch
{
  touchCopy = touch;
  v14.receiver = self;
  v14.super_class = ARQLInlineTouch;
  v5 = [(ARQLInlineTouch *)&v14 init];
  if (v5)
  {
    [touchCopy timestamp];
    v5->_timestamp = v6;
    [touchCopy locationInView:0];
    v5->_cgLocation.x = v7;
    v5->_cgLocation.y = v8;
    [touchCopy previousLocationInView:0];
    v5->_cgPreviousLocation.x = v9;
    v5->_cgPreviousLocation.y = v10;
    v5->_phase = [touchCopy phase];
    v11 = [(ARQLInlineTouch *)v5 uuidForTouch:touchCopy];
    uid = v5->_uid;
    v5->_uid = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"kTimestampKey" forKey:timestamp];
  [coderCopy encodeCGPoint:@"kCGLocationKey" forKey:{self->_cgLocation.x, self->_cgLocation.y}];
  [coderCopy encodeCGPoint:@"kCGPreviousLocationKey" forKey:{self->_cgPreviousLocation.x, self->_cgPreviousLocation.y}];
  [coderCopy encodeInteger:self->_phase forKey:@"kPhaseKey"];
  [coderCopy encodeObject:self->_uid forKey:@"kUidKey"];
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