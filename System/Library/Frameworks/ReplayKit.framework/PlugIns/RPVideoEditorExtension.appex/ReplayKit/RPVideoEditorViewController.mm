@interface RPVideoEditorViewController
- (BOOL)deviceHasHomeButton;
- (BOOL)shouldApplyPadUILayout;
- (CGSize)getThumbnailSize;
- (CGSize)getVideoSize;
- (RPVideoEditorViewController)initWithBundleIdentifier:(id)identifier URL:(id)l applicationName:(id)name overrideTintColor:(id)color size:(CGRect)size;
- (double)getPlayerDuration;
- (double)movieScrubberThumbnailAspectRatio:(id)ratio;
- (id)delegate;
- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt;
- (id)trimFileURL;
- (int)currentOrientation;
- (void)applyPadConstraints;
- (void)applyPadUILayout;
- (void)applyPhoneConstraints;
- (void)applyPhoneUILayout;
- (void)configureReplayUIHidden;
- (void)dealloc;
- (void)displayShareSheetWithVideoURL:(id)l;
- (void)doneAction;
- (void)editMode;
- (void)hideUI;
- (void)itemDidFinishPlaying:(id)playing;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)movieScrubber:(id)scrubber editingEndValueDidChange:(double)change;
- (void)movieScrubber:(id)scrubber editingStartValueDidChange:(double)change;
- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp;
- (void)movieScrubber:(id)scrubber valueDidChange:(double)change;
- (void)movieScrubberDidBeginEditing:(id)editing;
- (void)movieScrubberDidCancelEditing:(id)editing;
- (void)movieScrubberDidEndScrubbing:(id)scrubbing withHandle:(int)handle;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseAction;
- (void)playAction;
- (void)previewMode;
- (void)refreshAVRotation;
- (void)reloadAVLayerWithURL:(id)l;
- (void)saveAction;
- (void)setThumbnailFromCacheWithTimeStamp:(id)stamp;
- (void)shareAction;
- (void)showUI;
- (void)trimVideo;
- (void)undoAction;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RPVideoEditorViewController

- (BOOL)deviceHasHomeButton
{
  if (qword_10001F0A8 != -1)
  {
    sub_10000B554();
  }

  return byte_10001ECE0;
}

- (RPVideoEditorViewController)initWithBundleIdentifier:(id)identifier URL:(id)l applicationName:(id)name overrideTintColor:(id)color size:(CGRect)size
{
  height = size.size.height;
  width = size.size.width;
  y = size.origin.y;
  x = size.origin.x;
  identifierCopy = identifier;
  lCopy = l;
  nameCopy = name;
  colorCopy = color;
  v182.receiver = self;
  v182.super_class = RPVideoEditorViewController;
  v18 = [(RPVideoEditorViewController *)&v182 init];
  if (!v18)
  {
    goto LABEL_21;
  }

  v174 = nameCopy;
  v175 = identifierCopy;
  v183.origin.x = x;
  v183.origin.y = y;
  v183.size.width = width;
  v183.size.height = height;
  if (!CGRectIsEmpty(v183))
  {
    view = [(RPVideoEditorViewController *)v18 view];
    [view setFrame:{x, y, width, height}];
  }

  v20 = +[NSMutableArray array];
  [(RPVideoEditorViewController *)v18 setActivityTypes:v20];

  [(RPVideoEditorViewController *)v18 setHasEdit:0];
  [(RPVideoEditorViewController *)v18 setHasHomeButton:[(RPVideoEditorViewController *)v18 deviceHasHomeButton]];
  [(RPVideoEditorViewController *)v18 setShareSheetUp:0];
  v21 = objc_alloc_init(UIView);
  [(RPVideoEditorViewController *)v18 setVideoOverlay:v21];

  view2 = [(RPVideoEditorViewController *)v18 view];
  [view2 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  videoOverlay = [(RPVideoEditorViewController *)v18 videoOverlay];
  [videoOverlay setFrame:{v24, v26, v28, v30}];

  [(RPVideoEditorViewController *)v18 setUiHidden:0];
  v32 = [[UITapGestureRecognizer alloc] initWithTarget:v18 action:"handleSingleTap:"];
  videoOverlay2 = [(RPVideoEditorViewController *)v18 videoOverlay];
  v173 = v32;
  [videoOverlay2 addGestureRecognizer:v32];

  v34 = [UIView _srVideoOverlayButtonWithStyle:0];
  [(RPVideoEditorViewController *)v18 setVideoOverlayPlayButton:v34];

  v35 = +[UIScreen mainScreen];
  [v35 bounds];
  v37 = v36 * 0.5;
  videoOverlayPlayButton = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton frame];
  v40 = v37 - v39 * 0.5;
  v41 = +[UIScreen mainScreen];
  [v41 bounds];
  v43 = v42 * 0.5;
  videoOverlayPlayButton2 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton2 frame];
  v46 = v43 - v45 * 0.5;
  videoOverlayPlayButton3 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton3 frame];
  v49 = v48;
  videoOverlayPlayButton4 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton4 frame];
  v52 = v51;
  videoOverlayPlayButton5 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton5 setFrame:{v40, v46, v49, v52}];

  videoOverlayPlayButton6 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [videoOverlayPlayButton6 setTarget:v18 action:"playAction"];

  [(RPVideoEditorViewController *)v18 setIntroMode:1];
  [(RPVideoEditorViewController *)v18 setOriginalVideoURL:lCopy];
  [(RPVideoEditorViewController *)v18 setVideoURL:lCopy];
  [(RPVideoEditorViewController *)v18 setApplicationName:v174];
  [(RPVideoEditorViewController *)v18 setBundleIdentifier:v175];
  v55 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 120.0, 17.0}];
  [(RPVideoEditorViewController *)v18 setTitleLabel:v55];

  titleLabel = [(RPVideoEditorViewController *)v18 titleLabel];
  v57 = [UIFont systemFontOfSize:15.0];
  [titleLabel setFont:v57];

  titleLabel2 = [(RPVideoEditorViewController *)v18 titleLabel];
  v59 = +[UIColor clearColor];
  [titleLabel2 setBackgroundColor:v59];

  traitCollection = [(RPVideoEditorViewController *)v18 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    titleLabel3 = [(RPVideoEditorViewController *)v18 titleLabel];
    v63 = +[UIColor whiteColor];
LABEL_8:
    v66 = v63;
    [titleLabel3 setTextColor:v63];

    goto LABEL_9;
  }

  traitCollection2 = [(RPVideoEditorViewController *)v18 traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle2 == 1)
  {
    titleLabel3 = [(RPVideoEditorViewController *)v18 titleLabel];
    v63 = +[UIColor blackColor];
    goto LABEL_8;
  }

LABEL_9:
  titleLabel4 = [(RPVideoEditorViewController *)v18 titleLabel];
  applicationName = [(RPVideoEditorViewController *)v18 applicationName];
  [titleLabel4 setText:applicationName];

  titleLabel5 = [(RPVideoEditorViewController *)v18 titleLabel];
  [titleLabel5 setTextAlignment:1];

  titleLabel6 = [(RPVideoEditorViewController *)v18 titleLabel];
  [titleLabel6 setClipsToBounds:0];

  v71 = [[UILabel alloc] initWithFrame:{0.0, 17.0, 120.0, 17.0}];
  v72 = +[UIColor clearColor];
  [v71 setBackgroundColor:v72];

  v73 = [UIFont systemFontOfSize:10.0];
  [v71 setFont:v73];

  [v71 setTextAlignment:1];
  v74 = +[NSFileManager defaultManager];
  v75 = [v74 _srGetCreationDateForFile:lCopy];

  v172 = v75;
  v76 = [NSDate _srGetStringFromDate:v75];
  [v71 setText:v76];

  titleLabel7 = [(RPVideoEditorViewController *)v18 titleLabel];
  [titleLabel7 addSubview:v71];

  v78 = [UIBarButtonItem alloc];
  titleLabel8 = [(RPVideoEditorViewController *)v18 titleLabel];
  v80 = [v78 initWithCustomView:titleLabel8];
  [(RPVideoEditorViewController *)v18 setTitleButton:v80];

  trimFileURL = [(RPVideoEditorViewController *)v18 trimFileURL];
  [(RPVideoEditorViewController *)v18 setTrimFilePath:trimFileURL];

  [(RPVideoEditorViewController *)v18 setTrimming:0];
  [(RPVideoEditorViewController *)v18 setExporting:0];
  v82 = [[AVURLAsset alloc] initWithURL:lCopy options:0];
  [(RPVideoEditorViewController *)v18 setAvAsset:v82];

  v83 = [AVPlayerItem alloc];
  avAsset = [(RPVideoEditorViewController *)v18 avAsset];
  v85 = [v83 initWithAsset:avAsset];
  [(RPVideoEditorViewController *)v18 setAvPlayerItem:v85];

  v86 = [AVPlayer alloc];
  avPlayerItem = [(RPVideoEditorViewController *)v18 avPlayerItem];
  v88 = [v86 initWithPlayerItem:avPlayerItem];
  [(RPVideoEditorViewController *)v18 setAvPlayer:v88];

  avPlayer = [(RPVideoEditorViewController *)v18 avPlayer];
  v181 = kCMTimeZero;
  [avPlayer seekToTime:&v181];

  v90 = +[NSNotificationCenter defaultCenter];
  avPlayerItem2 = [(RPVideoEditorViewController *)v18 avPlayerItem];
  [v90 addObserver:v18 selector:"itemDidFinishPlaying:" name:AVPlayerItemDidPlayToEndTimeNotification object:avPlayerItem2];

  v92 = objc_alloc_init(AVPlayerLayer);
  [(RPVideoEditorViewController *)v18 setAvPlayerLayer:v92];

  avPlayer2 = [(RPVideoEditorViewController *)v18 avPlayer];
  avPlayerLayer = [(RPVideoEditorViewController *)v18 avPlayerLayer];
  [avPlayerLayer setPlayer:avPlayer2];

  avPlayer3 = [(RPVideoEditorViewController *)v18 avPlayer];
  currentItem = [avPlayer3 currentItem];
  [currentItem addObserver:v18 forKeyPath:@"status" options:0 context:0];

  avPlayer4 = [(RPVideoEditorViewController *)v18 avPlayer];
  currentItem2 = [avPlayer4 currentItem];
  [currentItem2 addObserver:v18 forKeyPath:@"duration" options:0 context:0];

  [(RPVideoEditorViewController *)v18 setCurrentItemLoaded:0];
  v99 = [[_UIBackdropView alloc] initWithFrame:2010 privateStyle:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RPVideoEditorViewController *)v18 setScrubberContainterView:v99];

  scrubberContainterView = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [scrubberContainterView setUserInteractionEnabled:1];

  scrubberContainterView2 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [scrubberContainterView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v102 = objc_alloc_init(UIMovieScrubber);
  [(RPVideoEditorViewController *)v18 setAvTrimmer:v102];

  avTrimmer = [(RPVideoEditorViewController *)v18 avTrimmer];
  [avTrimmer setAutoresizingMask:2];

  avTrimmer2 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [avTrimmer2 setMinimumTrimLength:1.0];

  avTrimmer3 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [avTrimmer3 setEditable:1];

  avTrimmer4 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [avTrimmer4 setZoomDelay:0.5];

  avTrimmer5 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [avTrimmer5 setEdgeInset:10.0];

  [(RPVideoEditorViewController *)v18 setScrubbing:0];
  memset(&v181, 0, sizeof(v181));
  CMTimeMakeWithSeconds(&v181, 0.0333333333, 1000000000);
  objc_initWeak(&location, v18);
  avPlayer5 = [(RPVideoEditorViewController *)v18 avPlayer];
  v178[0] = _NSConcreteStackBlock;
  v178[1] = 3221225472;
  v178[2] = sub_100003018;
  v178[3] = &unk_100018550;
  objc_copyWeak(&v179, &location);
  v177 = v181;
  v109 = [avPlayer5 addPeriodicTimeObserverForInterval:&v177 queue:0 usingBlock:v178];
  [(RPVideoEditorViewController *)v18 setPlaybackTimeObserver:v109];

  v110 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:v18 action:"shareAction"];
  [(RPVideoEditorViewController *)v18 setShareButton:v110];

  v111 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:21 target:v18 action:"undoAction"];
  [(RPVideoEditorViewController *)v18 setUndoButton:v111];

  v112 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:18 target:v18 action:"pauseAction"];
  [(RPVideoEditorViewController *)v18 setPauseButton:v112];

  v113 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:17 target:v18 action:"playAction"];
  [(RPVideoEditorViewController *)v18 setPlayButton:v113];

  v114 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v18 action:"doneAction"];
  [(RPVideoEditorViewController *)v18 setDoneButton:v114];

  v115 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:v18 action:"saveAction"];
  [(RPVideoEditorViewController *)v18 setSaveButton:v115];

  v116 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v18 action:"doneAction"];
  [(RPVideoEditorViewController *)v18 setCancelButton:v116];

  v117 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v18 action:"undoAction"];
  [(RPVideoEditorViewController *)v18 setCancelTrimButton:v117];

  v118 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v18 action:"saveAction"];
  [(RPVideoEditorViewController *)v18 setTrimButton:v118];

  v119 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  [(RPVideoEditorViewController *)v18 setFlexSpace:v119];

  v120 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
  [(RPVideoEditorViewController *)v18 setFixSpace:v120];

  view3 = [(RPVideoEditorViewController *)v18 view];
  [view3 frame];
  v123 = v122;
  fixSpace = [(RPVideoEditorViewController *)v18 fixSpace];
  [fixSpace setWidth:v123 * 0.005];

  v125 = objc_alloc_init(UIToolbar);
  [(RPVideoEditorViewController *)v18 setTopToolBar:v125];

  if ([(RPVideoEditorViewController *)v18 hasHomeButton])
  {
    view4 = [(RPVideoEditorViewController *)v18 view];
    [view4 bounds];
    v128 = v127;
    v129 = 60.0;
  }

  else
  {
    view4 = [(RPVideoEditorViewController *)v18 view];
    [view4 bounds];
    v128 = v130;
    v129 = 85.0;
  }

  topToolBar = [(RPVideoEditorViewController *)v18 topToolBar];
  [topToolBar setFrame:{0.0, 0.0, v128, v129}];

  topToolBar2 = [(RPVideoEditorViewController *)v18 topToolBar];
  [topToolBar2 setAutoresizingMask:2];

  topToolBar3 = [(RPVideoEditorViewController *)v18 topToolBar];
  [topToolBar3 setDelegate:v18];

  if (colorCopy)
  {
    topToolBar4 = [(RPVideoEditorViewController *)v18 topToolBar];
    [topToolBar4 setTintColor:colorCopy];
  }

  v135 = objc_alloc_init(UIToolbar);
  [(RPVideoEditorViewController *)v18 setBottomToolBar:v135];

  if ([(RPVideoEditorViewController *)v18 hasHomeButton])
  {
    view5 = [(RPVideoEditorViewController *)v18 view];
    [view5 bounds];
    v138 = v137;
    view6 = [(RPVideoEditorViewController *)v18 view];
    [view6 bounds];
    v141 = v140;
    v142 = v138 + -44.0;
    *&v143 = 44.0;
  }

  else
  {
    view5 = [(RPVideoEditorViewController *)v18 view];
    [view5 bounds];
    v145 = v144;
    view6 = [(RPVideoEditorViewController *)v18 view];
    [view6 bounds];
    v141 = v146;
    v142 = v145 + -64.0;
    *&v143 = 64.0;
  }

  v147 = *&v143;
  bottomToolBar = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [bottomToolBar setFrame:{0.0, v142, v141, v147}];

  bottomToolBar2 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [bottomToolBar2 setAutoresizingMask:2];

  bottomToolBar3 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [bottomToolBar3 setDelegate:v18];

  v151 = [UIView alloc];
  view7 = [(RPVideoEditorViewController *)v18 view];
  [view7 frame];
  v153 = [v151 initWithFrame:?];

  v154 = +[UIColor blackColor];
  [v153 setBackgroundColor:v154];

  view8 = [(RPVideoEditorViewController *)v18 view];
  [view8 addSubview:v153];

  view9 = [(RPVideoEditorViewController *)v18 view];
  layer = [view9 layer];
  avPlayerLayer2 = [(RPVideoEditorViewController *)v18 avPlayerLayer];
  [layer addSublayer:avPlayerLayer2];

  view10 = [(RPVideoEditorViewController *)v18 view];
  videoOverlay3 = [(RPVideoEditorViewController *)v18 videoOverlay];
  [view10 addSubview:videoOverlay3];

  view11 = [(RPVideoEditorViewController *)v18 view];
  bottomToolBar4 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [view11 addSubview:bottomToolBar4];

  view12 = [(RPVideoEditorViewController *)v18 view];
  topToolBar5 = [(RPVideoEditorViewController *)v18 topToolBar];
  [view12 addSubview:topToolBar5];

  view13 = [(RPVideoEditorViewController *)v18 view];
  scrubberContainterView3 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [view13 addSubview:scrubberContainterView3];

  scrubberContainterView4 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  avTrimmer6 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [scrubberContainterView4 addSubview:avTrimmer6];

  view14 = [(RPVideoEditorViewController *)v18 view];
  videoOverlayPlayButton7 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [view14 addSubview:videoOverlayPlayButton7];

  if ([(RPVideoEditorViewController *)v18 shouldApplyPadUILayout])
  {
    [(RPVideoEditorViewController *)v18 applyPadUILayout];
  }

  else
  {
    [(RPVideoEditorViewController *)v18 applyPhoneUILayout];
  }

  objc_destroyWeak(&v179);
  objc_destroyWeak(&location);

  nameCopy = v174;
  identifierCopy = v175;
LABEL_21:

  return v18;
}

- (BOOL)shouldApplyPadUILayout
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[UIDevice currentDevice];
    v8 = 136446722;
    v9 = "[RPVideoEditorViewController shouldApplyPadUILayout]";
    v10 = 1024;
    v11 = 324;
    v12 = 2048;
    userInterfaceIdiom = [v3 userInterfaceIdiom];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d userInterfaceIdiom=%ld", &v8, 0x1Cu);
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 6)
  {
    v5 = 1;
  }

  else
  {
    v6 = +[UIDevice currentDevice];
    v5 = [v6 userInterfaceIdiom] == 1 || -[RPVideoEditorViewController currentOrientation](self, "currentOrientation") == 1;
  }

  return v5;
}

- (void)applyPhoneUILayout
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[RPVideoEditorViewController applyPhoneUILayout]";
    v32 = 1024;
    v33 = 330;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  playButton = [(RPVideoEditorViewController *)self playButton];
  [playButton setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  pauseButton = [(RPVideoEditorViewController *)self pauseButton];
  [pauseButton setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  shareButton = [(RPVideoEditorViewController *)self shareButton];
  [shareButton setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    trimButton = [(RPVideoEditorViewController *)self trimButton];
    v12 = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, trimButton, 0];
    [topToolBar setItems:v12];

    bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
    flexSpace3 = [(RPVideoEditorViewController *)self flexSpace];
    playButton2 = [(RPVideoEditorViewController *)self playButton];
    flexSpace4 = [(RPVideoEditorViewController *)self flexSpace];
    flexSpace7 = [NSArray arrayWithObjects:flexSpace3, playButton2, flexSpace4, 0];
    [bottomToolBar setItems:flexSpace7];
  }

  else
  {
    isIntroMode = [(RPVideoEditorViewController *)self isIntroMode];
    bottomToolBar2 = [(RPVideoEditorViewController *)self bottomToolBar];
    shareButton2 = [(RPVideoEditorViewController *)self shareButton];
    flexSpace5 = [(RPVideoEditorViewController *)self flexSpace];
    v22 = flexSpace5;
    if (isIntroMode)
    {
      playButton3 = [NSArray arrayWithObjects:shareButton2, flexSpace5, 0];
      [bottomToolBar2 setItems:playButton3];
    }

    else
    {
      playButton3 = [(RPVideoEditorViewController *)self playButton];
      flexSpace6 = [(RPVideoEditorViewController *)self flexSpace];
      v25 = [NSArray arrayWithObjects:shareButton2, v22, playButton3, flexSpace6, 0];
      [bottomToolBar2 setItems:v25];
    }

    bottomToolBar = [(RPVideoEditorViewController *)self topToolBar];
    flexSpace3 = [(RPVideoEditorViewController *)self cancelButton];
    playButton2 = [(RPVideoEditorViewController *)self flexSpace];
    flexSpace4 = [(RPVideoEditorViewController *)self titleButton];
    flexSpace7 = [(RPVideoEditorViewController *)self flexSpace];
    saveButton = [(RPVideoEditorViewController *)self saveButton];
    v27 = [NSArray arrayWithObjects:flexSpace3, playButton2, flexSpace4, flexSpace7, saveButton, 0];
    [bottomToolBar setItems:v27];
  }

  view = [(RPVideoEditorViewController *)self view];
  bottomToolBar3 = [(RPVideoEditorViewController *)self bottomToolBar];
  [view addSubview:bottomToolBar3];

  [(RPVideoEditorViewController *)self applyPhoneConstraints];
  [(RPVideoEditorViewController *)self setPadMode:0];
}

- (void)applyPadUILayout
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v26 = "[RPVideoEditorViewController applyPadUILayout]";
    v27 = 1024;
    v28 = 366;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  playButton = [(RPVideoEditorViewController *)self playButton];
  [playButton setImageInsets:{8.0, 0.0, -8.0, 0.0}];

  pauseButton = [(RPVideoEditorViewController *)self pauseButton];
  [pauseButton setImageInsets:{8.0, 0.0, -8.0, 0.0}];

  shareButton = [(RPVideoEditorViewController *)self shareButton];
  [shareButton setImageInsets:{5.0, 0.0, -5.0, 0.0}];

  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton2 = [(RPVideoEditorViewController *)self playButton];
    fixSpace = [(RPVideoEditorViewController *)self fixSpace];
    trimButton = [(RPVideoEditorViewController *)self trimButton];
  }

  else
  {
    isIntroMode = [(RPVideoEditorViewController *)self isIntroMode];
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self cancelButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    if (!isIntroMode)
    {
      playButton2 = [(RPVideoEditorViewController *)self playButton];
      fixSpace = [(RPVideoEditorViewController *)self fixSpace];
      shareButton2 = [(RPVideoEditorViewController *)self shareButton];
      fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
      saveButton = [(RPVideoEditorViewController *)self saveButton];
      v24 = topToolBar;
      [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, playButton2, fixSpace, shareButton2, fixSpace2, saveButton, 0];
      v17 = flexSpace2;
      v18 = titleButton;
      v19 = flexSpace;
      v21 = v20 = cancelTrimButton;
      [v24 setItems:v21];

      cancelTrimButton = v20;
      flexSpace = v19;
      titleButton = v18;
      flexSpace2 = v17;

      topToolBar = v24;
      goto LABEL_10;
    }

    playButton2 = [(RPVideoEditorViewController *)self shareButton];
    fixSpace = [(RPVideoEditorViewController *)self fixSpace];
    trimButton = [(RPVideoEditorViewController *)self saveButton];
  }

  shareButton2 = trimButton;
  fixSpace2 = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, playButton2, fixSpace, trimButton, 0];
  [topToolBar setItems:fixSpace2];
LABEL_10:

  bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
  [bottomToolBar removeFromSuperview];

  [(RPVideoEditorViewController *)self applyPadConstraints];
  [(RPVideoEditorViewController *)self setPadMode:1];
}

- (void)applyPhoneConstraints
{
  view = [(RPVideoEditorViewController *)self view];
  scrubberContainterView = [(RPVideoEditorViewController *)self scrubberContainterView];
  view2 = [(RPVideoEditorViewController *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:scrubberContainterView attribute:5 relatedBy:0 toItem:view2 attribute:5 multiplier:1.0 constant:0.0];
  [view addConstraint:v6];

  view3 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView2 = [(RPVideoEditorViewController *)self scrubberContainterView];
  view4 = [(RPVideoEditorViewController *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:scrubberContainterView2 attribute:6 relatedBy:0 toItem:view4 attribute:6 multiplier:1.0 constant:0.0];
  [view3 addConstraint:v10];

  view5 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView3 = [(RPVideoEditorViewController *)self scrubberContainterView];
  bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
  v14 = [NSLayoutConstraint constraintWithItem:scrubberContainterView3 attribute:4 relatedBy:0 toItem:bottomToolBar attribute:3 multiplier:1.0 constant:0.0];
  [view5 addConstraint:v14];

  view6 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView4 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v16 = [NSLayoutConstraint constraintWithItem:scrubberContainterView4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:38.0];
  [view6 addConstraint:v16];
}

- (void)applyPadConstraints
{
  view = [(RPVideoEditorViewController *)self view];
  scrubberContainterView = [(RPVideoEditorViewController *)self scrubberContainterView];
  view2 = [(RPVideoEditorViewController *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:scrubberContainterView attribute:5 relatedBy:0 toItem:view2 attribute:5 multiplier:1.0 constant:0.0];
  [view addConstraint:v6];

  view3 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView2 = [(RPVideoEditorViewController *)self scrubberContainterView];
  view4 = [(RPVideoEditorViewController *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:scrubberContainterView2 attribute:6 relatedBy:0 toItem:view4 attribute:6 multiplier:1.0 constant:0.0];
  [view3 addConstraint:v10];

  view5 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView3 = [(RPVideoEditorViewController *)self scrubberContainterView];
  view6 = [(RPVideoEditorViewController *)self view];
  v14 = [NSLayoutConstraint constraintWithItem:scrubberContainterView3 attribute:4 relatedBy:0 toItem:view6 attribute:4 multiplier:1.0 constant:0.0];
  [view5 addConstraint:v14];

  view7 = [(RPVideoEditorViewController *)self view];
  scrubberContainterView4 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v16 = [NSLayoutConstraint constraintWithItem:scrubberContainterView4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:38.0];
  [view7 addConstraint:v16];
}

- (id)trimFileURL
{
  v3 = +[NSFileManager defaultManager];
  _srTempPath = [v3 _srTempPath];
  applicationName = [(RPVideoEditorViewController *)self applicationName];
  v6 = [NSString stringWithFormat:@"%@/%@_", _srTempPath, applicationName];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = [NSString stringWithFormat:@"%ld", v8];

  v10 = [NSString stringWithFormat:@"%@%@%@", v6, v9, @".mp4"];
  v11 = [NSURL fileURLWithPath:v10];

  return v11;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer currentItem];

  if (currentItem == objectCopy)
  {
    if ([pathCopy isEqualToString:@"status"])
    {
    }

    else
    {
      v12 = [pathCopy isEqualToString:@"duration"];

      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
    currentItem2 = [avPlayer2 currentItem];
    if ([currentItem2 status] == 1)
    {
      avPlayer3 = [(RPVideoEditorViewController *)self avPlayer];
      currentItem3 = [avPlayer3 currentItem];
      v17 = currentItem3;
      if (currentItem3)
      {
        [currentItem3 duration];

        if ((v22 & 0x1D) == 1)
        {
          if ([(RPVideoEditorViewController *)self currentItemLoaded])
          {
            goto LABEL_15;
          }

          [(RPVideoEditorViewController *)self setCurrentItemLoaded:1];
          [(RPVideoEditorViewController *)self setThumbnailGenerator:0];
          [(RPVideoEditorViewController *)self setCachedTimeStamps:0];
          avTrimmer = [(RPVideoEditorViewController *)self avTrimmer];
          [avTrimmer setDelegate:self];

          avTrimmer2 = [(RPVideoEditorViewController *)self avTrimmer];
          [avTrimmer2 setDataSource:self];

          [(RPVideoEditorViewController *)self setEditStartTime:0.0];
          [(RPVideoEditorViewController *)self getPlayerDuration];
          [(RPVideoEditorViewController *)self setEditEndTime:?];
          avTrimmer3 = [(RPVideoEditorViewController *)self avTrimmer];
          [avTrimmer3 reloadData];
LABEL_14:

          goto LABEL_15;
        }

LABEL_13:
        avTrimmer3 = [(RPVideoEditorViewController *)self avPlayer];
        currentItem4 = [avTrimmer3 currentItem];
        [currentItem4 status];

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)itemDidFinishPlaying:(id)playing
{
  [(RPVideoEditorViewController *)self pauseAction];
  if ([(RPVideoEditorViewController *)self isUIHidden])
  {
    [(RPVideoEditorViewController *)self showUI];
  }

  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [avPlayer seekToTime:&v5];
}

- (void)configureReplayUIHidden
{
  if ([(RPVideoEditorViewController *)self isUIHidden])
  {

    [(RPVideoEditorViewController *)self showUI];
  }

  else
  {

    [(RPVideoEditorViewController *)self hideUI];
  }
}

- (void)showUI
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000438C;
  v3[3] = &unk_100018578;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.25];
  [(RPVideoEditorViewController *)self setUiHidden:0];
}

- (void)hideUI
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000044A8;
  v3[3] = &unk_100018578;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.25];
  [(RPVideoEditorViewController *)self setUiHidden:1];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = RPVideoEditorViewController;
  [(RPVideoEditorViewController *)&v10 viewDidLayoutSubviews];
  view = [(RPVideoEditorViewController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(RPVideoEditorViewController *)self view];
  [view2 bounds];
  v8 = v7;
  avPlayerLayer = [(RPVideoEditorViewController *)self avPlayerLayer];
  [avPlayerLayer setFrame:{0.0, 0.0, v5, v8}];
}

- (void)dealloc
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  [avPlayer removeTimeObserver:self->_playbackTimeObserver];

  avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer2 currentItem];
  [currentItem removeObserver:self forKeyPath:@"status"];

  avPlayer3 = [(RPVideoEditorViewController *)self avPlayer];
  currentItem2 = [avPlayer3 currentItem];
  [currentItem2 removeObserver:self forKeyPath:@"duration"];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  v9 = +[NSFileManager defaultManager];
  [v9 _srDeleteAllTempFiles];

  v10.receiver = self;
  v10.super_class = RPVideoEditorViewController;
  [(RPVideoEditorViewController *)&v10 dealloc];
}

- (int)currentOrientation
{
  view = [(RPVideoEditorViewController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(RPVideoEditorViewController *)self view];
  [view2 bounds];
  v8 = v5 > v7;

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RPVideoEditorViewController;
  coordinatorCopy = coordinator;
  [(RPVideoEditorViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000049E4;
  v8[3] = &unk_1000185A0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_1000185E0];
}

- (void)refreshAVRotation
{
  view = [(RPVideoEditorViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  avPlayerLayer = [(RPVideoEditorViewController *)self avPlayerLayer];
  [avPlayerLayer setFrame:{v5, v7, v9, v11}];

  LODWORD(view) = [(RPVideoEditorViewController *)self hasHomeButton];
  view2 = [(RPVideoEditorViewController *)self view];
  [view2 bounds];
  v15 = v14;
  if (view)
  {
    v16 = 60.0;
  }

  else
  {
    v16 = 85.0;
  }

  topToolBar = [(RPVideoEditorViewController *)self topToolBar];
  [topToolBar setFrame:{0.0, 0.0, v15, v16}];

  LODWORD(topToolBar) = [(RPVideoEditorViewController *)self hasHomeButton];
  view3 = [(RPVideoEditorViewController *)self view];
  [view3 bounds];
  v20 = v19;
  view4 = [(RPVideoEditorViewController *)self view];
  v22 = view4;
  v23 = -64.0;
  if (topToolBar)
  {
    v23 = -44.0;
    v24 = 44.0;
  }

  else
  {
    v24 = 64.0;
  }

  v25 = v20 + v23;
  [view4 bounds];
  v27 = v26;
  bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
  [bottomToolBar setFrame:{0.0, v25, v27, v24}];

  [(RPVideoEditorViewController *)self setThumbnailGenerator:0];
  [(RPVideoEditorViewController *)self setCachedTimeStamps:0];
  avTrimmer = [(RPVideoEditorViewController *)self avTrimmer];
  [avTrimmer reloadData];
}

- (void)undoAction
{
  if (![(RPVideoEditorViewController *)self isExporting])
  {
    avTrimmer = [(RPVideoEditorViewController *)self avTrimmer];
    delegate = [avTrimmer delegate];
    avTrimmer2 = [(RPVideoEditorViewController *)self avTrimmer];
    [delegate movieScrubberDidCancelEditing:avTrimmer2];
  }
}

- (void)playAction
{
  isTrimming = [(RPVideoEditorViewController *)self isTrimming];
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  v5 = avPlayer;
  if (isTrimming)
  {
    [(RPVideoEditorViewController *)self editStartTime];
    v7 = v6;
    avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
    v9 = avPlayer2;
    if (avPlayer2)
    {
      [avPlayer2 currentTime];
      v10 = v42;
    }

    else
    {
      v10 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    CMTimeMakeWithSeconds(&v44, v7, v10);
    [v5 seekToTime:&v44];

    memset(&v44, 0, sizeof(v44));
    [(RPVideoEditorViewController *)self editEndTime];
    v12 = v11;
    avPlayer3 = [(RPVideoEditorViewController *)self avPlayer];
    v14 = avPlayer3;
    if (avPlayer3)
    {
      [avPlayer3 currentTime];
      v15 = v39;
    }

    else
    {
      v15 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    CMTimeMakeWithSeconds(&v44, v12, v15);

    location = v44;
    v16 = [NSValue valueWithCMTime:&location];
    objc_initWeak(&location, self);
    avPlayer4 = [(RPVideoEditorViewController *)self avPlayer];
    v45 = v16;
    v18 = [NSArray arrayWithObjects:&v45 count:1];
    v19 = &_dispatch_main_q;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100005290;
    v35[3] = &unk_100018608;
    objc_copyWeak(&v36, &location);
    v20 = [avPlayer4 addBoundaryTimeObserverForTimes:v18 queue:&_dispatch_main_q usingBlock:v35];
    [(RPVideoEditorViewController *)self setTimeObserver:v20];

    avPlayer5 = [(RPVideoEditorViewController *)self avPlayer];
    [avPlayer5 play];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    [avPlayer play];
  }

  if (![(RPVideoEditorViewController *)self isUIHidden])
  {
    [(RPVideoEditorViewController *)self hideUI];
  }

  if ([(RPVideoEditorViewController *)self isIntroMode])
  {
    videoOverlayPlayButton = [(RPVideoEditorViewController *)self videoOverlayPlayButton];
    [videoOverlayPlayButton removeFromSuperview];

    [(RPVideoEditorViewController *)self setIntroMode:0];
  }

  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    isTrimming2 = [(RPVideoEditorViewController *)self isTrimming];
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    if (isTrimming2)
    {
      cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
      flexSpace = [(RPVideoEditorViewController *)self flexSpace];
      titleButton = [(RPVideoEditorViewController *)self titleButton];
      flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
      pauseButton = [(RPVideoEditorViewController *)self pauseButton];
      fixSpace = [(RPVideoEditorViewController *)self fixSpace];
      shareButton = [(RPVideoEditorViewController *)self shareButton];
      fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self trimButton];
    }

    else
    {
      cancelTrimButton = [(RPVideoEditorViewController *)self cancelButton];
      flexSpace = [(RPVideoEditorViewController *)self flexSpace];
      titleButton = [(RPVideoEditorViewController *)self titleButton];
      flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
      pauseButton = [(RPVideoEditorViewController *)self pauseButton];
      fixSpace = [(RPVideoEditorViewController *)self fixSpace];
      shareButton = [(RPVideoEditorViewController *)self shareButton];
      fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self saveButton];
    }
    v32 = ;
    v33 = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, pauseButton, fixSpace, shareButton, fixSpace2, v32, 0];
    [topToolBar setItems:v33];
  }

  else
  {
    topToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self shareButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self pauseButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    pauseButton = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, 0];
    [topToolBar setItems:pauseButton];
  }
}

- (void)pauseAction
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  [avPlayer pause];

  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    isTrimming = [(RPVideoEditorViewController *)self isTrimming];
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    if (isTrimming)
    {
      cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
      flexSpace = [(RPVideoEditorViewController *)self flexSpace];
      titleButton = [(RPVideoEditorViewController *)self titleButton];
      flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
      playButton = [(RPVideoEditorViewController *)self playButton];
      fixSpace = [(RPVideoEditorViewController *)self fixSpace];
      shareButton = [(RPVideoEditorViewController *)self shareButton];
      fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self trimButton];
    }

    else
    {
      cancelTrimButton = [(RPVideoEditorViewController *)self cancelButton];
      flexSpace = [(RPVideoEditorViewController *)self flexSpace];
      titleButton = [(RPVideoEditorViewController *)self titleButton];
      flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
      playButton = [(RPVideoEditorViewController *)self playButton];
      fixSpace = [(RPVideoEditorViewController *)self fixSpace];
      shareButton = [(RPVideoEditorViewController *)self shareButton];
      fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self saveButton];
    }
    v13 = ;
    v14 = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, playButton, fixSpace, shareButton, fixSpace2, v13, 0];
    [topToolBar setItems:v14];
  }

  else
  {
    topToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self shareButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self playButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, 0];
    [topToolBar setItems:playButton];
  }
}

- (void)doneAction
{
  if (![(RPVideoEditorViewController *)self isShareSheetUp])
  {
    avPlayer = [(RPVideoEditorViewController *)self avPlayer];
    [avPlayer pause];

    delegate = [(RPVideoEditorViewController *)self delegate];
    activityTypes = [(RPVideoEditorViewController *)self activityTypes];
    [delegate videoEditor:self didFinishWithActivityTypes:activityTypes];
  }
}

- (void)saveAction
{
  if (![(RPVideoEditorViewController *)self isShareSheetUp])
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v8 = "[RPVideoEditorViewController saveAction]";
      v9 = 1024;
      v10 = 693;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
    }

    activityTypes = [(RPVideoEditorViewController *)self activityTypes];
    [activityTypes addObject:UIActivityTypeSaveToCameraRoll];

    if ([(RPVideoEditorViewController *)self isTrimming])
    {
      [(RPVideoEditorViewController *)self trimVideo];
    }

    else
    {
      if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        [(RPVideoEditorViewController *)self getPlayerDuration];
        *buf = 136446722;
        v8 = "[RPVideoEditorViewController saveAction]";
        v9 = 1024;
        v10 = 703;
        v11 = 2048;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Final video duration: %lf", buf, 0x1Cu);
      }

      videoURL = [(RPVideoEditorViewController *)self videoURL];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100005820;
      v6[3] = &unk_1000186C0;
      v6[4] = self;
      [RPAudioMixUtility mixAudioForMovie:videoURL withCompletionHandler:v6];
    }
  }
}

- (void)shareAction
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B84;
  block[3] = &unk_100018578;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)trimVideo
{
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    [(RPVideoEditorViewController *)self editStartTime];
    v4 = v3;
    [(RPVideoEditorViewController *)self editEndTime];
    v6 = v5;
    [(RPVideoEditorViewController *)self editEndTime];
    v8 = v7;
    [(RPVideoEditorViewController *)self editStartTime];
    LODWORD(buf.start.value) = 136447234;
    *(&buf.start.value + 4) = "[RPVideoEditorViewController trimVideo]";
    LOWORD(buf.start.flags) = 1024;
    *(&buf.start.flags + 2) = 759;
    WORD1(buf.start.epoch) = 2048;
    *(&buf.start.epoch + 4) = v4;
    WORD2(buf.duration.value) = 2048;
    *(&buf.duration.value + 6) = v6;
    HIWORD(buf.duration.flags) = 2048;
    *&buf.duration.epoch = v8 - v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Trimming video to start time:%lf end time:%lf duration:%lf", &buf, 0x30u);
  }

  [(RPVideoEditorViewController *)self setExporting:1];
  videoURL = [(RPVideoEditorViewController *)self videoURL];
  v11 = [AVAsset assetWithURL:videoURL];

  v12 = [[AVAssetExportSession alloc] initWithAsset:v11 presetName:AVAssetExportPresetHighestQuality];
  [(RPVideoEditorViewController *)self setExportSession:v12];

  trimFileURL = [(RPVideoEditorViewController *)self trimFileURL];
  exportSession = [(RPVideoEditorViewController *)self exportSession];
  [exportSession setOutputURL:trimFileURL];

  exportSession2 = [(RPVideoEditorViewController *)self exportSession];
  [exportSession2 setOutputFileType:AVFileTypeMPEG4];

  memset(&v37, 0, sizeof(v37));
  [(RPVideoEditorViewController *)self editStartTime];
  v17 = v16;
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  v19 = avPlayer;
  if (avPlayer)
  {
    [avPlayer currentTime];
    LODWORD(avPlayer) = v35;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  CMTimeMakeWithSeconds(&v37, v17, avPlayer);

  memset(&v33, 0, sizeof(v33));
  [(RPVideoEditorViewController *)self editEndTime];
  v21 = v20;
  avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
  v23 = avPlayer2;
  if (avPlayer2)
  {
    [avPlayer2 currentTime];
    LODWORD(avPlayer2) = v31;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  CMTimeMakeWithSeconds(&v33, v21, avPlayer2);

  memset(&buf, 0, sizeof(buf));
  start.start = v37;
  duration = v33;
  CMTimeRangeMake(&buf, &start.start, &duration);
  v28 = buf;
  exportSession3 = [(RPVideoEditorViewController *)self exportSession];
  start = v28;
  [exportSession3 setTimeRange:&start];

  exportSession4 = [(RPVideoEditorViewController *)self exportSession];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000618C;
  v26[3] = &unk_100018578;
  v26[4] = self;
  [exportSession4 exportAsynchronouslyWithCompletionHandler:v26];
}

- (void)reloadAVLayerWithURL:(id)l
{
  lCopy = l;
  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    avTrimmer = [(RPVideoEditorViewController *)self avTrimmer];
    delegate = [avTrimmer delegate];
    avTrimmer2 = [(RPVideoEditorViewController *)self avTrimmer];
    [delegate movieScrubberDidCancelEditing:avTrimmer2];
  }

  [(RPVideoEditorViewController *)self setVideoURL:lCopy];
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer currentItem];
  [currentItem removeObserver:self forKeyPath:@"status"];

  avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
  currentItem2 = [avPlayer2 currentItem];
  [currentItem2 removeObserver:self forKeyPath:@"duration"];

  v12 = [[AVURLAsset alloc] initWithURL:lCopy options:0];
  [(RPVideoEditorViewController *)self setAvAsset:v12];

  v13 = [AVPlayerItem alloc];
  avAsset = [(RPVideoEditorViewController *)self avAsset];
  v15 = [v13 initWithAsset:avAsset];
  [(RPVideoEditorViewController *)self setAvPlayerItem:v15];

  v16 = [AVPlayer alloc];
  avPlayerItem = [(RPVideoEditorViewController *)self avPlayerItem];
  v18 = [v16 initWithPlayerItem:avPlayerItem];
  [(RPVideoEditorViewController *)self setAvPlayer:v18];

  avPlayer3 = [(RPVideoEditorViewController *)self avPlayer];
  [avPlayer3 setActionAtItemEnd:1];

  avPlayer4 = [(RPVideoEditorViewController *)self avPlayer];
  v33 = kCMTimeZero;
  [avPlayer4 seekToTime:&v33];

  avPlayer5 = [(RPVideoEditorViewController *)self avPlayer];
  avPlayerLayer = [(RPVideoEditorViewController *)self avPlayerLayer];
  [avPlayerLayer setPlayer:avPlayer5];

  avPlayer6 = [(RPVideoEditorViewController *)self avPlayer];
  currentItem3 = [avPlayer6 currentItem];
  [currentItem3 addObserver:self forKeyPath:@"status" options:0 context:0];

  avPlayer7 = [(RPVideoEditorViewController *)self avPlayer];
  currentItem4 = [avPlayer7 currentItem];
  [currentItem4 addObserver:self forKeyPath:@"duration" options:0 context:0];

  [(RPVideoEditorViewController *)self setCurrentItemLoaded:0];
  [(RPVideoEditorViewController *)self setScrubbing:0];
  memset(&v33, 0, sizeof(v33));
  CMTimeMakeWithSeconds(&v33, 0.0333333333, 1000000000);
  objc_initWeak(&location, self);
  avPlayer8 = [(RPVideoEditorViewController *)self avPlayer];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100006924;
  v30[3] = &unk_100018550;
  objc_copyWeak(&v31, &location);
  v29 = v33;
  v28 = [avPlayer8 addPeriodicTimeObserverForInterval:&v29 queue:0 usingBlock:v30];
  [(RPVideoEditorViewController *)self setPlaybackTimeObserver:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)displayShareSheetWithVideoURL:(id)l
{
  lCopy = l;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPVideoEditorViewController displayShareSheetWithVideoURL:]";
    v12 = 1024;
    v13 = 874;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[RPStoreManager sharedManager];
  bundleIdentifier = [(RPVideoEditorViewController *)self bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006B74;
  v8[3] = &unk_100018730;
  v8[4] = self;
  v9 = lCopy;
  v7 = lCopy;
  [v5 loadItemDetailsForBundleIdentifier:bundleIdentifier completionHandler:v8];
}

- (void)editMode
{
  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton = [(RPVideoEditorViewController *)self playButton];
    fixSpace = [(RPVideoEditorViewController *)self fixSpace];
    trimButton = [(RPVideoEditorViewController *)self trimButton];
    v11 = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, playButton, fixSpace, trimButton, 0];
    [topToolBar setItems:v11];
  }

  else
  {
    bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
    flexSpace3 = [(RPVideoEditorViewController *)self flexSpace];
    playButton2 = [(RPVideoEditorViewController *)self playButton];
    flexSpace4 = [(RPVideoEditorViewController *)self flexSpace];
    v16 = [NSArray arrayWithObjects:flexSpace3, playButton2, flexSpace4, 0];
    [bottomToolBar setItems:v16];

    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    cancelTrimButton = [(RPVideoEditorViewController *)self cancelTrimButton];
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton = [(RPVideoEditorViewController *)self trimButton];
    fixSpace = [NSArray arrayWithObjects:cancelTrimButton, flexSpace, titleButton, flexSpace2, playButton, 0];
    [topToolBar setItems:fixSpace];
  }

  [(RPVideoEditorViewController *)self setHasEdit:1];
}

- (void)previewMode
{
  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    hasEdit = [(RPVideoEditorViewController *)self hasEdit];
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    if (hasEdit)
    {
      [(RPVideoEditorViewController *)self doneButton];
    }

    else
    {
      [(RPVideoEditorViewController *)self cancelButton];
    }
    v10 = ;
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton = [(RPVideoEditorViewController *)self playButton];
    fixSpace = [(RPVideoEditorViewController *)self fixSpace];
    shareButton = [(RPVideoEditorViewController *)self shareButton];
    fixSpace2 = [(RPVideoEditorViewController *)self fixSpace];
    saveButton = [(RPVideoEditorViewController *)self saveButton];
    v19 = [NSArray arrayWithObjects:v10, flexSpace, titleButton, flexSpace2, playButton, fixSpace, shareButton, fixSpace2, saveButton, 0];
    [topToolBar setItems:v19];
  }

  else
  {
    bottomToolBar = [(RPVideoEditorViewController *)self bottomToolBar];
    shareButton2 = [(RPVideoEditorViewController *)self shareButton];
    flexSpace3 = [(RPVideoEditorViewController *)self flexSpace];
    playButton2 = [(RPVideoEditorViewController *)self playButton];
    flexSpace4 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [NSArray arrayWithObjects:shareButton2, flexSpace3, playButton2, flexSpace4, 0];
    [bottomToolBar setItems:v9];

    LODWORD(bottomToolBar) = [(RPVideoEditorViewController *)self hasEdit];
    topToolBar = [(RPVideoEditorViewController *)self topToolBar];
    if (bottomToolBar)
    {
      [(RPVideoEditorViewController *)self doneButton];
    }

    else
    {
      [(RPVideoEditorViewController *)self cancelButton];
    }
    v10 = ;
    flexSpace = [(RPVideoEditorViewController *)self flexSpace];
    titleButton = [(RPVideoEditorViewController *)self titleButton];
    flexSpace2 = [(RPVideoEditorViewController *)self flexSpace];
    playButton = [(RPVideoEditorViewController *)self saveButton];
    fixSpace = [NSArray arrayWithObjects:v10, flexSpace, titleButton, flexSpace2, playButton, 0];
    [topToolBar setItems:fixSpace];
  }
}

- (void)movieScrubber:(id)scrubber valueDidChange:(double)change
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
  v8 = avPlayer2;
  if (avPlayer2)
  {
    [avPlayer2 currentTime];
    LODWORD(avPlayer2) = v9;
  }

  CMTimeMakeWithSeconds(&v10, change, avPlayer2);
  [avPlayer seekToTime:&v10];
}

- (void)movieScrubberDidEndScrubbing:(id)scrubbing withHandle:(int)handle
{
  scrubbingCopy = scrubbing;
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  [scrubbingCopy value];
  v8 = v7;

  avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
  v10 = avPlayer2;
  if (avPlayer2)
  {
    [avPlayer2 currentTime];
    LODWORD(avPlayer2) = v11;
  }

  CMTimeMakeWithSeconds(&v12, v8, avPlayer2);
  [avPlayer seekToTime:&v12];

  [(RPVideoEditorViewController *)self setScrubbing:0];
}

- (void)movieScrubber:(id)scrubber editingStartValueDidChange:(double)change
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  [avPlayer pause];

  [(RPVideoEditorViewController *)self setEditStartTime:change];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007818;
  v7[3] = &unk_100018758;
  v7[4] = self;
  *&v7[5] = change;
  dispatch_async(&_dispatch_main_q, v7);
  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubber:(id)scrubber editingEndValueDidChange:(double)change
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  [avPlayer pause];

  [(RPVideoEditorViewController *)self setEditEndTime:change];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007968;
  v7[3] = &unk_100018758;
  v7[4] = self;
  *&v7[5] = change;
  dispatch_async(&_dispatch_main_q, v7);
  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubberDidBeginEditing:(id)editing
{
  [(RPVideoEditorViewController *)self editMode];

  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubberDidCancelEditing:(id)editing
{
  avTrimmer = [(RPVideoEditorViewController *)self avTrimmer];
  [avTrimmer setEditing:0 animated:1];

  [(RPVideoEditorViewController *)self previewMode];

  [(RPVideoEditorViewController *)self setTrimming:0];
}

- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt
{
  atCopy = at;
  endingAtCopy = endingAt;
  [endingAtCopy doubleValue];
  if (v11 == 0.0)
  {
    goto LABEL_10;
  }

  v12 = [NSMutableArray arrayWithCapacity:timestamps];
  [(RPVideoEditorViewController *)self getPlayerDuration];
  v14 = v13;
  [atCopy doubleValue];
  v16 = v15;
  [endingAtCopy doubleValue];
  v18 = timestamps - 1;
  if (timestamps >= 1)
  {
    v19 = (v17 - v16) / timestamps;
    do
    {
      v20 = [NSNumber numberWithDouble:v16];
      [v12 addObject:v20];

      v16 = v19 + v16;
    }

    while (v16 <= v14 && v18-- != 0);
  }

  if (!v12)
  {
LABEL_10:
    v22 = [NSNumber numberWithDouble:0.0];
    v12 = [NSArray arrayWithObject:v22];
  }

  return v12;
}

- (double)movieScrubberThumbnailAspectRatio:(id)ratio
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer currentItem];
  asset = [currentItem asset];
  v6 = [asset tracksWithMediaType:AVMediaTypeVideo];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    [v7 naturalSize];
    if (v7)
    {
      v21 = v9;
      v22 = v8;
      [v7 preferredTransform];

      v11 = v24;
      v10 = v23;
      v9 = v21;
      v8 = v22;
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    [0 naturalSize];
  }

  v10 = 0uLL;
  v12 = 1;
  v11 = 0uLL;
LABEL_6:
  v13 = vmlaq_n_f64(vmulq_n_f64(v11, v9), v10, v8);
  v14 = vdup_n_s32(v12);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v16 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), CGSizeZero, vbslq_s8(vcltzq_f64(v13), vnegq_f64(v13), v13));
  v17 = *&v16.i64[1] <= 0.0 || *v16.i64 <= 0.0;
  v18 = *v16.i64 / *&v16.i64[1];
  if (v17)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = v18;
  }

  return v19;
}

- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  thumbnailGenerator = [(RPVideoEditorViewController *)self thumbnailGenerator];

  if (!thumbnailGenerator)
  {
    v7 = [AVAssetImageGenerator alloc];
    avPlayer = [(RPVideoEditorViewController *)self avPlayer];
    currentItem = [avPlayer currentItem];
    asset = [currentItem asset];
    v11 = [v7 initWithAsset:asset];
    [(RPVideoEditorViewController *)self setThumbnailGenerator:v11];

    [(RPVideoEditorViewController *)self getThumbnailSize];
    v13 = v12;
    v15 = v14;
    thumbnailGenerator2 = [(RPVideoEditorViewController *)self thumbnailGenerator];
    [thumbnailGenerator2 setMaximumSize:{v13, v15}];
  }

  cachedTimeStamps = [(RPVideoEditorViewController *)self cachedTimeStamps];

  if (!cachedTimeStamps)
  {
    v18 = objc_opt_new();
    [(RPVideoEditorViewController *)self setCachedTimeStamps:v18];
  }

  cachedTimeStamps2 = [(RPVideoEditorViewController *)self cachedTimeStamps];
  v20 = [cachedTimeStamps2 objectForKey:timestampCopy];

  if (v20)
  {
    [(RPVideoEditorViewController *)self setThumbnailFromCacheWithTimeStamp:timestampCopy];
  }

  else
  {
    thumbnailGenerator3 = [(RPVideoEditorViewController *)self thumbnailGenerator];
    v25 = timestampCopy;
    v22 = [NSArray arrayWithObjects:&v25 count:1];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007F4C;
    v23[3] = &unk_100018780;
    v23[4] = self;
    v24 = timestampCopy;
    [thumbnailGenerator3 generateCGImagesAsynchronouslyForTimes:v22 completionHandler:v23];
  }
}

- (void)setThumbnailFromCacheWithTimeStamp:(id)stamp
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000804C;
  v4[3] = &unk_100018670;
  v4[4] = self;
  stampCopy = stamp;
  v3 = stampCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (CGSize)getVideoSize
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer currentItem];
  asset = [currentItem asset];
  v5 = [asset tracksWithMediaType:AVMediaTypeVideo];

  if (![v5 count])
  {
    [0 naturalSize];
    goto LABEL_5;
  }

  v6 = [v5 objectAtIndex:0];
  [v6 naturalSize];
  if (!v6)
  {
LABEL_5:
    v9 = 0uLL;
    v11 = 1;
    v10 = 0uLL;
    goto LABEL_6;
  }

  v17 = v8;
  v18 = v7;
  [v6 preferredTransform];

  v10 = v21;
  v9 = v20;
  v8 = v17;
  v7 = v18;
  v11 = 0;
LABEL_6:
  v12 = vmlaq_n_f64(vmulq_n_f64(v10, v8), v9, v7);
  v13 = vdup_n_s32(v11);
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v19 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), CGSizeZero, vbslq_s8(vcltzq_f64(v12), vnegq_f64(v12), v12));

  v16 = *&v19.i64[1];
  v15 = *v19.i64;
  result.height = v16;
  result.width = v15;
  return result;
}

- (double)getPlayerDuration
{
  avPlayer = [(RPVideoEditorViewController *)self avPlayer];
  currentItem = [avPlayer currentItem];
  status = [currentItem status];

  if (status == 1)
  {
    avPlayer2 = [(RPVideoEditorViewController *)self avPlayer];
    currentItem2 = [avPlayer2 currentItem];
    v8 = currentItem2;
    if (currentItem2)
    {
      [currentItem2 duration];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    Seconds = CMTimeGetSeconds(&v11);
  }

  else
  {
    v11 = kCMTimeInvalid;
    return CMTimeGetSeconds(&v11);
  }

  return Seconds;
}

- (CGSize)getThumbnailSize
{
  [(RPVideoEditorViewController *)self getVideoSize];
  v4 = v2 / v3;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6 * 38.0;

  v8 = v7 * v4;
  v9 = rintf(v8);
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11 * v9;

  v13 = v12;
  v14 = v7;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy subtype] == 1 && -[RPVideoEditorViewController isTrimming](self, "isTrimming") && !-[RPVideoEditorViewController isExporting](self, "isExporting"))
  {
    [(RPVideoEditorViewController *)self undoAction];
  }

  v8.receiver = self;
  v8.super_class = RPVideoEditorViewController;
  if ([(RPVideoEditorViewController *)&v8 respondsToSelector:"motionEnded:withEvent:"])
  {
    v7.receiver = self;
    v7.super_class = RPVideoEditorViewController;
    [(RPVideoEditorViewController *)&v7 motionEnded:ended withEvent:eventCopy];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end