@interface WKNSString
- (id)_web_createTarget;
@end

@implementation WKNSString

- (id)_web_createTarget
{
  v2 = [(WKObject *)self _apiObject];
  if ((*(v2->var0 + 2))(v2) == 20)
  {
    CFRetain(v2->var1);
    WTF::String::isolatedCopy();
    CFRelease(v2->var1);
    WTF::String::createCFString(&v7, &v8);
    v5 = v7;
    v4 = v8;
    v8 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }

    return v5;
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

@end