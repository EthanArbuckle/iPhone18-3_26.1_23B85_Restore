@interface ARReferenceObject
@end

@implementation ARReferenceObject

void __47__ARReferenceObject_ARKitAdditions__initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel_writeToArchiveWithPreviewImage_error_);
  v4 = class_getInstanceMethod(v2, sel__writeToArchiveWithPreviewImage_error_);

  method_exchangeImplementations(v4, InstanceMethod);
}

@end