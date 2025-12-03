@interface WKNSURLRequest
- (id)URL;
- (id)_web_createTarget;
@end

@implementation WKNSURLRequest

- (id)_web_createTarget
{
  _apiObject = [(WKObject *)self _apiObject];
  if ((*(_apiObject->var0 + 2))(_apiObject) == 24)
  {
    v3 = WebCore::ResourceRequest::nsURLRequest();

    return [v3 copy];
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

- (id)URL
{
  _apiObject = [(WKObject *)self _apiObject];
  if ((*(_apiObject->var0 + 2))(_apiObject) == 24)
  {
    v3 = WebCore::ResourceRequestBase::url(&_apiObject[1]);
    WTF::URL::createCFURL(&v8, v3);
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = v8;
      v8 = 0;
      if (v6)
      {
      }
    }

    return v4;
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

@end