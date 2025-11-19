@interface _HKValidationErrorTracker
- (_HKValidationErrorTracker)init;
@end

@implementation _HKValidationErrorTracker

- (_HKValidationErrorTracker)init
{
  v7.receiver = self;
  v7.super_class = _HKValidationErrorTracker;
  v2 = [(_HKValidationErrorTracker *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_errorCount = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    errorMessage = v3->_errorMessage;
    v3->_errorMessage = v4;
  }

  return v3;
}

@end