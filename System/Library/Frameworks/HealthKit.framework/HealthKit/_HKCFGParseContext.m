@interface _HKCFGParseContext
- (_HKCFGParseContext)initWithScanner:(id)a3 lengthAllowance:(unint64_t)a4;
@end

@implementation _HKCFGParseContext

- (_HKCFGParseContext)initWithScanner:(id)a3 lengthAllowance:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _HKCFGParseContext;
  v8 = [(_HKCFGParseContext *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scanner, a3);
    v9->_lengthAllowance = a4;
    v9->_recursiveDepth = 0;
    v10 = objc_alloc_init(_HKCFGNodeCache);
    cache = v9->_cache;
    v9->_cache = v10;
  }

  return v9;
}

@end