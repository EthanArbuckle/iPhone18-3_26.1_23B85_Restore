@interface ATXAction(APUIWidgetAdditions)
- (id)subtitleForSuggestionsWidget;
@end

@implementation ATXAction(APUIWidgetAdditions)

- (id)subtitleForSuggestionsWidget
{
  if ([a1 isHeuristic])
  {
    v2 = [a1 actionSubtitle];
    if ([v2 length])
    {
      if (v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v3 = [a1 bundleId];
  v4 = [a1 userActivityWebpageURL];
  v5 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

  v2 = [MEMORY[0x277CEB3B8] localizedNameForBundle:v5];

LABEL_7:

  return v2;
}

@end