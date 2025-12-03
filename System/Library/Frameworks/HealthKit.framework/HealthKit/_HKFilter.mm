@interface _HKFilter
+ (BOOL)filter:(id)filter acceptsDataObject:(id)object;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKFilter

+ (BOOL)filter:(id)filter acceptsDataObject:(id)object
{
  if (filter)
  {
    return [filter acceptsDataObject:object];
  }

  else
  {
    return 1;
  }
}

- (BOOL)acceptsDataObject:(id)object
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end