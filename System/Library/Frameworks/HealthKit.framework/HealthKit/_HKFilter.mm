@interface _HKFilter
+ (BOOL)filter:(id)a3 acceptsDataObject:(id)a4;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKFilter

+ (BOOL)filter:(id)a3 acceptsDataObject:(id)a4
{
  if (a3)
  {
    return [a3 acceptsDataObject:a4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)acceptsDataObject:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end