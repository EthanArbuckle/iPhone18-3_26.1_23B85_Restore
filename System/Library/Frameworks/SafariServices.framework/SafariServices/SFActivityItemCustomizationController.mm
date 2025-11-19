@interface SFActivityItemCustomizationController
@end

@implementation SFActivityItemCustomizationController

id __88___SFActivityItemCustomizationController__customizationGroupsForActivityViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = 0;
  if (v2 <= 1)
  {
    if (v2 > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v2 == 2 || v2 == 3 || v2 == 4)
  {
LABEL_7:
    v3 = _WBSLocalizedString();
  }

LABEL_8:

  return v3;
}

uint64_t __88___SFActivityItemCustomizationController__customizationGroupsForActivityViewController___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 24) = [*(a1 + 32) _contentTypeForAllowedContentAtIndex:{objc_msgSend(a2, "selectedOptionIndex")}];
  v3 = *(a1 + 32);

  return [v3 _customizationsDidChange];
}

uint64_t __54___SFActivityItemCustomizationController_setDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (*(a1 + 40) == 1)
      {
        v3 = *(a1 + 41) ^ 1;
        return v3 & 1;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3 & 1;
      }

      if (*(a1 + 40) == 1)
      {
        v3 = *(a1 + 42);
        return v3 & 1;
      }
    }

    v3 = 0;
    return v3 & 1;
  }

  if (a2 == 3)
  {
    v4 = [[_SFWebArchiveProvider alloc] initWithWebView:*(a1 + 32)];
    v5 = v4;
    if (*(a1 + 43))
    {
      v3 = 0;
    }

    else
    {
      v3 = [(_SFWebArchiveProvider *)v4 canGenerateWebArchive];
    }
  }

  else if (a2 == 4)
  {
    v3 = *(a1 + 44);
  }

  else
  {
    v3 = a2 != 5;
  }

  return v3 & 1;
}

@end