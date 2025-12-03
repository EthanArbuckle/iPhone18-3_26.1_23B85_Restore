@interface _NSPerformanceMeter
- (_NSPerformanceMeter)initWithTarget:(id)target;
@end

@implementation _NSPerformanceMeter

- (_NSPerformanceMeter)initWithTarget:(id)target
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSPerformanceMeter;
  return [(_NSPerformanceMeter *)&v4 init];
}

@end