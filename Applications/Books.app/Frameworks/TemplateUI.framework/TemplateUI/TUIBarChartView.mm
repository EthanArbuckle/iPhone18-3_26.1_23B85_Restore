@interface TUIBarChartView
+ (id)renderModelWithIdentifier:(id)identifier title:(id)title footer:(id)footer columns:(int64_t)columns cornerRadius:(double)radius progress:(double)progress spacing:(double)spacing color:(id)self0 backgroundColor:(id)self1 shadowColor:(id)self2;
- (void)_configureWithModel:(id)model;
- (void)_setupBarChartBars;
- (void)_setupTextFields;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation TUIBarChartView

+ (id)renderModelWithIdentifier:(id)identifier title:(id)title footer:(id)footer columns:(int64_t)columns cornerRadius:(double)radius progress:(double)progress spacing:(double)spacing color:(id)self0 backgroundColor:(id)self1 shadowColor:(id)self2
{
  shadowColorCopy = shadowColor;
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  footerCopy = footer;
  titleCopy = title;
  identifierCopy = identifier;
  v27 = objc_alloc_init(_TUIBarChartRenderModel);
  [(_TUIBarChartRenderModel *)v27 setTitle:titleCopy];

  [(_TUIBarChartRenderModel *)v27 setFooter:footerCopy];
  [(_TUIBarChartRenderModel *)v27 setColumns:columns];
  [(_TUIBarChartRenderModel *)v27 setCornerRadius:radius];
  [(_TUIBarChartRenderModel *)v27 setProgress:progress];
  [(_TUIBarChartRenderModel *)v27 setSpacing:spacing];
  [(_TUIBarChartRenderModel *)v27 setColor:colorCopy];

  [(_TUIBarChartRenderModel *)v27 setBackgroundColor:backgroundColorCopy];
  [(_TUIBarChartRenderModel *)v27 setShadowColor:shadowColorCopy];

  v28 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierBarChartView" identifier:identifierCopy submodel:v27];

  return v28;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = TUIBarChartView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(TUIBarChartView *)self _configureWithModel:submodel];
}

- (void)_configureWithModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_renderModel, model);
  title = [(_TUIBarChartRenderModel *)self->_renderModel title];
  title = self->_title;
  self->_title = title;

  footer = [(_TUIBarChartRenderModel *)self->_renderModel footer];
  footer = self->_footer;
  self->_footer = footer;

  self->_columns = [modelCopy columns];
  [modelCopy cornerRadius];
  self->_cornerRadius = v9;
  [modelCopy progress];
  self->_progress = v10;
  [modelCopy spacing];
  self->_spacing = v11;
  color = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v13 = color;
  if (!color)
  {
    v13 = +[UIColor redColor];
  }

  objc_storeStrong(&self->_color, v13);
  if (!color)
  {
  }

  color2 = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v15 = color2;
  if (!color2)
  {
    v15 = +[UIColor whiteColor];
  }

  objc_storeStrong(&self->_backgroundColor, v15);
  if (!color2)
  {
  }

  color3 = [(_TUIBarChartRenderModel *)self->_renderModel color];
  v17 = color3;
  if (!color3)
  {
    v17 = +[UIColor yellowColor];
  }

  objc_storeStrong(&self->_shadowColor, v17);
  if (!color3)
  {
  }

  [(TUIBarChartView *)self _setupTextFields];
  [(TUIBarChartView *)self _setupBarChartBars];
}

- (void)_setupTextFields
{
  title = [(TUIBarChartView *)self title];
  v4 = [title length];

  if (v4)
  {
    [(TUIBarChartView *)self setCalculatedInsetForTitleText:20.0];
    [(TUIBarChartView *)self bounds];
    v6 = [[UILabel alloc] initWithFrame:{0.0, 0.0, v5, 20.0}];
    title2 = [(TUIBarChartView *)self title];
    uppercaseString = [title2 uppercaseString];
    [v6 setText:uppercaseString];

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

  footer = [(TUIBarChartView *)self footer];
  v13 = [footer length];

  if (v13)
  {
    [(TUIBarChartView *)self setCalculatedInsetForFooterText:20.0];
    [(TUIBarChartView *)self bounds];
    v15 = v14 + -20.0;
    [(TUIBarChartView *)self bounds];
    v22 = [[UILabel alloc] initWithFrame:{0.0, v15, v16, 20.0}];
    footer2 = [(TUIBarChartView *)self footer];
    uppercaseString2 = [footer2 uppercaseString];
    [v22 setText:uppercaseString2];

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
  columns = [(TUIBarChartView *)self columns];
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v17;
  v19 = (CGRectGetWidth(v32) - (columns - 1) * v3) / columns;
  if (columns <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = columns;
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
    layer = [(TUIBarChartView *)self layer];
    [layer addSublayer:v27];

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