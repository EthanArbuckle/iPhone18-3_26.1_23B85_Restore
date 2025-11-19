@interface RPVideoEditorViewController
- (BOOL)deviceHasHomeButton;
- (BOOL)shouldApplyPadUILayout;
- (CGSize)getThumbnailSize;
- (CGSize)getVideoSize;
- (RPVideoEditorViewController)initWithBundleIdentifier:(id)a3 URL:(id)a4 applicationName:(id)a5 overrideTintColor:(id)a6 size:(CGRect)a7;
- (double)getPlayerDuration;
- (double)movieScrubberThumbnailAspectRatio:(id)a3;
- (id)delegate;
- (id)movieScrubber:(id)a3 evenlySpacedTimestamps:(int)a4 startingAt:(id)a5 endingAt:(id)a6;
- (id)trimFileURL;
- (int)currentOrientation;
- (void)applyPadConstraints;
- (void)applyPadUILayout;
- (void)applyPhoneConstraints;
- (void)applyPhoneUILayout;
- (void)configureReplayUIHidden;
- (void)dealloc;
- (void)displayShareSheetWithVideoURL:(id)a3;
- (void)doneAction;
- (void)editMode;
- (void)hideUI;
- (void)itemDidFinishPlaying:(id)a3;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)movieScrubber:(id)a3 editingEndValueDidChange:(double)a4;
- (void)movieScrubber:(id)a3 editingStartValueDidChange:(double)a4;
- (void)movieScrubber:(id)a3 requestThumbnailImageForTimestamp:(id)a4;
- (void)movieScrubber:(id)a3 valueDidChange:(double)a4;
- (void)movieScrubberDidBeginEditing:(id)a3;
- (void)movieScrubberDidCancelEditing:(id)a3;
- (void)movieScrubberDidEndScrubbing:(id)a3 withHandle:(int)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseAction;
- (void)playAction;
- (void)previewMode;
- (void)refreshAVRotation;
- (void)reloadAVLayerWithURL:(id)a3;
- (void)saveAction;
- (void)setThumbnailFromCacheWithTimeStamp:(id)a3;
- (void)shareAction;
- (void)showUI;
- (void)trimVideo;
- (void)undoAction;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (RPVideoEditorViewController)initWithBundleIdentifier:(id)a3 URL:(id)a4 applicationName:(id)a5 overrideTintColor:(id)a6 size:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v176 = a6;
  v182.receiver = self;
  v182.super_class = RPVideoEditorViewController;
  v18 = [(RPVideoEditorViewController *)&v182 init];
  if (!v18)
  {
    goto LABEL_21;
  }

  v174 = v17;
  v175 = v15;
  v183.origin.x = x;
  v183.origin.y = y;
  v183.size.width = width;
  v183.size.height = height;
  if (!CGRectIsEmpty(v183))
  {
    v19 = [(RPVideoEditorViewController *)v18 view];
    [v19 setFrame:{x, y, width, height}];
  }

  v20 = +[NSMutableArray array];
  [(RPVideoEditorViewController *)v18 setActivityTypes:v20];

  [(RPVideoEditorViewController *)v18 setHasEdit:0];
  [(RPVideoEditorViewController *)v18 setHasHomeButton:[(RPVideoEditorViewController *)v18 deviceHasHomeButton]];
  [(RPVideoEditorViewController *)v18 setShareSheetUp:0];
  v21 = objc_alloc_init(UIView);
  [(RPVideoEditorViewController *)v18 setVideoOverlay:v21];

  v22 = [(RPVideoEditorViewController *)v18 view];
  [v22 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(RPVideoEditorViewController *)v18 videoOverlay];
  [v31 setFrame:{v24, v26, v28, v30}];

  [(RPVideoEditorViewController *)v18 setUiHidden:0];
  v32 = [[UITapGestureRecognizer alloc] initWithTarget:v18 action:"handleSingleTap:"];
  v33 = [(RPVideoEditorViewController *)v18 videoOverlay];
  v173 = v32;
  [v33 addGestureRecognizer:v32];

  v34 = [UIView _srVideoOverlayButtonWithStyle:0];
  [(RPVideoEditorViewController *)v18 setVideoOverlayPlayButton:v34];

  v35 = +[UIScreen mainScreen];
  [v35 bounds];
  v37 = v36 * 0.5;
  v38 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v38 frame];
  v40 = v37 - v39 * 0.5;
  v41 = +[UIScreen mainScreen];
  [v41 bounds];
  v43 = v42 * 0.5;
  v44 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v44 frame];
  v46 = v43 - v45 * 0.5;
  v47 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v47 frame];
  v49 = v48;
  v50 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v50 frame];
  v52 = v51;
  v53 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v53 setFrame:{v40, v46, v49, v52}];

  v54 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v54 setTarget:v18 action:"playAction"];

  [(RPVideoEditorViewController *)v18 setIntroMode:1];
  [(RPVideoEditorViewController *)v18 setOriginalVideoURL:v16];
  [(RPVideoEditorViewController *)v18 setVideoURL:v16];
  [(RPVideoEditorViewController *)v18 setApplicationName:v174];
  [(RPVideoEditorViewController *)v18 setBundleIdentifier:v175];
  v55 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 120.0, 17.0}];
  [(RPVideoEditorViewController *)v18 setTitleLabel:v55];

  v56 = [(RPVideoEditorViewController *)v18 titleLabel];
  v57 = [UIFont systemFontOfSize:15.0];
  [v56 setFont:v57];

  v58 = [(RPVideoEditorViewController *)v18 titleLabel];
  v59 = +[UIColor clearColor];
  [v58 setBackgroundColor:v59];

  v60 = [(RPVideoEditorViewController *)v18 traitCollection];
  v61 = [v60 userInterfaceStyle];

  if (v61 == 2)
  {
    v62 = [(RPVideoEditorViewController *)v18 titleLabel];
    v63 = +[UIColor whiteColor];
LABEL_8:
    v66 = v63;
    [v62 setTextColor:v63];

    goto LABEL_9;
  }

  v64 = [(RPVideoEditorViewController *)v18 traitCollection];
  v65 = [v64 userInterfaceStyle];

  if (v65 == 1)
  {
    v62 = [(RPVideoEditorViewController *)v18 titleLabel];
    v63 = +[UIColor blackColor];
    goto LABEL_8;
  }

LABEL_9:
  v67 = [(RPVideoEditorViewController *)v18 titleLabel];
  v68 = [(RPVideoEditorViewController *)v18 applicationName];
  [v67 setText:v68];

  v69 = [(RPVideoEditorViewController *)v18 titleLabel];
  [v69 setTextAlignment:1];

  v70 = [(RPVideoEditorViewController *)v18 titleLabel];
  [v70 setClipsToBounds:0];

  v71 = [[UILabel alloc] initWithFrame:{0.0, 17.0, 120.0, 17.0}];
  v72 = +[UIColor clearColor];
  [v71 setBackgroundColor:v72];

  v73 = [UIFont systemFontOfSize:10.0];
  [v71 setFont:v73];

  [v71 setTextAlignment:1];
  v74 = +[NSFileManager defaultManager];
  v75 = [v74 _srGetCreationDateForFile:v16];

  v172 = v75;
  v76 = [NSDate _srGetStringFromDate:v75];
  [v71 setText:v76];

  v77 = [(RPVideoEditorViewController *)v18 titleLabel];
  [v77 addSubview:v71];

  v78 = [UIBarButtonItem alloc];
  v79 = [(RPVideoEditorViewController *)v18 titleLabel];
  v80 = [v78 initWithCustomView:v79];
  [(RPVideoEditorViewController *)v18 setTitleButton:v80];

  v81 = [(RPVideoEditorViewController *)v18 trimFileURL];
  [(RPVideoEditorViewController *)v18 setTrimFilePath:v81];

  [(RPVideoEditorViewController *)v18 setTrimming:0];
  [(RPVideoEditorViewController *)v18 setExporting:0];
  v82 = [[AVURLAsset alloc] initWithURL:v16 options:0];
  [(RPVideoEditorViewController *)v18 setAvAsset:v82];

  v83 = [AVPlayerItem alloc];
  v84 = [(RPVideoEditorViewController *)v18 avAsset];
  v85 = [v83 initWithAsset:v84];
  [(RPVideoEditorViewController *)v18 setAvPlayerItem:v85];

  v86 = [AVPlayer alloc];
  v87 = [(RPVideoEditorViewController *)v18 avPlayerItem];
  v88 = [v86 initWithPlayerItem:v87];
  [(RPVideoEditorViewController *)v18 setAvPlayer:v88];

  v89 = [(RPVideoEditorViewController *)v18 avPlayer];
  v181 = kCMTimeZero;
  [v89 seekToTime:&v181];

  v90 = +[NSNotificationCenter defaultCenter];
  v91 = [(RPVideoEditorViewController *)v18 avPlayerItem];
  [v90 addObserver:v18 selector:"itemDidFinishPlaying:" name:AVPlayerItemDidPlayToEndTimeNotification object:v91];

  v92 = objc_alloc_init(AVPlayerLayer);
  [(RPVideoEditorViewController *)v18 setAvPlayerLayer:v92];

  v93 = [(RPVideoEditorViewController *)v18 avPlayer];
  v94 = [(RPVideoEditorViewController *)v18 avPlayerLayer];
  [v94 setPlayer:v93];

  v95 = [(RPVideoEditorViewController *)v18 avPlayer];
  v96 = [v95 currentItem];
  [v96 addObserver:v18 forKeyPath:@"status" options:0 context:0];

  v97 = [(RPVideoEditorViewController *)v18 avPlayer];
  v98 = [v97 currentItem];
  [v98 addObserver:v18 forKeyPath:@"duration" options:0 context:0];

  [(RPVideoEditorViewController *)v18 setCurrentItemLoaded:0];
  v99 = [[_UIBackdropView alloc] initWithFrame:2010 privateStyle:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RPVideoEditorViewController *)v18 setScrubberContainterView:v99];

  v100 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [v100 setUserInteractionEnabled:1];

  v101 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];

  v102 = objc_alloc_init(UIMovieScrubber);
  [(RPVideoEditorViewController *)v18 setAvTrimmer:v102];

  v103 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v103 setAutoresizingMask:2];

  v104 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v104 setMinimumTrimLength:1.0];

  v105 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v105 setEditable:1];

  v106 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v106 setZoomDelay:0.5];

  v107 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v107 setEdgeInset:10.0];

  [(RPVideoEditorViewController *)v18 setScrubbing:0];
  memset(&v181, 0, sizeof(v181));
  CMTimeMakeWithSeconds(&v181, 0.0333333333, 1000000000);
  objc_initWeak(&location, v18);
  v108 = [(RPVideoEditorViewController *)v18 avPlayer];
  v178[0] = _NSConcreteStackBlock;
  v178[1] = 3221225472;
  v178[2] = sub_100003018;
  v178[3] = &unk_100018550;
  objc_copyWeak(&v179, &location);
  v177 = v181;
  v109 = [v108 addPeriodicTimeObserverForInterval:&v177 queue:0 usingBlock:v178];
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

  v121 = [(RPVideoEditorViewController *)v18 view];
  [v121 frame];
  v123 = v122;
  v124 = [(RPVideoEditorViewController *)v18 fixSpace];
  [v124 setWidth:v123 * 0.005];

  v125 = objc_alloc_init(UIToolbar);
  [(RPVideoEditorViewController *)v18 setTopToolBar:v125];

  if ([(RPVideoEditorViewController *)v18 hasHomeButton])
  {
    v126 = [(RPVideoEditorViewController *)v18 view];
    [v126 bounds];
    v128 = v127;
    v129 = 60.0;
  }

  else
  {
    v126 = [(RPVideoEditorViewController *)v18 view];
    [v126 bounds];
    v128 = v130;
    v129 = 85.0;
  }

  v131 = [(RPVideoEditorViewController *)v18 topToolBar];
  [v131 setFrame:{0.0, 0.0, v128, v129}];

  v132 = [(RPVideoEditorViewController *)v18 topToolBar];
  [v132 setAutoresizingMask:2];

  v133 = [(RPVideoEditorViewController *)v18 topToolBar];
  [v133 setDelegate:v18];

  if (v176)
  {
    v134 = [(RPVideoEditorViewController *)v18 topToolBar];
    [v134 setTintColor:v176];
  }

  v135 = objc_alloc_init(UIToolbar);
  [(RPVideoEditorViewController *)v18 setBottomToolBar:v135];

  if ([(RPVideoEditorViewController *)v18 hasHomeButton])
  {
    v136 = [(RPVideoEditorViewController *)v18 view];
    [v136 bounds];
    v138 = v137;
    v139 = [(RPVideoEditorViewController *)v18 view];
    [v139 bounds];
    v141 = v140;
    v142 = v138 + -44.0;
    *&v143 = 44.0;
  }

  else
  {
    v136 = [(RPVideoEditorViewController *)v18 view];
    [v136 bounds];
    v145 = v144;
    v139 = [(RPVideoEditorViewController *)v18 view];
    [v139 bounds];
    v141 = v146;
    v142 = v145 + -64.0;
    *&v143 = 64.0;
  }

  v147 = *&v143;
  v148 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [v148 setFrame:{0.0, v142, v141, v147}];

  v149 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [v149 setAutoresizingMask:2];

  v150 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [v150 setDelegate:v18];

  v151 = [UIView alloc];
  v152 = [(RPVideoEditorViewController *)v18 view];
  [v152 frame];
  v153 = [v151 initWithFrame:?];

  v154 = +[UIColor blackColor];
  [v153 setBackgroundColor:v154];

  v155 = [(RPVideoEditorViewController *)v18 view];
  [v155 addSubview:v153];

  v156 = [(RPVideoEditorViewController *)v18 view];
  v157 = [v156 layer];
  v158 = [(RPVideoEditorViewController *)v18 avPlayerLayer];
  [v157 addSublayer:v158];

  v159 = [(RPVideoEditorViewController *)v18 view];
  v160 = [(RPVideoEditorViewController *)v18 videoOverlay];
  [v159 addSubview:v160];

  v161 = [(RPVideoEditorViewController *)v18 view];
  v162 = [(RPVideoEditorViewController *)v18 bottomToolBar];
  [v161 addSubview:v162];

  v163 = [(RPVideoEditorViewController *)v18 view];
  v164 = [(RPVideoEditorViewController *)v18 topToolBar];
  [v163 addSubview:v164];

  v165 = [(RPVideoEditorViewController *)v18 view];
  v166 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  [v165 addSubview:v166];

  v167 = [(RPVideoEditorViewController *)v18 scrubberContainterView];
  v168 = [(RPVideoEditorViewController *)v18 avTrimmer];
  [v167 addSubview:v168];

  v169 = [(RPVideoEditorViewController *)v18 view];
  v170 = [(RPVideoEditorViewController *)v18 videoOverlayPlayButton];
  [v169 addSubview:v170];

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

  v17 = v174;
  v15 = v175;
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
    v13 = [v3 userInterfaceIdiom];
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

  v3 = [(RPVideoEditorViewController *)self playButton];
  [v3 setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  v4 = [(RPVideoEditorViewController *)self pauseButton];
  [v4 setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  v5 = [(RPVideoEditorViewController *)self shareButton];
  [v5 setImageInsets:{0.0, 0.0, -0.0, 0.0}];

  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    v6 = [(RPVideoEditorViewController *)self topToolBar];
    v7 = [(RPVideoEditorViewController *)self cancelTrimButton];
    v8 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [(RPVideoEditorViewController *)self titleButton];
    v10 = [(RPVideoEditorViewController *)self flexSpace];
    v11 = [(RPVideoEditorViewController *)self trimButton];
    v12 = [NSArray arrayWithObjects:v7, v8, v9, v10, v11, 0];
    [v6 setItems:v12];

    v13 = [(RPVideoEditorViewController *)self bottomToolBar];
    v14 = [(RPVideoEditorViewController *)self flexSpace];
    v15 = [(RPVideoEditorViewController *)self playButton];
    v16 = [(RPVideoEditorViewController *)self flexSpace];
    v17 = [NSArray arrayWithObjects:v14, v15, v16, 0];
    [v13 setItems:v17];
  }

  else
  {
    v18 = [(RPVideoEditorViewController *)self isIntroMode];
    v19 = [(RPVideoEditorViewController *)self bottomToolBar];
    v20 = [(RPVideoEditorViewController *)self shareButton];
    v21 = [(RPVideoEditorViewController *)self flexSpace];
    v22 = v21;
    if (v18)
    {
      v23 = [NSArray arrayWithObjects:v20, v21, 0];
      [v19 setItems:v23];
    }

    else
    {
      v23 = [(RPVideoEditorViewController *)self playButton];
      v24 = [(RPVideoEditorViewController *)self flexSpace];
      v25 = [NSArray arrayWithObjects:v20, v22, v23, v24, 0];
      [v19 setItems:v25];
    }

    v13 = [(RPVideoEditorViewController *)self topToolBar];
    v14 = [(RPVideoEditorViewController *)self cancelButton];
    v15 = [(RPVideoEditorViewController *)self flexSpace];
    v16 = [(RPVideoEditorViewController *)self titleButton];
    v17 = [(RPVideoEditorViewController *)self flexSpace];
    v26 = [(RPVideoEditorViewController *)self saveButton];
    v27 = [NSArray arrayWithObjects:v14, v15, v16, v17, v26, 0];
    [v13 setItems:v27];
  }

  v28 = [(RPVideoEditorViewController *)self view];
  v29 = [(RPVideoEditorViewController *)self bottomToolBar];
  [v28 addSubview:v29];

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

  v3 = [(RPVideoEditorViewController *)self playButton];
  [v3 setImageInsets:{8.0, 0.0, -8.0, 0.0}];

  v4 = [(RPVideoEditorViewController *)self pauseButton];
  [v4 setImageInsets:{8.0, 0.0, -8.0, 0.0}];

  v5 = [(RPVideoEditorViewController *)self shareButton];
  [v5 setImageInsets:{5.0, 0.0, -5.0, 0.0}];

  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    v6 = [(RPVideoEditorViewController *)self topToolBar];
    v7 = [(RPVideoEditorViewController *)self cancelTrimButton];
    v8 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [(RPVideoEditorViewController *)self titleButton];
    v10 = [(RPVideoEditorViewController *)self flexSpace];
    v11 = [(RPVideoEditorViewController *)self playButton];
    v12 = [(RPVideoEditorViewController *)self fixSpace];
    v13 = [(RPVideoEditorViewController *)self trimButton];
  }

  else
  {
    v14 = [(RPVideoEditorViewController *)self isIntroMode];
    v6 = [(RPVideoEditorViewController *)self topToolBar];
    v7 = [(RPVideoEditorViewController *)self cancelButton];
    v8 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [(RPVideoEditorViewController *)self titleButton];
    v10 = [(RPVideoEditorViewController *)self flexSpace];
    if (!v14)
    {
      v11 = [(RPVideoEditorViewController *)self playButton];
      v12 = [(RPVideoEditorViewController *)self fixSpace];
      v15 = [(RPVideoEditorViewController *)self shareButton];
      v16 = [(RPVideoEditorViewController *)self fixSpace];
      v23 = [(RPVideoEditorViewController *)self saveButton];
      v24 = v6;
      [NSArray arrayWithObjects:v7, v8, v9, v10, v11, v12, v15, v16, v23, 0];
      v17 = v10;
      v18 = v9;
      v19 = v8;
      v21 = v20 = v7;
      [v24 setItems:v21];

      v7 = v20;
      v8 = v19;
      v9 = v18;
      v10 = v17;

      v6 = v24;
      goto LABEL_10;
    }

    v11 = [(RPVideoEditorViewController *)self shareButton];
    v12 = [(RPVideoEditorViewController *)self fixSpace];
    v13 = [(RPVideoEditorViewController *)self saveButton];
  }

  v15 = v13;
  v16 = [NSArray arrayWithObjects:v7, v8, v9, v10, v11, v12, v13, 0];
  [v6 setItems:v16];
LABEL_10:

  v22 = [(RPVideoEditorViewController *)self bottomToolBar];
  [v22 removeFromSuperview];

  [(RPVideoEditorViewController *)self applyPadConstraints];
  [(RPVideoEditorViewController *)self setPadMode:1];
}

- (void)applyPhoneConstraints
{
  v3 = [(RPVideoEditorViewController *)self view];
  v4 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v5 = [(RPVideoEditorViewController *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v5 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v6];

  v7 = [(RPVideoEditorViewController *)self view];
  v8 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v9 = [(RPVideoEditorViewController *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v9 attribute:6 multiplier:1.0 constant:0.0];
  [v7 addConstraint:v10];

  v11 = [(RPVideoEditorViewController *)self view];
  v12 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v13 = [(RPVideoEditorViewController *)self bottomToolBar];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:4 relatedBy:0 toItem:v13 attribute:3 multiplier:1.0 constant:0.0];
  [v11 addConstraint:v14];

  v17 = [(RPVideoEditorViewController *)self view];
  v15 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:38.0];
  [v17 addConstraint:v16];
}

- (void)applyPadConstraints
{
  v3 = [(RPVideoEditorViewController *)self view];
  v4 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v5 = [(RPVideoEditorViewController *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v5 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v6];

  v7 = [(RPVideoEditorViewController *)self view];
  v8 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v9 = [(RPVideoEditorViewController *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v9 attribute:6 multiplier:1.0 constant:0.0];
  [v7 addConstraint:v10];

  v11 = [(RPVideoEditorViewController *)self view];
  v12 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v13 = [(RPVideoEditorViewController *)self view];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:4 relatedBy:0 toItem:v13 attribute:4 multiplier:1.0 constant:0.0];
  [v11 addConstraint:v14];

  v17 = [(RPVideoEditorViewController *)self view];
  v15 = [(RPVideoEditorViewController *)self scrubberContainterView];
  v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:38.0];
  [v17 addConstraint:v16];
}

- (id)trimFileURL
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 _srTempPath];
  v5 = [(RPVideoEditorViewController *)self applicationName];
  v6 = [NSString stringWithFormat:@"%@/%@_", v4, v5];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = [NSString stringWithFormat:@"%ld", v8];

  v10 = [NSString stringWithFormat:@"%@%@%@", v6, v9, @".mp4"];
  v11 = [NSURL fileURLWithPath:v10];

  return v11;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(RPVideoEditorViewController *)self avPlayer];
  v11 = [v10 currentItem];

  if (v11 == v9)
  {
    if ([v8 isEqualToString:@"status"])
    {
    }

    else
    {
      v12 = [v8 isEqualToString:@"duration"];

      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v13 = [(RPVideoEditorViewController *)self avPlayer];
    v14 = [v13 currentItem];
    if ([v14 status] == 1)
    {
      v15 = [(RPVideoEditorViewController *)self avPlayer];
      v16 = [v15 currentItem];
      v17 = v16;
      if (v16)
      {
        [v16 duration];

        if ((v22 & 0x1D) == 1)
        {
          if ([(RPVideoEditorViewController *)self currentItemLoaded])
          {
            goto LABEL_15;
          }

          [(RPVideoEditorViewController *)self setCurrentItemLoaded:1];
          [(RPVideoEditorViewController *)self setThumbnailGenerator:0];
          [(RPVideoEditorViewController *)self setCachedTimeStamps:0];
          v18 = [(RPVideoEditorViewController *)self avTrimmer];
          [v18 setDelegate:self];

          v19 = [(RPVideoEditorViewController *)self avTrimmer];
          [v19 setDataSource:self];

          [(RPVideoEditorViewController *)self setEditStartTime:0.0];
          [(RPVideoEditorViewController *)self getPlayerDuration];
          [(RPVideoEditorViewController *)self setEditEndTime:?];
          v20 = [(RPVideoEditorViewController *)self avTrimmer];
          [v20 reloadData];
LABEL_14:

          goto LABEL_15;
        }

LABEL_13:
        v20 = [(RPVideoEditorViewController *)self avPlayer];
        v21 = [v20 currentItem];
        [v21 status];

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)itemDidFinishPlaying:(id)a3
{
  [(RPVideoEditorViewController *)self pauseAction];
  if ([(RPVideoEditorViewController *)self isUIHidden])
  {
    [(RPVideoEditorViewController *)self showUI];
  }

  v4 = [(RPVideoEditorViewController *)self avPlayer];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v4 seekToTime:&v5];
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
  v3 = [(RPVideoEditorViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(RPVideoEditorViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v9 = [(RPVideoEditorViewController *)self avPlayerLayer];
  [v9 setFrame:{0.0, 0.0, v5, v8}];
}

- (void)dealloc
{
  v3 = [(RPVideoEditorViewController *)self avPlayer];
  [v3 removeTimeObserver:self->_playbackTimeObserver];

  v4 = [(RPVideoEditorViewController *)self avPlayer];
  v5 = [v4 currentItem];
  [v5 removeObserver:self forKeyPath:@"status"];

  v6 = [(RPVideoEditorViewController *)self avPlayer];
  v7 = [v6 currentItem];
  [v7 removeObserver:self forKeyPath:@"duration"];

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
  v3 = [(RPVideoEditorViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(RPVideoEditorViewController *)self view];
  [v6 bounds];
  v8 = v5 > v7;

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RPVideoEditorViewController;
  v7 = a4;
  [(RPVideoEditorViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000049E4;
  v8[3] = &unk_1000185A0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_1000185E0];
}

- (void)refreshAVRotation
{
  v3 = [(RPVideoEditorViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(RPVideoEditorViewController *)self avPlayerLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  LODWORD(v3) = [(RPVideoEditorViewController *)self hasHomeButton];
  v13 = [(RPVideoEditorViewController *)self view];
  [v13 bounds];
  v15 = v14;
  if (v3)
  {
    v16 = 60.0;
  }

  else
  {
    v16 = 85.0;
  }

  v17 = [(RPVideoEditorViewController *)self topToolBar];
  [v17 setFrame:{0.0, 0.0, v15, v16}];

  LODWORD(v17) = [(RPVideoEditorViewController *)self hasHomeButton];
  v18 = [(RPVideoEditorViewController *)self view];
  [v18 bounds];
  v20 = v19;
  v21 = [(RPVideoEditorViewController *)self view];
  v22 = v21;
  v23 = -64.0;
  if (v17)
  {
    v23 = -44.0;
    v24 = 44.0;
  }

  else
  {
    v24 = 64.0;
  }

  v25 = v20 + v23;
  [v21 bounds];
  v27 = v26;
  v28 = [(RPVideoEditorViewController *)self bottomToolBar];
  [v28 setFrame:{0.0, v25, v27, v24}];

  [(RPVideoEditorViewController *)self setThumbnailGenerator:0];
  [(RPVideoEditorViewController *)self setCachedTimeStamps:0];
  v29 = [(RPVideoEditorViewController *)self avTrimmer];
  [v29 reloadData];
}

- (void)undoAction
{
  if (![(RPVideoEditorViewController *)self isExporting])
  {
    v5 = [(RPVideoEditorViewController *)self avTrimmer];
    v3 = [v5 delegate];
    v4 = [(RPVideoEditorViewController *)self avTrimmer];
    [v3 movieScrubberDidCancelEditing:v4];
  }
}

- (void)playAction
{
  v3 = [(RPVideoEditorViewController *)self isTrimming];
  v4 = [(RPVideoEditorViewController *)self avPlayer];
  v5 = v4;
  if (v3)
  {
    [(RPVideoEditorViewController *)self editStartTime];
    v7 = v6;
    v8 = [(RPVideoEditorViewController *)self avPlayer];
    v9 = v8;
    if (v8)
    {
      [v8 currentTime];
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
    v13 = [(RPVideoEditorViewController *)self avPlayer];
    v14 = v13;
    if (v13)
    {
      [v13 currentTime];
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
    v17 = [(RPVideoEditorViewController *)self avPlayer];
    v45 = v16;
    v18 = [NSArray arrayWithObjects:&v45 count:1];
    v19 = &_dispatch_main_q;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100005290;
    v35[3] = &unk_100018608;
    objc_copyWeak(&v36, &location);
    v20 = [v17 addBoundaryTimeObserverForTimes:v18 queue:&_dispatch_main_q usingBlock:v35];
    [(RPVideoEditorViewController *)self setTimeObserver:v20];

    v21 = [(RPVideoEditorViewController *)self avPlayer];
    [v21 play];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    [v4 play];
  }

  if (![(RPVideoEditorViewController *)self isUIHidden])
  {
    [(RPVideoEditorViewController *)self hideUI];
  }

  if ([(RPVideoEditorViewController *)self isIntroMode])
  {
    v22 = [(RPVideoEditorViewController *)self videoOverlayPlayButton];
    [v22 removeFromSuperview];

    [(RPVideoEditorViewController *)self setIntroMode:0];
  }

  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    v23 = [(RPVideoEditorViewController *)self isTrimming];
    v24 = [(RPVideoEditorViewController *)self topToolBar];
    if (v23)
    {
      v25 = [(RPVideoEditorViewController *)self cancelTrimButton];
      v26 = [(RPVideoEditorViewController *)self flexSpace];
      v27 = [(RPVideoEditorViewController *)self titleButton];
      v28 = [(RPVideoEditorViewController *)self flexSpace];
      v29 = [(RPVideoEditorViewController *)self pauseButton];
      v34 = [(RPVideoEditorViewController *)self fixSpace];
      v30 = [(RPVideoEditorViewController *)self shareButton];
      v31 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self trimButton];
    }

    else
    {
      v25 = [(RPVideoEditorViewController *)self cancelButton];
      v26 = [(RPVideoEditorViewController *)self flexSpace];
      v27 = [(RPVideoEditorViewController *)self titleButton];
      v28 = [(RPVideoEditorViewController *)self flexSpace];
      v29 = [(RPVideoEditorViewController *)self pauseButton];
      v34 = [(RPVideoEditorViewController *)self fixSpace];
      v30 = [(RPVideoEditorViewController *)self shareButton];
      v31 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self saveButton];
    }
    v32 = ;
    v33 = [NSArray arrayWithObjects:v25, v26, v27, v28, v29, v34, v30, v31, v32, 0];
    [v24 setItems:v33];
  }

  else
  {
    v24 = [(RPVideoEditorViewController *)self bottomToolBar];
    v25 = [(RPVideoEditorViewController *)self shareButton];
    v26 = [(RPVideoEditorViewController *)self flexSpace];
    v27 = [(RPVideoEditorViewController *)self pauseButton];
    v28 = [(RPVideoEditorViewController *)self flexSpace];
    v29 = [NSArray arrayWithObjects:v25, v26, v27, v28, 0];
    [v24 setItems:v29];
  }
}

- (void)pauseAction
{
  v3 = [(RPVideoEditorViewController *)self avPlayer];
  [v3 pause];

  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    v4 = [(RPVideoEditorViewController *)self isTrimming];
    v15 = [(RPVideoEditorViewController *)self topToolBar];
    if (v4)
    {
      v5 = [(RPVideoEditorViewController *)self cancelTrimButton];
      v6 = [(RPVideoEditorViewController *)self flexSpace];
      v7 = [(RPVideoEditorViewController *)self titleButton];
      v8 = [(RPVideoEditorViewController *)self flexSpace];
      v9 = [(RPVideoEditorViewController *)self playButton];
      v10 = [(RPVideoEditorViewController *)self fixSpace];
      v11 = [(RPVideoEditorViewController *)self shareButton];
      v12 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self trimButton];
    }

    else
    {
      v5 = [(RPVideoEditorViewController *)self cancelButton];
      v6 = [(RPVideoEditorViewController *)self flexSpace];
      v7 = [(RPVideoEditorViewController *)self titleButton];
      v8 = [(RPVideoEditorViewController *)self flexSpace];
      v9 = [(RPVideoEditorViewController *)self playButton];
      v10 = [(RPVideoEditorViewController *)self fixSpace];
      v11 = [(RPVideoEditorViewController *)self shareButton];
      v12 = [(RPVideoEditorViewController *)self fixSpace];
      [(RPVideoEditorViewController *)self saveButton];
    }
    v13 = ;
    v14 = [NSArray arrayWithObjects:v5, v6, v7, v8, v9, v10, v11, v12, v13, 0];
    [v15 setItems:v14];
  }

  else
  {
    v15 = [(RPVideoEditorViewController *)self bottomToolBar];
    v5 = [(RPVideoEditorViewController *)self shareButton];
    v6 = [(RPVideoEditorViewController *)self flexSpace];
    v7 = [(RPVideoEditorViewController *)self playButton];
    v8 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [NSArray arrayWithObjects:v5, v6, v7, v8, 0];
    [v15 setItems:v9];
  }
}

- (void)doneAction
{
  if (![(RPVideoEditorViewController *)self isShareSheetUp])
  {
    v3 = [(RPVideoEditorViewController *)self avPlayer];
    [v3 pause];

    v5 = [(RPVideoEditorViewController *)self delegate];
    v4 = [(RPVideoEditorViewController *)self activityTypes];
    [v5 videoEditor:self didFinishWithActivityTypes:v4];
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

    v3 = [(RPVideoEditorViewController *)self activityTypes];
    [v3 addObject:UIActivityTypeSaveToCameraRoll];

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

      v5 = [(RPVideoEditorViewController *)self videoURL];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100005820;
      v6[3] = &unk_1000186C0;
      v6[4] = self;
      [RPAudioMixUtility mixAudioForMovie:v5 withCompletionHandler:v6];
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
  v10 = [(RPVideoEditorViewController *)self videoURL];
  v11 = [AVAsset assetWithURL:v10];

  v12 = [[AVAssetExportSession alloc] initWithAsset:v11 presetName:AVAssetExportPresetHighestQuality];
  [(RPVideoEditorViewController *)self setExportSession:v12];

  v13 = [(RPVideoEditorViewController *)self trimFileURL];
  v14 = [(RPVideoEditorViewController *)self exportSession];
  [v14 setOutputURL:v13];

  v15 = [(RPVideoEditorViewController *)self exportSession];
  [v15 setOutputFileType:AVFileTypeMPEG4];

  memset(&v37, 0, sizeof(v37));
  [(RPVideoEditorViewController *)self editStartTime];
  v17 = v16;
  v18 = [(RPVideoEditorViewController *)self avPlayer];
  v19 = v18;
  if (v18)
  {
    [v18 currentTime];
    LODWORD(v18) = v35;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  CMTimeMakeWithSeconds(&v37, v17, v18);

  memset(&v33, 0, sizeof(v33));
  [(RPVideoEditorViewController *)self editEndTime];
  v21 = v20;
  v22 = [(RPVideoEditorViewController *)self avPlayer];
  v23 = v22;
  if (v22)
  {
    [v22 currentTime];
    LODWORD(v22) = v31;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  CMTimeMakeWithSeconds(&v33, v21, v22);

  memset(&buf, 0, sizeof(buf));
  start.start = v37;
  duration = v33;
  CMTimeRangeMake(&buf, &start.start, &duration);
  v28 = buf;
  v24 = [(RPVideoEditorViewController *)self exportSession];
  start = v28;
  [v24 setTimeRange:&start];

  v25 = [(RPVideoEditorViewController *)self exportSession];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000618C;
  v26[3] = &unk_100018578;
  v26[4] = self;
  [v25 exportAsynchronouslyWithCompletionHandler:v26];
}

- (void)reloadAVLayerWithURL:(id)a3
{
  v4 = a3;
  if ([(RPVideoEditorViewController *)self isTrimming])
  {
    v5 = [(RPVideoEditorViewController *)self avTrimmer];
    v6 = [v5 delegate];
    v7 = [(RPVideoEditorViewController *)self avTrimmer];
    [v6 movieScrubberDidCancelEditing:v7];
  }

  [(RPVideoEditorViewController *)self setVideoURL:v4];
  v8 = [(RPVideoEditorViewController *)self avPlayer];
  v9 = [v8 currentItem];
  [v9 removeObserver:self forKeyPath:@"status"];

  v10 = [(RPVideoEditorViewController *)self avPlayer];
  v11 = [v10 currentItem];
  [v11 removeObserver:self forKeyPath:@"duration"];

  v12 = [[AVURLAsset alloc] initWithURL:v4 options:0];
  [(RPVideoEditorViewController *)self setAvAsset:v12];

  v13 = [AVPlayerItem alloc];
  v14 = [(RPVideoEditorViewController *)self avAsset];
  v15 = [v13 initWithAsset:v14];
  [(RPVideoEditorViewController *)self setAvPlayerItem:v15];

  v16 = [AVPlayer alloc];
  v17 = [(RPVideoEditorViewController *)self avPlayerItem];
  v18 = [v16 initWithPlayerItem:v17];
  [(RPVideoEditorViewController *)self setAvPlayer:v18];

  v19 = [(RPVideoEditorViewController *)self avPlayer];
  [v19 setActionAtItemEnd:1];

  v20 = [(RPVideoEditorViewController *)self avPlayer];
  v33 = kCMTimeZero;
  [v20 seekToTime:&v33];

  v21 = [(RPVideoEditorViewController *)self avPlayer];
  v22 = [(RPVideoEditorViewController *)self avPlayerLayer];
  [v22 setPlayer:v21];

  v23 = [(RPVideoEditorViewController *)self avPlayer];
  v24 = [v23 currentItem];
  [v24 addObserver:self forKeyPath:@"status" options:0 context:0];

  v25 = [(RPVideoEditorViewController *)self avPlayer];
  v26 = [v25 currentItem];
  [v26 addObserver:self forKeyPath:@"duration" options:0 context:0];

  [(RPVideoEditorViewController *)self setCurrentItemLoaded:0];
  [(RPVideoEditorViewController *)self setScrubbing:0];
  memset(&v33, 0, sizeof(v33));
  CMTimeMakeWithSeconds(&v33, 0.0333333333, 1000000000);
  objc_initWeak(&location, self);
  v27 = [(RPVideoEditorViewController *)self avPlayer];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100006924;
  v30[3] = &unk_100018550;
  objc_copyWeak(&v31, &location);
  v29 = v33;
  v28 = [v27 addPeriodicTimeObserverForInterval:&v29 queue:0 usingBlock:v30];
  [(RPVideoEditorViewController *)self setPlaybackTimeObserver:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)displayShareSheetWithVideoURL:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPVideoEditorViewController displayShareSheetWithVideoURL:]";
    v12 = 1024;
    v13 = 874;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[RPStoreManager sharedManager];
  v6 = [(RPVideoEditorViewController *)self bundleIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006B74;
  v8[3] = &unk_100018730;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 loadItemDetailsForBundleIdentifier:v6 completionHandler:v8];
}

- (void)editMode
{
  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    v3 = [(RPVideoEditorViewController *)self topToolBar];
    v4 = [(RPVideoEditorViewController *)self cancelTrimButton];
    v5 = [(RPVideoEditorViewController *)self flexSpace];
    v6 = [(RPVideoEditorViewController *)self titleButton];
    v7 = [(RPVideoEditorViewController *)self flexSpace];
    v8 = [(RPVideoEditorViewController *)self playButton];
    v9 = [(RPVideoEditorViewController *)self fixSpace];
    v10 = [(RPVideoEditorViewController *)self trimButton];
    v11 = [NSArray arrayWithObjects:v4, v5, v6, v7, v8, v9, v10, 0];
    [v3 setItems:v11];
  }

  else
  {
    v12 = [(RPVideoEditorViewController *)self bottomToolBar];
    v13 = [(RPVideoEditorViewController *)self flexSpace];
    v14 = [(RPVideoEditorViewController *)self playButton];
    v15 = [(RPVideoEditorViewController *)self flexSpace];
    v16 = [NSArray arrayWithObjects:v13, v14, v15, 0];
    [v12 setItems:v16];

    v3 = [(RPVideoEditorViewController *)self topToolBar];
    v4 = [(RPVideoEditorViewController *)self cancelTrimButton];
    v5 = [(RPVideoEditorViewController *)self flexSpace];
    v6 = [(RPVideoEditorViewController *)self titleButton];
    v7 = [(RPVideoEditorViewController *)self flexSpace];
    v8 = [(RPVideoEditorViewController *)self trimButton];
    v9 = [NSArray arrayWithObjects:v4, v5, v6, v7, v8, 0];
    [v3 setItems:v9];
  }

  [(RPVideoEditorViewController *)self setHasEdit:1];
}

- (void)previewMode
{
  if ([(RPVideoEditorViewController *)self isPadMode])
  {
    v3 = [(RPVideoEditorViewController *)self hasEdit];
    v20 = [(RPVideoEditorViewController *)self topToolBar];
    if (v3)
    {
      [(RPVideoEditorViewController *)self doneButton];
    }

    else
    {
      [(RPVideoEditorViewController *)self cancelButton];
    }
    v10 = ;
    v11 = [(RPVideoEditorViewController *)self flexSpace];
    v12 = [(RPVideoEditorViewController *)self titleButton];
    v13 = [(RPVideoEditorViewController *)self flexSpace];
    v14 = [(RPVideoEditorViewController *)self playButton];
    v15 = [(RPVideoEditorViewController *)self fixSpace];
    v16 = [(RPVideoEditorViewController *)self shareButton];
    v17 = [(RPVideoEditorViewController *)self fixSpace];
    v18 = [(RPVideoEditorViewController *)self saveButton];
    v19 = [NSArray arrayWithObjects:v10, v11, v12, v13, v14, v15, v16, v17, v18, 0];
    [v20 setItems:v19];
  }

  else
  {
    v4 = [(RPVideoEditorViewController *)self bottomToolBar];
    v5 = [(RPVideoEditorViewController *)self shareButton];
    v6 = [(RPVideoEditorViewController *)self flexSpace];
    v7 = [(RPVideoEditorViewController *)self playButton];
    v8 = [(RPVideoEditorViewController *)self flexSpace];
    v9 = [NSArray arrayWithObjects:v5, v6, v7, v8, 0];
    [v4 setItems:v9];

    LODWORD(v4) = [(RPVideoEditorViewController *)self hasEdit];
    v20 = [(RPVideoEditorViewController *)self topToolBar];
    if (v4)
    {
      [(RPVideoEditorViewController *)self doneButton];
    }

    else
    {
      [(RPVideoEditorViewController *)self cancelButton];
    }
    v10 = ;
    v11 = [(RPVideoEditorViewController *)self flexSpace];
    v12 = [(RPVideoEditorViewController *)self titleButton];
    v13 = [(RPVideoEditorViewController *)self flexSpace];
    v14 = [(RPVideoEditorViewController *)self saveButton];
    v15 = [NSArray arrayWithObjects:v10, v11, v12, v13, v14, 0];
    [v20 setItems:v15];
  }
}

- (void)movieScrubber:(id)a3 valueDidChange:(double)a4
{
  v6 = [(RPVideoEditorViewController *)self avPlayer];
  v7 = [(RPVideoEditorViewController *)self avPlayer];
  v8 = v7;
  if (v7)
  {
    [v7 currentTime];
    LODWORD(v7) = v9;
  }

  CMTimeMakeWithSeconds(&v10, a4, v7);
  [v6 seekToTime:&v10];
}

- (void)movieScrubberDidEndScrubbing:(id)a3 withHandle:(int)a4
{
  v5 = a3;
  v6 = [(RPVideoEditorViewController *)self avPlayer];
  [v5 value];
  v8 = v7;

  v9 = [(RPVideoEditorViewController *)self avPlayer];
  v10 = v9;
  if (v9)
  {
    [v9 currentTime];
    LODWORD(v9) = v11;
  }

  CMTimeMakeWithSeconds(&v12, v8, v9);
  [v6 seekToTime:&v12];

  [(RPVideoEditorViewController *)self setScrubbing:0];
}

- (void)movieScrubber:(id)a3 editingStartValueDidChange:(double)a4
{
  v6 = [(RPVideoEditorViewController *)self avPlayer];
  [v6 pause];

  [(RPVideoEditorViewController *)self setEditStartTime:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007818;
  v7[3] = &unk_100018758;
  v7[4] = self;
  *&v7[5] = a4;
  dispatch_async(&_dispatch_main_q, v7);
  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubber:(id)a3 editingEndValueDidChange:(double)a4
{
  v6 = [(RPVideoEditorViewController *)self avPlayer];
  [v6 pause];

  [(RPVideoEditorViewController *)self setEditEndTime:a4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007968;
  v7[3] = &unk_100018758;
  v7[4] = self;
  *&v7[5] = a4;
  dispatch_async(&_dispatch_main_q, v7);
  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubberDidBeginEditing:(id)a3
{
  [(RPVideoEditorViewController *)self editMode];

  [(RPVideoEditorViewController *)self setTrimming:1];
}

- (void)movieScrubberDidCancelEditing:(id)a3
{
  v4 = [(RPVideoEditorViewController *)self avTrimmer];
  [v4 setEditing:0 animated:1];

  [(RPVideoEditorViewController *)self previewMode];

  [(RPVideoEditorViewController *)self setTrimming:0];
}

- (id)movieScrubber:(id)a3 evenlySpacedTimestamps:(int)a4 startingAt:(id)a5 endingAt:(id)a6
{
  v9 = a5;
  v10 = a6;
  [v10 doubleValue];
  if (v11 == 0.0)
  {
    goto LABEL_10;
  }

  v12 = [NSMutableArray arrayWithCapacity:a4];
  [(RPVideoEditorViewController *)self getPlayerDuration];
  v14 = v13;
  [v9 doubleValue];
  v16 = v15;
  [v10 doubleValue];
  v18 = a4 - 1;
  if (a4 >= 1)
  {
    v19 = (v17 - v16) / a4;
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

- (double)movieScrubberThumbnailAspectRatio:(id)a3
{
  v3 = [(RPVideoEditorViewController *)self avPlayer];
  v4 = [v3 currentItem];
  v5 = [v4 asset];
  v6 = [v5 tracksWithMediaType:AVMediaTypeVideo];

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

- (void)movieScrubber:(id)a3 requestThumbnailImageForTimestamp:(id)a4
{
  v5 = a4;
  v6 = [(RPVideoEditorViewController *)self thumbnailGenerator];

  if (!v6)
  {
    v7 = [AVAssetImageGenerator alloc];
    v8 = [(RPVideoEditorViewController *)self avPlayer];
    v9 = [v8 currentItem];
    v10 = [v9 asset];
    v11 = [v7 initWithAsset:v10];
    [(RPVideoEditorViewController *)self setThumbnailGenerator:v11];

    [(RPVideoEditorViewController *)self getThumbnailSize];
    v13 = v12;
    v15 = v14;
    v16 = [(RPVideoEditorViewController *)self thumbnailGenerator];
    [v16 setMaximumSize:{v13, v15}];
  }

  v17 = [(RPVideoEditorViewController *)self cachedTimeStamps];

  if (!v17)
  {
    v18 = objc_opt_new();
    [(RPVideoEditorViewController *)self setCachedTimeStamps:v18];
  }

  v19 = [(RPVideoEditorViewController *)self cachedTimeStamps];
  v20 = [v19 objectForKey:v5];

  if (v20)
  {
    [(RPVideoEditorViewController *)self setThumbnailFromCacheWithTimeStamp:v5];
  }

  else
  {
    v21 = [(RPVideoEditorViewController *)self thumbnailGenerator];
    v25 = v5;
    v22 = [NSArray arrayWithObjects:&v25 count:1];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007F4C;
    v23[3] = &unk_100018780;
    v23[4] = self;
    v24 = v5;
    [v21 generateCGImagesAsynchronouslyForTimes:v22 completionHandler:v23];
  }
}

- (void)setThumbnailFromCacheWithTimeStamp:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000804C;
  v4[3] = &unk_100018670;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (CGSize)getVideoSize
{
  v2 = [(RPVideoEditorViewController *)self avPlayer];
  v3 = [v2 currentItem];
  v4 = [v3 asset];
  v5 = [v4 tracksWithMediaType:AVMediaTypeVideo];

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
  v3 = [(RPVideoEditorViewController *)self avPlayer];
  v4 = [v3 currentItem];
  v5 = [v4 status];

  if (v5 == 1)
  {
    v6 = [(RPVideoEditorViewController *)self avPlayer];
    v7 = [v6 currentItem];
    v8 = v7;
    if (v7)
    {
      [v7 duration];
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

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  if ([v6 subtype] == 1 && -[RPVideoEditorViewController isTrimming](self, "isTrimming") && !-[RPVideoEditorViewController isExporting](self, "isExporting"))
  {
    [(RPVideoEditorViewController *)self undoAction];
  }

  v8.receiver = self;
  v8.super_class = RPVideoEditorViewController;
  if ([(RPVideoEditorViewController *)&v8 respondsToSelector:"motionEnded:withEvent:"])
  {
    v7.receiver = self;
    v7.super_class = RPVideoEditorViewController;
    [(RPVideoEditorViewController *)&v7 motionEnded:a3 withEvent:v6];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end