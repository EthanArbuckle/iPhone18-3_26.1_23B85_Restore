@interface AVTCameraCollectionViewCell
- (AVTCameraCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateCameraViewFrame;
@end

@implementation AVTCameraCollectionViewCell

- (AVTCameraCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = AVTCameraCollectionViewCell;
  v3 = [(AVTStickerCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[AVTCameraItemView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
    [(AVTCameraCollectionViewCell *)v3 setCameraCellView:v4];

    v5 = [(AVTCameraCollectionViewCell *)v3 contentView];
    v6 = [(AVTCameraCollectionViewCell *)v3 cameraCellView];
    [v5 addSubview:v6];
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
  v3 = [(AVTCameraCollectionViewCell *)self cameraCellView];
  [v3 setAutoresizingMask:18];

  v4 = [(AVTCameraCollectionViewCell *)self contentView];
  [v4 bounds];
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
  v13 = [(AVTCameraCollectionViewCell *)self cameraCellView];
  [v13 setFrame:{v9, v10, v11, v12}];
}

@end