@interface _MKEnvironmentLabel
- (_MKEnvironmentLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation _MKEnvironmentLabel

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _MKEnvironmentLabel;
  [(_MKEnvironmentLabel *)&v6 layoutSubviews];
  [(_MKEnvironmentLabel *)self bounds];
  v4 = v3 * 0.5;
  layer = [(_MKEnvironmentLabel *)self layer];
  [layer setCornerRadius:v4];
}

- (void)sizeToFit
{
  [(UIView *)self _mapkit_fittingSize];
  [(_MKEnvironmentLabel *)self frame];
  v4 = v3;
  [(_MKEnvironmentLabel *)self frame];

  [(_MKEnvironmentLabel *)self setFrame:v4];
}

- (_MKEnvironmentLabel)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = _MKEnvironmentLabel;
  v3 = [(_MKEnvironmentLabel *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [(_MKEnvironmentLabel *)v3 setBackgroundColor:v7];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_label setTextColor:whiteColor];

    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [(UILabel *)v3->_label setFont:v9];

    [(UILabel *)v3->_label setTextAlignment:2];
    [(_MKEnvironmentLabel *)v3 addSubview:v3->_label];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(_MKEnvironmentLabel *)v3 addLayoutGuide:v10];
    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v11];

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:7 relatedBy:0 toItem:v3 attribute:8 multiplier:0.5 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v12];

    v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(_MKEnvironmentLabel *)v3 addLayoutGuide:v13];
    v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v13 attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v14];

    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v13 attribute:7 relatedBy:0 toItem:v3 attribute:8 multiplier:0.5 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v15];

    v16 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_label attribute:1 relatedBy:0 toItem:v10 attribute:2 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v16];

    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_label attribute:2 relatedBy:0 toItem:v13 attribute:1 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v17];

    v18 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_label attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v18];

    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_label attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    [(_MKEnvironmentLabel *)v3 addConstraint:v19];

    v20 = v3;
  }

  return v3;
}

@end