@interface UIResponder
- (uint64_t)_accessibilitySupportsRichTextEditing;
@end

@implementation UIResponder

- (uint64_t)_accessibilitySupportsRichTextEditing
{
  v5 = a1;
  if (a1)
  {
    v4 = 0;
    location = [v5 _accessibilityTextViewTextOperationResponder];
    v2 = 0;
    if (objc_opt_respondsToSelector())
    {
      v2 = [location hasRichlyEditableSelection];
    }

    v4 = v2 & 1;
    v6 = v2 & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end