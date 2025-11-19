@interface _C3DProgressDebugger
+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _C3DProgressDebugger

+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 fractionCompleted];
    if (v11 > 1.0)
    {
      NSLog(&cfstr_ScenekitC3dpro.isa);
    }
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS____C3DProgressDebugger;
    objc_msgSendSuper2(&v12, sel_observeValueForKeyPath_ofObject_change_context_, a3, a4, a5, a6);
  }
}

@end