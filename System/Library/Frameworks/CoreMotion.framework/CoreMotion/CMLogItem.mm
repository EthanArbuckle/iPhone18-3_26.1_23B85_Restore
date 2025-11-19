@interface CMLogItem
- (CMLogItem)initWithCoder:(id)a3;
- (CMLogItem)initWithTimestamp:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CMLogItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMLogItem;
  [(CMLogItem *)&v3 dealloc];
}

- (CMLogItem)initWithTimestamp:(double)a3
{
  v9.receiver = self;
  v9.super_class = CMLogItem;
  v4 = [(CMLogItem *)&v9 init];
  if (v4)
  {
    v5 = [CMLogItemInternal alloc];
    v4->_internalLogItem = objc_msgSend_initWithTimestamp_(v5, v6, v7, a3);
  }

  return v4;
}

- (CMLogItem)initWithCoder:(id)a3
{
  objc_msgSend_decodeDoubleForKey_(a3, a2, @"kCMLogItemCodingKeyTimestamp");

  return objc_msgSend_initWithTimestamp_(self, v4, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  objc_msgSend_timestamp(self, v8, v9);

  return objc_msgSend_initWithTimestamp_(v7, v10, v11);
}

@end