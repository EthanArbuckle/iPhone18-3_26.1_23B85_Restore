@interface AVExternalPlaybackIndicatorView
- (id)_labelWithFontSize:(double)a1;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setTitleString:(id)a3 subtitleString:(id)a4;
@end

@implementation AVExternalPlaybackIndicatorView

- (void)setTitleString:(id)a3 subtitleString:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_titleString, a3);
  objc_storeStrong(&self->_subtitleString, a4);
  if (v7)
  {
    v9 = v8 == 0;
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
        [(UILabel *)titleLabel setText:v7];
        [(UILabel *)self->_subtitleLabel setText:v8];
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
  v3 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
  [v3 layoutFrame];
  Height = CGRectGetHeight(v15);

  v5 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
  [v5 layoutFrame];
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
    v3 = [MEMORY[0x1E69DC888] AV_indicatorBackgroundColor];
    [(AVExternalPlaybackIndicatorView *)self setBackgroundColor:v3];

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
    v13 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
    [(UIImageView *)v12 setTintColor:v13];

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
    v85 = [(UIImageView *)self->_imageView topAnchor];
    v84 = [(UIView *)self->_containerView topAnchor];
    LODWORD(v21) = 1148829696;
    v83 = [v85 avkit_constraintEqualToAnchor:v84 priority:v21];
    v88[0] = v83;
    v82 = [(UILabel *)self->_titleLabel topAnchor];
    v81 = [(UIImageView *)self->_imageView bottomAnchor];
    LODWORD(v22) = 1148829696;
    v80 = [v82 avkit_constraintEqualToAnchor:v81 priority:v22];
    v88[1] = v80;
    v79 = [(UILabel *)self->_subtitleLabel topAnchor];
    v78 = [(UILabel *)self->_titleLabel bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78 constant:3.0];
    v88[2] = v77;
    v76 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v75 = [(UIView *)self->_containerView bottomAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v88[3] = v74;
    v73 = [(UIImageView *)self->_imageView widthAnchor];
    v72 = [(UIView *)self->_containerView widthAnchor];
    v71 = [v73 constraintLessThanOrEqualToAnchor:v72];
    v88[4] = v71;
    v70 = [(UILabel *)self->_titleLabel widthAnchor];
    v69 = [(UIView *)self->_containerView widthAnchor];
    v68 = [v70 constraintLessThanOrEqualToAnchor:v69];
    v88[5] = v68;
    v67 = [(UILabel *)self->_subtitleLabel widthAnchor];
    v66 = [(UIView *)self->_containerView widthAnchor];
    v65 = [v67 constraintLessThanOrEqualToAnchor:v66];
    v88[6] = v65;
    v64 = [(UIImageView *)self->_imageView centerXAnchor];
    v63 = [(UIView *)self->_containerView centerXAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v88[7] = v62;
    v61 = [(UILabel *)self->_titleLabel centerXAnchor];
    v60 = [(UIView *)self->_containerView centerXAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v88[8] = v59;
    v58 = [(UILabel *)self->_subtitleLabel centerXAnchor];
    v57 = [(UIView *)self->_containerView centerXAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v88[9] = v56;
    v54 = [(UIImageView *)self->_imageView widthAnchor];
    v53 = [(UIImageView *)self->_imageView heightAnchor];
    v55 = [(UIImageView *)self->_imageView image];
    [v55 size];
    v24 = v23;
    v52 = [(UIImageView *)self->_imageView image];
    [v52 size];
    v51 = [v54 constraintEqualToAnchor:v53 multiplier:v24 / v25];
    v88[10] = v51;
    v49 = [(UIView *)self->_containerView widthAnchor];
    v50 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v47 = [v50 widthAnchor];
    v46 = [v49 constraintLessThanOrEqualToAnchor:v47 constant:-16.0];
    v88[11] = v46;
    v44 = [(UIView *)self->_containerView heightAnchor];
    v45 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v43 = [v45 heightAnchor];
    v42 = [v44 constraintLessThanOrEqualToAnchor:v43 constant:-16.0];
    v88[12] = v42;
    v40 = [(UIView *)self->_containerView leadingAnchor];
    v41 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v39 = [v41 leadingAnchor];
    v38 = [v40 constraintLessThanOrEqualToAnchor:v39 constant:-16.0];
    v88[13] = v38;
    v36 = [(UIView *)self->_containerView trailingAnchor];
    v37 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v26 = [v37 trailingAnchor];
    v27 = [v36 constraintLessThanOrEqualToAnchor:v26 constant:-16.0];
    v88[14] = v27;
    v28 = [(UIView *)self->_containerView centerXAnchor];
    v29 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v30 = [v29 centerXAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    v88[15] = v31;
    v32 = [(UIView *)self->_containerView centerYAnchor];
    v33 = [(AVExternalPlaybackIndicatorView *)self layoutMarginsGuide];
    v34 = [v33 centerYAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    v88[16] = v35;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:17];

    [MEMORY[0x1E696ACD8] activateConstraints:v48];
  }
}

- (id)_labelWithFontSize:(double)a1
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:a1];
  [v2 setFont:v4];

  [v2 setLineBreakMode:5];
  [v2 setTextAlignment:1];
  v5 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  [v2 setTextColor:v5];

  return v2;
}

@end