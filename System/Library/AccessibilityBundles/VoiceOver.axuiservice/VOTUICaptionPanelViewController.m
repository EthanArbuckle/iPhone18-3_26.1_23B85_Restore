@interface VOTUICaptionPanelViewController
- (VOTUICaptionPanelViewController)init;
- (double)_captionTextBottomInset;
- (void)_accessibilityLoadInvertColors;
- (void)_animateTextBack:(BOOL)a3;
- (void)_hostContextId;
- (void)_unhostContextId;
- (void)_updateCaptionPanelHeight;
- (void)parseMessage:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(VOTUICaptionPanelViewController *)self view];
  [v3 bounds];
  v5 = v4;
  [(VOTUICaptionPanelViewController *)self captionPanelHeight];
  v7 = v5 - v6;

  v8 = [(VOTUICaptionPanelViewController *)self view];
  [v8 frame];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
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
    v4 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [v4 setFont:v14];

    v5 = [(VOTUICaptionPanelViewController *)self view];
    [v5 frame];
    [(VOTUICaptionPanelViewController *)self setCaptionPanelHeight:v3 + v6 / 10.0];

    v7 = [(VOTUICaptionPanelViewController *)self view];
    [v7 setNeedsLayout];
  }

  else
  {
    v8 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1 compatibleWithTraitCollection:v8];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v9 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [v9 setFont:v7];

    [v7 lineHeight];
    v11 = v10 + 20.0;
    [v14 lineHeight];
    [(VOTUICaptionPanelViewController *)self setCaptionPanelHeight:v3 + v11 - v12 + 14.0];
    v13 = [(VOTUICaptionPanelViewController *)self view];
    [v13 setNeedsLayout];
  }
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v45 viewDidLoad];
  v3 = [(VOTUICaptionPanelViewController *)self view];
  [v3 setAccessibilityElementsHidden:1];

  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v8;

  v10 = [(VOTUICaptionPanelViewController *)self view];
  [v10 addSubview:self->_backgroundView];

  v41 = [UIBlurEffect effectWithStyle:1102];
  v11 = [[UIVisualEffectView alloc] initWithEffect:v41];
  effectView = self->_effectView;
  self->_effectView = v11;

  [(UIVisualEffectView *)self->_effectView setClipsToBounds:0];
  [(UIView *)self->_backgroundView addSubview:self->_effectView];
  v13 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICaptionPanelViewController *)self setScrollView:v13];

  v14 = [(VOTUICaptionPanelViewController *)self scrollView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUICaptionPanelViewController *)self setCaptionPanelText:v15];

  v16 = +[UIColor clearColor];
  v17 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v17 setBackgroundColor:v16];

  v18 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  v19 = +[UIColor systemWhiteColor];
  [v18 setTextColor:v19];

  v20 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v20 setTextAlignment:0];

  v21 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v21 setAdjustsFontForContentSizeCategory:1];

  v22 = self->_backgroundView;
  v23 = [(VOTUICaptionPanelViewController *)self scrollView];
  [(UIView *)v22 addSubview:v23];

  v24 = [(VOTUICaptionPanelViewController *)self scrollView];
  v25 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v24 addSubview:v25];

  v40 = [(VOTUICaptionPanelViewController *)self scrollView];
  v39 = [v40 widthAnchor];
  v38 = [(UIView *)self->_backgroundView widthAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 multiplier:0.9];
  v47[0] = v37;
  v26 = [(VOTUICaptionPanelViewController *)self scrollView];
  v27 = [v26 heightAnchor];
  v28 = [(UIView *)self->_backgroundView heightAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 multiplier:1.0];
  v47[1] = v29;
  v30 = [(VOTUICaptionPanelViewController *)self scrollView];
  v31 = [v30 centerXAnchor];
  v32 = [(UIView *)self->_backgroundView centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:0.0];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v4 viewDidAppear:a3];
  [(VOTUICaptionPanelViewController *)self _hostContextId];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VOTUICaptionPanelViewController;
  [(VOTUICaptionPanelViewController *)&v4 viewWillDisappear:a3];
  [(VOTUICaptionPanelViewController *)self _unhostContextId];
}

- (void)_hostContextId
{
  v5 = +[AXSpringBoardServer server];
  v3 = [(VOTUICaptionPanelViewController *)self view];
  v4 = [v3 window];
  [v5 setCaptionPanelContextId:{objc_msgSend(v4, "_contextId")}];
}

- (void)_unhostContextId
{
  v2 = +[AXSpringBoardServer server];
  [v2 setCaptionPanelContextId:0];
}

- (void)parseMessage:(id)a3
{
  v4 = a3;
  [(VOTUICaptionPanelViewController *)self _hostContextId];
  v5 = [v4 objectForKey:@"VoiceOverCaptionText"];
  v6 = [v4 objectForKey:@"VoiceOverCaptionSpokenRange"];

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

  v12 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  v13 = [v12 text];
  v14 = [(__CFString *)v11 isEqualToString:v13];

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

  v19 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  v20 = [v19 font];

  if (v20)
  {
    v21 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v22 = [v21 font];
    [v17 addAttribute:NSFontAttributeName value:v22 range:{0, objc_msgSend(v17, "length")}];

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

  v26 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v26 setAttributedText:v17];

  v27 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  v28 = [(VOTUICaptionPanelViewController *)self scrollView];
  [v28 frame];
  [v27 sizeThatFits:{3.40282347e38, v29}];
  v31 = v30;

  if ((v14 & 1) == 0)
  {
    v32 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v32 setContentOffset:0 animated:{0.0, 0.0}];

    [(UIViewPropertyAnimator *)self->_scrollingAnimator stopAnimation:1];
    v33 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [v33 frame];
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
    v38 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v38 frame];
    v40 = v39;

    v41 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v41 frame];
    v43 = v42;

    if (v31 + 10.0 < v43)
    {
      v44 = [(VOTUICaptionPanelViewController *)self scrollView];
      [v44 frame];
      v37 = v45;
    }

    v46 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [v46 setFrame:{0.0, v36, v37, v40}];

    v47 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v47 setContentSize:{v37, v40}];
  }

  v48 = objc_opt_new();
  v49 = [(VOTUICaptionPanelViewController *)self view];
  [v49 bounds];
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
  v53 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v53 setAttributedText:v17];

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
  v107 = self;
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
    v61 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v62 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    [v62 beginningOfDocument];
    v64 = v63 = length;
    v65 = [v61 positionFromPosition:v64 offset:location];

    v66 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v67 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v68 = [v67 beginningOfDocument];
    v69 = [v66 positionFromPosition:v68 offset:location + v63];

    v70 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v71 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v72 = [v71 textRangeFromPosition:v65 toPosition:v69];
    [v70 firstRectForRange:v72];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v81 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v81 contentOffset];
    v83 = v82;
    v84 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v84 frame];
    v86 = v85;
    v87 = [(VOTUICaptionPanelViewController *)self scrollView];
    [v87 frame];
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
        v97 = [(VOTUICaptionPanelViewController *)self scrollView];
        [v97 setContentOffset:0 animated:{v74 + v86 / -5.0, 0.0}];
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

- (void)_animateTextBack:(BOOL)a3
{
  v3 = a3;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_FE88;
  v23[3] = &unk_3D218;
  v23[4] = self;
  [UIView performWithoutAnimation:v23];
  v5 = [(VOTUICaptionPanelViewController *)self scrollView];
  [v5 contentSize];
  v7 = v6;
  v8 = [(VOTUICaptionPanelViewController *)self scrollView];
  [v8 bounds];
  v10 = v7 - v9;

  if (v10 <= 0.0)
  {
    [(UIViewPropertyAnimator *)self->_scrollingAnimator stopAnimation:1];
  }

  else if (v3)
  {
    objc_initWeak(&location, self);
    v11 = [UIViewPropertyAnimator alloc];
    v12 = [(VOTUICaptionPanelViewController *)self captionPanelText];
    v13 = [v12 text];
    v14 = [v11 initWithDuration:3 curve:0 animations:{objc_msgSend(v13, "length") / 10.0}];
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
  v3 = [(VOTUICaptionPanelViewController *)self captionPanelText];
  [v3 setAccessibilityIgnoresInvertColors:1];

  effectView = self->_effectView;

  [(UIVisualEffectView *)effectView setAccessibilityIgnoresInvertColors:1];
}

@end