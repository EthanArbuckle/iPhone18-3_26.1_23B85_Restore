@interface NSPropertyListClasses
@end

@implementation NSPropertyListClasses

uint64_t ____NSPropertyListClasses_ForArchival_ErrorAndException_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  _MergedGlobals_116 = result;
  return result;
}

@end