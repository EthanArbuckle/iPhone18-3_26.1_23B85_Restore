@interface BKSHIDHapticFeedbackRequest
+ (id)build:(id)a3;
+ (id)new;
- (BKSHIDHapticFeedbackRequest)init;
- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDHapticFeedbackRequest

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [(BKSHIDHapticFeedbackRequest *)a1 _init];
    if (a1)
    {
      v4 = [v3[1] copy];
      v5 = a1[1];
      a1[1] = v4;

      *(a1 + 1) = *(v3 + 1);
      objc_storeStrong(a1 + 4, v3[4]);
      a1[5] = v3[5];
    }
  }

  return a1;
}

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
        [v4 handleFailureInMethod:sel__init object:v1 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:64 description:@"BKSHIDHapticFeedbackRequest cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSHIDHapticFeedbackRequest;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v10 = a3;
  v4 = [v10 appendObject:self->_pattern withName:@"pattern"];
  v5 = NSStringFromBKSHIDHapticFeedbackRequestDeviceType(self->_deviceType);
  v6 = [v10 appendObject:v5 withName:@"deviceType"];

  v7 = [v10 appendUInt64:self->_senderID withName:@"senderID" format:1];
  v8 = [v10 appendObject:self->_powerSourceID withName:@"powerSourceID"];
  v9 = [v10 appendInt64:self->_timestamp withName:@"timestamp"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDHapticFeedbackRequest alloc];

  return [(BKSHIDHapticFeedbackRequest *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    pattern = self->_pattern;
    v10 = BSEqualObjects() && v5[2] == self->_deviceType && v5[3] == self->_senderID && (v8 = v5[4], powerSourceID = self->_powerSourceID, BSEqualObjects()) && v5[5] == self->_timestamp;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  [(NSString *)self->_pattern hash];
  [(NSNumber *)self->_powerSourceID hash];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceType];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_senderID];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  [v5 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  pattern = self->_pattern;
  if (pattern)
  {
    [v6 encodeObject:pattern forKey:@"pattern"];
  }

  [v6 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [v6 encodeInt64:self->_senderID forKey:@"senderID"];
  powerSourceID = self->_powerSourceID;
  if (powerSourceID)
  {
    [v6 encodeObject:powerSourceID forKey:@"powerSourceID"];
  }

  [v6 encodeInt64:self->_timestamp forKey:@"timestamp"];
}

- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = BKSHIDHapticFeedbackRequest;
  v3 = a3;
  v4 = [(BKSHIDHapticFeedbackRequest *)&v11 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"pattern", v11.receiver, v11.super_class}];
  pattern = v4->_pattern;
  v4->_pattern = v5;

  v4->_deviceType = [v3 decodeIntegerForKey:@"deviceType"];
  v4->_senderID = [v3 decodeInt64ForKey:@"senderID"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"powerSourceID"];
  powerSourceID = v4->_powerSourceID;
  v4->_powerSourceID = v7;

  v9 = [v3 decodeInt64ForKey:@"timestamp"];
  v4->_timestamp = v9;
  return v4;
}

- (BKSHIDHapticFeedbackRequest)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDHapticFeedbackRequest init]"];
  [v3 handleFailureInFunction:v4 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:53 description:@"cannot directly allocate BKSHIDHapticFeedbackRequest"];

  return 0;
}

void __45__BKSHIDHapticFeedbackRequest_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_pattern"];
  [v2 addField:"_deviceType"];
  [v2 addField:"_senderID"];
  [v2 addField:"_powerSourceID"];
  [v2 addField:"_timestamp"];
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDHapticFeedbackRequest new]"];
  [v2 handleFailureInFunction:v3 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:58 description:@"cannot directly allocate BKSHIDHapticFeedbackRequest"];

  return 0;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSHIDHapticFeedbackRequest *)[BKSMutableHIDHapticFeedbackRequest alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end