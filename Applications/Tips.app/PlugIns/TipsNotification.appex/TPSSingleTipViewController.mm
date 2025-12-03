@interface TPSSingleTipViewController
- (BOOL)isOneLinerForText:(id)text maxWidth:(double)width font:(id)font;
- (TPSSingleTipViewController)initWithAppController:(id)controller translucentBackground:(BOOL)background;
- (TPSSingleTipViewControllerDelegate)delegate;
- (double)maxWidth;
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (void)analyticsIncreaseCountForCurrentTip;
- (void)cancelConstellationContentParserOperation;
- (void)constellationContentParser:(id)parser identifier:(id)identifier attributedStringUpdated:(id)updated;
- (void)createViews;
- (void)dealloc;
- (void)imageAssetViewImageUpdated:(id)updated;
- (void)playVideo;
- (void)scheduleIncreaseViewCount;
- (void)setTip:(id)tip visible:(BOOL)visible completionHandler:(id)handler;
- (void)setupForSnapshot;
- (void)updateAssetsConfiguration;
- (void)updateBodyText;
- (void)updateImageWithCompletionHandler:(id)handler;
- (void)updateVideoAndPlayImmediately:(BOOL)immediately;
- (void)viewDidLoad;
@end

@implementation TPSSingleTipViewController

- (void)dealloc
{
  [(NSOperationQueue *)self->_attributedStringOperationQueue cancelAllOperations];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"analyticsIncreaseCountForCurrentTip" object:0];
  v3.receiver = self;
  v3.super_class = TPSSingleTipViewController;
  [(TPSSingleTipViewController *)&v3 dealloc];
}

- (TPSSingleTipViewController)initWithAppController:(id)controller translucentBackground:(BOOL)background
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = TPSSingleTipViewController;
  v8 = [(TPSSingleTipViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appController, controller);
    v9->_translucentBackground = background;
  }

  return v9;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = TPSSingleTipViewController;
  [(TPSSingleTipViewController *)&v7 viewDidLoad];
  v3 = +[AVAudioSession sharedInstance];
  [v3 setCategory:AVAudioSessionCategoryAmbient error:0];

  [(TPSSingleTipViewController *)self createViews];
  pendingTip = self->_pendingTip;
  if (pendingTip)
  {
    objc_storeStrong(&self->_tip, pendingTip);
    [(TPSSingleTipViewController *)self updateAssetsConfiguration];
  }

  if (self->_translucentBackground)
  {
    v5 = +[UIColor clearColor];
    [(TPSVideoAssetView *)self->_heroAssetView setDefaultBackgroundColor:v5];

    v6 = +[UIColor clearColor];
    [(TPSVideoAssetView *)self->_heroAssetView setNoImageBackgroundColor:v6];
  }

  else
  {
    v6 = +[TPSAppearance defaultBackgroundColor];
    [(TPSVideoAssetView *)self->_heroAssetView setDefaultBackgroundColor:v6];
  }
}

- (void)cancelConstellationContentParserOperation
{
  [(NSBlockOperation *)self->_contentTextOperation cancel];
  contentTextOperation = self->_contentTextOperation;
  self->_contentTextOperation = 0;
}

- (void)playVideo
{
  if (self->_viewDidAppeared)
  {
    [(TPSSingleTipViewController *)self updateVideoAndPlayImmediately:1];
  }
}

- (void)setupForSnapshot
{
  [(TPSVideoAssetView *)self->_heroAssetView removeVideoPlayerLayer];
  heroAssetView = self->_heroAssetView;

  [(TPSVideoAssetView *)heroAssetView setImage:0];
}

- (void)createViews
{
  if (!self->_heroAssetView)
  {
    v3 = objc_alloc_init(TPSVideoAssetView);
    heroAssetView = self->_heroAssetView;
    self->_heroAssetView = v3;

    [(TPSVideoAssetView *)self->_heroAssetView setDelegate:self];
    [(TPSVideoAssetView *)self->_heroAssetView setVideoDelegate:self];
    [(TPSVideoAssetView *)self->_heroAssetView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(TPSSingleTipViewController *)self view];
    [view addSubview:self->_heroAssetView];

    leadingAnchor = [(TPSVideoAssetView *)self->_heroAssetView leadingAnchor];
    view2 = [(TPSSingleTipViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v9 setActive:1];

    trailingAnchor = [(TPSVideoAssetView *)self->_heroAssetView trailingAnchor];
    view3 = [(TPSSingleTipViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v13 setActive:1];

    topAnchor = [(TPSVideoAssetView *)self->_heroAssetView topAnchor];
    view4 = [(TPSSingleTipViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v17 setActive:1];

    heightAnchor = [(TPSVideoAssetView *)self->_heroAssetView heightAnchor];
    widthAnchor = [(TPSVideoAssetView *)self->_heroAssetView widthAnchor];
    v20 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    heroAssetViewHeightConstraint = self->_heroAssetViewHeightConstraint;
    self->_heroAssetViewHeightConstraint = v20;

    LODWORD(v22) = 1148829696;
    [(NSLayoutConstraint *)self->_heroAssetViewHeightConstraint setPriority:v22];
    [(NSLayoutConstraint *)self->_heroAssetViewHeightConstraint setActive:1];
  }

  if (!self->_titleLabel)
  {
    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v23;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    v25 = +[TPSAppearance titleLabelFont];
    [(UILabel *)self->_titleLabel setFont:v25];

    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    LODWORD(v26) = 1144750080;
    [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v26];
    view5 = [(TPSSingleTipViewController *)self view];
    [view5 insertSubview:self->_titleLabel belowSubview:self->_heroAssetView];

    leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
    view6 = [(TPSSingleTipViewController *)self view];
    leadingAnchor4 = [view6 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    titleLabelLeadingConstraint = self->_titleLabelLeadingConstraint;
    self->_titleLabelLeadingConstraint = v31;

    [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setActive:1];
    trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor4 = [(TPSVideoAssetView *)self->_heroAssetView trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-30.0];
    [v35 setActive:1];

    firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    bottomAnchor = [(TPSVideoAssetView *)self->_heroAssetView bottomAnchor];
    v38 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.2];
    [v38 setActive:1];
  }

  if (!self->_bodyTextView)
  {
    v39 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    bodyTextView = self->_bodyTextView;
    self->_bodyTextView = v39;

    [(UITextView *)self->_bodyTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_bodyTextView setScrollEnabled:0];
    [(UITextView *)self->_bodyTextView _setInteractiveTextSelectionDisabled:1];
    v41 = +[UIColor clearColor];
    [(UITextView *)self->_bodyTextView setBackgroundColor:v41];

    [(UITextView *)self->_bodyTextView setEditable:0];
    [(UITextView *)self->_bodyTextView setDataDetectorTypes:0];
    textContainer = [(UITextView *)self->_bodyTextView textContainer];
    [textContainer setHeightTracksTextView:1];

    [(UITextView *)self->_bodyTextView setDelegate:self];
    textContainer2 = [(UITextView *)self->_bodyTextView textContainer];
    [textContainer2 setLineBreakMode:4];

    [(UITextView *)self->_bodyTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    textContainer3 = [(UITextView *)self->_bodyTextView textContainer];
    [textContainer3 setLineFragmentPadding:0.0];

    v45 = +[TPSAppearance defaultLabelColor];
    [(UITextView *)self->_bodyTextView setTextColor:v45];

    if (self->_supportInlineLinks)
    {
      v63 = NSForegroundColorAttributeName;
      v46 = +[UIColor systemBlueColor];
      v64 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      [(UITextView *)self->_bodyTextView setLinkTextAttributes:v47];
    }

    view7 = [(TPSSingleTipViewController *)self view];
    [view7 insertSubview:self->_bodyTextView belowSubview:self->_heroAssetView];

    leadingAnchor5 = [(UITextView *)self->_bodyTextView leadingAnchor];
    view8 = [(TPSSingleTipViewController *)self view];
    leadingAnchor6 = [view8 leadingAnchor];
    v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];
    [v52 setActive:1];

    trailingAnchor5 = [(UITextView *)self->_bodyTextView trailingAnchor];
    trailingAnchor6 = [(UILabel *)self->_titleLabel trailingAnchor];
    v55 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v55 setActive:1];

    bottomAnchor2 = [(UITextView *)self->_bodyTextView bottomAnchor];
    view9 = [(TPSSingleTipViewController *)self view];
    bottomAnchor3 = [view9 bottomAnchor];
    v59 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
    [v59 setActive:1];

    firstBaselineAnchor2 = [(UITextView *)self->_bodyTextView firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
    v62 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.2];
    [v62 setActive:1];
  }
}

- (void)analyticsIncreaseCountForCurrentTip
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"analyticsIncreaseCountForCurrentTip" object:0];
  tip = self->_tip;
  if (tip)
  {
    identifier = [(TPSTip *)tip identifier];
    collectionID = [(TPSSingleTipViewController *)self collectionID];
    correlationID = [(TPSTip *)self->_tip correlationID];
    clientConditionID = [(TPSTip *)self->_tip clientConditionID];
    v7 = TPSAnalyticsViewMethodNotification;
    traitCollection = [(TPSSingleTipViewController *)self traitCollection];
    v9 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:traitCollection];
    v10 = [TPSAnalyticsEventContentViewed eventWithContentID:identifier collectionID:collectionID correlationID:correlationID clientConditionID:clientConditionID viewMethod:v7 viewMode:v9];
    [v10 log];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained singleTipViewController:self tipViewed:self->_tip];
  }
}

- (void)setTip:(id)tip visible:(BOOL)visible completionHandler:(id)handler
{
  visibleCopy = visible;
  tipCopy = tip;
  handlerCopy = handler;
  language = [tipCopy language];
  v12 = +[TPSCommonDefines sharedInstance];
  [v12 setLanguage:language];

  if (self->_titleLabel)
  {
    identifier = [tipCopy identifier];
    identifier2 = [(TPSTip *)self->_tip identifier];
    v15 = [identifier isEqualToString:identifier2];

    if ((v15 & 1) == 0)
    {
      assetSizes = [(TPSSingleTipViewController *)self assetSizes];
      v17 = [assetSizes tip];

      v18 = &selRef_respondsToSelector_;
      if (!v17)
      {
        goto LABEL_8;
      }

      v19 = +[TPSCommonDefines isPhoneUI]^ 1;
      assetSizes2 = [(TPSSingleTipViewController *)self assetSizes];
      v21 = [assetSizes2 tip];
      [v21 heightToWidthRatioForViewMode:v19];
      v23 = v22;

      v18 = &selRef_respondsToSelector_;
      if (v23 > 0.0)
      {
        v24 = 0.0;
      }

      else
      {
LABEL_8:
        v25 = +[TPSCommonDefines sharedInstance];
        assetRatioType = [v25 assetRatioType];
        if (+[TPSCommonDefines isPhoneUI])
        {
          v23 = dbl_100005AD0[assetRatioType == 1];
          v24 = 0.0;
        }

        else
        {
          [*(&self->super.super.super.isa + *(v18 + 129)) setAspectFillAsset:1];
          v23 = 0.9644;
          v24 = 110.05;
        }
      }

      [(NSLayoutConstraint *)self->_heroAssetViewHeightConstraint setActive:0];
      [(NSLayoutConstraint *)self->_heroAssetViewHeightRatioConstraint setActive:0];
      v27 = *(v18 + 129);
      heightAnchor = [*(&self->super.super.super.isa + v27) heightAnchor];
      view = [(TPSSingleTipViewController *)self view];
      widthAnchor = [view widthAnchor];
      v31 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v23 constant:-v24];
      heroAssetViewHeightRatioConstraint = self->_heroAssetViewHeightRatioConstraint;
      self->_heroAssetViewHeightRatioConstraint = v31;

      [(NSLayoutConstraint *)self->_heroAssetViewHeightRatioConstraint setActive:1];
      objc_storeStrong(&self->_tip, tip);
      [(TPSSingleTipViewController *)self updateAssetsConfiguration];
      language2 = [tipCopy language];
      v34 = +[TPSAssetCacheController sharedInstance];
      [v34 setLanguageCode:language2];

      [*(&self->super.super.super.isa + v27) cancel];
      heroAssetFetchCompletionHandler = self->_heroAssetFetchCompletionHandler;
      self->_heroAssetFetchCompletionHandler = 0;

      [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint constant];
      if (v36 == 0.0)
      {
        [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:30.0];
      }

      title = [(TPSTip *)self->_tip title];
      [(UILabel *)self->_titleLabel setText:title];

      [(TPSSingleTipViewController *)self updateBodyText];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100001F40;
      v39[3] = &unk_10000C2F8;
      v40 = handlerCopy;
      [(TPSSingleTipViewController *)self updateImageWithCompletionHandler:v39];
      [*(&self->super.super.super.isa + v27) stopVideoPlayer];
      if (visibleCopy)
      {
        [(TPSSingleTipViewController *)self updateVideoAndPlayImmediately:0];
        [(TPSSingleTipViewController *)self scheduleIncreaseViewCount];
      }

      pendingTip = self->_pendingTip;
      self->_pendingTip = 0;
    }
  }

  else
  {
    objc_storeStrong(&self->_pendingTip, tip);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)updateAssetsConfiguration
{
  appController = [(TPSSingleTipViewController *)self appController];
  v14 = [(TPSSingleTipViewController *)self tip];
  fullContent = [v14 fullContent];
  assets = [fullContent assets];
  v4 = [(TPSSingleTipViewController *)self tip];
  language = [v4 language];
  if (+[TPSCommonDefines isPhoneUI])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  view = [(TPSSingleTipViewController *)self view];
  traitCollection = [view traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v10 = [(TPSSingleTipViewController *)self tip];
  assetFileInfoManager = [v10 assetFileInfoManager];
  v12 = [appController assetConfigurationForAssets:assets language:language sizeClass:v6 style:userInterfaceStyle assetFileInfoManager:assetFileInfoManager];
  [(TPSSingleTipViewController *)self setAssetsConfiguration:v12];
}

- (void)scheduleIncreaseViewCount
{
  [(TPSSingleTipViewController *)self cancelScheduledIncreaseViewCount];
  if (self->_tip)
  {
    v3 = kTipsAnalyticsDelayedEventInterval;

    [(TPSSingleTipViewController *)self performSelector:"analyticsIncreaseCountForCurrentTip" withObject:0 afterDelay:v3];
  }
}

- (BOOL)isOneLinerForText:(id)text maxWidth:(double)width font:(id)font
{
  if (!font)
  {
    return 0;
  }

  v22 = NSFontAttributeName;
  fontCopy = font;
  fontCopy2 = font;
  textCopy = text;
  v9 = [NSDictionary dictionaryWithObjects:&fontCopy forKeys:&v22 count:1];
  [textCopy boundingRectWithSize:1 options:v9 attributes:0 context:{width, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  Height = CGRectGetHeight(v24);
  [fontCopy2 lineHeight];
  v20 = v19;

  return Height == v20;
}

- (double)maxWidth
{
  view = [(TPSSingleTipViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (void)updateBodyText
{
  [(TPSSingleTipViewController *)self cancelConstellationContentParserOperation];
  v33 = +[TPSAppearance defaultTextLabelFont];
  v32 = +[TPSAppearance defaultLabelColor];
  v46[0] = NSFontAttributeName;
  v46[1] = NSForegroundColorAttributeName;
  v47[0] = v33;
  v47[1] = v32;
  v3 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  v4 = [(TPSSingleTipViewController *)self tip];
  bodyText = [v4 bodyText];

  if (bodyText)
  {
    bodyContent = [[NSAttributedString alloc] initWithString:bodyText attributes:v3];
    bodyTextView = [(TPSSingleTipViewController *)self bodyTextView];
    [bodyTextView setAttributedText:bodyContent];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(TPSSingleTipViewController *)self tip];
  bodyContent = [v8 bodyContent];

  if (bodyContent)
  {
    v9 = objc_alloc_init(TPSConstellationContentParser);
    [v9 setDelegate:self];
    view = [(TPSSingleTipViewController *)self view];
    traitCollection = [view traitCollection];
    [v9 setTraitCollection:traitCollection];

    [v9 setIgnoreLinks:!self->_supportInlineLinks];
    if (!self->_attributedStringOperationQueue)
    {
      v12 = objc_alloc_init(NSOperationQueue);
      attributedStringOperationQueue = self->_attributedStringOperationQueue;
      self->_attributedStringOperationQueue = v12;

      [(NSOperationQueue *)self->_attributedStringOperationQueue setMaxConcurrentOperationCount:4];
    }

    objc_initWeak(&location, self);
    v14 = [(TPSSingleTipViewController *)self tip];
    identifier = [v14 identifier];
    objc_initWeak(&from, identifier);

    v16 = [(TPSSingleTipViewController *)self tip];
    identifier2 = [v16 identifier];

    v17 = [(TPSSingleTipViewController *)self tip];
    language = [v17 language];

    v18 = [(TPSSingleTipViewController *)self tip];
    fullContentAssets = [v18 fullContentAssets];
    baseURL = [fullContentAssets baseURL];

    v21 = [(TPSSingleTipViewController *)self tip];
    assetFileInfoManager = [v21 assetFileInfoManager];

    v23 = objc_alloc_init(NSBlockOperation);
    contentTextOperation = self->_contentTextOperation;
    self->_contentTextOperation = v23;

    v25 = self->_contentTextOperation;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000276C;
    v34[3] = &unk_10000C348;
    bodyTextView = v9;
    v35 = bodyTextView;
    bodyContent = bodyContent;
    v36 = bodyContent;
    v37 = v3;
    v28 = identifier2;
    v38 = v28;
    v31 = language;
    v39 = v31;
    v26 = baseURL;
    v40 = v26;
    v27 = assetFileInfoManager;
    v41 = v27;
    objc_copyWeak(&v42, &location);
    objc_copyWeak(&v43, &from);
    [(NSBlockOperation *)v25 addExecutionBlock:v34];
    [(NSOperationQueue *)self->_attributedStringOperationQueue addOperation:self->_contentTextOperation];
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v42);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateImageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  assetsConfiguration = [(TPSSingleTipViewController *)self assetsConfiguration];
  v5 = [TPSContentURLController assetPathFromAssetConfiguration:assetsConfiguration type:0];

  heroAssetView = self->_heroAssetView;
  if (v5)
  {
    currentImagePath = [(TPSVideoAssetView *)heroAssetView currentImagePath];
    v8 = [v5 isEqualToString:currentImagePath];

    if ((v8 & 1) == 0)
    {
      assetsConfiguration2 = [(TPSSingleTipViewController *)self assetsConfiguration];
      v10 = [assetsConfiguration2 cacheIdentifierForType:0];

      v11 = [handlerCopy copy];
      heroAssetFetchCompletionHandler = self->_heroAssetFetchCompletionHandler;
      self->_heroAssetFetchCompletionHandler = v11;

      [(TPSVideoAssetView *)self->_heroAssetView fetchImageWithIdentifier:v10 path:v5];
      goto LABEL_6;
    }
  }

  else
  {
    [(TPSVideoAssetView *)heroAssetView cancel];
    [(TPSVideoAssetView *)self->_heroAssetView setImage:0];
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_6:
}

- (void)updateVideoAndPlayImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  assetsConfiguration = [(TPSSingleTipViewController *)self assetsConfiguration];
  v10 = [assetsConfiguration cacheIdentifierForType:1];

  assetsConfiguration2 = [(TPSSingleTipViewController *)self assetsConfiguration];
  v7 = [TPSContentURLController assetPathFromAssetConfiguration:assetsConfiguration2 type:1];

  videoPath = [(TPSVideoAssetView *)self->_heroAssetView videoPath];
  v9 = [v7 isEqualToString:videoPath];

  if ((v9 & 1) == 0)
  {
    [(TPSVideoAssetView *)self->_heroAssetView setCacheVideoIdentifier:v10];
    [(TPSVideoAssetView *)self->_heroAssetView setVideoPath:v7];
    goto LABEL_5;
  }

  if (immediatelyCopy)
  {
LABEL_5:
    [(TPSVideoAssetView *)self->_heroAssetView playVideo];
  }
}

- (void)constellationContentParser:(id)parser identifier:(id)identifier attributedStringUpdated:(id)updated
{
  updatedCopy = updated;
  identifierCopy = identifier;
  v8 = [(TPSSingleTipViewController *)self tip];
  identifier = [v8 identifier];
  v10 = [identifierCopy isEqualToString:identifier];

  if (v10)
  {
    bodyTextView = [(TPSSingleTipViewController *)self bodyTextView];
    [bodyTextView setAttributedText:updatedCopy];
  }
}

- (void)imageAssetViewImageUpdated:(id)updated
{
  updatedCopy = updated;
  heroAssetFetchCompletionHandler = self->_heroAssetFetchCompletionHandler;
  if (heroAssetFetchCompletionHandler && self->_heroAssetView == updatedCopy)
  {
    v8 = updatedCopy;
    image = [(TPSVideoAssetView *)updatedCopy image];
    heroAssetFetchCompletionHandler[2](heroAssetFetchCompletionHandler, image != 0);

    v7 = self->_heroAssetFetchCompletionHandler;
    self->_heroAssetFetchCompletionHandler = 0;

    updatedCopy = v8;
  }
}

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  itemCopy = item;
  if (![itemCopy contentType])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      link = [itemCopy link];
      [v9 singleTipViewController:self handleURL:link];
    }
  }

  return 0;
}

- (TPSSingleTipViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end