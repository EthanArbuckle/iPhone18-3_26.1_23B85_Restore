@interface SCNTransaction
@end

@implementation SCNTransaction

void __74__SCNTransaction_AvatarKit_CEKWorkaround___implementCEKWorkaroundIfNeeded__block_invoke()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, sel_begin);
  v2 = objc_opt_class();
  v3 = class_getClassMethod(v2, sel_begin_CEKWorkaround);
  method_exchangeImplementations(ClassMethod, v3);
  v4 = objc_opt_class();
  v5 = class_getClassMethod(v4, sel_commit);
  v6 = objc_opt_class();
  v7 = class_getClassMethod(v6, sel_commit_CEKWorkaround);
  method_exchangeImplementations(v5, v7);
  v8 = objc_opt_class();
  v9 = class_getClassMethod(v8, sel_flush);
  v10 = objc_opt_class();
  v11 = class_getClassMethod(v10, sel_flush_CEKWorkaround);
  method_exchangeImplementations(v9, v11);
  v12 = objc_opt_class();
  v13 = class_getClassMethod(v12, sel_setAnimationDuration_);
  v14 = objc_opt_class();
  v15 = class_getClassMethod(v14, sel_setAnimationDuration_CEKWorkaround_);

  method_exchangeImplementations(v13, v15);
}

@end