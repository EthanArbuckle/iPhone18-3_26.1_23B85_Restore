@interface ASVThumbnailButton
+ (id)thumbnailButton;
- (void)_setupButton;
- (void)_updateSubviewVisibility;
- (void)layoutSubviews;
- (void)setError:(id)error;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setThumbnail:(id)thumbnail;
@end

@implementation ASVThumbnailButton

+ (id)thumbnailButton
{
  v2 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241215000, v2, OS_LOG_TYPE_DEFAULT, "ARQL thumbnailButton() called", v5, 2u);
  }

  v3 = [ASVThumbnailButton buttonWithType:0];
  [v3 _setupButton];

  return v3;
}

- (void)_setupButton
{
  v44[9] = *MEMORY[0x277D85DE8];
  v3 = AssetViewerLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_DEFAULT, "ARQL Setting up ASVThumbnailButton", buf, 2u);
  }

  v4 = objc_opt_new();
  loadingView = self->_loadingView;
  self->_loadingView = v4;

  v6 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v6;

  [(UIImageView *)self->_imageView setContentMode:1];
  v8 = +[ASVBadgeView badgeView];
  badgeView = self->_badgeView;
  self->_badgeView = v8;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(ASVThumbnailButton *)self setBackgroundColor:whiteColor];

  [(ASVThumbnailButton *)self addSubview:self->_loadingView];
  [(ASVThumbnailButton *)self addSubview:self->_imageView];
  [(ASVThumbnailButton *)self addSubview:self->_badgeView];
  [(ASVLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ASVBadgeView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(ASVBadgeView *)self->_badgeView topAnchor];
  topAnchor2 = [(ASVThumbnailButton *)self topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  badgeTopConstraint = self->_badgeTopConstraint;
  self->_badgeTopConstraint = v13;

  trailingAnchor = [(ASVBadgeView *)self->_badgeView trailingAnchor];
  trailingAnchor2 = [(ASVThumbnailButton *)self trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  badgeTrailingConstraint = self->_badgeTrailingConstraint;
  self->_badgeTrailingConstraint = v17;

  v33 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(ASVLoadingView *)self->_loadingView centerXAnchor];
  centerXAnchor2 = [(ASVThumbnailButton *)self centerXAnchor];
  v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[0] = v40;
  centerYAnchor = [(ASVLoadingView *)self->_loadingView centerYAnchor];
  centerYAnchor2 = [(ASVThumbnailButton *)self centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[1] = v37;
  widthAnchor = [(ASVLoadingView *)self->_loadingView widthAnchor];
  widthAnchor2 = [(ASVThumbnailButton *)self widthAnchor];
  v34 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v44[2] = v34;
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(ASVThumbnailButton *)self leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[3] = v30;
  trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
  trailingAnchor4 = [(ASVThumbnailButton *)self trailingAnchor];
  v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[4] = v20;
  topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
  topAnchor4 = [(ASVThumbnailButton *)self topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v44[5] = v23;
  bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(ASVThumbnailButton *)self bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27 = self->_badgeTopConstraint;
  v44[6] = v26;
  v44[7] = v27;
  v44[8] = self->_badgeTrailingConstraint;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:9];
  [v33 activateConstraints:v28];

  [(ASVThumbnailButton *)self _updateSubviewVisibility];
  [(ASVThumbnailButton *)self setAccessibilityIgnoresInvertColors:1];
}

- (void)setThumbnail:(id)thumbnail
{
  [(UIImageView *)self->_imageView setImage:thumbnail];

  [(ASVThumbnailButton *)self _updateSubviewVisibility];
}

- (void)setError:(id)error
{
  [(ASVLoadingView *)self->_loadingView setLoadingError:error];

  [(ASVThumbnailButton *)self _updateSubviewVisibility];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = ASVThumbnailButton;
  [(ASVThumbnailButton *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    whiteColor = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
    v6 = 3;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v6 = 0;
  }

  [(ASVThumbnailButton *)self setBackgroundColor:whiteColor];

  [(ASVBadgeView *)self->_badgeView setHighlighted:highlightedCopy];
  [(UIImageView *)self->_imageView setDrawMode:v6];
}

- (void)_updateSubviewVisibility
{
  thumbnail = [(ASVThumbnailButton *)self thumbnail];
  v4 = 0.0;
  if (thumbnail)
  {
    error = [(ASVThumbnailButton *)self error];
    if (error)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  thumbnail2 = [(ASVThumbnailButton *)self thumbnail];

  [(UIImageView *)self->_imageView setAlpha:v4];
  v7 = 1.0;
  if (thumbnail2)
  {
    v7 = 0.0;
  }

  loadingView = self->_loadingView;

  [(ASVLoadingView *)loadingView setAlpha:v7];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = ASVThumbnailButton;
  [(ASVThumbnailButton *)&v16 layoutSubviews];
  [(ASVBadgeView *)self->_badgeView thumbnailSize];
  v4 = v3;
  v6 = v5;
  [(ASVThumbnailButton *)self bounds];
  if (v4 != v8 || v6 != v7)
  {
    [(ASVThumbnailButton *)self bounds];
    [(ASVBadgeView *)self->_badgeView setThumbnailSize:v10, v11];
    badgeDescription = [(ASVBadgeView *)self->_badgeView badgeDescription];
    [badgeDescription badgeOffset];
    [(NSLayoutConstraint *)self->_badgeTopConstraint setConstant:v13];

    badgeDescription2 = [(ASVBadgeView *)self->_badgeView badgeDescription];
    [badgeDescription2 badgeOffset];
    [(NSLayoutConstraint *)self->_badgeTrailingConstraint setConstant:-v15];
  }
}

@end