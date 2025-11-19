@interface BSUINoticeViewController
+ (BOOL)allowsAutoDownloadOfSamplesToWantToRead;
+ (BSUIAddToWTRDelegate)addToWTRDelegate;
+ (UIImage)noticeViewAddedImage;
+ (id)_noticeMessageForAddingAssets:(id)a3 toCollectionNamed:(id)a4 isAddingToWantToRead:(BOOL)a5 useNonSpecificDeterminerInMessage:(BOOL)a6;
+ (id)_presentedViewControllers;
+ (id)_presentingViewControllerForModalWithOptions:(id)a3;
+ (void)dismissViewController:(id)a3;
+ (void)js_presentNoticeForAddingAssets:(id)a3 toCollectionNamed:(id)a4 options:(id)a5;
+ (void)presentNoticeForAddingAssets:(id)a3 collectionTitle:(id)a4 collectionID:(id)a5 sourceViewController:(id)a6 options:(id)a7;
+ (void)presentNoticeForBookLoved:(BOOL)a3 options:(id)a4;
+ (void)presentNoticeForMigratingBooksCollection:(id)a3 options:(id)a4;
+ (void)presentNoticeForNoSampleAvailable:(BOOL)a3 options:(id)a4;
+ (void)presentNoticeForRemovingBooks:(id)a3 fromCollectionNamed:(id)a4 options:(id)a5 useNonSpecificDeterminerInMessage:(BOOL)a6;
+ (void)presentNoticeWithTitle:(id)a3 message:(id)a4 imageURLString:(id)a5 options:(id)a6;
+ (void)presentNoticeWithTitle:(id)a3 message:(id)a4 symbolImageName:(id)a5 options:(id)a6;
+ (void)presentViewController:(id)a3;
- (BOOL)shouldDismissAutomatically;
- (BSUINoticeViewController)initWithTitle:(id)a3 message:(id)a4 image:(id)a5 confirmString:(id)a6;
- (BSUINoticeViewController)initWithTitle:(id)a3 message:(id)a4 imageURLString:(id)a5;
- (UIVisualEffectView)noticeView;
- (int64_t)_lineCountForLabel:(id)a3 constrainedToWidth:(double)a4;
- (void)_announceTheNoticeToAVoiceOverUser;
- (void)_hide:(BOOL)a3 withDelay:(double)a4;
- (void)_runWithOptions:(id)a3 completion:(id)a4;
- (void)_show:(BOOL)a3 options:(id)a4;
- (void)_updateTitleMessageAndConfirmLabels;
- (void)downloadIcon;
- (void)hide:(BOOL)a3;
- (void)show:(BOOL)a3 options:(id)a4;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation BSUINoticeViewController

+ (BSUIAddToWTRDelegate)addToWTRDelegate
{
  WeakRetained = objc_loadWeakRetained(&qword_3CA7F8);

  return WeakRetained;
}

- (BSUINoticeViewController)initWithTitle:(id)a3 message:(id)a4 image:(id)a5 confirmString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = BSUINoticeViewController;
  v14 = [(BSUINoticeViewController *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(BSUINoticeViewController *)v14 setModalPresentationStyle:6];
    v16 = [v10 copy];
    noticeTitle = v15->_noticeTitle;
    v15->_noticeTitle = v16;

    v18 = [v11 copy];
    message = v15->_message;
    v15->_message = v18;

    v20 = [v13 copy];
    confirmString = v15->_confirmString;
    v15->_confirmString = v20;

    objc_storeStrong(&v15->_iconImage, a5);
    v15->_iconImageAlwaysTemplate = 1;
    v22 = +[BSUINoticeViewLayout layoutWithAction:](BSUINoticeViewLayout, "layoutWithAction:", [v13 length] != 0);
    noticeViewLayout = v15->_noticeViewLayout;
    v15->_noticeViewLayout = v22;

    v24 = +[UITraitCollection bc_allAPITraits];
    v25 = [(BSUINoticeViewController *)v15 registerForTraitChanges:v24 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v15;
}

- (BSUINoticeViewController)initWithTitle:(id)a3 message:(id)a4 imageURLString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = BSUINoticeViewController;
  v11 = [(BSUINoticeViewController *)&v24 init];
  v12 = v11;
  if (v11)
  {
    [(BSUINoticeViewController *)v11 setModalPresentationStyle:6];
    v13 = [v8 copy];
    noticeTitle = v12->_noticeTitle;
    v12->_noticeTitle = v13;

    v15 = [v9 copy];
    message = v12->_message;
    v12->_message = v15;

    v17 = [v10 copy];
    imageURL = v12->_imageURL;
    v12->_imageURL = v17;

    v12->_iconImageAlwaysTemplate = 1;
    v19 = [BSUINoticeViewLayout layoutWithAction:0];
    noticeViewLayout = v12->_noticeViewLayout;
    v12->_noticeViewLayout = v19;

    v21 = +[UITraitCollection bc_allAPITraits];
    v22 = [(BSUINoticeViewController *)v12 registerForTraitChanges:v21 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v12;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v53 viewDidLoad];
  v3 = [(BSUINoticeViewController *)self shouldDismissAutomatically];
  v4 = [(BSUINoticeViewController *)self view];
  v5 = v4;
  if (v3)
  {
    [v4 setAccessibilityElementsHidden:1];

    v6 = [(BSUINoticeViewController *)self view];
    [v6 setAccessibilityElements:0];

    v7 = [(BSUINoticeViewController *)self presentationController];
    [v7 _setContainerIgnoresDirectTouchEvents:1];

    v8 = [(BSUINoticeViewController *)self view];
    [v8 setUserInteractionEnabled:0];
  }

  else
  {
    [v4 setAccessibilityViewIsModal:1];

    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapGesture:"];
    v9 = [(BSUINoticeViewController *)self noticeView];
    v10 = [v9 contentView];
    [v10 addGestureRecognizer:v8];
  }

  v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BSUINoticeViewController *)self setIconImageView:v11];

  v12 = [(BSUINoticeViewController *)self iconImageView];
  [v12 setContentMode:1];

  v13 = [(BSUINoticeViewController *)self iconImageView];
  [v13 setAlpha:0.64];

  v14 = [(BSUINoticeViewController *)self iconImage];

  if (v14)
  {
    v15 = [(BSUINoticeViewController *)self iconImageAlwaysTemplate];
    v16 = [(BSUINoticeViewController *)self iconImage];
    v17 = v16;
    v18 = v16;
    if (v15)
    {
      v18 = [v16 imageWithRenderingMode:2];
    }

    v19 = [(BSUINoticeViewController *)self iconImageView];
    [v19 setImage:v18];

    if (v15)
    {
    }
  }

  else
  {
    [(BSUINoticeViewController *)self downloadIcon];
  }

  v20 = objc_alloc_init(UILabel);
  [(BSUINoticeViewController *)self setTitleLabel:v20];

  v21 = UIAccessibilityTraitStaticText;
  v22 = UIAccessibilityTraitHeader;
  v23 = [(BSUINoticeViewController *)self titleLabel];
  [v23 setAccessibilityTraits:v22 | v21];

  v24 = [(BSUINoticeViewController *)self titleLabel];
  [v24 setTextAlignment:1];

  v25 = [(BSUINoticeViewController *)self titleLabel];
  [v25 setNumberOfLines:2];

  v26 = [(BSUINoticeViewController *)self titleLabel];
  [v26 setLineBreakMode:4];

  v27 = objc_alloc_init(UILabel);
  [(BSUINoticeViewController *)self setMessageLabel:v27];

  v28 = [(BSUINoticeViewController *)self messageLabel];
  [v28 setTextAlignment:1];

  v29 = [(BSUINoticeViewController *)self messageLabel];
  [v29 setNumberOfLines:0];

  v30 = [(BSUINoticeViewController *)self messageLabel];
  [v30 setLineBreakMode:4];

  v31 = [(BSUINoticeViewController *)self confirmString];

  if (v31)
  {
    v32 = objc_alloc_init(UILabel);
    [(BSUINoticeViewController *)self setConfirmLabel:v32];

    v33 = UIAccessibilityTraitButton;
    v34 = [(BSUINoticeViewController *)self confirmLabel];
    [v34 setAccessibilityTraits:v33];

    v35 = [(BSUINoticeViewController *)self confirmLabel];
    [v35 setTextAlignment:1];

    v36 = [(BSUINoticeViewController *)self confirmLabel];
    [v36 setNumberOfLines:1];

    v37 = [(BSUINoticeViewController *)self confirmLabel];
    [v37 setLineBreakMode:4];
  }

  [(BSUINoticeViewController *)self _updateTitleMessageAndConfirmLabels];
  v38 = [(BSUINoticeViewController *)self noticeView];
  v39 = [v38 contentView];
  v40 = [(BSUINoticeViewController *)self iconImageView];
  [v39 addSubview:v40];

  v41 = [(BSUINoticeViewController *)self noticeView];
  v42 = [v41 contentView];
  v43 = [(BSUINoticeViewController *)self titleLabel];
  [v42 addSubview:v43];

  v44 = [(BSUINoticeViewController *)self noticeView];
  v45 = [v44 contentView];
  v46 = [(BSUINoticeViewController *)self messageLabel];
  [v45 addSubview:v46];

  v47 = [(BSUINoticeViewController *)self confirmLabel];

  if (v47)
  {
    v48 = [(BSUINoticeViewController *)self noticeView];
    v49 = [v48 contentView];
    v50 = [(BSUINoticeViewController *)self confirmLabel];
    [v49 addSubview:v50];
  }

  v51 = [(BSUINoticeViewController *)self view];
  v52 = [(BSUINoticeViewController *)self noticeView];
  [v51 addSubview:v52];
}

- (void)viewDidLayoutSubviews
{
  v156.receiver = self;
  v156.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v156 viewDidLayoutSubviews];
  v3 = [(BSUINoticeViewController *)self noticeViewLayout];
  v4 = [(BSUINoticeViewController *)self titleLabel];
  v5 = [v4 text];
  v159 = NSFontAttributeName;
  v6 = [(BSUINoticeViewController *)self titleLabel];
  v7 = [v6 font];
  v160 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  [v5 sizeWithAttributes:v8];
  v10 = v9;

  v11 = [(BSUINoticeViewController *)self messageLabel];
  [v3 defaultSize];
  v13 = v12;
  [v3 horizontalMargin];
  v15 = [(BSUINoticeViewController *)self _lineCountForLabel:v11 constrainedToWidth:v13 + v14 * -2.0];

  if (v15 >= 5)
  {
    v16 = [(BSUINoticeViewController *)self messageLabel];
    v17 = [v16 text];
    v157 = NSFontAttributeName;
    v18 = [(BSUINoticeViewController *)self messageLabel];
    v19 = [v18 font];
    v158 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
    [v17 sizeWithAttributes:v20];
    v22 = v21;

    if (v10 < v22)
    {
      v10 = v22;
    }
  }

  [v3 defaultSize];
  v24 = v23;
  [v3 horizontalMargin];
  v26 = v10 + v25 * 2.0;
  if (v24 >= v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  [v3 maxWidth];
  if (v27 >= v28)
  {
    v27 = v28;
  }

  [v3 maxHeight];
  v30 = v29;
  v31 = [(BSUINoticeViewController *)self noticeView];
  [v31 setFrame:{0.0, 0.0, v27, v30}];

  [v3 maxHeight];
  v33 = v32;
  [v3 topContentInset];
  v35 = v33 - v34;
  [v3 bottomContentInset];
  v37 = v35 - v36;
  [v3 imageSize];
  v39 = v38;
  [v3 imageSize];
  v41 = v40;
  [v3 imageSize];
  if (CGSizeZero.width == v43 && CGSizeZero.height == v42)
  {
    v44 = [(BSUINoticeViewController *)self iconImage];
    [v44 size];
    v39 = v45;
    v41 = v46;
  }

  [v3 topContentInset];
  v48 = v47 + 0.0;
  v49 = [(BSUINoticeViewController *)self iconImageView];
  [v49 setFrame:{(v27 - v39) * 0.5, v48, v39, v41}];

  v50 = v41 + v48;
  v51 = v37 - v41;
  [v3 titleTopMargin];
  v53 = v50 + v52;
  [v3 titleTopMargin];
  v155 = v51 - v54;
  v55 = [(BSUINoticeViewController *)self titleLabel];
  [v3 horizontalMargin];
  v57 = v27 + v56 * -2.0;
  v58 = [(BSUINoticeViewController *)self titleLabel];
  [v58 bounds];
  [v55 sizeThatFits:{v57, v59}];
  v61 = v60;

  [v3 horizontalMargin];
  v63 = v62;
  [v3 horizontalMargin];
  v65 = v27 + v64 * -2.0;
  v66 = [(BSUINoticeViewController *)self titleLabel];
  [v66 setFrame:{v63, v53 - v61 * 0.5, v65, v61 + v61 * 0.5 * 2.0}];

  v67 = [(BSUINoticeViewController *)self titleLabel];
  [v67 center];
  v69 = v68;
  v70 = [(BSUINoticeViewController *)self titleLabel];
  [v70 setCenter:{v27 * 0.5, v69}];

  v71 = [(BSUINoticeViewController *)self titleLabel];
  [v71 _lastLineBaseline];
  v73 = v53 + ceil(v72 - v61 * 0.5);

  v74 = [(BSUINoticeViewController *)self titleLabel];
  [v74 _lastLineBaseline];
  v76 = v155 - ceil(v75 - v61 * 0.5);

  [v3 messageTopMargin];
  v78 = v73 + v77;
  [v3 messageTopMargin];
  v80 = v76 - v79;
  v81 = [(BSUINoticeViewController *)self messageLabel];
  [v3 horizontalMargin];
  [v81 sizeThatFits:{v27 + v82 * -2.0, v80}];
  v84 = v83;

  [v3 horizontalMargin];
  v86 = v85;
  [v3 horizontalMargin];
  v88 = v27 + v87 * -2.0;
  v89 = [(BSUINoticeViewController *)self messageLabel];
  [v89 setFrame:{v86, v78, v88, v84}];

  v90 = [(BSUINoticeViewController *)self messageLabel];
  [v90 center];
  v92 = v91;
  v93 = [(BSUINoticeViewController *)self messageLabel];
  [v93 setCenter:{v27 * 0.5, v92}];

  v94 = [(BSUINoticeViewController *)self messageLabel];
  [v94 _lastLineBaseline];
  v96 = v78 + ceil(v95);

  v97 = [(BSUINoticeViewController *)self confirmLabel];

  if (v97)
  {
    [v3 confirmLabelTopMargin];
    v99 = v96 + v98;
    v100 = [(BSUINoticeViewController *)self confirmLabel];
    [v3 horizontalMargin];
    v102 = v27 + v101 * -2.0;
    v103 = [(BSUINoticeViewController *)self confirmLabel];
    [v103 bounds];
    [v100 sizeThatFits:{v102, v104}];
    v106 = v105;

    if (v106 < 32.0)
    {
      v106 = 32.0;
    }

    [v3 horizontalMargin];
    v108 = v107;
    [v3 horizontalMargin];
    v110 = v27 + v109 * -2.0;
    v111 = [(BSUINoticeViewController *)self confirmLabel];
    [v111 setFrame:{v108, v99, v110, v106}];

    v112 = [(BSUINoticeViewController *)self confirmLabel];
    [v112 center];
    v114 = v113;
    v115 = [(BSUINoticeViewController *)self confirmLabel];
    [v115 setCenter:{v27 * 0.5, v114}];

    v116 = [(BSUINoticeViewController *)self confirmLabel];
    [v116 _lastLineBaseline];
    v96 = v99 + ceil(v117);
  }

  [v3 bottomContentInset];
  v119 = v96 + v118;
  [v3 maxHeight];
  if (v119 >= v120)
  {
    v119 = v120;
  }

  v121 = [(BSUINoticeViewController *)self noticeView];
  [v121 frame];
  MinX = CGRectGetMinX(v161);
  v123 = [(BSUINoticeViewController *)self noticeView];
  [v123 frame];
  MinY = CGRectGetMinY(v162);
  v125 = [(BSUINoticeViewController *)self noticeView];
  [v125 setFrame:{MinX, MinY, v27, v119}];

  v126 = [(BSUINoticeViewController *)self noticeView];
  [v126 frame];
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = [(BSUINoticeViewController *)self view];
  [v135 bounds];
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = [(BSUINoticeViewController *)self traitCollection];
  [v144 displayScale];
  [BSUIGeometryUtils centeredCGRectFromRect:1 centerHorizontally:1 centerVertically:v128 bounds:v130 scale:v132, v134, v137, v139, v141, v143, v145];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v154 = [(BSUINoticeViewController *)self noticeView];
  [v154 setFrame:{v147, v149, v151, v153}];
}

- (BOOL)shouldDismissAutomatically
{
  v2 = [(BSUINoticeViewController *)self confirmString];
  v3 = v2 == 0;

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v4 viewDidAppear:a3];
  if ([(BSUINoticeViewController *)self shouldDismissAutomatically])
  {
    [(BSUINoticeViewController *)self _announceTheNoticeToAVoiceOverUser];
  }
}

- (void)_announceTheNoticeToAVoiceOverUser
{
  v13 = objc_opt_new();
  v3 = [(BSUINoticeViewController *)self noticeTitle];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(BSUINoticeViewController *)self noticeTitle];
    [v13 addObject:v5];
  }

  v6 = [(BSUINoticeViewController *)self message];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(BSUINoticeViewController *)self message];
    [v13 addObject:v8];
  }

  v9 = [(BSUINoticeViewController *)self confirmString];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(BSUINoticeViewController *)self confirmString];
    [v13 addObject:v11];
  }

  if ([v13 count])
  {
    v12 = [v13 componentsJoinedByString:{@", "}];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BSUINoticeViewController;
  [(BSUINoticeViewController *)&v3 viewWillLayoutSubviews];
  [(BSUINoticeViewController *)self updateUI];
}

- (void)_updateTitleMessageAndConfirmLabels
{
  v3 = [NSAttributedString alloc];
  v4 = [(BSUINoticeViewController *)self noticeTitle];
  v5 = +[BSUINoticeViewController noticeViewTitleFontAttributes];
  v6 = [v3 initWithString:v4 attributes:v5];
  v7 = [(BSUINoticeViewController *)self titleLabel];
  [v7 setAttributedText:v6];

  v8 = [NSAttributedString alloc];
  v9 = [(BSUINoticeViewController *)self message];
  v10 = +[BSUINoticeViewController noticeViewMessageFontAttributes];
  v11 = [v8 initWithString:v9 attributes:v10];
  v12 = [(BSUINoticeViewController *)self messageLabel];
  [v12 setAttributedText:v11];

  v13 = [(BSUINoticeViewController *)self confirmString];

  if (v13)
  {
    v14 = [NSAttributedString alloc];
    v18 = [(BSUINoticeViewController *)self confirmString];
    v15 = +[BSUINoticeViewController noticeViewConfirmLabelFontAttributes];
    v16 = [v14 initWithString:v18 attributes:v15];
    v17 = [(BSUINoticeViewController *)self confirmLabel];
    [v17 setAttributedText:v16];
  }
}

- (void)updateUI
{
  v3 = +[UIColor bc_booksKeyColor];
  v4 = [(BSUINoticeViewController *)self iconImageView];
  [v4 setTintColor:v3];

  v5 = [(BSUINoticeViewController *)self traitCollection];
  if ([v5 bc_userInterfaceStyleDark])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [UIBlurEffect effectWithStyle:v6];
  v8 = [(BSUINoticeViewController *)self noticeView];
  [v8 setEffect:v7];

  [(BSUINoticeViewController *)self _updateTitleMessageAndConfirmLabels];
}

- (UIVisualEffectView)noticeView
{
  noticeView = self->_noticeView;
  if (!noticeView)
  {
    v4 = [[UIVisualEffectView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_noticeView;
    self->_noticeView = v4;

    v6 = [UIBlurEffect effectWithStyle:0];
    [(UIVisualEffectView *)self->_noticeView setEffect:v6];

    [(UIVisualEffectView *)self->_noticeView setClipsToBounds:1];
    v7 = _UISolariumEnabled();
    v8 = 12.0;
    if (v7)
    {
      v8 = 25.0;
    }

    [(UIVisualEffectView *)self->_noticeView _setContinuousCornerRadius:v8];
    noticeView = self->_noticeView;
  }

  return noticeView;
}

- (void)downloadIcon
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(2, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_36F74;
  v3[3] = &unk_387698;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

+ (id)_presentedViewControllers
{
  if (qword_3CA808 != -1)
  {
    sub_2BD9F4();
  }

  v3 = qword_3CA800;

  return v3;
}

+ (void)presentViewController:(id)a3
{
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [a1 _presentedViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 shouldDismissAutomatically])
        {
          [v10 hide:1];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [v4 window];
  v12 = [v4 window];
  sub_3737C(a1, v4, v12);

  v13 = [v4 view];
  [v11 addSubview:v13];

  v14 = [v4 window];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v4 view];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [a1 _presentedViewControllers];
  [v24 addObject:v4];
}

+ (id)_presentingViewControllerForModalWithOptions:(id)a3
{
  v3 = sub_3747C(a1, a3);
  v4 = [UIViewController jsa_topMostViewControllerForWindow:v3];

  return v4;
}

+ (void)dismissViewController:(id)a3
{
  v9 = a3;
  v4 = [a1 _presentedViewControllers];
  v5 = [v4 containsObject:v9];

  if (v5)
  {
    v6 = [v9 view];
    [v6 removeFromSuperview];

    v7 = [a1 _presentedViewControllers];
    [v7 removeObject:v9];
  }

  v8 = [v9 completion];
  [v9 setCompletion:0];
  if (v8)
  {
    dispatch_async(&_dispatch_main_q, v8);
  }
}

- (void)_runWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(BSUINoticeViewController *)self setCompletion:a4];
  [(BSUINoticeViewController *)self show:1 options:v6];
}

- (void)show:(BOOL)a3 options:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_37778;
  v8[3] = &unk_386FD8;
  v8[4] = self;
  v10 = a3;
  v4 = a4;
  v9 = v4;
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_37788;
      v6[3] = &unk_386C58;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (void)_show:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BSUINoticeViewController *)self view];
  [v7 setAlpha:0.0];

  CGAffineTransformMakeScale(&v15, 0.88, 0.88);
  v8 = [(BSUINoticeViewController *)self view];
  v14 = v15;
  [v8 setTransform:&v14];

  v9 = sub_3747C(BSUINoticeViewController, v6);

  [(BSUINoticeViewController *)self setWindow:v9];
  [BSUINoticeViewController presentViewController:self];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_37970;
  v13[3] = &unk_3873D8;
  v13[4] = self;
  v10 = objc_retainBlock(v13);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_379F0;
  v12[3] = &unk_388288;
  v12[4] = self;
  v11 = objc_retainBlock(v12);
  if (v4)
  {
    [UIView animateWithDuration:131074 delay:v10 options:v11 animations:0.2 completion:0.0];
  }

  else
  {
    (v10[2])(v10);
    (v11[2])(v11, 1);
  }
}

- (void)hide:(BOOL)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_37B98;
  v6[3] = &unk_3882B0;
  v6[4] = self;
  v7 = a3;
  v3 = objc_retainBlock(v6);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_37BAC;
      block[3] = &unk_386C58;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_hide:(BOOL)a3 withDelay:(double)a4
{
  v5 = a3;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_37D04;
  v10[3] = &unk_3873D8;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_37D88;
  v9[3] = &unk_388288;
  v9[4] = self;
  v8 = objc_retainBlock(v9);
  if (v5)
  {
    [UIView animateWithDuration:131074 delay:v7 options:v8 animations:0.2 completion:a4];
  }

  else
  {
    (v7[2])(v7);
    (v8[2])(v8, 1);
  }
}

+ (void)presentNoticeWithTitle:(id)a3 message:(id)a4 symbolImageName:(id)a5 options:(id)a6
{
  v9 = a3;
  v10 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_37EA4;
  v15[3] = &unk_3882D8;
  v16 = a5;
  v17 = v9;
  v18 = v10;
  v19 = a6;
  v11 = v19;
  v12 = v10;
  v13 = v9;
  v14 = v16;
  dispatch_async(&_dispatch_main_q, v15);
}

+ (void)presentNoticeWithTitle:(id)a3 message:(id)a4 imageURLString:(id)a5 options:(id)a6
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3807C;
  v13[3] = &unk_3882D8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = v17;
  v10 = v16;
  v11 = v15;
  v12 = v14;
  dispatch_async(&_dispatch_main_q, v13);
}

+ (void)js_presentNoticeForAddingAssets:(id)a3 toCollectionNamed:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BSUIBundle();
  v13 = [v11 localizedStringForKey:@"Want to Read" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  if ([v9 isEqualToString:v13])
  {
    v12 = kBKCollectionDefaultIDWantToRead;
  }

  else
  {
    v12 = 0;
  }

  [a1 presentNoticeForAddingAssets:v10 collectionTitle:v9 collectionID:v12 sourceViewController:0 options:v8];
}

+ (id)_noticeMessageForAddingAssets:(id)a3 toCollectionNamed:(id)a4 isAddingToWantToRead:(BOOL)a5 useNonSpecificDeterminerInMessage:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = BSUIBundle();
  v13 = [v12 localizedStringForKey:@"\\U2026" value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  v14 = [v11 stringByTruncatingToLength:50 options:3 truncationString:v13];

  v15 = [v10 count];
  if (!v7)
  {
    if (v15 != &dword_0 + 1)
    {
      v34 = [v10 allValues];
      v31 = [NSSet setWithArray:v34];

      if ([v31 count] == &dword_0 + 1)
      {
        v35 = [v31 anyObject];
        v36 = [v35 integerValue];

        v18 = BSUIBundle();
        if (v36 == &dword_4 + 2)
        {
          if (v6)
          {
            v37 = @"The audiobooks were added to %@.";
          }

          else
          {
            v37 = @"These audiobooks were added to %@.";
          }
        }

        else if (v36 == &dword_0 + 3)
        {
          if (v6)
          {
            v37 = @"The PDFs were added to %@.";
          }

          else
          {
            v37 = @"These PDFs were added to %@.";
          }
        }

        else if (v6)
        {
          v37 = @"The books were added to %@.";
        }

        else
        {
          v37 = @"These books were added to %@.";
        }
      }

      else
      {
        v18 = BSUIBundle();
        if (v6)
        {
          v37 = @"The items were added to %@.";
        }

        else
        {
          v37 = @"These items were added to %@.";
        }
      }

      v58 = [v18 localizedStringForKey:v37 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
      v29 = [NSString localizedStringWithFormat:v58, v14];

      goto LABEL_72;
    }

    v20 = [v10 allValues];
    v31 = [v20 lastObject];

    v21 = [v31 integerValue];
    v22 = BSUIBundle();
    v23 = v22;
    v24 = @"This audiobook was added to %@.";
    if (v6)
    {
      v24 = @"The audiobook was added to %@.";
      v25 = @"The book was added to %@.";
    }

    else
    {
      v25 = @"This book was added to %@.";
    }

    v26 = @"This PDF was added to %@.";
    if (v6)
    {
      v26 = @"The PDF was added to %@.";
    }

    if (v21 == &dword_0 + 3)
    {
      v25 = v26;
    }

    if (v21 == &dword_4 + 2)
    {
      v27 = v24;
    }

    else
    {
      v27 = v25;
    }

    v28 = [v22 localizedStringForKey:v27 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    v29 = [NSString localizedStringWithFormat:v28, v14];

    goto LABEL_73;
  }

  if (v15 == &dword_0 + 1)
  {
    v16 = [v10 allValues];
    v31 = [v16 lastObject];

    v17 = [v31 integerValue];
    if (v17 == &dword_4 + 2)
    {
      v18 = BSUIBundle();
      if (v6)
      {
        v19 = @"The audiobook was added to your Want to Read list in Home.";
      }

      else
      {
        v19 = @"This audiobook was added to your Want to Read list in Home.";
      }

      goto LABEL_63;
    }

    if (v17 == &dword_0 + 3)
    {
      v18 = BSUIBundle();
      if (v6)
      {
        v19 = @"The PDF was added to your Want to Read collection and can be viewed in Home.";
      }

      else
      {
        v19 = @"This PDF was added to your Want to Read collection and can be viewed in Home.";
      }

      goto LABEL_63;
    }

    objc_opt_class();
    v38 = +[BSUITemplate manager];
    v39 = [v38 dynamicRegistry];
    v40 = [v39 stateProviderForKind:@"libraryItem"];
    v18 = BUDynamicCast();

    v41 = [v18 provider];
    v42 = [v10 allKeys];
    v43 = [v42 lastObject];

    v44 = [v41 itemStateWithIdentifier:v43];
    if ([v44 library] == &dword_4 || objc_msgSend(v44, "library") == &dword_0 + 2)
    {
      [v44 isSample];
    }

    else
    {
      v56 = [v44 library];
      v57 = [v44 isSample];
      if (v56 != &dword_4 + 1 && (v57 & 1) == 0 && [a1 allowsAutoDownloadOfSamplesToWantToRead])
      {
        v45 = BSUIBundle();
        if (v6)
        {
          v46 = @"The book was added to your Want to Read list in Home, and a sample was downloaded.";
        }

        else
        {
          v46 = @"This book was added to your Want to Read list in Home, and a sample was downloaded.";
        }

        goto LABEL_59;
      }
    }

    v45 = BSUIBundle();
    if (v6)
    {
      v46 = @"The book was added to your Want to Read list in Home.";
    }

    else
    {
      v46 = @"This book was added to your Want to Read list in Home.";
    }

LABEL_59:
    v29 = [v45 localizedStringForKey:v46 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

LABEL_72:
    goto LABEL_73;
  }

  v30 = [v10 allValues];
  v31 = [NSSet setWithArray:v30];

  if ([v31 count] != &dword_0 + 1)
  {
    v18 = BSUIBundle();
    if (v6)
    {
      v19 = @"The items were added to your Want to Read collection and can be viewed in Home.";
    }

    else
    {
      v19 = @"These items were added to your Want to Read collection and can be viewed in Home.";
    }

    goto LABEL_63;
  }

  v32 = [v31 anyObject];
  v33 = [v32 integerValue];

  if (v33 == &dword_4 + 2)
  {
    v18 = BSUIBundle();
    if (v6)
    {
      v19 = @"The audiobooks were added to your Want to Read list in Home.";
    }

    else
    {
      v19 = @"These audiobooks were added to your Want to Read list in Home.";
    }

    goto LABEL_63;
  }

  if (v33 == &dword_0 + 3)
  {
    v18 = BSUIBundle();
    if (v6)
    {
      v19 = @"The PDFs were added to your Want to Read collection and can be viewed in Home.";
    }

    else
    {
      v19 = @"These PDFs were added to your Want to Read collection and can be viewed in Home.";
    }

LABEL_63:
    v29 = [v18 localizedStringForKey:v19 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    goto LABEL_72;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  if ([a1 allowsAutoDownloadOfSamplesToWantToRead])
  {
    objc_opt_class();
    v47 = +[BSUITemplate manager];
    v48 = [v47 dynamicRegistry];
    v49 = [v48 stateProviderForKind:@"libraryItem"];
    v50 = BUDynamicCast();

    v51 = [v50 provider];
    v52 = [v10 allKeys];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_389F8;
    v60[3] = &unk_388300;
    v53 = v51;
    v61 = v53;
    v62 = &v63;
    [v52 enumerateObjectsUsingBlock:v60];
  }

  if (*(v64 + 24) == 1)
  {
    v54 = BSUIBundle();
    if (v6)
    {
      [v54 localizedStringForKey:@"The books were added to your Want to Read list in Home value:and samples were downloaded." table:{&stru_3960F8, @"BookStoreUILocalizable"}];
    }

    else
    {
      [v54 localizedStringForKey:@"These books were added to your Want to Read list in Home value:and samples were downloaded." table:{&stru_3960F8, @"BookStoreUILocalizable"}];
    }
  }

  else
  {
    v54 = BSUIBundle();
    if (v6)
    {
      [v54 localizedStringForKey:@"The books were added to your Want to Read list in Home." value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    }

    else
    {
      [v54 localizedStringForKey:@"These books were added to your Want to Read list in Home." value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    }
  }
  v55 = ;
  v29 = v55;

  _Block_object_dispose(&v63, 8);
LABEL_73:

  return v29;
}

+ (UIImage)noticeViewAddedImage
{
  v2 = _UISolariumEnabled();
  v3 = [UIImage systemImageNamed:@"text.badge.checkmark"];
  if (v2)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:192.0];
  }
  v4 = ;
  v5 = [v3 imageWithConfiguration:v4];

  return v5;
}

+ (void)presentNoticeForRemovingBooks:(id)a3 fromCollectionNamed:(id)a4 options:(id)a5 useNonSpecificDeterminerInMessage:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = BSUIBundle();
  v13 = [v12 localizedStringForKey:@"\\U2026" value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  v14 = [v11 stringByTruncatingToLength:50 options:3 truncationString:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_38CD0;
  v18[3] = &unk_388328;
  v22 = a6;
  v19 = v9;
  v20 = v14;
  v21 = v10;
  v15 = v10;
  v16 = v14;
  v17 = v9;
  dispatch_async(&_dispatch_main_q, v18);
}

+ (void)presentNoticeForBookLoved:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = BSUIBundle();
  v7 = v6;
  if (v4)
  {
    v8 = @"Suggest More";
  }

  else
  {
    v8 = @"Suggest Less";
  }

  if (v4)
  {
    v9 = @"Books will suggest more like this.";
  }

  else
  {
    v9 = @"Books will suggest less like this.";
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v11 = BSUIBundle();
  v12 = [v11 localizedStringForKey:v9 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_39188;
  v16[3] = &unk_388328;
  v20 = v4;
  v17 = v10;
  v18 = v12;
  v19 = v5;
  v13 = v5;
  v14 = v12;
  v15 = v10;
  dispatch_async(&_dispatch_main_q, v16);
}

+ (void)presentNoticeForMigratingBooksCollection:(id)a3 options:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_39344;
  v7[3] = &unk_386D98;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)presentNoticeForNoSampleAvailable:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = BSUIBundle();
  v7 = [v6 localizedStringForKey:@"No Sample" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v8 = BSUIBundle();
  v9 = v8;
  if (v4)
  {
    v10 = @"There’s no sample available for this audiobook.";
  }

  else
  {
    v10 = @"There’s no sample available for this book.";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39664;
  block[3] = &unk_387000;
  v16 = v7;
  v17 = v11;
  v18 = v5;
  v12 = v5;
  v13 = v11;
  v14 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (int64_t)_lineCountForLabel:(id)a3 constrainedToWidth:(double)a4
{
  v5 = a3;
  v6 = [v5 text];

  if (v6)
  {
    v7 = objc_alloc_init(NSStringDrawingContext);
    [v7 setWantsNumberOfLineFragments:1];
    v8 = [v5 text];
    v13 = NSFontAttributeName;
    v9 = [v5 font];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v8 boundingRectWithSize:33 options:v10 attributes:v7 context:{a4, 1.79769313e308}];

    v11 = [v7 numberOfLineFragments];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)allowsAutoDownloadOfSamplesToWantToRead
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  v3 = [v2 configs];
  v4 = [v3 valueForKeyPath:BRCBooksDefaultsKeyReadingNowWtrSimpleModeEnabled];
  v5 = BUDynamicCast();

  LOBYTE(v2) = [v5 BOOLValue];
  return v2 ^ 1;
}

+ (void)presentNoticeForAddingAssets:(id)a3 collectionTitle:(id)a4 collectionID:(id)a5 sourceViewController:(id)a6 options:(id)a7
{
  v10 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  sub_66278(0, &qword_3BC790);
  v25 = sub_2C57E8();
  v13 = sub_2C58C8();
  v15 = v14;
  if (!a5)
  {
    v17 = 0;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  a5 = sub_2C58C8();
  v17 = v16;
  if (a7)
  {
LABEL_3:
    a7 = sub_2C57E8();
  }

LABEL_4:
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v19 = sub_2C5C58();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_2C5C18();
  v20 = a6;
  v21 = sub_2C5C08();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v23 = v25;
  v22[4] = ObjCClassMetadata;
  v22[5] = v23;
  v22[6] = v13;
  v22[7] = v15;
  v22[8] = a5;
  v22[9] = v17;
  v22[10] = a7;
  v22[11] = a6;
  sub_249B98(0, 0, v12, &unk_2FBD88, v22);
}

@end