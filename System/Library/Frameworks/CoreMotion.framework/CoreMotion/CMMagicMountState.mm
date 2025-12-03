@interface CMMagicMountState
- (CMMagicMountState)initWithCoder:(id)coder;
- (CMMagicMountState)initWithMountStatus:(int64_t)status timestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMMagicMountState

- (CMMagicMountState)initWithMountStatus:(int64_t)status timestamp:(double)timestamp
{
  v6.receiver = self;
  v6.super_class = CMMagicMountState;
  result = [(CMLogItem *)&v6 initWithTimestamp:timestamp];
  if (result)
  {
    result->_mountStatus = status;
  }

  return result;
}

- (CMMagicMountState)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMMagicMountState;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->_mountStatus = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMMagicMountStateCodingKeyMountStatus");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMMagicMountState;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_mountStatus, @"kCMMagicMountStateCodingKeyMountStatus");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CMMagicMountState;
  result = [(CMLogItem *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 2) = self->_mountStatus;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isMounted = objc_msgSend_isMounted(self, v6, v7);
  mountStatus = self->_mountStatus;
  v13.receiver = self;
  v13.super_class = CMMagicMountState;
  [(CMLogItem *)&v13 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v10, @"%@ mounted=%d, mountStatus=%ld @ %f", v5, isMounted, mountStatus, v11);
}

@end