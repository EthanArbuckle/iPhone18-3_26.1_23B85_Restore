@interface WKNSError
- (id)_web_createTarget;
@end

@implementation WKNSError

- (id)_web_createTarget
{
  _apiObject = [(WKObject *)self _apiObject];
  if ((*(_apiObject->var0 + 2))(_apiObject) == 10)
  {
    v3 = WebCore::ResourceError::nsError(&_apiObject[1]);

    return [v3 copy];
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

@end