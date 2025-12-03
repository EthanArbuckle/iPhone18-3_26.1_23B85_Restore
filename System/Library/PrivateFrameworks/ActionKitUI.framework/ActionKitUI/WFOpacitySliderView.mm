@interface WFOpacitySliderView
- (UILabel)opacityLabel;
- (WFOpacitySlider)slider;
- (WFOpacitySliderView)init;
- (double)opacity;
- (void)didChangeOpacityValue:(id)value;
- (void)layoutSubviews;
- (void)reset;
@end

@implementation WFOpacitySliderView

- (UILabel)opacityLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_opacityLabel);

  return WeakRetained;
}

- (WFOpacitySlider)slider
{
  WeakRetained = objc_loadWeakRetained(&self->_slider);

  return WeakRetained;
}

- (void)reset
{
  slider = [(WFOpacitySliderView *)self slider];
  LODWORD(v4) = 1.0;
  [slider setValue:v4];

  slider2 = [(WFOpacitySliderView *)self slider];
  [(WFOpacitySliderView *)self didChangeOpacityValue:slider2];
}

- (double)opacity
{
  slider = [(WFOpacitySliderView *)self slider];
  [slider value];
  v4 = v3;

  return v4;
}

- (void)didChangeOpacityValue:(id)value
{
  v4 = MEMORY[0x277CCACA8];
  [value value];
  v6 = [v4 stringWithFormat:@"%0.0f%%", roundf(v5 * 100.0)];
  opacityLabel = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel setText:v6];

  [(WFOpacitySliderView *)self sendActionsForControlEvents:4096];

  [(WFOpacitySliderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = WFOpacitySliderView;
  [(WFOpacitySliderView *)&v49 layoutSubviews];
  slider = [(WFOpacitySliderView *)self slider];
  [slider bounds];
  [slider trackRectForBounds:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [slider bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [slider value];
  LODWORD(v48) = v20;
  [slider thumbRectForBounds:v13 trackRect:v15 value:{v17, v19, v5, v7, v9, v11, v48}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [slider frame];
  v30 = v22 + v29;
  opacityLabel = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel sizeToFit];

  v50.origin.x = v30;
  v50.origin.y = v24;
  v50.size.width = v26;
  v50.size.height = v28;
  MidX = CGRectGetMidX(v50);
  opacityLabel2 = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel2 frame];
  v35 = MidX + v34 * -0.5;
  [slider frame];
  v37 = v36;
  opacityLabel3 = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel3 frame];
  v40 = v37 - (v39 + 5.0);
  opacityLabel4 = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel4 frame];
  v43 = v42;
  opacityLabel5 = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel5 frame];
  v46 = v45;
  opacityLabel6 = [(WFOpacitySliderView *)self opacityLabel];
  [opacityLabel6 setFrame:{v35, v40, v43, v46}];
}

- (WFOpacitySliderView)init
{
  v34.receiver = self;
  v34.super_class = WFOpacitySliderView;
  v2 = [(WFOpacitySliderView *)&v34 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D75D68]);
    v4 = [MEMORY[0x277D75210] effectWithStyle:2];
    v5 = [v3 initWithEffect:v4];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFOpacitySliderView *)v2 addSubview:v5];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.149019608 green:0.196078431 blue:0.219607843 alpha:0.75];
    [v6 setBackgroundColor:v7];

    contentView = [v5 contentView];
    [contentView addSubview:v6];

    v9 = MEMORY[0x277CCAAD0];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Blurtintview.isa, v6, 0);
    v11 = [v9 constraintsWithVisualFormat:@"H:|[blurTintView]|" options:0 metrics:0 views:v10];
    [v5 addConstraints:v11];

    v12 = MEMORY[0x277CCAAD0];
    v13 = _NSDictionaryOfVariableBindings(&cfstr_Blurtintview.isa, v6, 0);
    v14 = [v12 constraintsWithVisualFormat:@"V:|[blurTintView]|" options:0 metrics:0 views:v13];
    [v5 addConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    v16 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, v5, 0);
    v17 = [v15 constraintsWithVisualFormat:@"H:|[backgroundView]|" options:0 metrics:0 views:v16];
    [(WFOpacitySliderView *)v2 addConstraints:v17];

    v18 = MEMORY[0x277CCAAD0];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, v5, 0);
    v20 = [v18 constraintsWithVisualFormat:@"V:|[backgroundView]|" options:0 metrics:0 views:v19];
    [(WFOpacitySliderView *)v2 addConstraints:v20];

    v21 = objc_alloc_init(WFOpacitySlider);
    [(WFOpacitySlider *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"OverlayImageOpacitySliderThumbImage"];
    uIImage = [v22 UIImage];
    [(WFOpacitySlider *)v21 setThumbImage:uIImage forState:0];

    v24 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.756862745 blue:0.0274509804 alpha:1.0];
    [(WFOpacitySlider *)v21 setTintColor:v24];

    v25 = [MEMORY[0x277D75348] colorWithRed:0.22745098 green:0.274509804 blue:0.298039216 alpha:0.75];
    [(WFOpacitySlider *)v21 setMaximumTrackTintColor:v25];

    [(WFOpacitySlider *)v21 addTarget:v2 action:sel_didChangeOpacityValue_ forControlEvents:4096];
    [(WFOpacitySliderView *)v2 addSubview:v21];
    objc_storeWeak(&v2->_slider, v21);
    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    v27 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [v26 setFont:v27];

    v28 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.756862745 blue:0.0274509804 alpha:0.699999988];
    [v26 setTextColor:v28];

    [v26 setTextAlignment:1];
    [(WFOpacitySliderView *)v2 addSubview:v26];
    objc_storeWeak(&v2->_opacityLabel, v26);
    v29 = [MEMORY[0x277CCAAD0] constraintWithItem:v21 attribute:7 relatedBy:0 toItem:v2 attribute:7 multiplier:0.699999988 constant:1.0];
    [(WFOpacitySliderView *)v2 addConstraint:v29];

    v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v21 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
    [(WFOpacitySliderView *)v2 addConstraint:v30];

    v31 = [MEMORY[0x277CCAAD0] constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v2 attribute:10 multiplier:1.0 constant:0.0];
    [(WFOpacitySliderView *)v2 addConstraint:v31];

    [(WFOpacitySliderView *)v2 reset];
    v32 = v2;
  }

  return v2;
}

@end