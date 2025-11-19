@interface NSObject
@end

@implementation NSObject

void __40__NSObject_BSCoding__bs_isPlistableType__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = _MergedGlobals_32;
  _MergedGlobals_32 = v6;
}

@end