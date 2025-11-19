@interface AMUIInfographIconListLayout
+ (BOOL)_shouldUseLegacyContentMargins;
- (AMUIInfographIconListLayout)init;
- (AMUIInfographIconListLayout)initWithRootFolderVisualConfiguration:(id)a3;
- (AMUIInfographIconListLayout)initWithRootFolderVisualConfiguration:(id)a3 screenType:(unint64_t)a4;
- (CGSize)iconSpacingForOrientation:(int64_t)a3;
- (SBHIconAccessoryVisualConfiguration)iconAccessoryVisualConfiguration;
- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses;
- (SBHRootFolderVisualConfiguration)rootFolderVisualConfiguration;
- (SBIconImageInfo)_defaultSmallWidgetIconImageInfo;
- (UIEdgeInsets)_contentMarginsForMarginRatio:(double)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (UIEdgeInsets)widgetContentMargins;
- (UIEdgeInsets)widgetContentMarginsWithBackgroundRemoved;
- (double)_widgetCornerRadius;
- (double)_widgetDimensionForScreenType:(unint64_t)a3;
- (double)widgetScaleFactor;
- (id)_defaultIconListLayout;
- (void)iconListView:(id)a3 willLayoutIconView:(id)a4;
@end

@implementation AMUIInfographIconListLayout

- (AMUIInfographIconListLayout)initWithRootFolderVisualConfiguration:(id)a3 screenType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMUIInfographIconListLayout;
  v8 = [(AMUIInfographIconListLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualConfiguration, a3);
    v9->_screenType = a4;
  }

  return v9;
}

- (AMUIInfographIconListLayout)initWithRootFolderVisualConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AMUIInfographIconListLayout *)self initWithRootFolderVisualConfiguration:v4 screenType:SBHScreenTypeForCurrentDevice()];

  return v5;
}

- (AMUIInfographIconListLayout)init
{
  v3 = objc_alloc_init(MEMORY[0x277D66298]);
  v4 = [(AMUIInfographIconListLayout *)self initWithRootFolderVisualConfiguration:v3];

  return v4;
}

- (SBHRootFolderVisualConfiguration)rootFolderVisualConfiguration
{
  v2 = [(SBHRootFolderVisualConfiguration *)self->_visualConfiguration copy];

  return v2;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  p_screenType = &self->_screenType;
  screenType = self->_screenType;
  if (screenType < 0x1F && ((0x7FFFFFFBu >> screenType) & 1) != 0)
  {
    v5 = dbl_23F3C1160[screenType];
    v6 = dbl_23F3C1258[screenType];
  }

  else
  {
    v7 = AMUILogInfograph();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographIconListLayout layoutInsetsForOrientation:?];
    }

    v5 = 70.0;
    v6 = 70.0;
  }

  v8 = v6;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v5;
  result.top = v6;
  return result;
}

- (SBHIconAccessoryVisualConfiguration)iconAccessoryVisualConfiguration
{
  v3 = [(AMUIInfographIconListLayout *)self _defaultIconListLayout];
  v4 = [v3 iconAccessoryVisualConfiguration];
  [(AMUIInfographIconListLayout *)self widgetScaleFactor];
  v6 = v5;
  [v4 size];
  v10 = v8;
  v11 = v7;
  CGAffineTransformMakeScale(&v12, v6, v6);
  [v4 setSize:{vmlaq_n_f64(vmulq_n_f64(*&v12.c, v10), *&v12.a, v11)}];

  return v4;
}

- (double)_widgetDimensionForScreenType:(unint64_t)a3
{
  SBHGetScreenSpecification();
  [(AMUIInfographIconListLayout *)self layoutInsetsForOrientation:3];
  return 0.0 - v4 - v5;
}

- (double)_widgetCornerRadius
{
  [(AMUIInfographIconListLayout *)self _defaultSmallWidgetIconImageInfo];
  v4 = v3;
  [(AMUIInfographIconListLayout *)self widgetScaleFactor];
  return v4 * v5;
}

- (id)_defaultIconListLayout
{
  v2 = [objc_alloc(MEMORY[0x277D66160]) initWithScreenType:self->_screenType];
  v3 = [v2 layoutForIconLocation:*MEMORY[0x277D666D0]];

  return v3;
}

- (SBIconImageInfo)_defaultSmallWidgetIconImageInfo
{
  v3 = [(AMUIInfographIconListLayout *)self _defaultIconListLayout];
  [v3 iconImageInfoForGridSizeClass:*MEMORY[0x277D66548]];

  return result;
}

- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses
{
  v2 = objc_alloc(MEMORY[0x277D661B8]);
  v3 = [v2 initWithGridSizeClass:*MEMORY[0x277D66548]];

  return v3;
}

- (double)widgetScaleFactor
{
  [(AMUIInfographIconListLayout *)self _widgetDimensionForScreenType:self->_screenType];
  v4 = v3;
  [(AMUIInfographIconListLayout *)self _defaultSmallWidgetIconImageInfo];
  return v4 / v5;
}

- (UIEdgeInsets)widgetContentMargins
{
  [(AMUIInfographIconListLayout *)self _contentMarginsForMarginRatio:0.101265823];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)widgetContentMarginsWithBackgroundRemoved
{
  [(AMUIInfographIconListLayout *)self _contentMarginsForMarginRatio:0.0443037975];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_contentMarginsForMarginRatio:(double)a3
{
  if ([objc_opt_class() _shouldUseLegacyContentMargins])
  {
    [(AMUIInfographIconListLayout *)self _defaultSmallWidgetIconImageInfo];
    screenType = self->_screenType;
    SBHGetScreenSpecification();
    BSFloatRoundForScale();
  }

  else
  {
    [(AMUIInfographIconListLayout *)self _widgetDimensionForScreenType:self->_screenType];
    v6 = v7 * a3;
  }

  v8 = v6;
  v9 = v6;
  v10 = v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v6;
  return result;
}

- (CGSize)iconSpacingForOrientation:(int64_t)a3
{
  p_screenType = &self->_screenType;
  screenType = self->_screenType;
  if (screenType < 0x1F && ((0x7FFFFFFBu >> screenType) & 1) != 0)
  {
    v5 = dbl_23F3C1350[screenType];
  }

  else
  {
    v6 = AMUILogInfograph();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographIconListLayout iconSpacingForOrientation:?];
    }

    v5 = 40.0;
  }

  v7 = v5;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)iconListView:(id)a3 willLayoutIconView:(id)a4
{
  v4 = a4;
  v10 = [v4 icon];
  if ([v10 isPlaceholder])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v5 = ;
  v6 = [v4 contentContainerView];
  [v6 setBackgroundColor:v5];

  v7 = [v4 contentContainerView];
  [v4 iconImageInfo];
  [v7 _setContinuousCornerRadius:v8];

  v9 = [v4 contentContainerView];

  [v9 setNeedsLayout];
}

+ (BOOL)_shouldUseLegacyContentMargins
{
  if (_shouldUseLegacyContentMargins_onceToken != -1)
  {
    +[AMUIInfographIconListLayout _shouldUseLegacyContentMargins];
  }

  return _shouldUseLegacyContentMargins___shouldUseLegacyContentMargins;
}

uint64_t __61__AMUIInfographIconListLayout__shouldUseLegacyContentMargins__block_invoke()
{
  result = _os_feature_enabled_impl();
  _shouldUseLegacyContentMargins___shouldUseLegacyContentMargins = result ^ 1;
  return result;
}

- (void)layoutInsetsForOrientation:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = SBHStringForScreenType();
  OUTLINED_FUNCTION_0_2(&dword_23F38B000, v3, v4, "Requesting layout insets for unexpected screen type: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)iconSpacingForOrientation:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = SBHStringForScreenType();
  OUTLINED_FUNCTION_0_2(&dword_23F38B000, v3, v4, "Requesting icon spacing for unexpected screen type: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end