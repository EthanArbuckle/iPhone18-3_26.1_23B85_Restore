@interface BKSProximityDetectionMaskChangeEvent
+ (id)build:(id)a3;
+ (id)new;
- (BKSProximityDetectionMaskChangeEvent)init;
- (BKSProximityDetectionMaskChangeEvent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)a1;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:sel__init object:v1 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:46 description:@"BKSProximityDetectionMaskChangeEvent cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSProximityDetectionMaskChangeEvent;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (void)_initWithCopyOf:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSProximityDetectionMaskChangeEvent *)a1 _init];
    a1 = v4;
    if (v4)
    {
      *(v4 + 2) = v3[2];
      *(v4 + 3) = v3[3];
      *(v4 + 2) = *(v3 + 2);
    }
  }

  return a1;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [v7 appendInteger:self->_detectionMask withName:@"detectionMask"];
  v5 = [v7 appendInteger:self->_mode withName:@"mode"];
  v6 = [v7 appendInt64:self->_timestamp withName:@"timestamp"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableProximityEvent alloc];

  return [(BKSProximityDetectionMaskChangeEvent *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  detectionMask = self->_detectionMask;
  v5 = a3;
  [v5 encodeInteger:detectionMask forKey:@"detectionMask"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeInt64:self->_timestamp forKey:@"timestamp"];
}

- (BKSProximityDetectionMaskChangeEvent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKSProximityDetectionMaskChangeEvent;
  v3 = a3;
  v4 = [(BKSProximityDetectionMaskChangeEvent *)&v7 init];
  v4->_detectionMask = [v3 decodeInt32ForKey:{@"detectionMask", v7.receiver, v7.super_class}];
  v4->_mode = [v3 decodeIntegerForKey:@"mode"];
  v5 = [v3 decodeInt64ForKey:@"timestamp"];

  v4->_timestamp = v5;
  return v4;
}

- (BKSProximityDetectionMaskChangeEvent)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSProximityDetectionMaskChangeEvent init]"];
  [v3 handleFailureInFunction:v4 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:35 description:@"cannot directly allocate BKSProximityDetectionMaskChangeEvent"];

  return 0;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSProximityDetectionMaskChangeEvent new]"];
  [v2 handleFailureInFunction:v3 file:@"BKSProximityDetectionMaskChangeEvent.m" lineNumber:40 description:@"cannot directly allocate BKSProximityDetectionMaskChangeEvent"];

  return 0;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSProximityDetectionMaskChangeEvent *)[BKSMutableProximityEvent alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end