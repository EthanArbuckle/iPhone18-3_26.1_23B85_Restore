@interface WKWebView(WKTextExtraction)
- (uint64_t)_requestTextExtraction:()WKTextExtraction completionHandler:;
@end

@implementation WKWebView(WKTextExtraction)

- (uint64_t)_requestTextExtraction:()WKTextExtraction completionHandler:
{
  WeakRetained = objc_loadWeakRetained((self + 16));
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F9DB8;
  v5[1] = WeakRetained;
  v9 = v5;
  if (a2[80] || *a2)
  {
    v6 = 0;
  }

  else
  {
    WebKit::createItemRecursive(a2, &v9, &v10);
    v6 = v10;
  }

  (*(*(self + 8) + 16))(*(self + 8));
  if (v6)
  {
  }

  v7 = *(*v5 + 8);

  return v7(v5);
}

@end