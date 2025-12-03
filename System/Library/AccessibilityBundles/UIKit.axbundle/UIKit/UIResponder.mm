@interface UIResponder
- (uint64_t)_accessibilitySupportsRichTextEditing;
@end

@implementation UIResponder

- (uint64_t)_accessibilitySupportsRichTextEditing
{
  selfCopy = self;
  if (self)
  {
    v4 = 0;
    location = [selfCopy _accessibilityTextViewTextOperationResponder];
    hasRichlyEditableSelection = 0;
    if (objc_opt_respondsToSelector())
    {
      hasRichlyEditableSelection = [location hasRichlyEditableSelection];
    }

    v4 = hasRichlyEditableSelection & 1;
    v6 = hasRichlyEditableSelection & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end