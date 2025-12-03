@interface PKAccessibility
+ (id)sharedInstance;
@end

@implementation PKAccessibility

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PKAccessibility_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6A5170 != -1)
  {
    dispatch_once(&qword_1ED6A5170, block);
  }

  v2 = _MergedGlobals_144;

  return v2;
}

void __33__PKAccessibility_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_144;
  _MergedGlobals_144 = v0;
}

@end