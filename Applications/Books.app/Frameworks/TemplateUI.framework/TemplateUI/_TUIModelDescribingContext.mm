@interface _TUIModelDescribingContext
- (_TUIModelDescribingContext)initWithPackage:(id)package;
@end

@implementation _TUIModelDescribingContext

- (_TUIModelDescribingContext)initWithPackage:(id)package
{
  packageCopy = package;
  v9.receiver = self;
  v9.super_class = _TUIModelDescribingContext;
  v6 = [(_TUIModelDescribingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_package, package);
  }

  return v7;
}

@end