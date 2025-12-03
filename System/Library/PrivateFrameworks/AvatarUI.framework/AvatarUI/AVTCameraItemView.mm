@interface AVTCameraItemView
- (AVTCameraItemView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateCameraImage;
@end

@implementation AVTCameraItemView

- (AVTCameraItemView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = AVTCameraItemView;
  v3 = [(AVTCameraItemView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(AVTCameraItemView *)v3 tintColor];
    v6 = [tintColor colorWithAlphaComponent:0.15];

    tintColor2 = [(AVTCameraItemView *)v4 tintColor];
    v8 = [tintColor2 colorWithAlphaComponent:0.3];

    v9 = [AVTUIColorRepository dynamicColorWithLightColor:v6 darkColor:v8];
    [(AVTCameraItemView *)v4 setBackgroundColor:v9];
    v10 = MEMORY[0x1E69DCAD8];
    [(AVTCameraItemView *)v4 bounds];
    v12 = [v10 configurationWithPointSize:5 weight:v11 * 0.3];
    [(AVTCameraItemView *)v4 setCameraConfiguration:v12];

    v13 = MEMORY[0x1E69DCAB8];
    cameraConfiguration = [(AVTCameraItemView *)v4 cameraConfiguration];
    v15 = [v13 _systemImageNamed:@"camera.fill" withConfiguration:cameraConfiguration];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    [(AVTCameraItemView *)v4 setImageView:v16];
    [v16 setContentMode:4];
    [(AVTCameraItemView *)v4 bounds];
    [v16 setFrame:?];
    [v16 setAutoresizingMask:18];
    [(AVTCameraItemView *)v4 addSubview:v16];
    v17 = objc_alloc_init(MEMORY[0x1E69794A0]);
    shapeLayer = v4->_shapeLayer;
    v4->_shapeLayer = v17;

    v19 = v4->_shapeLayer;
    layer = [(AVTCameraItemView *)v4 layer];
    [layer setMask:v19];

    v21 = MEMORY[0x1E69DC728];
    [(AVTCameraItemView *)v4 bounds];
    v22 = [v21 bezierPathWithOvalInRect:?];
    -[CAShapeLayer setPath:](v4->_shapeLayer, "setPath:", [v22 CGPath]);
  }

  return v4;
}

- (void)updateCameraImage
{
  v3 = MEMORY[0x1E69DC728];
  [(AVTCameraItemView *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_shapeLayer, "setPath:", [v4 CGPath]);

  v5 = MEMORY[0x1E69DCAD8];
  [(AVTCameraItemView *)self bounds];
  v12 = [v5 configurationWithPointSize:5 weight:v6 * 0.3];
  cameraConfiguration = [(AVTCameraItemView *)self cameraConfiguration];
  v8 = [v12 isEqualToConfiguration:cameraConfiguration];

  if ((v8 & 1) == 0)
  {
    [(AVTCameraItemView *)self setCameraConfiguration:v12];
    v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"camera.fill" withConfiguration:v12];
    imageView = [(AVTCameraItemView *)self imageView];
    [imageView setImage:v9];

    imageView2 = [(AVTCameraItemView *)self imageView];
    [(AVTCameraItemView *)self bounds];
    [imageView2 setFrame:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTCameraItemView;
  [(AVTCameraItemView *)&v3 layoutSubviews];
  [(AVTCameraItemView *)self updateCameraImage];
}

@end