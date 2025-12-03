@interface AXMotionCuesLearnMorePageController
+ (id)fetchTitleForPage:(int64_t)page;
- (AXMotionCuesLearnMorePageController)initWithPage:(int64_t)page;
- (id)fetchMainButtonTitle;
- (id)fetchMovieName;
- (id)setupAssetReader;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (void)configureTimebase;
- (void)loadMovie;
- (void)mainButtonTapped;
- (void)playMovie;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXMotionCuesLearnMorePageController

+ (id)fetchTitleForPage:(int64_t)page
{
  if (page == 1)
  {
    v4 = @"MotionCuesLearnMorePageSideMotionTitle";
  }

  else
  {
    if (page != 2)
    {
      goto LABEL_6;
    }

    v4 = @"MotionCuesLearnMorePageForwardBackwardMotionTitle";
  }

  self = settingsLocString(v4, @"Accessibility-MotionCues");
LABEL_6:

  return self;
}

- (AXMotionCuesLearnMorePageController)initWithPage:(int64_t)page
{
  v5 = [AXMotionCuesLearnMorePageController fetchTitleForPage:?];
  v17.receiver = self;
  v17.super_class = AXMotionCuesLearnMorePageController;
  v6 = [(AXMotionCuesLearnMorePageController *)&v17 initWithTitle:v5 detailText:0 symbolName:0 contentLayout:1];

  *(v6 + 12) = page;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  fetchMovieName = [v6 fetchMovieName];
  v9 = [v7 URLForResource:fetchMovieName withExtension:@"mov"];

  v10 = [AVURLAsset assetWithURL:v9];
  v11 = *(v6 + 1);
  *(v6 + 1) = v10;

  *(v6 + 56) = *&kCMTimeZero.value;
  *(v6 + 9) = kCMTimeZero.epoch;
  v12 = dispatch_queue_create("AXMotionCuesLearnMorePageHelperQueue", 0);
  v13 = *(v6 + 10);
  *(v6 + 10) = v12;

  v14 = dispatch_queue_create("AXMotionCuesLearnMorePageAvsbdlEnqueueQueue", 0);
  v15 = *(v6 + 11);
  *(v6 + 11) = v14;

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXMotionCuesLearnMorePageController;
  [(AXMotionCuesLearnMorePageController *)&v11 viewDidLayoutSubviews];
  IsPad = AXDeviceIsPad();
  contentView = [(AXMotionCuesLearnMorePageController *)self contentView];
  [contentView frame];
  v6 = v5;
  [(AXMotionCuesLearnMorePageController *)self contentView];
  if (IsPad)
    v7 = {;
    [v7 frame];
    v9 = v8 * 0.8;
    contentView2 = [(AXMotionCuesLearnMorePageController *)self contentView];
    [contentView2 frame];
    [(AVSampleBufferDisplayLayer *)self->_avsbdl setFrame:v6 * 0.1, 10.0, v9];
  }

  else
    v7 = {;
    [v7 frame];
    [(AVSampleBufferDisplayLayer *)self->_avsbdl setFrame:0.0, 0.0, v6];
  }
}

- (void)viewDidLoad
{
  if (self->_page != 2)
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
    navigationItem = [(AXMotionCuesLearnMorePageController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v3];
  }

  v22 = +[OBBoldTrayButton boldButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  fetchMainButtonTitle = [(AXMotionCuesLearnMorePageController *)self fetchMainButtonTitle];
  [v22 setTitle:fetchMainButtonTitle forState:0];

  [v22 addTarget:self action:"mainButtonTapped" forControlEvents:64];
  [(AXMotionCuesLearnMorePageController *)self setMainButton:v22];
  buttonTray = [(AXMotionCuesLearnMorePageController *)self buttonTray];
  [buttonTray addButton:v22];

  v7 = +[UIColor clearColor];
  navigationController = [(AXMotionCuesLearnMorePageController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundColor:v7];

  v10 = objc_alloc_init(AVSampleBufferDisplayLayer);
  avsbdl = self->_avsbdl;
  self->_avsbdl = v10;

  [(AVSampleBufferDisplayLayer *)self->_avsbdl setVideoGravity:AVLayerVideoGravityResizeAspect];
  [(AVSampleBufferDisplayLayer *)self->_avsbdl setMasksToBounds:0];
  LODWORD(v12) = 0.5;
  [(AVSampleBufferDisplayLayer *)self->_avsbdl setShadowOpacity:v12];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  [(AVSampleBufferDisplayLayer *)self->_avsbdl setShadowRadius:50.0 / v14];

  [(AVSampleBufferDisplayLayer *)self->_avsbdl setShadowOffset:0.0, 20.0];
  [(AVSampleBufferDisplayLayer *)self->_avsbdl bounds];
  v25 = CGRectInset(v24, 10.0, 10.0);
  v15 = [UIBezierPath bezierPathWithRect:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
  -[AVSampleBufferDisplayLayer setShadowPath:](self->_avsbdl, "setShadowPath:", [v15 CGPath]);

  v16 = +[UIColor clearColor];
  -[AVSampleBufferDisplayLayer setBackgroundColor:](self->_avsbdl, "setBackgroundColor:", [v16 cgColor]);

  contentView = [(AXMotionCuesLearnMorePageController *)self contentView];
  layer = [contentView layer];
  [layer addSublayer:self->_avsbdl];

  contentView2 = [(AXMotionCuesLearnMorePageController *)self contentView];
  [contentView2 setClipsToBounds:1];

  v20 = +[UIColor systemGroupedBackgroundColor];
  contentView3 = [(AXMotionCuesLearnMorePageController *)self contentView];
  [contentView3 setBackgroundColor:v20];

  [(AXMotionCuesLearnMorePageController *)self configureTimebase];
}

- (void)loadMovie
{
  objc_initWeak(&location, self);
  asset = self->_asset;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke;
  v4[3] = &unk_256B90;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [(AVAsset *)asset loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke_2;
  block[3] = &unk_256B68;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3 && ![v3 count])
    {
      v15 = AXLogMotionCues();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke_2_cold_1(a1, v15);
      }
    }

    else
    {
      v4 = [WeakRetained setupAssetReader];
      v5 = WeakRetained[2];
      WeakRetained[2] = v4;

      v6 = [WeakRetained[2] outputs];
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = WeakRetained[3];
      WeakRetained[3] = v7;

      v9 = [WeakRetained setupAssetReader];
      v10 = WeakRetained[4];
      WeakRetained[4] = v9;

      v11 = [WeakRetained[4] outputs];
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = WeakRetained[5];
      WeakRetained[5] = v12;

      [WeakRetained playMovie];
    }
  }

  else
  {
    v14 = AXLogMotionCues();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke_2_cold_2(v14);
    }
  }
}

- (id)setupAssetReader
{
  tracks = [(AVAsset *)self->_asset tracks];
  v4 = [tracks objectAtIndex:0];

  v5 = [NSNumber numberWithUnsignedInt:32];
  v6 = kCVPixelBufferPixelFormatTypeKey;
  v7 = +[NSDictionary dictionary];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v5, v6, v7, kCVPixelBufferIOSurfacePropertiesKey, 0];

  v9 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:v4 outputSettings:v8];
  v10 = [AVAssetReader assetReaderWithAsset:self->_asset error:0];
  if ([v10 canAddOutput:v9])
  {
    [v10 addOutput:v9];
  }

  return v10;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AXMotionCuesLearnMorePageController;
  [(AXMotionCuesLearnMorePageController *)&v5 viewWillDisappear:disappear];
  sampleBufferRenderer = [(AVSampleBufferDisplayLayer *)self->_avsbdl sampleBufferRenderer];
  [sampleBufferRenderer stopRequestingMediaData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXMotionCuesLearnMorePageController;
  [(AXMotionCuesLearnMorePageController *)&v4 viewWillAppear:appear];
  [(AXMotionCuesLearnMorePageController *)self loadMovie];
}

- (void)playMovie
{
  objc_initWeak(&location, self);
  [(AVAssetReader *)self->_primaryReader startReading];
  sampleBufferRenderer = [(AVSampleBufferDisplayLayer *)self->_avsbdl sampleBufferRenderer];
  avsbdlQueue = self->_avsbdlQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__AXMotionCuesLearnMorePageController_playMovie__block_invoke;
  v5[3] = &unk_255388;
  objc_copyWeak(&v6, &location);
  [sampleBufferRenderer requestMediaDataWhenReadyOnQueue:avsbdlQueue usingBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__AXMotionCuesLearnMorePageController_playMovie__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [WeakRetained[6] sampleBufferRenderer];
    v3 = [v2 isReadyForMoreMediaData];

    WeakRetained = v9;
    if (v3)
    {
      while (1)
      {
        v4 = [WeakRetained copyNextSampleBuffer];
        v5 = [v9[6] sampleBufferRenderer];
        v6 = v5;
        if (!v4)
        {
          break;
        }

        [v5 enqueueSampleBuffer:v4];

        CFRelease(v4);
        v7 = [v9[6] sampleBufferRenderer];
        v8 = [v7 isReadyForMoreMediaData];

        WeakRetained = v9;
        if ((v8 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      [v5 stopRequestingMediaData];

      WeakRetained = v9;
    }
  }

LABEL_7:
}

- (void)configureTimebase
{
  timebaseOut = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(kCFAllocatorDefault, HostTimeClock, &timebaseOut);
  [(AVSampleBufferDisplayLayer *)self->_avsbdl setControlTimebase:timebaseOut];
  CMTimebaseSetRate(timebaseOut, 1.0);
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  copyNextSampleBuffer = [(AVAssetReaderOutput *)self->_primaryOutput copyNextSampleBuffer];
  if (copyNextSampleBuffer && (v4 = copyNextSampleBuffer, -[AVAssetReader status](self->_primaryReader, "status") != &dword_0 + 2) || (objc_storeStrong(&self->_primaryReader, self->_backupReader), objc_storeStrong(&self->_primaryOutput, self->_backupOutput), -[AXMotionCuesLearnMorePageController setupAssetReader](self, "setupAssetReader"), v5 = objc_claimAutoreleasedReturnValue(), backupReader = self->_backupReader, self->_backupReader = v5, backupReader, -[AVAssetReader outputs](self->_backupReader, "outputs"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectAtIndexedSubscript:0], v8 = objc_claimAutoreleasedReturnValue(), backupOutput = self->_backupOutput, self->_backupOutput = v8, backupOutput, v7, -[AVAssetReader startReading](self->_primaryReader, "startReading"), -[AVSampleBufferDisplayLayer sampleBufferRenderer](self->_avsbdl, "sampleBufferRenderer"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "flush"), v10, -[AXMotionCuesLearnMorePageController configureTimebase](self, "configureTimebase"), CMTimeMake(&rhs, 1, 1), lhs = self->_nextSampleOffset, CMTimeAdd(&outputPresentationTimeStamp, &lhs, &rhs), self->_nextSampleOffset = outputPresentationTimeStamp, (v4 = -[AVAssetReaderOutput copyNextSampleBuffer](self->_primaryOutput, "copyNextSampleBuffer")) != 0))
  {
    p_nextSampleOffset = &self->_nextSampleOffset;
    outputPresentationTimeStamp = *p_nextSampleOffset;
    CMSampleBufferSetOutputPresentationTimeStamp(v4, &outputPresentationTimeStamp);
    memset(&outputPresentationTimeStamp, 0, sizeof(outputPresentationTimeStamp));
    CMSampleBufferGetOutputDuration(&outputPresentationTimeStamp, v4);
    lhs = *p_nextSampleOffset;
    v13 = outputPresentationTimeStamp;
    CMTimeAdd(&rhs, &lhs, &v13);
    *p_nextSampleOffset = rhs;
  }

  return v4;
}

- (id)fetchMovieName
{
  if (AXDeviceIsPad())
  {
    v3 = @"pad";
  }

  else
  {
    v3 = @"phone";
  }

  traitCollection = [(AXMotionCuesLearnMorePageController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == &dword_0 + 2)
  {
    v5 = @"dark";
  }

  else
  {
    v5 = @"light";
  }

  contentView = [(AXMotionCuesLearnMorePageController *)self contentView];
  effectiveUserInterfaceLayoutDirection = [contentView effectiveUserInterfaceLayoutDirection];
  v8 = @"ltr";
  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v8 = @"rtl";
  }

  if (self->_page == 1)
  {
    v9 = @"turn";
  }

  else
  {
    v9 = @"accel";
  }

  v10 = [NSString stringWithFormat:@"MotionCues-learnMorePage-%@-%@-%@-%@", v3, v5, v8, v9];

  return v10;
}

- (id)fetchMainButtonTitle
{
  if (self->_page == 2)
  {
    v2 = @"MotionCuesLearnMoreDoneButtonTitle";
  }

  else
  {
    v2 = @"MotionCuesLearnMoreContinueButtonTitle";
  }

  v3 = settingsLocString(v2, @"Accessibility-MotionCues");

  return v3;
}

- (void)mainButtonTapped
{
  page = self->_page;
  if (page == 2)
  {

    [(AXMotionCuesLearnMorePageController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else if (page == 1)
  {
    v5 = [[AXMotionCuesLearnMorePageController alloc] initWithPage:2];
    navigationController = [(AXMotionCuesLearnMorePageController *)self navigationController];
    [navigationController pushViewController:v5 animated:1];
  }
}

void __48__AXMotionCuesLearnMorePageController_loadMovie__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to load tracks for learn more page with error: %@", &v3, 0xCu);
}

@end