@interface WKNSURLRequest
- (id)URL;
- (id)_web_createTarget;
@end

@implementation WKNSURLRequest

- (id)_web_createTarget
{
  v2 = [(WKObject *)self _apiObject];
  if ((*(v2->var0 + 2))(v2) == 24)
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
  v2 = [(WKObject *)self _apiObject];
  if ((*(v2->var0 + 2))(v2) == 24)
  {
    v3 = WebCore::ResourceRequestBase::url(&v2[1]);
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