@interface ATXAction(APUIWidgetAdditions)
- (id)subtitleForSuggestionsWidget;
@end

@implementation ATXAction(APUIWidgetAdditions)

- (id)subtitleForSuggestionsWidget
{
  if ([self isHeuristic])
  {
    actionSubtitle = [self actionSubtitle];
    if ([actionSubtitle length])
    {
      if (actionSubtitle)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  bundleId = [self bundleId];
  userActivityWebpageURL = [self userActivityWebpageURL];
  v5 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

  actionSubtitle = [MEMORY[0x277CEB3B8] localizedNameForBundle:v5];

LABEL_7:

  return actionSubtitle;
}

@end