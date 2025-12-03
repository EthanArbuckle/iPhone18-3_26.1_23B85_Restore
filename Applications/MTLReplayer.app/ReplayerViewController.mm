@interface ReplayerViewController
- (void)loadView;
- (void)setColorPixelFormat:(unint64_t)format;
- (void)setDevice:(id)device;
- (void)setDisplayTextureEncoder:(id)encoder;
- (void)setOrientation:(int64_t)orientation;
- (void)viewDidLoad;
@end

@implementation ReplayerViewController

- (void)setColorPixelFormat:(unint64_t)format
{
  view = [(ReplayerViewController *)self view];
  [view setColorPixelFormat:format];
}

- (void)setOrientation:(int64_t)orientation
{
  if (+[NSThread isMainThread])
  {
    if ((orientation - 1) > 3)
    {
      v5 = 30;
    }

    else
    {
      v5 = qword_10000CCC8[orientation - 1];
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
    block[5] = orientation;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setDisplayTextureEncoder:(id)encoder
{
  encoderCopy = encoder;
  view = [(ReplayerViewController *)self view];
  device = [encoderCopy device];
  [view setDevice:device];

  [(Renderer *)self->_renderer setDisplayTextureEncoder:encoderCopy];
  [view draw];
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  if (+[NSThread isMainThread])
  {
    [(ReplayerViewController *)self loadView];
    view = [(ReplayerViewController *)self view];
    [view setDevice:deviceCopy];
    [view setColorPixelFormat:81];
    [view setPaused:1];
    [view setAutoResizeDrawable:1];
    window = [view window];
    windowScene = [window windowScene];

    effectiveGeometry = [windowScene effectiveGeometry];
    if (objc_opt_respondsToSelector())
    {
      v9 = effectiveGeometry;
    }

    else
    {
      v9 = windowScene;
    }

    coordinateSpace = [v9 coordinateSpace];
    [coordinateSpace bounds];
    [view setBounds:?];

    layer = [view layer];
    [layer setColorspace:CGColorSpaceCreateWithName(kCGColorSpaceSRGB)];
    v12 = [[Renderer alloc] initWithMetalKitView:view];
    renderer = self->_renderer;
    self->_renderer = v12;

    v14 = self->_renderer;
    [view drawableSize];
    [(Renderer *)v14 mtkView:view drawableSizeWillChange:?];
    [view setDelegate:self->_renderer];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006C84;
    v15[3] = &unk_100014B50;
    v15[4] = self;
    v16 = deviceCopy;
    dispatch_sync(&_dispatch_main_q, v15);
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ReplayerViewController;
  [(ReplayerViewController *)&v5 viewDidLoad];
  view = [(ReplayerViewController *)self view];
  v4 = +[UIColor blackColor];
  [view setBackgroundColor:v4];

  self->_orientationMask = 30;
}

- (void)loadView
{
  v3 = [[MTKView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ReplayerViewController *)self setView:v3];
}

@end