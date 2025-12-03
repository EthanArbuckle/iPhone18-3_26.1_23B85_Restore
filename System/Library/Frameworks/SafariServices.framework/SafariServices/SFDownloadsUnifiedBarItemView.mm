@interface SFDownloadsUnifiedBarItemView
- (SFDownloadsUnifiedBarItemView)init;
@end

@implementation SFDownloadsUnifiedBarItemView

- (SFDownloadsUnifiedBarItemView)init
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SFDownloadsUnifiedBarItemView;
  v2 = [(SFDownloadsUnifiedBarItemView *)&v17 init];
  if (v2)
  {
    v3 = [SFDownloadsBarButtonItemView buttonWithType:1];
    buttonView = v2->_buttonView;
    v2->_buttonView = v3;

    [(SFDownloadsBarButtonItemView *)v2->_buttonView setProgress:-2.0];
    [(SFDownloadsBarButtonItemView *)v2->_buttonView setUserInteractionEnabled:0];
    contentView = [(SFUnifiedBarItemView *)v2 contentView];
    [contentView addSubview:v2->_buttonView];
    v6 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(SFDownloadsBarButtonItemView *)v2->_buttonView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[0] = v9;
    centerYAnchor = [(SFDownloadsBarButtonItemView *)v2->_buttonView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v6 activateConstraints:v13];

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFUnifiedBarItemView *)v2 setPlatterStyle:10];
    }

    [(SFDownloadsUnifiedBarItemView *)v2 sf_applyContentSizeCategoryLimitsForToolbarButton];
    v14 = _SFAccessibilityIdentifierForBarItem();
    [(SFDownloadsUnifiedBarItemView *)v2 setAccessibilityIdentifier:v14];

    [(SFDownloadsUnifiedBarItemView *)v2 setPointerStyleProvider:&__block_literal_global_75];
    v15 = v2;
  }

  return v2;
}

id __37__SFDownloadsUnifiedBarItemView_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69DCDD0];
  v5 = MEMORY[0x1E69DCDC8];
  v6 = a3;
  v7 = [v5 sf_shapeForToolbarButton:a2];
  v8 = [v4 styleWithEffect:v6 shape:v7];

  return v8;
}

@end