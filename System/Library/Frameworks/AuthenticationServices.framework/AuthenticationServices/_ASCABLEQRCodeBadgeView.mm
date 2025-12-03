@interface _ASCABLEQRCodeBadgeView
- (_ASCABLEQRCodeBadgeView)initWithFrame:(CGRect)frame;
- (void)_updateLayoutMetricsWithFrameSize:(CGSize)size;
- (void)layoutSubviews;
@end

@implementation _ASCABLEQRCodeBadgeView

- (_ASCABLEQRCodeBadgeView)initWithFrame:(CGRect)frame
{
  v37[6] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = _ASCABLEQRCodeBadgeView;
  v3 = [(_ASCABLEQRCodeBadgeView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_ASCABLEQRCodeBadgePlatterView);
    platterView = v3->_platterView;
    v3->_platterView = &v4->super;

    [(UIView *)v3->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeBadgeView *)v3 addSubview:v3->_platterView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _passkeyIcon = [(_ASCABLEQRCodeBadgeView *)v3 _passkeyIcon];
    v8 = [v6 initWithImage:_passkeyIcon];
    iconView = v3->_iconView;
    v3->_iconView = v8;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->_iconView setTintColor:whiteColor];

    [(UIImageView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeBadgeView *)v3 addSubview:v3->_iconView];
    centerXAnchor = [(UIImageView *)v3->_iconView centerXAnchor];
    centerXAnchor2 = [(UIView *)v3->_platterView centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    iconOffsetXConstraint = v3->_iconOffsetXConstraint;
    v3->_iconOffsetXConstraint = v13;

    centerYAnchor = [(UIImageView *)v3->_iconView centerYAnchor];
    centerYAnchor2 = [(UIView *)v3->_platterView centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    iconOffsetYConstraint = v3->_iconOffsetYConstraint;
    v3->_iconOffsetYConstraint = v17;

    v30 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)v3->_platterView leadingAnchor];
    leadingAnchor2 = [(_ASCABLEQRCodeBadgeView *)v3 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v33;
    trailingAnchor = [(UIView *)v3->_platterView trailingAnchor];
    trailingAnchor2 = [(_ASCABLEQRCodeBadgeView *)v3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[1] = v19;
    topAnchor = [(UIView *)v3->_platterView topAnchor];
    topAnchor2 = [(_ASCABLEQRCodeBadgeView *)v3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v22;
    bottomAnchor = [(UIView *)v3->_platterView bottomAnchor];
    bottomAnchor2 = [(_ASCABLEQRCodeBadgeView *)v3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)_updateLayoutMetricsWithFrameSize:(CGSize)size
{
  width = size.width;
  [(NSLayoutConstraint *)self->_iconOffsetXConstraint setConstant:size.width * -0.035, size.height];
  [(NSLayoutConstraint *)self->_iconOffsetYConstraint setConstant:width * -0.015];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:width * 0.62];
  [(UIImageView *)self->_iconView setPreferredSymbolConfiguration:v5];
}

@end