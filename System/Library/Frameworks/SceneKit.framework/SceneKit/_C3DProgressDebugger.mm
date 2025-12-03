@interface _C3DProgressDebugger
+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _C3DProgressDebugger

+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [object fractionCompleted];
    if (v11 > 1.0)
    {
      NSLog(&cfstr_ScenekitC3dpro.isa);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS____C3DProgressDebugger;
    objc_msgSendSuper2(&v12, sel_observeValueForKeyPath_ofObject_change_context_, path, object, change, context);
  }
}

@end