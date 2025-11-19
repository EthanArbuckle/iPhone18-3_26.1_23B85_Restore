@interface AMUIPasscodeButton
- (AMUIPasscodeButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AMUIPasscodeButton

- (AMUIPasscodeButton)initWithFrame:(CGRect)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = AMUIPasscodeButton;
  v3 = [(AMUIPasscodeButton *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(AMUIPasscodeButton *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    pillView = v3->_pillView;
    v3->_pillView = v5;

    [(UIView *)v3->_pillView setAlpha:0.1];
    v7 = v3->_pillView;
    v8 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = [(UIView *)v3->_pillView layer];
    v10 = *MEMORY[0x277CDA138];
    [v9 setCornerCurve:*MEMORY[0x277CDA138]];

    [(AMUIPasscodeButton *)v3 addSubview:v3->_pillView];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    backdropView = v3->_backdropView;
    v3->_backdropView = v11;

    v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v13 setName:@"saturation"];
    [v13 setValue:&unk_28519CD50 forKey:@"inputAmount"];
    v14 = objc_alloc_init(MEMORY[0x277CD9E08]);
    backdropLayer = v3->_backdropLayer;
    v3->_backdropLayer = v14;

    v16 = v3->_backdropLayer;
    v44[0] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [(CABackdropLayer *)v16 setFilters:v17];

    [(CABackdropLayer *)v3->_backdropLayer setCornerCurve:v10];
    v18 = [(UIView *)v3->_backdropView layer];
    [v18 addSublayer:v3->_backdropLayer];

    [(AMUIPasscodeButton *)v3 addSubview:v3->_backdropView];
    v19 = objc_alloc(MEMORY[0x277D756B8]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v20;

    v22 = v3->_titleLabel;
    v23 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.48];
    [(UILabel *)v22 setTextColor:v23];

    v24 = [(UILabel *)v3->_titleLabel layer];
    v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [v24 setCompositingFilter:v25];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AMUIPasscodeButton *)v3 addSubview:v3->_titleLabel];
    v26 = MEMORY[0x277CCAAD0];
    v27 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v3->_titleLabel, 0);
    v28 = [v26 constraintsWithVisualFormat:@"|-(>=16)-[_titleLabel]-(>=16)-|" options:0 metrics:0 views:v27];
    [v26 activateConstraints:v28];

    v29 = MEMORY[0x277CCAAD0];
    v30 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v3->_titleLabel, 0);
    v31 = [v29 constraintsWithVisualFormat:@"V:|-(14)-[_titleLabel]-(14)-|" options:0 metrics:0 views:v30];
    [v29 activateConstraints:v31];

    v32 = MEMORY[0x277CCAAD0];
    v33 = [(UILabel *)v3->_titleLabel centerXAnchor];
    v34 = [(AMUIPasscodeButton *)v3 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v43[0] = v35;
    v36 = [(UILabel *)v3->_titleLabel centerYAnchor];
    v37 = [(AMUIPasscodeButton *)v3 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v43[1] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v32 activateConstraints:v39];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = AMUIPasscodeButton;
  [(AMUIPasscodeButton *)&v12 setHighlighted:?];
  objc_initWeak(&location, self->_pillView);
  v5 = objc_alloc(MEMORY[0x277D75D40]);
  if (v3)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.85;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__AMUIPasscodeButton_setHighlighted___block_invoke;
  v8[3] = &unk_278C75ED0;
  objc_copyWeak(&v9, &location);
  v10 = v3;
  v7 = [v5 initWithDuration:v8 controlPoint1:v6 controlPoint2:0.0 animations:{0.0, 0.0, 1.0}];
  [v7 startAnimation];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__AMUIPasscodeButton_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v3 = 0.1;
  if (*(a1 + 40))
  {
    v3 = 0.65;
  }

  [WeakRetained setAlpha:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AMUIPasscodeButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AMUIPasscodeButton;
  [(AMUIPasscodeButton *)&v7 layoutSubviews];
  [(AMUIPasscodeButton *)self bounds];
  v4 = v3 * 0.5;
  [(UIView *)self->_pillView setFrame:?];
  v5 = [(UIView *)self->_pillView layer];
  [v5 setCornerRadius:v4];

  backdropLayer = self->_backdropLayer;
  [(UIView *)self->_pillView frame];
  [(CABackdropLayer *)backdropLayer setFrame:?];
  [(CABackdropLayer *)self->_backdropLayer setCornerRadius:v4];
}

@end