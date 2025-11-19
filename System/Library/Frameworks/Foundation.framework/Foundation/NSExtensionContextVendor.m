@interface NSExtensionContextVendor
@end

@implementation NSExtensionContextVendor

id __58___NSExtensionContextVendor__sharedExtensionContextVendor__block_invoke()
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  result = objc_alloc_init(_MergedGlobals_105);
  qword_1ED43F770 = result;
  return result;
}

@end