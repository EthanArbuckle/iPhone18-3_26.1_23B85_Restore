@interface TPSSingleTipViewController
- (BOOL)isOneLinerForText:(id)a3 maxWidth:(double)a4 font:(id)a5;
- (TPSSingleTipViewController)initWithAppController:(id)a3 translucentBackground:(BOOL)a4;
- (TPSSingleTipViewControllerDelegate)delegate;
- (double)maxWidth;
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
- (void)analyticsIncreaseCountForCurrentTip;
- (void)cancelConstellationContentParserOperation;
- (void)constellationContentParser:(id)a3 identifier:(id)a4 attributedStringUpdated:(id)a5;
- (void)createViews;
- (void)dealloc;
- (void)imageAssetViewImageUpdated:(id)a3;
- (void)playVideo;
- (void)scheduleIncreaseViewCount;
- (void)setTip:(id)a3 visible:(BOOL)a4 completionHandler:(id)a5;
- (void)setupForSnapshot;
- (void)updateAssetsConfiguration;
- (void)updateBodyText;
- (void)updateImageWithCompletionHandler:(id)a3;
- (void)updateVideoAndPlayImmediately:(BOOL)a3;
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

- (TPSSingleTipViewController)initWithAppController:(id)a3 translucentBackground:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TPSSingleTipViewController;
  v8 = [(TPSSingleTipViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appController, a3);
    v9->_translucentBackground = a4;
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
    v5 = [(TPSSingleTipViewController *)self view];
    [v5 addSubview:self->_heroAssetView];

    v6 = [(TPSVideoAssetView *)self->_heroAssetView leadingAnchor];
    v7 = [(TPSSingleTipViewController *)self view];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    [v9 setActive:1];

    v10 = [(TPSVideoAssetView *)self->_heroAssetView trailingAnchor];
    v11 = [(TPSSingleTipViewController *)self view];
    v12 = [v11 trailingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(TPSVideoAssetView *)self->_heroAssetView topAnchor];
    v15 = [(TPSSingleTipViewController *)self view];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(TPSVideoAssetView *)self->_heroAssetView heightAnchor];
    v19 = [(TPSVideoAssetView *)self->_heroAssetView widthAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
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
    v27 = [(TPSSingleTipViewController *)self view];
    [v27 insertSubview:self->_titleLabel belowSubview:self->_heroAssetView];

    v28 = [(UILabel *)self->_titleLabel leadingAnchor];
    v29 = [(TPSSingleTipViewController *)self view];
    v30 = [v29 leadingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    titleLabelLeadingConstraint = self->_titleLabelLeadingConstraint;
    self->_titleLabelLeadingConstraint = v31;

    [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setActive:1];
    v33 = [(UILabel *)self->_titleLabel trailingAnchor];
    v34 = [(TPSVideoAssetView *)self->_heroAssetView trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-30.0];
    [v35 setActive:1];

    v36 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v37 = [(TPSVideoAssetView *)self->_heroAssetView bottomAnchor];
    v38 = [v36 constraintEqualToSystemSpacingBelowAnchor:v37 multiplier:1.2];
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
    v42 = [(UITextView *)self->_bodyTextView textContainer];
    [v42 setHeightTracksTextView:1];

    [(UITextView *)self->_bodyTextView setDelegate:self];
    v43 = [(UITextView *)self->_bodyTextView textContainer];
    [v43 setLineBreakMode:4];

    [(UITextView *)self->_bodyTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v44 = [(UITextView *)self->_bodyTextView textContainer];
    [v44 setLineFragmentPadding:0.0];

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

    v48 = [(TPSSingleTipViewController *)self view];
    [v48 insertSubview:self->_bodyTextView belowSubview:self->_heroAssetView];

    v49 = [(UITextView *)self->_bodyTextView leadingAnchor];
    v50 = [(TPSSingleTipViewController *)self view];
    v51 = [v50 leadingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:30.0];
    [v52 setActive:1];

    v53 = [(UITextView *)self->_bodyTextView trailingAnchor];
    v54 = [(UILabel *)self->_titleLabel trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    [v55 setActive:1];

    v56 = [(UITextView *)self->_bodyTextView bottomAnchor];
    v57 = [(TPSSingleTipViewController *)self view];
    v58 = [v57 bottomAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 constant:-12.0];
    [v59 setActive:1];

    v60 = [(UITextView *)self->_bodyTextView firstBaselineAnchor];
    v61 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
    v62 = [v60 constraintEqualToSystemSpacingBelowAnchor:v61 multiplier:1.2];
    [v62 setActive:1];
  }
}

- (void)analyticsIncreaseCountForCurrentTip
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"analyticsIncreaseCountForCurrentTip" object:0];
  tip = self->_tip;
  if (tip)
  {
    v12 = [(TPSTip *)tip identifier];
    v4 = [(TPSSingleTipViewController *)self collectionID];
    v5 = [(TPSTip *)self->_tip correlationID];
    v6 = [(TPSTip *)self->_tip clientConditionID];
    v7 = TPSAnalyticsViewMethodNotification;
    v8 = [(TPSSingleTipViewController *)self traitCollection];
    v9 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:v8];
    v10 = [TPSAnalyticsEventContentViewed eventWithContentID:v12 collectionID:v4 correlationID:v5 clientConditionID:v6 viewMethod:v7 viewMode:v9];
    [v10 log];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained singleTipViewController:self tipViewed:self->_tip];
  }
}

- (void)setTip:(id)a3 visible:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [v9 language];
  v12 = +[TPSCommonDefines sharedInstance];
  [v12 setLanguage:v11];

  if (self->_titleLabel)
  {
    v13 = [v9 identifier];
    v14 = [(TPSTip *)self->_tip identifier];
    v15 = [v13 isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [(TPSSingleTipViewController *)self assetSizes];
      v17 = [v16 tip];

      v18 = &selRef_respondsToSelector_;
      if (!v17)
      {
        goto LABEL_8;
      }

      v19 = +[TPSCommonDefines isPhoneUI]^ 1;
      v20 = [(TPSSingleTipViewController *)self assetSizes];
      v21 = [v20 tip];
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
        v26 = [v25 assetRatioType];
        if (+[TPSCommonDefines isPhoneUI])
        {
          v23 = dbl_100005AD0[v26 == 1];
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
      v28 = [*(&self->super.super.super.isa + v27) heightAnchor];
      v29 = [(TPSSingleTipViewController *)self view];
      v30 = [v29 widthAnchor];
      v31 = [v28 constraintEqualToAnchor:v30 multiplier:v23 constant:-v24];
      heroAssetViewHeightRatioConstraint = self->_heroAssetViewHeightRatioConstraint;
      self->_heroAssetViewHeightRatioConstraint = v31;

      [(NSLayoutConstraint *)self->_heroAssetViewHeightRatioConstraint setActive:1];
      objc_storeStrong(&self->_tip, a3);
      [(TPSSingleTipViewController *)self updateAssetsConfiguration];
      v33 = [v9 language];
      v34 = +[TPSAssetCacheController sharedInstance];
      [v34 setLanguageCode:v33];

      [*(&self->super.super.super.isa + v27) cancel];
      heroAssetFetchCompletionHandler = self->_heroAssetFetchCompletionHandler;
      self->_heroAssetFetchCompletionHandler = 0;

      [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint constant];
      if (v36 == 0.0)
      {
        [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:30.0];
      }

      v37 = [(TPSTip *)self->_tip title];
      [(UILabel *)self->_titleLabel setText:v37];

      [(TPSSingleTipViewController *)self updateBodyText];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100001F40;
      v39[3] = &unk_10000C2F8;
      v40 = v10;
      [(TPSSingleTipViewController *)self updateImageWithCompletionHandler:v39];
      [*(&self->super.super.super.isa + v27) stopVideoPlayer];
      if (v6)
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
    objc_storeStrong(&self->_pendingTip, a3);
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)updateAssetsConfiguration
{
  v15 = [(TPSSingleTipViewController *)self appController];
  v14 = [(TPSSingleTipViewController *)self tip];
  v13 = [v14 fullContent];
  v3 = [v13 assets];
  v4 = [(TPSSingleTipViewController *)self tip];
  v5 = [v4 language];
  if (+[TPSCommonDefines isPhoneUI])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(TPSSingleTipViewController *)self view];
  v8 = [v7 traitCollection];
  v9 = [v8 userInterfaceStyle];
  v10 = [(TPSSingleTipViewController *)self tip];
  v11 = [v10 assetFileInfoManager];
  v12 = [v15 assetConfigurationForAssets:v3 language:v5 sizeClass:v6 style:v9 assetFileInfoManager:v11];
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

- (BOOL)isOneLinerForText:(id)a3 maxWidth:(double)a4 font:(id)a5
{
  if (!a5)
  {
    return 0;
  }

  v22 = NSFontAttributeName;
  v23 = a5;
  v7 = a5;
  v8 = a3;
  v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v8 boundingRectWithSize:1 options:v9 attributes:0 context:{a4, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  Height = CGRectGetHeight(v24);
  [v7 lineHeight];
  v20 = v19;

  return Height == v20;
}

- (double)maxWidth
{
  v2 = [(TPSSingleTipViewController *)self view];
  [v2 bounds];
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
  v5 = [v4 bodyText];

  if (v5)
  {
    v6 = [[NSAttributedString alloc] initWithString:v5 attributes:v3];
    v7 = [(TPSSingleTipViewController *)self bodyTextView];
    [v7 setAttributedText:v6];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(TPSSingleTipViewController *)self tip];
  v6 = [v8 bodyContent];

  if (v6)
  {
    v9 = objc_alloc_init(TPSConstellationContentParser);
    [v9 setDelegate:self];
    v10 = [(TPSSingleTipViewController *)self view];
    v11 = [v10 traitCollection];
    [v9 setTraitCollection:v11];

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
    v15 = [v14 identifier];
    objc_initWeak(&from, v15);

    v16 = [(TPSSingleTipViewController *)self tip];
    v30 = [v16 identifier];

    v17 = [(TPSSingleTipViewController *)self tip];
    v29 = [v17 language];

    v18 = [(TPSSingleTipViewController *)self tip];
    v19 = [v18 fullContentAssets];
    v20 = [v19 baseURL];

    v21 = [(TPSSingleTipViewController *)self tip];
    v22 = [v21 assetFileInfoManager];

    v23 = objc_alloc_init(NSBlockOperation);
    contentTextOperation = self->_contentTextOperation;
    self->_contentTextOperation = v23;

    v25 = self->_contentTextOperation;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000276C;
    v34[3] = &unk_10000C348;
    v7 = v9;
    v35 = v7;
    v6 = v6;
    v36 = v6;
    v37 = v3;
    v28 = v30;
    v38 = v28;
    v31 = v29;
    v39 = v31;
    v26 = v20;
    v40 = v26;
    v27 = v22;
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

- (void)updateImageWithCompletionHandler:(id)a3
{
  v13 = a3;
  v4 = [(TPSSingleTipViewController *)self assetsConfiguration];
  v5 = [TPSContentURLController assetPathFromAssetConfiguration:v4 type:0];

  heroAssetView = self->_heroAssetView;
  if (v5)
  {
    v7 = [(TPSVideoAssetView *)heroAssetView currentImagePath];
    v8 = [v5 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(TPSSingleTipViewController *)self assetsConfiguration];
      v10 = [v9 cacheIdentifierForType:0];

      v11 = [v13 copy];
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

  (*(v13 + 2))(v13, 0);
LABEL_6:
}

- (void)updateVideoAndPlayImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = [(TPSSingleTipViewController *)self assetsConfiguration];
  v10 = [v5 cacheIdentifierForType:1];

  v6 = [(TPSSingleTipViewController *)self assetsConfiguration];
  v7 = [TPSContentURLController assetPathFromAssetConfiguration:v6 type:1];

  v8 = [(TPSVideoAssetView *)self->_heroAssetView videoPath];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    [(TPSVideoAssetView *)self->_heroAssetView setCacheVideoIdentifier:v10];
    [(TPSVideoAssetView *)self->_heroAssetView setVideoPath:v7];
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    [(TPSVideoAssetView *)self->_heroAssetView playVideo];
  }
}

- (void)constellationContentParser:(id)a3 identifier:(id)a4 attributedStringUpdated:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = [(TPSSingleTipViewController *)self tip];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [(TPSSingleTipViewController *)self bodyTextView];
    [v11 setAttributedText:v12];
  }
}

- (void)imageAssetViewImageUpdated:(id)a3
{
  v4 = a3;
  heroAssetFetchCompletionHandler = self->_heroAssetFetchCompletionHandler;
  if (heroAssetFetchCompletionHandler && self->_heroAssetView == v4)
  {
    v8 = v4;
    v6 = [(TPSVideoAssetView *)v4 image];
    heroAssetFetchCompletionHandler[2](heroAssetFetchCompletionHandler, v6 != 0);

    v7 = self->_heroAssetFetchCompletionHandler;
    self->_heroAssetFetchCompletionHandler = 0;

    v4 = v8;
  }
}

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v6 = a4;
  if (![v6 contentType])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = [v6 link];
      [v9 singleTipViewController:self handleURL:v10];
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