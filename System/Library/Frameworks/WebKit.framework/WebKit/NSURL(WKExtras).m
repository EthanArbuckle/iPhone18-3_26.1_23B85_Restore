@interface NSURL(WKExtras)
+ (id)_web_URLWithWTFString:()WKExtras;
@end

@implementation NSURL(WKExtras)

+ (id)_web_URLWithWTFString:()WKExtras
{
  WTF::URL::URL(v12);
  MEMORY[0x19EB01E00](v13, v12, a3, 0);
  v5 = v12[0];
  v12[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WTF::URL::createCFURL(v12, v13);
  v7 = v12[0];
  v12[0] = 0;
  if (v7)
  {
    v8 = v7;
    v9 = v12[0];
    v12[0] = 0;
    if (v9)
    {
    }
  }

  v10 = v13[0];
  v13[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  return v7;
}

@end