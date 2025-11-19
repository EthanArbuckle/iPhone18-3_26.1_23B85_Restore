@interface WKNSError
- (id)_web_createTarget;
@end

@implementation WKNSError

- (id)_web_createTarget
{
  v2 = [(WKObject *)self _apiObject];
  if ((*(v2->var0 + 2))(v2) == 10)
  {
    v3 = WebCore::ResourceError::nsError(&v2[1]);

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