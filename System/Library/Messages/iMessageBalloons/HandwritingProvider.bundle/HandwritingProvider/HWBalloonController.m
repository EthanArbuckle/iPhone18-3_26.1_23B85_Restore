@interface HWBalloonController
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptPluginView)pluginContentView;
- (HWBalloonController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)cancelPlayback;
- (void)dealloc;
- (void)playbackWithCompletionBlock:(id)a3;
@end

@implementation HWBalloonController

- (HWBalloonController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HWBalloonController;
  v7 = [(HWBalloonController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(HWAbstractBalloonController *)v7 setBalloonPluginDatasource:v6];
    [(HWAbstractBalloonController *)v8 setDatasourceIsFromMe:v4];
    v9 = [(HWAbstractBalloonController *)v8 balloonPluginDatasource];
    [v9 setBalloonController:v8];

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
    v5 = [(HWAbstractBalloonController *)self balloonPluginDatasource];
    [(HWPluginContentView *)v4 setDataSource:v5];

    v6 = [(HWAbstractBalloonController *)self balloonPluginDatasource];
    v7 = [v6 handwritingFromPayload];
    [(HWPluginContentView *)v4 setHandwriting:v7];

    [(HWBalloonController *)self setPluginContentView:v4];
    pluginContentView = self->_pluginContentView;
  }

  return pluginContentView;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HWAbstractBalloonController *)self balloonPluginDatasource];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v8 = a3;
  v4 = self->_pluginContentView;
  v5 = v4;
  if (v4)
  {
    v6 = [(CKTranscriptPluginView *)v4 imageView];
    v7 = [v6 image];

    if (!v7)
    {
      [(CKTranscriptPluginView *)v5 setNeedsLayout];
    }
  }
}

- (void)playbackWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(HWAbstractBalloonController *)self datasourceIsFromMe];
  v6 = [(HWBalloonController *)self pluginContentView];
  v7 = v6;
  if (v5)
  {
    [v6 cleanupAfterAnimation];
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1385C;
    v8[3] = &unk_28628;
    v9 = v4;
    [v7 replayDrawingWithCompletionBlock:v8];
  }
}

- (void)cancelPlayback
{
  v2 = [(HWBalloonController *)self pluginContentView];
  [v2 cleanupAfterAnimation];
}

@end