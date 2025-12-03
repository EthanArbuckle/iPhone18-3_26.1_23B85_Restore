@interface NCWidgetMetrics
+ (double)defaultWidgetRowHeight;
+ (double)scaledValueForValue:(double)value;
+ (double)widgetRowHeight;
@end

@implementation NCWidgetMetrics

+ (double)scaledValueForValue:(double)value
{
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  if (keyWindow)
  {
    [MEMORY[0x277D75DA0] keyWindow];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v5 = ;
  traitCollection = [v5 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory && ((v8 = *MEMORY[0x277D76800], UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedAscending) || (v9 = v8, preferredContentSizeCategory, (preferredContentSizeCategory = v9) != 0)))
  {
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    v11 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
    [defaultMetrics scaledValueForValue:v11 compatibleWithTraitCollection:value];
    v13 = v12;
  }

  else
  {
    preferredContentSizeCategory = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [preferredContentSizeCategory _scaledValueForValue:value];
    v13 = v14;
  }

  return v13;
}

+ (double)defaultWidgetRowHeight
{
  if (defaultWidgetRowHeight_onceToken != -1)
  {
    +[NCWidgetMetrics defaultWidgetRowHeight];
  }

  return *&defaultWidgetRowHeight___defaultRowHeight;
}

double __41__NCWidgetMetrics_defaultWidgetRowHeight__block_invoke()
{
  result = *MEMORY[0x277D76F38];
  *&defaultWidgetRowHeight___defaultRowHeight = result;
  return result;
}

+ (double)widgetRowHeight
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__NCWidgetMetrics_widgetRowHeight__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (widgetRowHeight_onceToken != -1)
  {
    dispatch_once(&widgetRowHeight_onceToken, block);
  }

  result = *&__rowHeightForContentSizeCategory;
  if (*&__rowHeightForContentSizeCategory == 0.0)
  {
    [self defaultWidgetRowHeight];
    [self scaledValueForValue:?];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    __rowHeightForContentSizeCategory = v5;

    return *&__rowHeightForContentSizeCategory;
  }

  return result;
}

void __34__NCWidgetMetrics_widgetRowHeight__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__updateWidgetRowHeightForContentSizeCategory name:*MEMORY[0x277D76810] object:0];
}

@end