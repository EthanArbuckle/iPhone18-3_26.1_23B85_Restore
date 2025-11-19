@interface CAFenceResolution
+ (CAFenceResolution)_newResolutionWithTime:(double)a1;
@end

@implementation CAFenceResolution

+ (CAFenceResolution)_newResolutionWithTime:(double)a1
{
  v4 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = [CAFenceResolution alloc];
  if (result)
  {
    v3.receiver = result;
    v3.super_class = CAFenceResolution;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (!result)
    {
      __assert_rtn("[CAFenceResolution _initWithTime:]", "CAFenceResolution.mm", 28, "self");
    }

    result->_time = a1;
  }

  return result;
}

@end