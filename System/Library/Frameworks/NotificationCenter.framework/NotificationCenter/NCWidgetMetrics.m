@interface NCWidgetMetrics
+ (double)defaultWidgetRowHeight;
+ (double)scaledValueForValue:(double)a3;
+ (double)widgetRowHeight;
@end

@implementation NCWidgetMetrics

+ (double)scaledValueForValue:(double)a3
{
  v4 = [MEMORY[0x277D75DA0] keyWindow];
  if (v4)
  {
    [MEMORY[0x277D75DA0] keyWindow];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v5 = ;
  v6 = [v5 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v7 && ((v8 = *MEMORY[0x277D76800], UIContentSizeCategoryCompareToCategory(v7, *MEMORY[0x277D76800]) == NSOrderedAscending) || (v9 = v8, v7, (v7 = v9) != 0)))
  {
    v10 = [MEMORY[0x277D75520] defaultMetrics];
    v11 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v7];
    [v10 scaledValueForValue:v11 compatibleWithTraitCollection:a3];
    v13 = v12;
  }

  else
  {
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v7 _scaledValueForValue:a3];
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
  block[4] = a1;
  if (widgetRowHeight_onceToken != -1)
  {
    dispatch_once(&widgetRowHeight_onceToken, block);
  }

  result = *&__rowHeightForContentSizeCategory;
  if (*&__rowHeightForContentSizeCategory == 0.0)
  {
    [a1 defaultWidgetRowHeight];
    [a1 scaledValueForValue:?];
    v4 = [MEMORY[0x277D759A0] mainScreen];
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