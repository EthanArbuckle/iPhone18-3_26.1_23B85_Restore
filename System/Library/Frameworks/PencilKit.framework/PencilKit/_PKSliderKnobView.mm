@interface _PKSliderKnobView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_PKSliderKnobView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _PKSliderKnobView

- (_PKSliderKnobView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _PKSliderKnobView;
  v3 = [(_PKSliderKnobView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v5 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UISliderKnob"];
  v6 = [v4 initWithImage:v5];
  knobImageView = v3->_knobImageView;
  v3->_knobImageView = v6;

  [(_PKSliderKnobView *)v3 addSubview:v3->_knobImageView];
  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 28.0;
  v4 = 28.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _PKSliderKnobView;
  [(_PKSliderKnobView *)&v15 layoutSubviews];
  v3 = [(_PKSliderKnobView *)self knobImageView];
  v4 = [v3 image];
  [v4 size];

  [(_PKSliderKnobView *)self bounds];
  UIRectGetCenter();
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  UIRectCenteredAboutPointScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(_PKSliderKnobView *)self knobImageView];
  [v14 setFrame:{v7, v9, v11, v13}];
}

@end