@interface __NSPlaceholderURLQueryItem
- (__NSPlaceholderURLQueryItem)init;
- (__NSPlaceholderURLQueryItem)initWithName:(id)name value:(id)value;
@end

@implementation __NSPlaceholderURLQueryItem

- (__NSPlaceholderURLQueryItem)init
{
  v2 = +[NSURLQueryItem _queryItem];

  return v2;
}

- (__NSPlaceholderURLQueryItem)initWithName:(id)name value:(id)value
{
  if (!_NSIsNSString())
  {
    name = &stru_1EEEFDF90;
  }

  if (_NSIsNSString())
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = 0;
  }

  v7 = [NSURLQueryItem _queryItemWithName:name value:valueCopy];

  return v7;
}

@end