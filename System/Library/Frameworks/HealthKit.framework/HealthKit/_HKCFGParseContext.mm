@interface _HKCFGParseContext
- (_HKCFGParseContext)initWithScanner:(id)scanner lengthAllowance:(unint64_t)allowance;
@end

@implementation _HKCFGParseContext

- (_HKCFGParseContext)initWithScanner:(id)scanner lengthAllowance:(unint64_t)allowance
{
  scannerCopy = scanner;
  v13.receiver = self;
  v13.super_class = _HKCFGParseContext;
  v8 = [(_HKCFGParseContext *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scanner, scanner);
    v9->_lengthAllowance = allowance;
    v9->_recursiveDepth = 0;
    v10 = objc_alloc_init(_HKCFGNodeCache);
    cache = v9->_cache;
    v9->_cache = v10;
  }

  return v9;
}

@end