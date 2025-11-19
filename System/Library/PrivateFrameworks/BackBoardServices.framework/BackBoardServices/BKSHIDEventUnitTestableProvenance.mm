@interface BKSHIDEventUnitTestableProvenance
+ (id)invalid;
+ (id)valid;
+ (id)validWithTimestamp:(unint64_t)a3;
@end

@implementation BKSHIDEventUnitTestableProvenance

+ (id)invalid
{
  v2 = objc_alloc_init(BKSHIDEventUnitTestableProvenance);
  v2->_timetamp = mach_continuous_time();

  return v2;
}

+ (id)validWithTimestamp:(unint64_t)a3
{
  v4 = objc_alloc_init(BKSHIDEventUnitTestableProvenance);
  v4->_authentic = 1;
  v4->_timetamp = a3;

  return v4;
}

+ (id)valid
{
  v2 = objc_alloc_init(BKSHIDEventUnitTestableProvenance);
  v2->_authentic = 1;
  v2->_timetamp = mach_continuous_time();

  return v2;
}

@end