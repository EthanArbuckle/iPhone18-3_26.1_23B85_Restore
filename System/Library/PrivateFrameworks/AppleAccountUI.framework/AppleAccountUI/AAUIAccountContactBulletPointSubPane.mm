@interface AAUIAccountContactBulletPointSubPane
- (AAUIAccountContactBulletPointSubPane)initWithImage:(id)image title:(id)title message:(id)message;
- (id)_imageViewWithImage:(id)image;
- (id)_labelWithString:(id)string title:(BOOL)title;
- (id)_verticalStackView;
@end

@implementation AAUIAccountContactBulletPointSubPane

- (AAUIAccountContactBulletPointSubPane)initWithImage:(id)image title:(id)title message:(id)message
{
  v68[7] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  titleCopy = title;
  messageCopy = message;
  v67.receiver = self;
  v67.super_class = AAUIAccountContactBulletPointSubPane;
  v11 = [(AAUIAccountContactBulletPointSubPane *)&v67 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    [(AAUIAccountContactBulletPointSubPane *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(AAUIAccountContactBulletPointSubPane *)v12 _imageViewWithImage:imageCopy];
    v66 = imageCopy;
    bulletImageView = v12->_bulletImageView;
    v12->_bulletImageView = v13;

    [(AAUIAccountContactBulletPointSubPane *)v12 addSubview:v12->_bulletImageView];
    _verticalStackView = [(AAUIAccountContactBulletPointSubPane *)v12 _verticalStackView];
    messageStackView = v12->_messageStackView;
    v12->_messageStackView = _verticalStackView;

    [(AAUIAccountContactBulletPointSubPane *)v12 addSubview:v12->_messageStackView];
    v17 = [(AAUIAccountContactBulletPointSubPane *)v12 _labelWithString:titleCopy title:1];
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v17;

    v19 = [(AAUIAccountContactBulletPointSubPane *)v12 _labelWithString:messageCopy title:0];
    v65 = titleCopy;
    messageLabel = v12->_messageLabel;
    v12->_messageLabel = v19;

    [(UIStackView *)v12->_messageStackView addArrangedSubview:v12->_titleLabel];
    [(UIStackView *)v12->_messageStackView addArrangedSubview:v12->_messageLabel];
    v58 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIImageView *)v12->_bulletImageView topAnchor];
    firstBaselineAnchor = [(UILabel *)v12->_titleLabel firstBaselineAnchor];
    font = [(UILabel *)v12->_titleLabel font];
    [font ascender];
    v60 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-(v21 + -2.0)];
    v68[0] = v60;
    leadingAnchor = [(UIImageView *)v12->_bulletImageView leadingAnchor];
    v59 = leadingAnchor;
    leadingAnchor2 = [(AAUIAccountContactBulletPointSubPane *)v12 leadingAnchor];
    v57 = leadingAnchor2;
    v64 = messageCopy;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v26 = 66.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v26 = 0.0;
    }

    v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v26];
    v68[1] = v56;
    widthAnchor = [(UIImageView *)v12->_bulletImageView widthAnchor];
    v55 = widthAnchor;
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v30 = 40.0;
    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v30 = 44.0;
    }

    v54 = [widthAnchor constraintEqualToConstant:v30];
    v68[2] = v54;
    leadingAnchor3 = [(UIStackView *)v12->_messageStackView leadingAnchor];
    v53 = leadingAnchor3;
    trailingAnchor = [(UIImageView *)v12->_bulletImageView trailingAnchor];
    v52 = trailingAnchor;
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    v35 = 26.0;
    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = 16.0;
    }

    v51 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v35];
    v68[3] = v51;
    trailingAnchor2 = [(UIStackView *)v12->_messageStackView trailingAnchor];
    v50 = trailingAnchor2;
    trailingAnchor3 = [(AAUIAccountContactBulletPointSubPane *)v12 trailingAnchor];
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v40 = -50.0;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v40 = -16.0;
    }

    v41 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v40];
    v68[4] = v41;
    topAnchor2 = [(UIStackView *)v12->_messageStackView topAnchor];
    topAnchor3 = [(AAUIAccountContactBulletPointSubPane *)v12 topAnchor];
    v44 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v68[5] = v44;
    bottomAnchor = [(UIStackView *)v12->_messageStackView bottomAnchor];
    bottomAnchor2 = [(AAUIAccountContactBulletPointSubPane *)v12 bottomAnchor];
    v47 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v68[6] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:7];
    [v58 activateConstraints:v48];

    messageCopy = v64;
    imageCopy = v66;

    titleCopy = v65;
  }

  return v12;
}

- (id)_labelWithString:(id)string title:(BOOL)title
{
  titleCopy = title;
  v5 = MEMORY[0x1E69DCC10];
  stringCopy = string;
  v7 = objc_alloc_init(v5);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = MEMORY[0x1E69DB980];
  if (!titleCopy)
  {
    v8 = MEMORY[0x1E69DB978];
  }

  v9 = *v8;
  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v9];
  v12 = [defaultMetrics scaledFontForFont:v11];
  [v7 setFont:v12];

  [v7 setTextAlignment:4];
  [v7 setNumberOfLines:0];
  [v7 setAdjustsFontSizeToFitWidth:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  [v7 setText:stringCopy];
  if (!titleCopy)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v7 setTextColor:secondaryLabelColor];
  }

  return v7;
}

- (id)_verticalStackView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAlignment:1];
  [v2 setAxis:1];
  [v2 setDistribution:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  return v2;
}

- (id)_imageViewWithImage:(id)image
{
  v3 = MEMORY[0x1E69DCAE0];
  imageCopy = image;
  v5 = [[v3 alloc] initWithImage:imageCopy];

  [v5 setContentMode:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

@end