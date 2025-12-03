@interface CMLogItem
- (CMLogItem)initWithCoder:(id)coder;
- (CMLogItem)initWithTimestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CMLogItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMLogItem;
  [(CMLogItem *)&v3 dealloc];
}

- (CMLogItem)initWithTimestamp:(double)timestamp
{
  v9.receiver = self;
  v9.super_class = CMLogItem;
  v4 = [(CMLogItem *)&v9 init];
  if (v4)
  {
    v5 = [CMLogItemInternal alloc];
    v4->_internalLogItem = objc_msgSend_initWithTimestamp_(v5, v6, v7, timestamp);
  }

  return v4;
}

- (CMLogItem)initWithCoder:(id)coder
{
  objc_msgSend_decodeDoubleForKey_(coder, a2, @"kCMLogItemCodingKeyTimestamp");

  return objc_msgSend_initWithTimestamp_(self, v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  objc_msgSend_timestamp(self, v8, v9);

  return objc_msgSend_initWithTimestamp_(v7, v10, v11);
}

@end