@interface CMMagicMountState
- (CMMagicMountState)initWithCoder:(id)a3;
- (CMMagicMountState)initWithMountStatus:(int64_t)a3 timestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMMagicMountState

- (CMMagicMountState)initWithMountStatus:(int64_t)a3 timestamp:(double)a4
{
  v6.receiver = self;
  v6.super_class = CMMagicMountState;
  result = [(CMLogItem *)&v6 initWithTimestamp:a4];
  if (result)
  {
    result->_mountStatus = a3;
  }

  return result;
}

- (CMMagicMountState)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMMagicMountState;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->_mountStatus = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMMagicMountStateCodingKeyMountStatus");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CMMagicMountState;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_mountStatus, @"kCMMagicMountStateCodingKeyMountStatus");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMMagicMountState;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
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