@interface UIButton
- (void)cos_setTitle:(id)a3 pillButtonWidth:(double)a4;
@end

@implementation UIButton

- (void)cos_setTitle:(id)a3 pillButtonWidth:(double)a4
{
  v5 = a3;
  v6 = BPSPillButtonImage();
  [(UIButton *)self setBackgroundImage:v6 forState:0];
  [(UIButton *)self setTitle:v5 forState:0];

  v7 = [(UIButton *)self titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];

  v8 = [(UIButton *)self titleLabel];
  [v8 setTextAlignment:1];

  [(UIButton *)self setTitleEdgeInsets:0.0, 4.0, 0.0, 4.0];
  v28 = &off_100281978;
  v29 = &off_100281E90;
  v9 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  __asm { FMOV            V1.2D, #16.0 }

  v25 = _Q1;
  v26 = _Q1;
  v27 = _Q1;
  BPSScreenValueGetRelevantZoomValue();
  v16 = v15;

  v17 = [(UIButton *)self titleLabel:0x402E000000000000];
  v18 = [UIFont systemFontOfSize:UIFontSystemFontDesignAlternate weight:v16 design:UIFontWeightMedium];
  [v17 setFont:v18];

  [(UIButton *)self frame];
  v20 = v19;
  v22 = v21;
  [v6 size];
  [(UIButton *)self setFrame:v20, v22, v23, v24];
}

@end