@interface BKSHIDHapticFeedbackRequest
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDHapticFeedbackRequest)init;
- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDHapticFeedbackRequest

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSHIDHapticFeedbackRequest *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = of[1];
      of[1] = v4;

      *(of + 1) = *(v3 + 1);
      objc_storeStrong(of + 4, v3[4]);
      of[5] = v3[5];
    }
  }

  return of;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:v1 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:64 description:@"BKSHIDHapticFeedbackRequest cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSHIDHapticFeedbackRequest;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_pattern withName:@"pattern"];
  v5 = NSStringFromBKSHIDHapticFeedbackRequestDeviceType(self->_deviceType);
  v6 = [formatterCopy appendObject:v5 withName:@"deviceType"];

  v7 = [formatterCopy appendUInt64:self->_senderID withName:@"senderID" format:1];
  v8 = [formatterCopy appendObject:self->_powerSourceID withName:@"powerSourceID"];
  v9 = [formatterCopy appendInt64:self->_timestamp withName:@"timestamp"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDHapticFeedbackRequest alloc];

  return [(BKSHIDHapticFeedbackRequest *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pattern = self->_pattern;
  if (pattern)
  {
    [coderCopy encodeObject:pattern forKey:@"pattern"];
  }

  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeInt64:self->_senderID forKey:@"senderID"];
  powerSourceID = self->_powerSourceID;
  if (powerSourceID)
  {
    [coderCopy encodeObject:powerSourceID forKey:@"powerSourceID"];
  }

  [coderCopy encodeInt64:self->_timestamp forKey:@"timestamp"];
}

- (BKSHIDHapticFeedbackRequest)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = BKSHIDHapticFeedbackRequest;
  coderCopy = coder;
  v4 = [(BKSHIDHapticFeedbackRequest *)&v11 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"pattern", v11.receiver, v11.super_class}];
  pattern = v4->_pattern;
  v4->_pattern = v5;

  v4->_deviceType = [coderCopy decodeIntegerForKey:@"deviceType"];
  v4->_senderID = [coderCopy decodeInt64ForKey:@"senderID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"powerSourceID"];
  powerSourceID = v4->_powerSourceID;
  v4->_powerSourceID = v7;

  v9 = [coderCopy decodeInt64ForKey:@"timestamp"];
  v4->_timestamp = v9;
  return v4;
}

- (BKSHIDHapticFeedbackRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDHapticFeedbackRequest init]"];
  [currentHandler handleFailureInFunction:v4 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:53 description:@"cannot directly allocate BKSHIDHapticFeedbackRequest"];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDHapticFeedbackRequest new]"];
  [currentHandler handleFailureInFunction:v3 file:@"BKSHIDHapticFeedbackRequest.m" lineNumber:58 description:@"cannot directly allocate BKSHIDHapticFeedbackRequest"];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDHapticFeedbackRequest *)[BKSMutableHIDHapticFeedbackRequest alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end