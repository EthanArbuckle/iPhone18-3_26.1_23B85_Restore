@interface __NSPlaceholderURLQueryItem
- (__NSPlaceholderURLQueryItem)init;
- (__NSPlaceholderURLQueryItem)initWithName:(id)a3 value:(id)a4;
@end

@implementation __NSPlaceholderURLQueryItem

- (__NSPlaceholderURLQueryItem)init
{
  v2 = +[NSURLQueryItem _queryItem];

  return v2;
}

- (__NSPlaceholderURLQueryItem)initWithName:(id)a3 value:(id)a4
{
  if (!_NSIsNSString())
  {
    a3 = &stru_1EEEFDF90;
  }

  if (_NSIsNSString())
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSURLQueryItem _queryItemWithName:a3 value:v6];

  return v7;
}

@end