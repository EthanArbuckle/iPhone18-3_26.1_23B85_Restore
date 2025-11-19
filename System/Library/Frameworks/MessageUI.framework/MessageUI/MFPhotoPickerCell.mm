@interface MFPhotoPickerCell
- (MFPhotoPickerCell)initWithFrame:(CGRect)a3;
- (MFRoundProgressView)progressView;
- (void)prepareForReuse;
- (void)resetProgress;
- (void)setMediaType:(int64_t)a3;
- (void)setProgress:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setThumbnailImage:(id)a3;
@end

@implementation MFPhotoPickerCell

- (MFPhotoPickerCell)initWithFrame:(CGRect)a3
{
  v54[8] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = MFPhotoPickerCell;
  v3 = [(MFPhotoPickerCell *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v3->_mediaTypeBadgeView setTintColor:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    selectedBadgeView = v3->_selectedBadgeView;
    v3->_selectedBadgeView = v15;

    v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v18 = [MEMORY[0x1E69DC888] mailInteractiveColor];
    v19 = [MEMORY[0x1E69DC888] whiteColor];
    v20 = [v17 _initWithFilledSystemImageNamed:@"checkmark.circle" fillColor:v18 symbolColor:v19];
    [(UIImageView *)v3->_selectedBadgeView setImage:v20];

    [(UIImageView *)v3->_selectedBadgeView setContentMode:1];
    [(UIImageView *)v3->_selectedBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [(MFPhotoPickerCell *)v3 contentView];
    [v21 addSubview:v3->_imageView];

    v22 = [(MFPhotoPickerCell *)v3 contentView];
    [v22 addSubview:v3->_mediaTypeBadgeView];

    v23 = [(MFPhotoPickerCell *)v3 contentView];
    [v23 addSubview:v3->_selectedBadgeView];

    v24 = v3->_imageView;
    v25 = [(MFPhotoPickerCell *)v3 contentView];
    [(UIImageView *)v24 mf_pinToView:v25 usingLayoutMargins:0];

    v26 = MEMORY[0x1E696ACD8];
    v50 = [(UIImageView *)v3->_mediaTypeBadgeView widthAnchor];
    v49 = [v50 constraintEqualToConstant:24.0];
    v54[0] = v49;
    v48 = [(UIImageView *)v3->_mediaTypeBadgeView heightAnchor];
    v47 = [v48 constraintEqualToConstant:24.0];
    v54[1] = v47;
    v52 = [(UIImageView *)v3->_mediaTypeBadgeView leadingAnchor];
    v46 = [(MFPhotoPickerCell *)v3 contentView];
    v45 = [v46 leadingAnchor];
    v44 = [v52 constraintEqualToAnchor:2.0 constant:?];
    v54[2] = v44;
    v43 = [(MFPhotoPickerCell *)v3 contentView];
    v51 = [v43 bottomAnchor];
    v42 = [(UIImageView *)v3->_mediaTypeBadgeView bottomAnchor];
    v41 = [v51 constraintEqualToAnchor:2.0 constant:?];
    v54[3] = v41;
    v40 = [(UIImageView *)v3->_selectedBadgeView widthAnchor];
    v39 = [v40 constraintEqualToConstant:24.0];
    v54[4] = v39;
    v38 = [(UIImageView *)v3->_selectedBadgeView heightAnchor];
    v37 = [v38 constraintEqualToConstant:24.0];
    v54[5] = v37;
    v36 = [(MFPhotoPickerCell *)v3 contentView];
    v27 = [v36 trailingAnchor];
    v28 = [(UIImageView *)v3->_selectedBadgeView trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:2.0];
    v54[6] = v29;
    v30 = [(MFPhotoPickerCell *)v3 contentView];
    v31 = [v30 bottomAnchor];
    v32 = [(UIImageView *)v3->_selectedBadgeView bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:2.0];
    v54[7] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:8];
    [v26 activateConstraints:v34];
  }

  return v3;
}

- (void)setProgress:(double)a3
{
  v4 = [(MFPhotoPickerCell *)self progressView];
  [v4 setProgress:a3];
  [v4 setHidden:a3 >= 1.0];
}

- (void)resetProgress
{
  v3 = [(MFPhotoPickerCell *)self progressView];
  [v3 removeFromSuperview];

  [(MFPhotoPickerCell *)self setProgressView:0];
}

- (MFRoundProgressView)progressView
{
  v3 = self->_progressView;
  if (!v3)
  {
    [(MFPhotoPickerCell *)self frame];
    v3 = [[MFRoundProgressView alloc] initWithFrame:v5 * 0.5 + -12.5, v4 * 0.5 + -12.5, 25.0, 25.0];
    v6 = [(MFPhotoPickerCell *)self contentView];
    [v6 addSubview:v3];

    objc_storeStrong(&self->_progressView, v3);
  }

  return v3;
}

- (void)setThumbnailImage:(id)a3
{
  v5 = a3;
  if (self->_thumbnailImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_thumbnailImage, a3);
    v6 = [(MFPhotoPickerCell *)self imageView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (void)setMediaType:(int64_t)a3
{
  self->_mediaType = a3;
  if (a3 == 1)
  {
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.fill"];
    v4 = [(MFPhotoPickerCell *)self mediaTypeBadgeView];
    [v4 setImage:v5];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFPhotoPickerCell;
  [(MFPhotoPickerCell *)&v6 setSelected:?];
  v5 = [(MFPhotoPickerCell *)self selectedBadgeView];
  [v5 setHidden:!v3];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MFPhotoPickerCell;
  [(MFPhotoPickerCell *)&v5 prepareForReuse];
  v3 = [(MFPhotoPickerCell *)self imageView];
  [v3 setImage:0];

  v4 = [(MFPhotoPickerCell *)self mediaTypeBadgeView];
  [v4 setImage:0];

  [(MFPhotoPickerCell *)self setSelected:0];
  [(MFPhotoPickerCell *)self resetProgress];
}

@end