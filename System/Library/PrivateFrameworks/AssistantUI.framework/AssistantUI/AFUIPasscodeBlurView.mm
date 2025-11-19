@interface AFUIPasscodeBlurView
- (AFUIPasscodeBlurView)initWithFrame:(CGRect)a3;
- (void)_setPlusDBackgroundColorWithWeighting:(double)a3;
- (void)layoutSubviews;
@end

@implementation AFUIPasscodeBlurView

- (AFUIPasscodeBlurView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = AFUIPasscodeBlurView;
  v3 = [(AFUIPasscodeBlurView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277D26720];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 materialViewWithRecipeNamed:@"dashBoardPasscodeBackground" inBundle:v5 configuration:1 initialWeighting:&__block_literal_global_9 scaleAdjustment:1.0];
    materialView = v3->_materialView;
    v3->_materialView = v6;

    [(MTMaterialView *)v3->_materialView setShouldCrossfade:1];
    [(AFUIPasscodeBlurView *)v3 addSubview:v3->_materialView];
    v8 = [(AFUIPasscodeBlurView *)v3 layer];
    [v8 setAllowsGroupBlending:0];

    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    lightenSourceOverView = v3->_lightenSourceOverView;
    v3->_lightenSourceOverView = v9;

    v11 = v3->_lightenSourceOverView;
    v12 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
    [(UIView *)v11 setBackgroundColor:v12];

    v13 = [(UIView *)v3->_lightenSourceOverView layer];
    v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA550]];
    [v13 setCompositingFilter:v14];

    [(AFUIPasscodeBlurView *)v3 addSubview:v3->_lightenSourceOverView];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    plusDView = v3->_plusDView;
    v3->_plusDView = v15;

    [(AFUIPasscodeBlurView *)v3 _setPlusDBackgroundColorWithWeighting:1.0];
    v17 = [(UIView *)v3->_plusDView layer];
    v18 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [v17 setCompositingFilter:v18];

    [(AFUIPasscodeBlurView *)v3 addSubview:v3->_plusDView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AFUIPasscodeBlurView;
  [(AFUIPasscodeBlurView *)&v11 layoutSubviews];
  [(AFUIPasscodeBlurView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MTMaterialView *)self->_materialView setFrame:?];
  [(UIView *)self->_lightenSourceOverView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_plusDView setFrame:v4, v6, v8, v10];
}

- (void)_setPlusDBackgroundColorWithWeighting:(double)a3
{
  plusDView = self->_plusDView;
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:a3 * 0.2];
  [(UIView *)plusDView setBackgroundColor:v4];
}

@end