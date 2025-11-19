@interface PKMathTypesetViewController
+ (double)fontSize;
- (CGSize)preferredContentSize;
- (void)dealloc;
- (void)loadView;
- (void)viewTapped;
@end

@implementation PKMathTypesetViewController

+ (double)fontSize
{
  objc_opt_self();
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v0 pointSize];
  v2 = v1;

  return v2;
}

- (void)loadView
{
  p_contentSize = &self->_contentSize;
  v4 = MEMORY[0x1E695F060];
  self->_contentSize = *MEMORY[0x1E695F060];
  v5 = [MEMORY[0x1E695DF70] array];
  typesetViewController = self->_typesetViewController;
  if (typesetViewController)
  {
    v69 = [(UIViewController *)typesetViewController view];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v69 setBackgroundColor:v7];

LABEL_5:
    [(UIImageView *)v69 intrinsicContentSize];
    v10 = v9;
    v12 = v11;
    p_contentSize->width = v9;
    p_contentSize->height = v11;
    goto LABEL_6;
  }

  typesetImageView = self->_typesetImageView;
  if (typesetImageView)
  {
    v69 = typesetImageView;
    [(UIImageView *)v69 sizeToFit];
    goto LABEL_5;
  }

  v69 = 0;
  v10 = *v4;
  v12 = v4[1];
LABEL_6:
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v14 = +[PKMathTypesetViewController fontSize];
  v15 = MEMORY[0x1E695EFF8];
  if (self->_footerString)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footerLabel = self->_footerLabel;
    self->_footerLabel = v16;

    [(UILabel *)self->_footerLabel setText:self->_footerString];
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v19 = MEMORY[0x1E69DB878];
    v20 = [v18 fontDescriptor];
    v21 = [v20 fontDescriptorWithSymbolicTraits:2];
    [v18 pointSize];
    v22 = [v19 fontWithDescriptor:v21 size:?];

    [(UILabel *)self->_footerLabel setFont:v22];
    [(UILabel *)self->_footerLabel setTextColor:self->_footerColor];
    [(UILabel *)self->_footerLabel setTextAlignment:1];
    v15 = MEMORY[0x1E695EFF8];
  }

  v23 = *v15;
  v24 = v15[1];
  v25 = self->_footerLabel;
  if (v25)
  {
    v26 = v14 * 0.5;
    [(UILabel *)v25 setNumberOfLines:1];
    [(UILabel *)self->_footerLabel sizeToFit];
    [(UILabel *)self->_footerLabel bounds];
    v29 = v28 + v26 * 2.0;
    if (v12 <= v26 + v26)
    {
      v30 = v12;
    }

    else
    {
      v30 = v12 - v26;
    }

    p_contentSize->height = p_contentSize->height + v27;
    if (v69)
    {
      if (v29 <= v10)
      {
        v31 = (v10 - v29) * 0.5;
      }

      else
      {
        v23 = (v29 - v10) * 0.5;
        p_contentSize->width = v29;
        v31 = 0.0;
      }
    }

    else
    {
      p_contentSize->width = v29;
      p_contentSize->height = v27 + v26 * 2.0;
      v31 = 0.0;
      v30 = v26;
    }

    [(UILabel *)self->_footerLabel setFrame:v31, v30];
  }

  [(UIImageView *)v69 setFrame:v23, v24, v10, v12];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v13 widthAnchor];
  v33 = [v32 constraintEqualToConstant:p_contentSize->width];
  [v5 addObject:v33];

  v34 = [v13 heightAnchor];
  v35 = [v34 constraintEqualToConstant:p_contentSize->height];
  [v5 addObject:v35];

  [v13 setFrame:{0.0, 0.0, p_contentSize->width, p_contentSize->height}];
  if (v69)
  {
    [(UIImageView *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addSubview:v69];
    v36 = [(UIImageView *)v69 widthAnchor];
    v37 = [v36 constraintEqualToConstant:v10];
    [v5 addObject:v37];

    v38 = [(UIImageView *)v69 heightAnchor];
    v39 = [v38 constraintEqualToConstant:v12];
    [v5 addObject:v39];

    v40 = [v13 safeAreaLayoutGuide];
    v41 = [v40 topAnchor];
    v42 = [(UIImageView *)v69 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v5 addObject:v43];

    v44 = [v13 safeAreaLayoutGuide];
    v45 = [v44 leadingAnchor];
    v46 = [(UIImageView *)v69 leadingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-v23];
    [v5 addObject:v47];
  }

  if (self->_typesetViewController)
  {
    [(PKMathTypesetViewController *)self addChildViewController:?];
    [(UIViewController *)self->_typesetViewController didMoveToParentViewController:self];
  }

  v48 = self->_footerLabel;
  if (v48)
  {
    [(UILabel *)v48 bounds];
    v50 = v49;
    v52 = v51;
    [(UILabel *)self->_footerLabel frame];
    v54 = v53;
    v56 = v55;
    [(UILabel *)self->_footerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addSubview:self->_footerLabel];
    v57 = [(UILabel *)self->_footerLabel widthAnchor];
    v58 = [v57 constraintEqualToConstant:v50];
    [v5 addObject:v58];

    v59 = [(UILabel *)self->_footerLabel heightAnchor];
    v60 = [v59 constraintEqualToConstant:v52];
    [v5 addObject:v60];

    v61 = [v13 safeAreaLayoutGuide];
    v62 = [v61 topAnchor];
    v63 = [(UILabel *)self->_footerLabel topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:-v56];
    [v5 addObject:v64];

    v65 = [v13 safeAreaLayoutGuide];
    v66 = [v65 leadingAnchor];
    v67 = [(UILabel *)self->_footerLabel leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:-v54];
    [v5 addObject:v68];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v5];
  [(PKMathTypesetViewController *)self setView:v13];
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_typesetViewController;
  }

  [(PKMathTypesetViewController *)self removeFromParentViewController];
  v3.receiver = v2;
  v3.super_class = PKMathTypesetViewController;
  [(PKMathTypesetViewController *)&v3 dealloc];
}

- (CGSize)preferredContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)viewTapped
{
  if (self)
  {
    tapAction = self->_tapAction;
    if (tapAction)
    {
      tapAction[2]();
    }
  }
}

@end