@interface AVExternalPlaybackIndicatorView
- (id)_labelWithFontSize:(double)size;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setTitleString:(id)string subtitleString:(id)subtitleString;
@end

@implementation AVExternalPlaybackIndicatorView

- (void)setTitleString:(id)string subtitleString:(id)subtitleString
{
  stringCopy = string;
  subtitleStringCopy = subtitleString;
  objc_storeStrong(&self->_titleString, string);
  objc_storeStrong(&self->_subtitleString, subtitleString);
  if (stringCopy)
  {
    v9 = subtitleStringCopy == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  self->_shouldShowIndicator = v10;
  if (!v9)
  {
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      if (self->_subtitleLabel)
      {
        [(UILabel *)titleLabel setText:stringCopy];
        [(UILabel *)self->_subtitleLabel setText:subtitleStringCopy];
      }
    }
  }

  if (self->_containerView)
  {
    if (self->_shouldShowIndicator)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__AVExternalPlaybackIndicatorView_setTitleString_subtitleString___block_invoke;
    v14[3] = &unk_1E7209A38;
    objc_copyWeak(v15, &location);
    v15[1] = *&v12;
    [v13 animateWithDuration:v14 animations:0.2];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

void __65__AVExternalPlaybackIndicatorView_setTitleString_subtitleString___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[54] setAlpha:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = AVExternalPlaybackIndicatorView;
  [(AVExternalPlaybackIndicatorView *)&v14 layoutSubviews];
  layoutMarginsGuide = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  Height = CGRectGetHeight(v15);

  layoutMarginsGuide2 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
  [layoutMarginsGuide2 layoutFrame];
  Width = CGRectGetWidth(v16);

  [(UILabel *)self->_titleLabel frame];
  v7 = CGRectGetHeight(v17);
  [(UILabel *)self->_subtitleLabel frame];
  v8 = v7 + CGRectGetHeight(v18) + 3.0 + 16.0;
  [(UILabel *)self->_subtitleLabel frame];
  v9 = CGRectGetHeight(v19);
  v10 = Width < 86.0 || Height - v8 < 56.0;
  if (v10 != [(UIImageView *)self->_imageView isHidden])
  {
    [(UIImageView *)self->_imageView setHidden:v10];
  }

  v11 = v9 + 16.0;
  v12 = Width < 64.0 || Height - v8 < 0.0;
  if (v12 != [(UILabel *)self->_titleLabel isHidden])
  {
    [(UILabel *)self->_titleLabel setHidden:v12];
  }

  v13 = Width < 86.0 || Height < v11;
  if (v13 != [(UILabel *)self->_subtitleLabel isHidden])
  {
    [(UILabel *)self->_subtitleLabel setHidden:v13];
  }
}

- (void)didMoveToWindow
{
  v88[17] = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = AVExternalPlaybackIndicatorView;
  [(AVExternalPlaybackIndicatorView *)&v87 didMoveToWindow];
  if (self && !self->_containerView)
  {
    aV_indicatorBackgroundColor = [MEMORY[0x1E69DC888] AV_indicatorBackgroundColor];
    [(AVExternalPlaybackIndicatorView *)self setBackgroundColor:aV_indicatorBackgroundColor];

    v4 = MEMORY[0x1E69DCAB8];
    v5 = MEMORY[0x1E69DCAD8];
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:110.0];
    v7 = [v5 configurationWithFont:v6];
    v86 = [v4 systemImageNamed:@"tv" withConfiguration:v7];

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v86];
    imageView = self->_imageView;
    self->_imageView = v8;

    LODWORD(v10) = 1132068864;
    [(UIImageView *)self->_imageView setContentCompressionResistancePriority:1 forAxis:v10];
    LODWORD(v11) = *"";
    [(UIImageView *)self->_imageView setContentHuggingPriority:1 forAxis:v11];
    [(UIImageView *)self->_imageView setContentMode:1];
    v12 = self->_imageView;
    aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    [(UIImageView *)v12 setTintColor:aV_indicatorForegroundColor];

    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [AVExternalPlaybackIndicatorView _labelWithFontSize:?];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v14;

    [(UILabel *)self->_titleLabel setText:self->_titleString];
    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [AVExternalPlaybackIndicatorView _labelWithFontSize:?];
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v16;

    [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)self->_subtitleLabel setText:self->_subtitleString];
    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = self->_containerView;
    self->_containerView = v18;

    v20 = 0.0;
    if (self->_shouldShowIndicator)
    {
      v20 = 1.0;
    }

    [(UIView *)self->_containerView setAlpha:v20];
    [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_containerView addSubview:self->_imageView];
    [(UIView *)self->_containerView addSubview:self->_titleLabel];
    [(UIView *)self->_containerView addSubview:self->_subtitleLabel];
    [(AVExternalPlaybackIndicatorView *)self addSubview:self->_containerView];
    topAnchor = [(UIImageView *)self->_imageView topAnchor];
    topAnchor2 = [(UIView *)self->_containerView topAnchor];
    LODWORD(v21) = 1148829696;
    v83 = [topAnchor avkit_constraintEqualToAnchor:topAnchor2 priority:v21];
    v88[0] = v83;
    topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
    bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
    LODWORD(v22) = 1148829696;
    v80 = [topAnchor3 avkit_constraintEqualToAnchor:bottomAnchor priority:v22];
    v88[1] = v80;
    topAnchor4 = [(UILabel *)self->_subtitleLabel topAnchor];
    bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
    v77 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:3.0];
    v88[2] = v77;
    bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
    v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v88[3] = v74;
    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    widthAnchor2 = [(UIView *)self->_containerView widthAnchor];
    v71 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v88[4] = v71;
    widthAnchor3 = [(UILabel *)self->_titleLabel widthAnchor];
    widthAnchor4 = [(UIView *)self->_containerView widthAnchor];
    v68 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
    v88[5] = v68;
    widthAnchor5 = [(UILabel *)self->_subtitleLabel widthAnchor];
    widthAnchor6 = [(UIView *)self->_containerView widthAnchor];
    v65 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6];
    v88[6] = v65;
    centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
    v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v88[7] = v62;
    centerXAnchor3 = [(UILabel *)self->_titleLabel centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_containerView centerXAnchor];
    v59 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v88[8] = v59;
    centerXAnchor5 = [(UILabel *)self->_subtitleLabel centerXAnchor];
    centerXAnchor6 = [(UIView *)self->_containerView centerXAnchor];
    v56 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v88[9] = v56;
    widthAnchor7 = [(UIImageView *)self->_imageView widthAnchor];
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    image = [(UIImageView *)self->_imageView image];
    [image size];
    v24 = v23;
    image2 = [(UIImageView *)self->_imageView image];
    [image2 size];
    v51 = [widthAnchor7 constraintEqualToAnchor:heightAnchor multiplier:v24 / v25];
    v88[10] = v51;
    widthAnchor8 = [(UIView *)self->_containerView widthAnchor];
    layoutMarginsGuide = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    widthAnchor9 = [layoutMarginsGuide widthAnchor];
    v46 = [widthAnchor8 constraintLessThanOrEqualToAnchor:widthAnchor9 constant:-16.0];
    v88[11] = v46;
    heightAnchor2 = [(UIView *)self->_containerView heightAnchor];
    layoutMarginsGuide2 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    heightAnchor3 = [layoutMarginsGuide2 heightAnchor];
    v42 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 constant:-16.0];
    v88[12] = v42;
    leadingAnchor = [(UIView *)self->_containerView leadingAnchor];
    layoutMarginsGuide3 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v38 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2 constant:-16.0];
    v88[13] = v38;
    trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
    layoutMarginsGuide4 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v27 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
    v88[14] = v27;
    centerXAnchor7 = [(UIView *)self->_containerView centerXAnchor];
    layoutMarginsGuide5 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    centerXAnchor8 = [layoutMarginsGuide5 centerXAnchor];
    v31 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v88[15] = v31;
    centerYAnchor = [(UIView *)self->_containerView centerYAnchor];
    layoutMarginsGuide6 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide6 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v88[16] = v35;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:17];

    [MEMORY[0x1E696ACD8] activateConstraints:v48];
  }
}

- (id)_labelWithFontSize:(double)size
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:size];
  [v2 setFont:v4];

  [v2 setLineBreakMode:5];
  [v2 setTextAlignment:1];
  aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  [v2 setTextColor:aV_indicatorForegroundColor];

  return v2;
}

@end