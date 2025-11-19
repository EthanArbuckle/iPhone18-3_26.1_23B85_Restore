@interface RAPSearchAutocompleteBlockFilter
+ (id)addressAutocompleteFilter;
+ (id)poiAutocompleteFilterWithExcludedMUIDs:(id)a3;
- (RAPSearchAutocompleteBlockFilter)initWithBlock:(id)a3;
@end

@implementation RAPSearchAutocompleteBlockFilter

- (RAPSearchAutocompleteBlockFilter)initWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = RAPSearchAutocompleteBlockFilter;
    v5 = [(RAPSearchAutocompleteBlockFilter *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      block = v5->_block;
      v5->_block = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: block != ((void *)0)", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)poiAutocompleteFilterWithExcludedMUIDs:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064AA98;
  v7[3] = &unk_101624AD0;
  v8 = a3;
  v3 = v8;
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