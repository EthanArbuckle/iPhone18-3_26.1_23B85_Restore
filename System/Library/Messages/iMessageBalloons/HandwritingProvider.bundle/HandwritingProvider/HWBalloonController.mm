@interface HWBalloonController
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptPluginView)pluginContentView;
- (HWBalloonController)initWithDataSource:(id)source isFromMe:(BOOL)me;
- (void)_applicationDidBecomeActive:(id)active;
- (void)cancelPlayback;
- (void)dealloc;
- (void)playbackWithCompletionBlock:(id)block;
@end

@implementation HWBalloonController

- (HWBalloonController)initWithDataSource:(id)source isFromMe:(BOOL)me
{
  meCopy = me;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HWBalloonController;
  v7 = [(HWBalloonController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(HWAbstractBalloonController *)v7 setBalloonPluginDatasource:sourceCopy];
    [(HWAbstractBalloonController *)v8 setDatasourceIsFromMe:meCopy];
    balloonPluginDatasource = [(HWAbstractBalloonController *)v8 balloonPluginDatasource];
    [balloonPluginDatasource setBalloonController:v8];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v8 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HWBalloonController;
  [(HWBalloonController *)&v4 dealloc];
}

- (CKTranscriptPluginView)pluginContentView
{
  pluginContentView = self->_pluginContentView;
  if (!pluginContentView)
  {
    v4 = [[HWPluginContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    balloonPluginDatasource = [(HWAbstractBalloonController *)self balloonPluginDatasource];
    [(HWPluginContentView *)v4 setDataSource:balloonPluginDatasource];

    balloonPluginDatasource2 = [(HWAbstractBalloonController *)self balloonPluginDatasource];
    handwritingFromPayload = [balloonPluginDatasource2 handwritingFromPayload];
    [(HWPluginContentView *)v4 setHandwriting:handwritingFromPayload];

    [(HWBalloonController *)self setPluginContentView:v4];
    pluginContentView = self->_pluginContentView;
  }

  return pluginContentView;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  balloonPluginDatasource = [(HWAbstractBalloonController *)self balloonPluginDatasource];
  [balloonPluginDatasource sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = self->_pluginContentView;
  v5 = v4;
  if (v4)
  {
    imageView = [(CKTranscriptPluginView *)v4 imageView];
    image = [imageView image];

    if (!image)
    {
      [(CKTranscriptPluginView *)v5 setNeedsLayout];
    }
  }
}

- (void)playbackWithCompletionBlock:(id)block
{
  blockCopy = block;
  datasourceIsFromMe = [(HWAbstractBalloonController *)self datasourceIsFromMe];
  pluginContentView = [(HWBalloonController *)self pluginContentView];
  v7 = pluginContentView;
  if (datasourceIsFromMe)
  {
    [pluginContentView cleanupAfterAnimation];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1385C;
    v8[3] = &unk_28628;
    v9 = blockCopy;
    [v7 replayDrawingWithCompletionBlock:v8];
  }
}

- (void)cancelPlayback
{
  pluginContentView = [(HWBalloonController *)self pluginContentView];
  [pluginContentView cleanupAfterAnimation];
}

@end