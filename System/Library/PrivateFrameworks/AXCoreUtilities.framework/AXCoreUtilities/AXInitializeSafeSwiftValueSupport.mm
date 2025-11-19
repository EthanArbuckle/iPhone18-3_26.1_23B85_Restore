@interface AXInitializeSafeSwiftValueSupport
@end

@implementation AXInitializeSafeSwiftValueSupport

void ___AXInitializeSafeSwiftValueSupport_block_invoke()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  _bulkAddMethodsFromClass(v0, v1);
  v2 = NSClassFromString(&cfstr_Ttcs12Swiftobj.isa);
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_class();

    _bulkAddMethodsFromClass(v4, v3);
  }
}

@end