@interface RAPSearchAutocompleteBlockFilter
+ (id)addressAutocompleteFilter;
+ (id)poiAutocompleteFilterWithExcludedMUIDs:(id)ds;
- (RAPSearchAutocompleteBlockFilter)initWithBlock:(id)block;
@end

@implementation RAPSearchAutocompleteBlockFilter

- (RAPSearchAutocompleteBlockFilter)initWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10.receiver = self;
    v10.super_class = RAPSearchAutocompleteBlockFilter;
    v5 = [(RAPSearchAutocompleteBlockFilter *)&v10 init];
    if (v5)
    {
      v6 = [blockCopy copy];
      block = v5->_block;
      v5->_block = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: block != ((void *)0)", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)poiAutocompleteFilterWithExcludedMUIDs:(id)ds
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064AA98;
  v7[3] = &unk_101624AD0;
  dsCopy = ds;
  v3 = dsCopy;
  v4 = objc_retainBlock(v7);
  v5 = [[RAPSearchAutocompleteBlockFilter alloc] initWithBlock:v4];

  return v5;
}

+ (id)addressAutocompleteFilter
{
  v2 = [[RAPSearchAutocompleteBlockFilter alloc] initWithBlock:&stru_101624AA8];

  return v2;
}

@end