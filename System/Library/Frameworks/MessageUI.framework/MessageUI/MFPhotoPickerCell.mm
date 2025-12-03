@interface MFPhotoPickerCell
- (MFPhotoPickerCell)initWithFrame:(CGRect)frame;
- (MFRoundProgressView)progressView;
- (void)prepareForReuse;
- (void)resetProgress;
- (void)setMediaType:(int64_t)type;
- (void)setProgress:(double)progress;
- (void)setSelected:(BOOL)selected;
- (void)setThumbnailImage:(id)image;
@end

@implementation MFPhotoPickerCell

- (MFPhotoPickerCell)initWithFrame:(CGRect)frame
{
  v54[8] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = MFPhotoPickerCell;
  v3 = [(MFPhotoPickerCell *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(MFPhotoPickerCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    mediaTypeBadgeView = v3->_mediaTypeBadgeView;
    v3->_mediaTypeBadgeView = v12;

    [(UIImageView *)v3->_mediaTypeBadgeView setContentMode:1];
    [(UIImageView *)v3->_mediaTypeBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->_mediaTypeBadgeView setTintColor:whiteColor];

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    selectedBadgeView = v3->_selectedBadgeView;
    v3->_selectedBadgeView = v15;

    v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
    mailInteractiveColor = [MEMORY[0x1E69DC888] mailInteractiveColor];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v20 = [v17 _initWithFilledSystemImageNamed:@"checkmark.circle" fillColor:mailInteractiveColor symbolColor:whiteColor2];
    [(UIImageView *)v3->_selectedBadgeView setImage:v20];

    [(UIImageView *)v3->_selectedBadgeView setContentMode:1];
    [(UIImageView *)v3->_selectedBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(MFPhotoPickerCell *)v3 contentView];
    [contentView addSubview:v3->_imageView];

    contentView2 = [(MFPhotoPickerCell *)v3 contentView];
    [contentView2 addSubview:v3->_mediaTypeBadgeView];

    contentView3 = [(MFPhotoPickerCell *)v3 contentView];
    [contentView3 addSubview:v3->_selectedBadgeView];

    v24 = v3->_imageView;
    contentView4 = [(MFPhotoPickerCell *)v3 contentView];
    [(UIImageView *)v24 mf_pinToView:contentView4 usingLayoutMargins:0];

    v26 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_mediaTypeBadgeView widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:24.0];
    v54[0] = v49;
    heightAnchor = [(UIImageView *)v3->_mediaTypeBadgeView heightAnchor];
    v47 = [heightAnchor constraintEqualToConstant:24.0];
    v54[1] = v47;
    leadingAnchor = [(UIImageView *)v3->_mediaTypeBadgeView leadingAnchor];
    contentView5 = [(MFPhotoPickerCell *)v3 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:2.0 constant:?];
    v54[2] = v44;
    contentView6 = [(MFPhotoPickerCell *)v3 contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v3->_mediaTypeBadgeView bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:2.0 constant:?];
    v54[3] = v41;
    widthAnchor2 = [(UIImageView *)v3->_selectedBadgeView widthAnchor];
    v39 = [widthAnchor2 constraintEqualToConstant:24.0];
    v54[4] = v39;
    heightAnchor2 = [(UIImageView *)v3->_selectedBadgeView heightAnchor];
    v37 = [heightAnchor2 constraintEqualToConstant:24.0];
    v54[5] = v37;
    contentView7 = [(MFPhotoPickerCell *)v3 contentView];
    trailingAnchor = [contentView7 trailingAnchor];
    trailingAnchor2 = [(UIImageView *)v3->_selectedBadgeView trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:2.0];
    v54[6] = v29;
    contentView8 = [(MFPhotoPickerCell *)v3 contentView];
    bottomAnchor3 = [contentView8 bottomAnchor];
    bottomAnchor4 = [(UIImageView *)v3->_selectedBadgeView bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:2.0];
    v54[7] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:8];
    [v26 activateConstraints:v34];
  }

  return v3;
}

- (void)setProgress:(double)progress
{
  progressView = [(MFPhotoPickerCell *)self progressView];
  [progressView setProgress:progress];
  [progressView setHidden:progress >= 1.0];
}

- (void)resetProgress
{
  progressView = [(MFPhotoPickerCell *)self progressView];
  [progressView removeFromSuperview];

  [(MFPhotoPickerCell *)self setProgressView:0];
}

- (MFRoundProgressView)progressView
{
  v3 = self->_progressView;
  if (!v3)
  {
    [(MFPhotoPickerCell *)self frame];
    v3 = [[MFRoundProgressView alloc] initWithFrame:v5 * 0.5 + -12.5, v4 * 0.5 + -12.5, 25.0, 25.0];
    contentView = [(MFPhotoPickerCell *)self contentView];
    [contentView addSubview:v3];

    objc_storeStrong(&self->_progressView, v3);
  }

  return v3;
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  if (self->_thumbnailImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_thumbnailImage, image);
    imageView = [(MFPhotoPickerCell *)self imageView];
    [imageView setImage:v7];

    imageCopy = v7;
  }
}

- (void)setMediaType:(int64_t)type
{
  self->_mediaType = type;
  if (type == 1)
  {
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.fill"];
    mediaTypeBadgeView = [(MFPhotoPickerCell *)self mediaTypeBadgeView];
    [mediaTypeBadgeView setImage:v5];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = MFPhotoPickerCell;
  [(MFPhotoPickerCell *)&v6 setSelected:?];
  selectedBadgeView = [(MFPhotoPickerCell *)self selectedBadgeView];
  [selectedBadgeView setHidden:!selectedCopy];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MFPhotoPickerCell;
  [(MFPhotoPickerCell *)&v5 prepareForReuse];
  imageView = [(MFPhotoPickerCell *)self imageView];
  [imageView setImage:0];

  mediaTypeBadgeView = [(MFPhotoPickerCell *)self mediaTypeBadgeView];
  [mediaTypeBadgeView setImage:0];

  [(MFPhotoPickerCell *)self setSelected:0];
  [(MFPhotoPickerCell *)self resetProgress];
}

@end