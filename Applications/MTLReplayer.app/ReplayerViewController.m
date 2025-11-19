@interface ReplayerViewController
- (void)loadView;
- (void)setColorPixelFormat:(unint64_t)a3;
- (void)setDevice:(id)a3;
- (void)setDisplayTextureEncoder:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation ReplayerViewController

- (void)setColorPixelFormat:(unint64_t)a3
{
  v4 = [(ReplayerViewController *)self view];
  [v4 setColorPixelFormat:a3];
}

- (void)setOrientation:(int64_t)a3
{
  if (+[NSThread isMainThread])
  {
    if ((a3 - 1) > 3)
    {
      v5 = 30;
    }

    else
    {
      v5 = qword_10000CCC8[a3 - 1];
    }

    self->_orientationMask = v5;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000069E4;
    v6[3] = &unk_100014BA0;
    v6[4] = self;
    [UIView performWithoutAnimation:v6];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000069D8;
    block[3] = &unk_100014B78;
    block[4] = self;
    block[5] = a3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setDisplayTextureEncoder:(id)a3
{
  v4 = a3;
  v6 = [(ReplayerViewController *)self view];
  v5 = [v4 device];
  [v6 setDevice:v5];

  [(Renderer *)self->_renderer setDisplayTextureEncoder:v4];
  [v6 draw];
}

- (void)setDevice:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    [(ReplayerViewController *)self loadView];
    v5 = [(ReplayerViewController *)self view];
    [v5 setDevice:v4];
    [v5 setColorPixelFormat:81];
    [v5 setPaused:1];
    [v5 setAutoResizeDrawable:1];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    v8 = [v7 effectiveGeometry];
    if (objc_opt_respondsToSelector())
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v9 coordinateSpace];
    [v10 bounds];
    [v5 setBounds:?];

    v11 = [v5 layer];
    [v11 setColorspace:CGColorSpaceCreateWithName(kCGColorSpaceSRGB)];
    v12 = [[Renderer alloc] initWithMetalKitView:v5];
    renderer = self->_renderer;
    self->_renderer = v12;

    v14 = self->_renderer;
    [v5 drawableSize];
    [(Renderer *)v14 mtkView:v5 drawableSizeWillChange:?];
    [v5 setDelegate:self->_renderer];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006C84;
    v15[3] = &unk_100014B50;
    v15[4] = self;
    v16 = v4;
    dispatch_sync(&_dispatch_main_q, v15);
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ReplayerViewController;
  [(ReplayerViewController *)&v5 viewDidLoad];
  v3 = [(ReplayerViewController *)self view];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];

  self->_orientationMask = 30;
}

- (void)loadView
{
  v3 = [[MTKView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ReplayerViewController *)self setView:v3];
}

@end