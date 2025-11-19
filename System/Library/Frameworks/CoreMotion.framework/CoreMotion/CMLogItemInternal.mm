@interface CMLogItemInternal
- (CMLogItemInternal)initWithTimestamp:(double)a3;
@end

@implementation CMLogItemInternal

- (CMLogItemInternal)initWithTimestamp:(double)a3
{
  v5.receiver = self;
  v5.super_class = CMLogItemInternal;
  result = [(CMLogItemInternal *)&v5 init];
  if (result)
  {
    result->fTimestamp = a3;
  }

  return result;
}

@end