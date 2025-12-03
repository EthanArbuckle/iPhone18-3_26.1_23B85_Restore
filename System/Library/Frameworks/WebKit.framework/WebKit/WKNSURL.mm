@interface WKNSURL
- (id)_web_createTarget;
@end

@implementation WKNSURL

- (id)_web_createTarget
{
  _apiObject = [(WKObject *)self _apiObject];
  if ((*(_apiObject->var0 + 2))(_apiObject) == 23)
  {
    v3 = *MEMORY[0x1E695E480];
    CFRetain(_apiObject->var1);
    v4 = WKURLCopyCFURL(v3, _apiObject->var1);
    CFRelease(_apiObject->var1);
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