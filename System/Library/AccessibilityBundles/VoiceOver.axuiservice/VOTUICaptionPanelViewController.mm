@interface VOTUICaptionPanelViewController
- (VOTUICaptionPanelViewController)init;
- (double)_captionTextBottomInset;
- (void)_accessibilityLoadInvertColors;
- (void)_animateTextBack:(BOOL)back;
- (void)_hostContextId;
- (void)_unhostContextId;
- (void)_updateCaptionPanelHeight;
- (void)parseMessage:(id)message;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VOTUICaptionPanelViewController

- (VOTUICaptionPanelViewController)init
{
  v8.receiver = self;
  v8.super_class = VOTUICaptionPanelViewController;
  v2 = [(VOTUICaptionPanelViewController *)&v8 init];
  [(VOTUICaptionPanelViewController *)v2 setMarqueeEnableDelay:2.0];
  v3 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  scrollingStartTimer = v2->_scrollingStartTimer;
  v2->_scrollingStartTimer = v3;

  [(AXDispatchTimer *)v2->_scrollingStartTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  resetColorsTimer = v2->_resetColorsTimer;
  v2->_resetColorsTimer = v5;

  [(AXDispatchTimer *)v2->_resetColorsTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  return v2;
}

- (double)_captionTextBottomInset
{
  HasHomeButton = AXDeviceHasHomeButton();
  result = 16.0;
  if (HasHomeButton)
  {
    return 2.0;
  }

  return result;
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v21 viewWillLayoutSubviews];
  view = [(VOTUICaptionPanelViewController *)self view];
  [view bounds];
  v5 = v4;
  [(VOTUICaptionPanelViewController *)self captionPanelHeight];
  v7 = v5 - v6;

  view2 = [(VOTUICaptionPanelViewController *)self view];
  [view2 frame];
  v10 = v9;
  [(VOTUICaptionPanelViewController *)self captionPanelHeight];
  [(UIView *)self->_backgroundView setFrame:0.0, v7, v10, v11];

  effectView = self->_effectView;
  [(UIView *)self->_backgroundView bounds];
  v14 = v13;
  [(UIView *)self->_backgroundView bounds];
  [(UIVisualEffectView *)effectView setFrame:0.0, 0.0, v14];
  [(VOTUICaptionPanelViewController *)self _captionTextBottomInset];
  v16 = v15;
  [(UIView *)self->_backgroundView bounds];
  [(UITextView *)self->_captionPanelText setFrame:v17 + 8.0, v18 + 2.0, v19 + -16.0, v20 - (v16 + 2.0)];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(VOTUICaptionPanelViewController *)self captionPanelHeight];
  v8 = height - v7;
  [(VOTUICaptionPanelViewController *)self captionPanelHeight];
  [(UIView *)self->_backgroundView setFrame:0.0, v8, width, v9];
  effectView = self->_effectView;
  [(UIView *)self->_backgroundView frame];
  v12 = v11;
  [(UIView *)self->_backgroundView frame];
  [(UIVisualEffectView *)effectView setFrame:0.0, 0.0, v12];
  [(VOTUICaptionPanelViewController *)self _captionTextBottomInset];
  v14 = v13;
  [(UIView *)self->_backgroundView bounds];
  v16 = v15 + 8.0;
  v18 = v17 + 2.0;
  v20 = v19 + -16.0;
  captionPanelText = self->_captionPanelText;
  v23 = v22 - (v14 + 2.0);

  [(UITextView *)captionPanelText setFrame:v16, v18, v20, v23];
}

- (void)_updateCaptionPanelHeight
{
  if (AXDeviceHasHomeButton())
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ([(VOTUICaptionPanelViewController *)self _isTV])
  {
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    captionPanelText = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [captionPanelText setFont:v14];

    view = [(VOTUICaptionPanelViewController *)self view];
    [view frame];
    [(VOTUICaptionPanelViewController *)self setCaptionPanelHeight:v3 + v6 / 10.0];

    view2 = [(VOTUICaptionPanelViewController *)self view];
    [view2 setNeedsLayout];
  }

  else
  {
    v8 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:v8];

    view2 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    captionPanelText2 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [captionPanelText2 setFont:view2];

    [view2 lineHeight];
    v11 = v10 + 20.0;
    [v14 lineHeight];
    [(VOTUICaptionPanelViewController *)self setCaptionPanelHeight:v3 + v11 - v12 + 14.0];
    view3 = [(VOTUICaptionPanelViewController *)self view];
    [view3 setNeedsLayout];
  }
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v45 viewDidLoad];
  view = [(VOTUICaptionPanelViewController *)self view];
  [view setAccessibilityElementsHidden:1];

  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v8;

  view2 = [(VOTUICaptionPanelViewController *)self view];
  [view2 addSubview:self->_backgroundView];

  v41 = [UIBlurEffect effectWithStyle:1102];
  v11 = [[UIVisualEffectView alloc] initWithEffect:v41];
  effectView = self->_effectView;
  self->_effectView = v11;

  [(UIVisualEffectView *)self->_effectView setClipsToBounds:0];
  [(UIView *)self->_backgroundView addSubview:self->_effectView];
  v13 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICaptionPanelViewController *)self setScrollView:v13];

  scrollView = [(VOTUICaptionPanelViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICaptionPanelViewController *)self setCaptionPanelText:v15];

  v16 = +[UIColor clearColor];
  captionPanelText = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText setBackgroundColor:v16];

  captionPanelText2 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  v19 = +[UIColor systemWhiteColor];
  [captionPanelText2 setTextColor:v19];

  captionPanelText3 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText3 setTextAlignment:0];

  captionPanelText4 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText4 setAdjustsFontForContentSizeCategory:1];

  v22 = self->_backgroundView;
  scrollView2 = [(VOTUICaptionPanelViewController *)self scrollView];
  [(UIView *)v22 addSubview:scrollView2];

  scrollView3 = [(VOTUICaptionPanelViewController *)self scrollView];
  captionPanelText5 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [scrollView3 addSubview:captionPanelText5];

  scrollView4 = [(VOTUICaptionPanelViewController *)self scrollView];
  widthAnchor = [scrollView4 widthAnchor];
  widthAnchor2 = [(UIView *)self->_backgroundView widthAnchor];
  v37 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.9];
  v47[0] = v37;
  scrollView5 = [(VOTUICaptionPanelViewController *)self scrollView];
  heightAnchor = [scrollView5 heightAnchor];
  heightAnchor2 = [(UIView *)self->_backgroundView heightAnchor];
  v29 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  v47[1] = v29;
  scrollView6 = [(VOTUICaptionPanelViewController *)self scrollView];
  centerXAnchor = [scrollView6 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_backgroundView centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  v47[2] = v33;
  v34 = [NSArray arrayWithObjects:v47 count:3];
  [NSLayoutConstraint activateConstraints:v34];

  [(VOTUICaptionPanelViewController *)self _updateCaptionPanelHeight];
  [(VOTUICaptionPanelViewController *)self _accessibilityLoadInvertColors];
  objc_initWeak(&location, self);
  v46 = objc_opt_class();
  v35 = [NSArray arrayWithObjects:&v46 count:1];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_EE3C;
  v42[3] = &unk_3D3A8;
  objc_copyWeak(&v43, &location);
  v36 = [(VOTUICaptionPanelViewController *)self registerForTraitChanges:v35 withHandler:v42];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v4 viewDidAppear:appear];
  [(VOTUICaptionPanelViewController *)self _hostContextId];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v4 viewWillDisappear:disappear];
  [(VOTUICaptionPanelViewController *)self _unhostContextId];
}

- (void)_hostContextId
{
  v5 = +[AXSpringBoardServer server];
  view = [(VOTUICaptionPanelViewController *)self view];
  window = [view window];
  [v5 setCaptionPanelContextId:{objc_msgSend(window, "_contextId")}];
}

- (void)_unhostContextId
{
  v2 = +[AXSpringBoardServer server];
  [v2 setCaptionPanelContextId:0];
}

- (void)parseMessage:(id)message
{
  messageCopy = message;
  [(VOTUICaptionPanelViewController *)self _hostContextId];
  v5 = [messageCopy objectForKey:@"VoiceOverCaptionText"];
  v6 = [messageCopy objectForKey:@"VoiceOverCaptionSpokenRange"];

  v7 = NSRangeFromString(v6);
  length = v7.length;

  v9 = VOTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [NSValue valueWithRange:v7.location, v7.length];
    *buf = 138412290;
    v110 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Handling caption panel message: %@", buf, 0xCu);
  }

  v11 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  captionPanelText = [(VOTUICaptionPanelViewController *)self captionPanelText];
  text = [captionPanelText text];
  v14 = [(__CFString *)v11 isEqualToString:text];

  v15 = [NSMutableAttributedString alloc];
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &stru_3F518;
  }

  v17 = [v15 initWithString:v16];
  v18 = +[UIColor whiteColor];
  [v17 addAttribute:NSForegroundColorAttributeName value:v18 range:{0, objc_msgSend(v17, "length")}];

  captionPanelText2 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  font = [captionPanelText2 font];

  if (font)
  {
    captionPanelText3 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    font2 = [captionPanelText3 font];
    [v17 addAttribute:NSFontAttributeName value:font2 range:{0, objc_msgSend(v17, "length")}];

    length = v7.length;
  }

  location = 0x7FFFFFFFFFFFFFFFLL;
  if (v7.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v115.length = [v17 length];
    v115.location = 0;
    v116.location = v7.location;
    v116.length = length;
    v24 = NSIntersectionRange(v115, v116);
    location = v24.location;
    length = v24.length;
    v25 = +[UIColor yellowColor];
    [v17 addAttribute:NSForegroundColorAttributeName value:v25 range:{v24.location, v24.length}];

    [v17 addAttribute:NSUnderlineStyleAttributeName value:&off_40198 range:{v24.location, v24.length}];
  }

  captionPanelText4 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText4 setAttributedText:v17];

  captionPanelText5 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  scrollView = [(VOTUICaptionPanelViewController *)self scrollView];
  [scrollView frame];
  [captionPanelText5 sizeThatFits:{3.40282347e38, v29}];
  v31 = v30;

  if ((v14 & 1) == 0)
  {
    scrollView2 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView2 setContentOffset:0 animated:{0.0, 0.0}];

    [(UIViewPropertyAnimator *)self->_scrollingAnimator stopAnimation:1];
    captionPanelText6 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [captionPanelText6 frame];
    v35 = v34;

    if (AXDeviceHasHomeButton())
    {
      v36 = v35;
    }

    else
    {
      v36 = -4.0;
    }

    v37 = v31 + 10.0;
    scrollView3 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView3 frame];
    v40 = v39;

    scrollView4 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView4 frame];
    v43 = v42;

    if (v31 + 10.0 < v43)
    {
      scrollView5 = [(VOTUICaptionPanelViewController *)self scrollView];
      [scrollView5 frame];
      v37 = v45;
    }

    captionPanelText7 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [captionPanelText7 setFrame:{0.0, v36, v37, v40}];

    scrollView6 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView6 setContentSize:{v37, v40}];
  }

  v48 = objc_opt_new();
  view = [(VOTUICaptionPanelViewController *)self view];
  [view bounds];
  v51 = v50;

  if (v31 <= v51)
  {
    v52 = 1;
  }

  else
  {
    v52 = 4;
  }

  [v48 setAlignment:v52];
  [v17 addAttribute:NSParagraphStyleAttributeName value:v48 range:{0, objc_msgSend(v17, "length")}];
  captionPanelText8 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText8 setAttributedText:v17];

  resetColorsTimer = self->_resetColorsTimer;
  [(VOTUICaptionPanelViewController *)self marqueeEnableDelay];
  v56 = v55;
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_FA54;
  v104[3] = &unk_3D3D0;
  v57 = v11;
  v105 = v57;
  v58 = v17;
  v106 = v58;
  selfCopy = self;
  v59 = v48;
  v108 = v59;
  [(AXDispatchTimer *)resetColorsTimer afterDelay:v104 processBlock:v56];
  scrollingStartTimer = self->_scrollingStartTimer;
  [(VOTUICaptionPanelViewController *)self marqueeEnableDelay];
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_FBA0;
  v103[3] = &unk_3D218;
  v103[4] = self;
  [(AXDispatchTimer *)scrollingStartTimer afterDelay:v103 processBlock:?];
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    captionPanelText9 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    captionPanelText10 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [captionPanelText10 beginningOfDocument];
    v64 = v63 = length;
    v65 = [captionPanelText9 positionFromPosition:v64 offset:location];

    captionPanelText11 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    captionPanelText12 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    beginningOfDocument = [captionPanelText12 beginningOfDocument];
    v69 = [captionPanelText11 positionFromPosition:beginningOfDocument offset:location + v63];

    captionPanelText13 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    captionPanelText14 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v72 = [captionPanelText14 textRangeFromPosition:v65 toPosition:v69];
    [captionPanelText13 firstRectForRange:v72];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    scrollView7 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView7 contentOffset];
    v83 = v82;
    scrollView8 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView8 frame];
    v86 = v85;
    scrollView9 = [(VOTUICaptionPanelViewController *)self scrollView];
    [scrollView9 frame];
    v89 = v88;

    v117.origin.x = v74;
    v117.origin.y = v76;
    v101 = v78;
    v117.size.width = v78;
    v117.size.height = v80;
    MaxX = CGRectGetMaxX(v117);
    v118.origin.y = 0.0;
    v118.origin.x = v83;
    v118.size.width = v86;
    v118.size.height = v89;
    if (MaxX > CGRectGetMaxX(v118))
    {
      v91 = v74 + v86 / -5.0;
      v92 = fabs(v91);
      v93 = (*&v92 - 1) < 0xFFFFFFFFFFFFFLL;
      v94 = v91 < 0.0 && (*&v92 - 0x10000000000000) >> 53 < 0x3FF;
      if (v91 >= 0.0)
      {
        v93 = 0;
      }

      v95 = v92 == INFINITY || v93;
      if ((v95 | v94) == 1)
      {
        v96 = VOTLogCommon();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          v119.origin.x = v74;
          v119.origin.y = v76;
          v119.size.width = v101;
          v119.size.height = v80;
          v98 = NSStringFromRect(v119);
          v120.origin.y = 0.0;
          v120.origin.x = v83;
          v120.size.width = v86;
          v120.size.height = v89;
          v99 = NSStringFromRect(v120);
          v100 = [NSNumber numberWithDouble:v74 + v86 / -5.0];
          *buf = 138412802;
          v110 = v98;
          v111 = 2112;
          v112 = v99;
          v113 = 2112;
          v114 = v100;
          _os_log_error_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "Bad x for caption panel offset: %@ %@ %@", buf, 0x20u);
        }
      }

      else if (UIAccessibilityIsReduceMotionEnabled())
      {
        scrollView10 = [(VOTUICaptionPanelViewController *)self scrollView];
        [scrollView10 setContentOffset:0 animated:{v74 + v86 / -5.0, 0.0}];
      }

      else
      {
        v102[0] = _NSConcreteStackBlock;
        v102[1] = 3221225472;
        v102[2] = sub_FBAC;
        v102[3] = &unk_3D268;
        v102[4] = self;
        *&v102[5] = v74 + v86 / -5.0;
        [UIView animateWithDuration:v102 animations:0.15];
      }
    }
  }
}

- (void)_animateTextBack:(BOOL)back
{
  backCopy = back;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_FE88;
  v23[3] = &unk_3D218;
  v23[4] = self;
  [UIView performWithoutAnimation:v23];
  scrollView = [(VOTUICaptionPanelViewController *)self scrollView];
  [scrollView contentSize];
  v7 = v6;
  scrollView2 = [(VOTUICaptionPanelViewController *)self scrollView];
  [scrollView2 bounds];
  v10 = v7 - v9;

  if (v10 <= 0.0)
  {
    [(UIViewPropertyAnimator *)self->_scrollingAnimator stopAnimation:1];
  }

  else if (backCopy)
  {
    objc_initWeak(&location, self);
    v11 = [UIViewPropertyAnimator alloc];
    captionPanelText = [(VOTUICaptionPanelViewController *)self captionPanelText];
    text = [captionPanelText text];
    v14 = [v11 initWithDuration:3 curve:0 animations:{objc_msgSend(text, "length") / 10.0}];
    scrollingAnimator = self->_scrollingAnimator;
    self->_scrollingAnimator = v14;

    v16 = self->_scrollingAnimator;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_FED4;
    v20[3] = &unk_3D3F8;
    objc_copyWeak(&v21, &location);
    [(UIViewPropertyAnimator *)v16 addCompletion:v20];
    v17 = self->_scrollingAnimator;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_FFEC;
    v18[3] = &unk_3D420;
    objc_copyWeak(v19, &location);
    v19[1] = *&v10;
    [(UIViewPropertyAnimator *)v17 addAnimations:v18 delayFactor:0.0];
    [(UIViewPropertyAnimator *)self->_scrollingAnimator startAnimationAfterDelay:1.0];
    objc_destroyWeak(v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_accessibilityLoadInvertColors
{
  captionPanelText = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [captionPanelText setAccessibilityIgnoresInvertColors:1];

  effectView = self->_effectView;

  [(UIVisualEffectView *)effectView setAccessibilityIgnoresInvertColors:1];
}

@end