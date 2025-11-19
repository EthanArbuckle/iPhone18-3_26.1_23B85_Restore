@interface TUIBarChartView
+ (id)renderModelWithIdentifier:(id)a3 title:(id)a4 footer:(id)a5 columns:(int64_t)a6 cornerRadius:(double)a7 progress:(double)a8 spacing:(double)a9 color:(id)a10 backgroundColor:(id)a11 shadowColor:(id)a12;
- (void)_configureWithModel:(id)a3;
- (void)_setupBarChartBars;
- (void)_setupTextFields;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation TUIBarChartView

+ (id)renderModelWithIdentifier:(id)a3 title:(id)a4 footer:(id)a5 columns:(int64_t)a6 cornerRadius:(double)a7 progress:(double)a8 spacing:(double)a9 color:(id)a10 backgroundColor:(id)a11 shadowColor:(id)a12
{
  v21 = a12;
  v22 = a11;
  v23 = a10;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = objc_alloc_init(_TUIBarChartRenderModel);
  [(_TUIBarChartRenderModel *)v27 setTitle:v25];

  [(_TUIBarChartRenderModel *)v27 setFooter:v24];
  [(_TUIBarChartRenderModel *)v27 setColumns:a6];
  [(_TUIBarChartRenderModel *)v27 setCornerRadius:a7];
  [(_TUIBarChartRenderModel *)v27 setProgress:a8];
  [(_TUIBarChartRenderModel *)v27 setSpacing:a9];
  [(_TUIBarChartRenderModel *)v27 setColor:v23];

  [(_TUIBarChartRenderModel *)v27 setBackgroundColor:v22];
  [(_TUIBarChartRenderModel *)v27 setShadowColor:v21];

  v28 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierBarChartView" identifier:v26 submodel:v27];

  return v28;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUIBarChartView;
  v4 = a3;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(TUIBarChartView *)self _configureWithModel:v6];
}

- (void)_configureWithModel:(id)a3
{
  v18 = a3;
  objc_storeStrong(&self->_renderModel, a3);
  v5 = [(_TUIBarChartRenderModel *)self->_renderModel title];
  title = self->_title;
  self->_title = v5;

  v7 = [(_TUIBarChartRenderModel *)self->_renderModel footer];
  footer = self->_footer;
  self->_footer = v7;

  self->_columns = [v18 columns];
  [v18 cornerRadius];
  self->_cornerRadius = v9;
  [v18 progress];
  self->_progress = v10;
  [v18 spacing];
  self->_spacing = v11;
  v12 = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v13 = v12;
  if (!v12)
  {
    v13 = +[UIColor redColor];
  }

  objc_storeStrong(&self->_color, v13);
  if (!v12)
  {
  }

  v14 = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v15 = v14;
  if (!v14)
  {
    v15 = +[UIColor whiteColor];
  }

  objc_storeStrong(&self->_backgroundColor, v15);
  if (!v14)
  {
  }

  v16 = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v17 = v16;
  if (!v16)
  {
    v17 = +[UIColor yellowColor];
  }

  objc_storeStrong(&self->_shadowColor, v17);
  if (!v16)
  {
  }

  [(TUIBarChartView *)self _setupTextFields];
  [(TUIBarChartView *)self _setupBarChartBars];
}

- (void)_setupTextFields
{
  v3 = [(TUIBarChartView *)self title];
  v4 = [v3 length];

  if (v4)
  {
    [(TUIBarChartView *)self setCalculatedInsetForTitleText:20.0];
    [(TUIBarChartView *)self bounds];
    v6 = [[UILabel alloc] initWithFrame:{0.0, 0.0, v5, 20.0}];
    v7 = [(TUIBarChartView *)self title];
    v8 = [v7 uppercaseString];
    [v6 setText:v8];

    v9 = [UIFont boldSystemFontOfSize:12.0];
    [v6 setFont:v9];

    [v6 setNumberOfLines:1];
    [v6 setClipsToBounds:1];
    v10 = +[UIColor clearColor];
    [v6 setBackgroundColor:v10];

    v11 = +[UIColor blackColor];
    [v6 setTextColor:v11];

    [v6 setTextAlignment:1];
    [(TUIBarChartView *)self addSubview:v6];
  }

  v12 = [(TUIBarChartView *)self footer];
  v13 = [v12 length];

  if (v13)
  {
    [(TUIBarChartView *)self setCalculatedInsetForFooterText:20.0];
    [(TUIBarChartView *)self bounds];
    v15 = v14 + -20.0;
    [(TUIBarChartView *)self bounds];
    v22 = [[UILabel alloc] initWithFrame:{0.0, v15, v16, 20.0}];
    v17 = [(TUIBarChartView *)self footer];
    v18 = [v17 uppercaseString];
    [v22 setText:v18];

    v19 = [UIFont systemFontOfSize:12.0];
    [v22 setFont:v19];

    [v22 setNumberOfLines:1];
    [v22 setClipsToBounds:1];
    v20 = +[UIColor clearColor];
    [v22 setBackgroundColor:v20];

    v21 = +[UIColor grayColor];
    [v22 setTextColor:v21];

    [v22 setTextAlignment:1];
    [(TUIBarChartView *)self addSubview:v22];
  }
}

- (void)_setupBarChartBars
{
  [(TUIBarChartView *)self spacing];
  v3 = 6.0;
  if (v4 > 0.0)
  {
    [(TUIBarChartView *)self spacing];
    v3 = v5;
  }

  [(TUIBarChartView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TUIBarChartView *)self calculatedInsetForTitleText];
  v15 = v14;
  [(TUIBarChartView *)self calculatedInsetForFooterText];
  v17 = v13 - (v15 + v16);
  v18 = [(TUIBarChartView *)self columns];
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v17;
  v19 = (CGRectGetWidth(v32) - (v18 - 1) * v3) / v18;
  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18;
  }

  v21 = 0.0;
  do
  {
    [(TUIBarChartView *)self calculatedInsetForTitleText];
    v23 = v22;
    v24 = arc4random_uniform(0x65u) / -100.0;
    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v19;
    v33.size.height = v17;
    Height = CGRectGetHeight(v33);
    v26 = Height + Height * v24;
    v27 = +[CALayer layer];
    [v27 setBounds:{v21, v23, v19, v17}];
    [v27 setFrame:{v21, v23, v19, v17}];
    [v27 setBorderColor:{-[UIColor CGColor](self->_color, "CGColor")}];
    v28 = [(UIColor *)self->_color colorWithAlphaComponent:0.1];
    [v27 setBackgroundColor:{objc_msgSend(v28, "CGColor")}];

    [v27 setCornerRadius:self->_cornerRadius];
    [v27 setMasksToBounds:1];
    v29 = [(TUIBarChartView *)self layer];
    [v29 addSublayer:v27];

    v30 = +[CALayer layer];
    v31 = v23 + v26;
    [v30 setBounds:{v21, v31, v19, v17}];
    [v30 setFrame:{v21, v31, v19, v17}];
    [v30 setBorderColor:{-[UIColor CGColor](self->_color, "CGColor")}];
    [v30 setBackgroundColor:{objc_msgSend(v27, "borderColor")}];
    [v30 setCornerRadius:self->_cornerRadius];
    [v30 setMasksToBounds:1];
    [v27 addSublayer:v30];

    v21 = v3 + v19 + v21;
    --v20;
  }

  while (v20);
}

@end