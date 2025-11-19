@interface WKNSURL
- (id)_web_createTarget;
@end

@implementation WKNSURL

- (id)_web_createTarget
{
  v2 = [(WKObject *)self _apiObject];
  if ((*(v2->var0 + 2))(v2) == 23)
  {
    v3 = *MEMORY[0x1E695E480];
    CFRetain(v2->var1);
    v4 = WKURLCopyCFURL(v3, v2->var1);
    CFRelease(v2->var1);
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