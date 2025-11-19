@interface _ASCABLEQRCodeBadgeView
- (_ASCABLEQRCodeBadgeView)initWithFrame:(CGRect)a3;
- (void)_updateLayoutMetricsWithFrameSize:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation _ASCABLEQRCodeBadgeView

- (_ASCABLEQRCodeBadgeView)initWithFrame:(CGRect)a3
{
  v37[6] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = _ASCABLEQRCodeBadgeView;
  v3 = [(_ASCABLEQRCodeBadgeView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_ASCABLEQRCodeBadgePlatterView);
    platterView = v3->_platterView;
    v3->_platterView = &v4->super;

    [(UIView *)v3->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeBadgeView *)v3 addSubview:v3->_platterView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [(_ASCABLEQRCodeBadgeView *)v3 _passkeyIcon];
    v8 = [v6 initWithImage:v7];
    iconView = v3->_iconView;
    v3->_iconView = v8;

    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->_iconView setTintColor:v10];

    [(UIImageView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeBadgeView *)v3 addSubview:v3->_iconView];
    v11 = [(UIImageView *)v3->_iconView centerXAnchor];
    v12 = [(UIView *)v3->_platterView centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    iconOffsetXConstraint = v3->_iconOffsetXConstraint;
    v3->_iconOffsetXConstraint = v13;

    v15 = [(UIImageView *)v3->_iconView centerYAnchor];
    v16 = [(UIView *)v3->_platterView centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    iconOffsetYConstraint = v3->_iconOffsetYConstraint;
    v3->_iconOffsetYConstraint = v17;

    v30 = MEMORY[0x1E696ACD8];
    v35 = [(UIView *)v3->_platterView leadingAnchor];
    v34 = [(_ASCABLEQRCodeBadgeView *)v3 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v37[0] = v33;
    v32 = [(UIView *)v3->_platterView trailingAnchor];
    v31 = [(_ASCABLEQRCodeBadgeView *)v3 trailingAnchor];
    v19 = [v32 constraintEqualToAnchor:v31];
    v37[1] = v19;
    v20 = [(UIView *)v3->_platterView topAnchor];
    v21 = [(_ASCABLEQRCodeBadgeView *)v3 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v37[2] = v22;
    v23 = [(UIView *)v3->_platterView bottomAnchor];
    v24 = [(_ASCABLEQRCodeBadgeView *)v3 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v37[3] = v25;
    v37[4] = v3->_iconOffsetXConstraint;
    v37[5] = v3->_iconOffsetYConstraint;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
    [v30 activateConstraints:v26];

    v27 = v3;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _ASCABLEQRCodeBadgeView;
  [(_ASCABLEQRCodeBadgeView *)&v5 layoutSubviews];
  [(_ASCABLEQRCodeBadgeView *)self bounds];
  [(_ASCABLEQRCodeBadgeView *)self _updateLayoutMetricsWithFrameSize:v3, v4];
}

- (void)_updateLayoutMetricsWithFrameSize:(CGSize)a3
{
  width = a3.width;
  [(NSLayoutConstraint *)self->_iconOffsetXConstraint setConstant:a3.width * -0.035, a3.height];
  [(NSLayoutConstraint *)self->_iconOffsetYConstraint setConstant:width * -0.015];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:width * 0.62];
  [(UIImageView *)self->_iconView setPreferredSymbolConfiguration:v5];
}

@end