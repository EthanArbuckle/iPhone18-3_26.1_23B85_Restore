@interface BKSProximityDetectionMaskChangeEvent
+ (id)build:(id)build;
+ (id)new;
- (BKSProximityDetectionMaskChangeEvent)init;
- (BKSProximityDetectionMaskChangeEvent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSProximityDetectionMaskChangeEvent

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:v1 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:46 description:@"BKSProximityDetectionMaskChangeEvent cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSProximityDetectionMaskChangeEvent;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSProximityDetectionMaskChangeEvent *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 2) = v3[2];
      *(_init + 3) = v3[3];
      *(_init + 2) = *(v3 + 2);
    }
  }

  return of;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendInteger:self->_detectionMask withName:@"detectionMask"];
  v5 = [formatterCopy appendInteger:self->_mode withName:@"mode"];
  v6 = [formatterCopy appendInt64:self->_timestamp withName:@"timestamp"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableProximityEvent alloc];

  return [(BKSProximityDetectionMaskChangeEvent *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[2] == self->_detectionMask && v5[3] == self->_mode && *(v5 + 2) == self->_timestamp;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_detectionMask];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_mode];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  [v5 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  detectionMask = self->_detectionMask;
  coderCopy = coder;
  [coderCopy encodeInteger:detectionMask forKey:@"detectionMask"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeInt64:self->_timestamp forKey:@"timestamp"];
}

- (BKSProximityDetectionMaskChangeEvent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BKSProximityDetectionMaskChangeEvent;
  coderCopy = coder;
  v4 = [(BKSProximityDetectionMaskChangeEvent *)&v7 init];
  v4->_detectionMask = [coderCopy decodeInt32ForKey:{@"detectionMask", v7.receiver, v7.super_class}];
  v4->_mode = [coderCopy decodeIntegerForKey:@"mode"];
  v5 = [coderCopy decodeInt64ForKey:@"timestamp"];

  v4->_timestamp = v5;
  return v4;
}

- (BKSProximityDetectionMaskChangeEvent)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSProximityDetectionMaskChangeEvent init]"];
  [currentHandler handleFailureInFunction:v4 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:35 description:@"cannot directly allocate BKSProximityDetectionMaskChangeEvent"];

  return 0;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSProximityDetectionMaskChangeEvent new]"];
  [currentHandler handleFailureInFunction:v3 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:40 description:@"cannot directly allocate BKSProximityDetectionMaskChangeEvent"];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSProximityDetectionMaskChangeEvent *)[BKSMutableProximityEvent alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end