@interface UIView(WKHitTesting)
- (uint64_t)_web_findDescendantViewAtPoint:()WKHitTesting withEvent:;
@end

@implementation UIView(WKHitTesting)

- (uint64_t)_web_findDescendantViewAtPoint:()WKHitTesting withEvent:
{
  v21 = &v23;
  v22 = 16;
  WebKit::collectDescendantViewsAtPoint(&v21, self, a5, a2, a3);
  v11 = v21 - 1;
  v12 = HIDWORD(v22);
  while (v12 * 8)
  {
    v13 = v11[v12];
    if (v13)
    {
      v14 = v13;
    }

    if ([(WKChildScrollView *)v13 conformsToProtocol:&unk_1F11DCAD0])
    {
      [(WKChildScrollView *)v13 convertPoint:self fromView:a2, a3];
      v5 = [(WKChildScrollView *)v13 hitTest:a5 withEvent:?];
      v15 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (!HIDWORD(v22))
      {
        goto LABEL_26;
      }

      if (WebKit::isScrolledBy(v13, v21[HIDWORD(v22) - 1], v16))
      {
        v15 = 0;
        v5 = v13;
      }

      else
      {
LABEL_11:
        if (_MergedGlobals_4 != -1)
        {
          dispatch_once(&_MergedGlobals_4, &__block_literal_global_5);
        }

        if (objc_opt_isKindOfClass() & 1) != 0 && ([(WKChildScrollView *)v13 superview], objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          superview = [(WKChildScrollView *)v13 superview];
          if (!HIDWORD(v22))
          {
LABEL_26:
            __break(0xC471u);
            JUMPOUT(0x19D8D9358);
          }

          isScrolledBy = WebKit::isScrolledBy(superview, v21[HIDWORD(v22) - 1], v18);
          v15 = isScrolledBy ^ 1;
          if (isScrolledBy)
          {
            v5 = v13;
          }
        }

        else
        {
          v15 = 1;
        }
      }
    }

    if (v13)
    {
    }

    --v12;
    if ((v15 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v5 = 0;
LABEL_25:
  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v10);
  return v5;
}

@end