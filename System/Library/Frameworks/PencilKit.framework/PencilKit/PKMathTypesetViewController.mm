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
  array = [MEMORY[0x1E695DF70] array];
  typesetViewController = self->_typesetViewController;
  if (typesetViewController)
  {
    view = [(UIViewController *)typesetViewController view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)view setBackgroundColor:clearColor];

LABEL_5:
    [(UIImageView *)view intrinsicContentSize];
    v10 = v9;
    v12 = v11;
    p_contentSize->width = v9;
    p_contentSize->height = v11;
    goto LABEL_6;
  }

  typesetImageView = self->_typesetImageView;
  if (typesetImageView)
  {
    view = typesetImageView;
    [(UIImageView *)view sizeToFit];
    goto LABEL_5;
  }

  view = 0;
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
    fontDescriptor = [v18 fontDescriptor];
    v21 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
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
    if (view)
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

  [(UIImageView *)view setFrame:v23, v24, v10, v12];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v13 widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:p_contentSize->width];
  [array addObject:v33];

  heightAnchor = [v13 heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:p_contentSize->height];
  [array addObject:v35];

  [v13 setFrame:{0.0, 0.0, p_contentSize->width, p_contentSize->height}];
  if (view)
  {
    [(UIImageView *)view setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 addSubview:view];
    widthAnchor2 = [(UIImageView *)view widthAnchor];
    v37 = [widthAnchor2 constraintEqualToConstant:v10];
    [array addObject:v37];

    heightAnchor2 = [(UIImageView *)view heightAnchor];
    v39 = [heightAnchor2 constraintEqualToConstant:v12];
    [array addObject:v39];

    safeAreaLayoutGuide = [v13 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    topAnchor2 = [(UIImageView *)view topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v43];

    safeAreaLayoutGuide2 = [v13 safeAreaLayoutGuide];
    leadingAnchor = [safeAreaLayoutGuide2 leadingAnchor];
    leadingAnchor2 = [(UIImageView *)view leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v23];
    [array addObject:v47];
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
    widthAnchor3 = [(UILabel *)self->_footerLabel widthAnchor];
    v58 = [widthAnchor3 constraintEqualToConstant:v50];
    [array addObject:v58];

    heightAnchor3 = [(UILabel *)self->_footerLabel heightAnchor];
    v60 = [heightAnchor3 constraintEqualToConstant:v52];
    [array addObject:v60];

    safeAreaLayoutGuide3 = [v13 safeAreaLayoutGuide];
    topAnchor3 = [safeAreaLayoutGuide3 topAnchor];
    topAnchor4 = [(UILabel *)self->_footerLabel topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-v56];
    [array addObject:v64];

    safeAreaLayoutGuide4 = [v13 safeAreaLayoutGuide];
    leadingAnchor3 = [safeAreaLayoutGuide4 leadingAnchor];
    leadingAnchor4 = [(UILabel *)self->_footerLabel leadingAnchor];
    v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-v54];
    [array addObject:v68];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [(PKMathTypesetViewController *)self setView:v13];
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_typesetViewController;
  }

  [(PKMathTypesetViewController *)self removeFromParentViewController];
  v3.receiver = selfCopy;
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