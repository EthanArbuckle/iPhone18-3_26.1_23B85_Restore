@interface AVTCameraCollectionViewCell
- (AVTCameraCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateCameraViewFrame;
@end

@implementation AVTCameraCollectionViewCell

- (AVTCameraCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AVTCameraCollectionViewCell;
  v3 = [(AVTStickerCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[AVTCameraItemView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
    [(AVTCameraCollectionViewCell *)v3 setCameraCellView:v4];

    contentView = [(AVTCameraCollectionViewCell *)v3 contentView];
    cameraCellView = [(AVTCameraCollectionViewCell *)v3 cameraCellView];
    [contentView addSubview:cameraCellView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTCameraCollectionViewCell;
  [(AVTStickerCollectionViewCell *)&v3 layoutSubviews];
  [(AVTCameraCollectionViewCell *)self updateCameraViewFrame];
}

- (void)updateCameraViewFrame
{
  cameraCellView = [(AVTCameraCollectionViewCell *)self cameraCellView];
  [cameraCellView setAutoresizingMask:18];

  contentView = [(AVTCameraCollectionViewCell *)self contentView];
  [contentView bounds];
  v16 = CGRectInset(v15, 20.0, 20.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, fmax((width - fmin(width, 107.0)) * 0.5, 0.0), fmax((height - fmin(height, 107.0)) * 0.5, 0.0));
  v9 = v18.origin.x;
  v10 = v18.origin.y;
  v11 = v18.size.width;
  v12 = v18.size.height;
  cameraCellView2 = [(AVTCameraCollectionViewCell *)self cameraCellView];
  [cameraCellView2 setFrame:{v9, v10, v11, v12}];
}

@end