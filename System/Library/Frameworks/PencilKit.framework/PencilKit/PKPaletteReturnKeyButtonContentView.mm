@interface PKPaletteReturnKeyButtonContentView
- (PKPaletteReturnKeyButtonContentView)initWithFrame:(CGRect)frame;
- (void)_updateUI;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setText:(id)text;
- (void)setUseCompactLayout:(BOOL)layout;
@end

@implementation PKPaletteReturnKeyButtonContentView

- (PKPaletteReturnKeyButtonContentView)initWithFrame:(CGRect)frame
{
  v41[6] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PKPaletteReturnKeyButtonContentView;
  v3 = [(PKPaletteReturnKeyButtonContentView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setSpacing:4.0];
    [(PKPaletteReturnKeyButtonContentView *)v3 addSubview:v3->_stackView];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v6 = _MergedGlobals_5;
    v40 = _MergedGlobals_5;
    if (!_MergedGlobals_5)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __getTUICandidateLabelClass_block_invoke;
      v36[3] = &unk_1E82D6498;
      v36[4] = &v37;
      __getTUICandidateLabelClass_block_invoke(v36);
      v6 = v38[3];
    }

    v7 = v6;
    _Block_object_dispose(&v37, 8);
    v8 = objc_alloc_init(v6);
    label = v3->_label;
    v3->_label = v8;

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(TUICandidateLabel *)v3->_label setFont:v10];

    [(TUICandidateLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_label];
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v11;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->_imageView setTintColor:whiteColor];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_imageView];
    widthAnchor = [(TUICandidateLabel *)v3->_label widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:0.0];
    labelWidthConstraint = v3->_labelWidthConstraint;
    v3->_labelWidthConstraint = v15;

    heightAnchor = [(TUICandidateLabel *)v3->_label heightAnchor];
    v18 = [heightAnchor constraintEqualToConstant:0.0];
    labelHeightConstraint = v3->_labelHeightConstraint;
    v3->_labelHeightConstraint = v18;

    v29 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(PKPaletteReturnKeyButtonContentView *)v3 centerXAnchor];
    centerXAnchor2 = [(UIStackView *)v3->_stackView centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v41[0] = v32;
    centerYAnchor = [(PKPaletteReturnKeyButtonContentView *)v3 centerYAnchor];
    centerYAnchor2 = [(UIStackView *)v3->_stackView centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[1] = v20;
    widthAnchor2 = [(PKPaletteReturnKeyButtonContentView *)v3 widthAnchor];
    widthAnchor3 = [(UIStackView *)v3->_stackView widthAnchor];
    v23 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v41[2] = v23;
    heightAnchor2 = [(PKPaletteReturnKeyButtonContentView *)v3 heightAnchor];
    heightAnchor3 = [(UIStackView *)v3->_stackView heightAnchor];
    v26 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v41[3] = v26;
    v41[4] = v3->_labelWidthConstraint;
    v41[5] = v3->_labelHeightConstraint;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:6];
    [v29 activateConstraints:v27];

    [(PKPaletteReturnKeyButtonContentView *)v3 _updateUI];
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = self->_text;
  v6 = textCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    text = self->_text;
    self->_text = v8;

    [(PKPaletteReturnKeyButtonContentView *)self _updateUI];
  }

LABEL_9:
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(PKPaletteReturnKeyButtonContentView *)self _updateUI];
  }
}

- (void)setUseCompactLayout:(BOOL)layout
{
  if (self->_useCompactLayout != layout)
  {
    self->_useCompactLayout = layout;
    [(PKPaletteReturnKeyButtonContentView *)self _updateUI];
  }
}

- (void)_updateUI
{
  [(TUICandidateLabel *)self->_label setHidden:[(PKPaletteReturnKeyButtonContentView *)self useCompactLayout]];
  text = [(PKPaletteReturnKeyButtonContentView *)self text];
  [(TUICandidateLabel *)self->_label setText:text];

  [(TUICandidateLabel *)self->_label setLayoutOrientation:[(PKPaletteReturnKeyButtonContentView *)self layoutOrientation]];
  v4 = objc_opt_class();
  text2 = [(PKPaletteReturnKeyButtonContentView *)self text];
  font = [(TUICandidateLabel *)self->_label font];
  [v4 lineWidthForText:text2 font:font layoutOrientation:{-[PKPaletteReturnKeyButtonContentView layoutOrientation](self, "layoutOrientation")}];
  v8 = v7;

  layoutOrientation = [(PKPaletteReturnKeyButtonContentView *)self layoutOrientation];
  if (layoutOrientation)
  {
    v10 = 36.0;
  }

  else
  {
    v10 = v8;
  }

  if (!layoutOrientation)
  {
    v8 = 36.0;
  }

  [(UIStackView *)self->_stackView setAxis:layoutOrientation != 0];
  [(NSLayoutConstraint *)self->_labelWidthConstraint setConstant:v10];
  labelHeightConstraint = self->_labelHeightConstraint;

  [(NSLayoutConstraint *)labelHeightConstraint setConstant:v8];
}

@end