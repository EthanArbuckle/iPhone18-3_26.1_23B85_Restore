@interface AXCaptionPreviewView
+ (NSArray)cloudImages;
- (AXCaptionPreviewDelegate)previewDelegate;
- (AXCaptionPreviewView)initWithFrame:(CGRect)frame;
- (BOOL)inTable;
- (CGPoint)originalCenter;
- (CGRect)originalFrame;
- (CGRect)visibleFrame;
- (double)_xOffset;
- (id)captionCell;
- (id)currentSlide;
- (id)enclosingViewController;
- (id)nextSlide;
- (void)_expandPressed:(id)pressed;
- (void)_previewTapped:(id)tapped;
- (void)_updateButtonStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)expanded;
- (void)showNextImage;
- (void)stopBackgroundAnimation;
- (void)updateExpandButtonPosition;
@end

@implementation AXCaptionPreviewView

- (id)captionCell
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [(AXCaptionPreviewView *)selfCopy superview];

      selfCopy = superview;
      if (!superview)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

- (BOOL)inTable
{
  captionCell = [(AXCaptionPreviewView *)self captionCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)visibleFrame
{
  if ([(AXCaptionPreviewView *)self inTable])
  {
    captionCell = [(AXCaptionPreviewView *)self captionCell];
    [captionCell frame];
    v5 = v4;
    v7 = v6;
    [captionCell frame];
    v9 = v7 - fabs(v8);
    v10 = v9;
    v11 = v7 - v9;
    v12 = 0.0;
  }

  else
  {
    [(AXCaptionPreviewView *)self bounds];
    v12 = v13;
    v11 = v14;
    v5 = v15;
    v10 = v16;
  }

  v17 = v12;
  v18 = v11;
  v19 = v5;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_previewTapped:(id)tapped
{
  previewDelegate = [(AXCaptionPreviewView *)self previewDelegate];
  [previewDelegate captionPreviewWasTapped:1];
}

void __40__AXCaptionPreviewView__updateSubtitle___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 136) cancel];
  v2 = *(*(a1 + 32) + 16);
  v3 = *(*(a1 + 32) + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __40__AXCaptionPreviewView__updateSubtitle___block_invoke_2;
  v5[3] = &unk_2553B0;
  v6 = v2;
  v4 = v2;
  [v3 afterDelay:v5 processBlock:&__block_literal_global_67 cancelBlock:0.25];
}

- (void)setIsExpanded:(BOOL)expanded
{
  self->_isExpanded = expanded;
  v4 = &selRef__previewTapped_;
  if (!expanded)
  {
    v4 = &selRef__expandPressed_;
  }

  [(AXCaptionPreviewView *)self addTarget:self action:*v4 forControlEvents:64];

  [(AXCaptionPreviewView *)self _updateButtonStyle];
}

+ (NSArray)cloudImages
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__AXCaptionPreviewView_cloudImages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cloudImages_onceToken != -1)
  {
    dispatch_once(&cloudImages_onceToken, block);
  }

  v2 = cloudImages_Clouds;

  return v2;
}

void __35__AXCaptionPreviewView_cloudImages__block_invoke()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = cloudImages_Clouds;
  cloudImages_Clouds = v0;

  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&off_27D088 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(&off_27D088);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [UIImage imageNamed:v7 inBundle:v2, v9, v10, v11, v12];
        if (v8)
        {
          [cloudImages_Clouds addObject:v8];
        }

        else
        {
          v11 = v7;
          v12 = v2;
          v10 = @"Unable to find image named %@ in bundle %@";
          LOBYTE(v9) = 1;
          _AXLogWithFacility();
        }
      }

      v4 = [&off_27D088 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (double)_xOffset
{
  captionCell = [(AXCaptionPreviewView *)self captionCell];
  [captionCell xOffset];
  v4 = v3;

  return v4;
}

- (AXCaptionPreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v71.receiver = self;
  v71.super_class = AXCaptionPreviewView;
  v5 = [(AXCaptionPreviewView *)&v71 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:v5 selector:"_updateSubtitle:" name:kMACaptionAppearanceSettingsChangedNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:v5 selector:"_updateSubtitle:" name:kFigSubtitleRendererNotification_NeedsLayout object:0];

  v8 = [AXThreadTimer alloc];
  v9 = +[NSThread mainThread];
  v10 = [v8 initWithThread:v9];
  updateSettingsTimer = v5->_updateSettingsTimer;
  v5->_updateSettingsTimer = v10;

  v12 = +[AXCaptionPreviewView cloudImages];
  v69 = v12;
  if ([v12 count] < 2)
  {
    v21 = objc_alloc_init(UIImageView);
    cloudView1 = v5->_cloudView1;
    v5->_cloudView1 = v21;

    v23 = objc_alloc_init(UIImageView);
    cloudView2 = v5->_cloudView2;
    v5->_cloudView2 = v23;
  }

  else
  {
    v13 = [UIImageView alloc];
    v14 = [v12 objectAtIndex:0];
    v15 = [v13 initWithImage:v14];
    v16 = v5->_cloudView1;
    v5->_cloudView1 = v15;

    v17 = [UIImageView alloc];
    cloudView2 = [v12 objectAtIndex:1];
    v19 = [v17 initWithImage:cloudView2];
    v20 = v5->_cloudView2;
    v5->_cloudView2 = v19;
  }

  [(UIImageView *)v5->_cloudView1 setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)v5->_cloudView2 setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)v5->_cloudView1 setContentMode:2];
  [(UIImageView *)v5->_cloudView2 setContentMode:2];
  [(UIImageView *)v5->_cloudView1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v5->_cloudView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
  cloudContainer = v5->_cloudContainer;
  v5->_cloudContainer = v24;

  [(UIView *)v5->_cloudContainer setClipsToBounds:1];
  [(UIView *)v5->_cloudContainer addSubview:v5->_cloudView1];
  [(UIView *)v5->_cloudContainer addSubview:v5->_cloudView2];
  leadingAnchor = [(UIImageView *)v5->_cloudView1 leadingAnchor];
  leadingAnchor2 = [(UIView *)v5->_cloudContainer leadingAnchor];
  v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v72[0] = v66;
  trailingAnchor = [(UIImageView *)v5->_cloudView1 trailingAnchor];
  trailingAnchor2 = [(UIView *)v5->_cloudContainer trailingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v72[1] = v63;
  topAnchor = [(UIImageView *)v5->_cloudView1 topAnchor];
  topAnchor2 = [(UIView *)v5->_cloudContainer topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v72[2] = v60;
  bottomAnchor = [(UIImageView *)v5->_cloudView1 bottomAnchor];
  bottomAnchor2 = [(UIView *)v5->_cloudContainer bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v72[3] = v57;
  leadingAnchor3 = [(UIImageView *)v5->_cloudView2 leadingAnchor];
  leadingAnchor4 = [(UIView *)v5->_cloudContainer leadingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v72[4] = v54;
  trailingAnchor3 = [(UIImageView *)v5->_cloudView2 trailingAnchor];
  trailingAnchor4 = [(UIView *)v5->_cloudContainer trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v72[5] = v26;
  topAnchor3 = [(UIImageView *)v5->_cloudView2 topAnchor];
  topAnchor4 = [(UIView *)v5->_cloudContainer topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v72[6] = v29;
  bottomAnchor3 = [(UIImageView *)v5->_cloudView2 bottomAnchor];
  bottomAnchor4 = [(UIView *)v5->_cloudContainer bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v72[7] = v32;
  v33 = [NSArray arrayWithObjects:v72 count:8];
  [NSLayoutConstraint activateConstraints:v33];

  [(UIView *)v5->_cloudContainer setIsAccessibilityElement:1];
  v34 = settingsLocString(@"subtitle.preview.label.spoken", @"Captioning");
  [(UIView *)v5->_cloudContainer setAccessibilityLabel:v34];

  [(UIView *)v5->_cloudContainer setAccessibilityTraits:UIAccessibilityTraitImage];
  [(AXCaptionPreviewView *)v5 addSubview:v5->_cloudContainer];
  v35 = [AXCaptionSubtitlePreviewView alloc];
  y = CGRectZero.origin.y;
  v37 = CGRectZero.size.width;
  v38 = CGRectZero.size.height;
  v39 = [(AXCaptionSubtitlePreviewView *)v35 initWithFrame:CGRectZero.origin.x, y, v37, v38];
  subtitle = v5->_subtitle;
  v5->_subtitle = v39;

  v41 = settingsLocString(@"SAMPLE_CAPTION_TEXT", @"Captioning");
  [(AXCaptionSubtitlePreviewView *)v5->_subtitle setText:v41];

  [(AXCaptionPreviewView *)v5 addSubview:v5->_subtitle];
  v42 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, v37, v38}];
  whiteBottomBorder = v5->_whiteBottomBorder;
  v5->_whiteBottomBorder = v42;

  v44 = +[UIColor whiteColor];
  v45 = [v44 colorWithAlphaComponent:0.3];
  [(UIView *)v5->_whiteBottomBorder setBackgroundColor:v45];

  [(AXCaptionPreviewView *)v5 addSubview:v5->_whiteBottomBorder];
  v46 = [UIButton buttonWithType:0];
  expandCollapseButton = v5->_expandCollapseButton;
  v5->_expandCollapseButton = v46;

  [(UIButton *)v5->_expandCollapseButton addTarget:v5 action:"_expandPressed:" forControlEvents:64];
  [(AXCaptionPreviewView *)v5 addSubview:v5->_expandCollapseButton];
  [(AXCaptionPreviewView *)v5 _updateButtonStyle];
  v48 = settingsLocString(@"enlarge.caption.button", @"Captioning");
  [(UIButton *)v5->_expandCollapseButton setAccessibilityLabel:v48];

  v49 = [NSTimer scheduledTimerWithTimeInterval:v5 target:"showNextImage" selector:0 userInfo:1 repeats:5.0];
  cloudTimer = v5->_cloudTimer;
  v5->_cloudTimer = v49;

  v70 = v5;
  AXPerformBlockAsynchronouslyOnMainThread();

  return v70;
}

- (void)dealloc
{
  [(AXCaptionPreviewView *)self stopBackgroundAnimation];
  v3.receiver = self;
  v3.super_class = AXCaptionPreviewView;
  [(AXCaptionPreviewView *)&v3 dealloc];
}

- (id)enclosingViewController
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [(AXCaptionPreviewView *)selfCopy nextResponder];

      selfCopy = nextResponder;
    }

    while (nextResponder);
  }

  return selfCopy;
}

- (void)updateExpandButtonPosition
{
  [(AXCaptionPreviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  enclosingViewController = [(AXCaptionPreviewView *)self enclosingViewController];
  v43 = enclosingViewController;
  if (enclosingViewController)
  {
    view = [enclosingViewController view];
    view2 = [v43 view];
  }

  else
  {
    window = [(AXCaptionPreviewView *)self window];

    v15 = v10;
    v16 = v8;
    v17 = v6;
    v18 = v4;
    if (!window)
    {
      goto LABEL_6;
    }

    view = [(AXCaptionPreviewView *)self window];
    view2 = [(AXCaptionPreviewView *)self window];
  }

  v19 = view2;
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  [view convertRect:self toView:?];
  v18 = v21;
  v17 = v22;
  v16 = v23;
  v15 = v24;

LABEL_6:
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v49.origin.x = v18;
  v49.origin.y = v17;
  v49.size.width = v16;
  v49.size.height = v15;
  v46 = CGRectIntersection(v45, v49);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  superview = [(AXCaptionPreviewView *)self superview];
  v30 = 0;
  if (superview)
  {
    do
    {
      AXSafeClassFromString();
      if (objc_opt_isKindOfClass())
      {
        v31 = superview;

        v30 = v31;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v29Superview = [superview superview];

      superview = v29Superview;
    }

    while (v29Superview);
    if (v30)
    {
      [v30 frame];
      v50.origin.x = v33;
      v50.origin.y = v34;
      v50.size.width = v35;
      v50.size.height = v36;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v48 = CGRectIntersection(v47, v50);
      x = v48.origin.x;
      width = v48.size.width;
    }
  }

  [(UIButton *)self->_expandCollapseButton frame];
  v38 = v37;
  v40 = v39;
  v41 = width + x - v37 + -10.0;
  [(AXCaptionPreviewView *)self bounds];
  [(UIButton *)self->_expandCollapseButton setFrame:v41, v42 - v40 + -10.0, v38, v40];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = AXCaptionPreviewView;
  [(AXCaptionPreviewView *)&v9 layoutSubviews];
  [(AXCaptionPreviewView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(AXCaptionPreviewView *)self updateExpandButtonPosition];
  [(AXCaptionPreviewView *)self visibleFrame];
  [(AXCaptionSubtitlePreviewView *)self->_subtitle setFrame:?];
  [(AXCaptionSubtitlePreviewView *)self->_subtitle update];
  [(UIView *)self->_whiteBottomBorder setFrame:v4, v8, v6, 1.0];
  [(AXCaptionPreviewView *)self bounds];
  [(UIView *)self->_cloudContainer setFrame:?];
}

- (void)_expandPressed:(id)pressed
{
  previewDelegate = [(AXCaptionPreviewView *)self previewDelegate];
  [previewDelegate captionPreviewWasTapped:1];
}

- (void)stopBackgroundAnimation
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(AXThreadTimer *)self->_updateSettingsTimer cancel];
  updateSettingsTimer = self->_updateSettingsTimer;
  self->_updateSettingsTimer = 0;

  [(NSTimer *)self->_cloudTimer invalidate];
  cloudTimer = self->_cloudTimer;
  self->_cloudTimer = 0;
}

- (void)_updateButtonStyle
{
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  if ([(AXCaptionPreviewView *)self isExpanded])
  {
    contractImage = self->_contractImage;
    if (!contractImage)
    {
      v4 = [UIImage imageNamed:@"contract" inBundle:v21];
      v5 = self->_contractImage;
      self->_contractImage = v4;

      contractImage = self->_contractImage;
    }

    [(UIButton *)self->_expandCollapseButton setImage:contractImage forState:0];
    p_contractPressedImage = &self->_contractPressedImage;
    contractPressedImage = self->_contractPressedImage;
    v8 = @"shrink.caption.button";
    if (!contractPressedImage)
    {
      v9 = @"contract_pressed";
LABEL_10:
      v13 = [UIImage imageNamed:v9 inBundle:v21];
      v14 = *p_contractPressedImage;
      *p_contractPressedImage = v13;

      contractPressedImage = *p_contractPressedImage;
    }
  }

  else
  {
    expandImage = self->_expandImage;
    if (!expandImage)
    {
      v11 = [UIImage imageNamed:@"expand" inBundle:v21];
      v12 = self->_expandImage;
      self->_expandImage = v11;

      expandImage = self->_expandImage;
    }

    [(UIButton *)self->_expandCollapseButton setImage:expandImage forState:0];
    p_contractPressedImage = &self->_expandPressedImage;
    contractPressedImage = self->_expandPressedImage;
    v8 = @"enlarge.caption.button";
    if (!contractPressedImage)
    {
      v9 = @"expand_pressed";
      goto LABEL_10;
    }
  }

  [(UIButton *)self->_expandCollapseButton setImage:contractPressedImage forState:1];
  v15 = settingsLocString(v8, @"Captioning");
  [(UIButton *)self->_expandCollapseButton setAccessibilityLabel:v15];

  v16 = [(UIButton *)self->_expandCollapseButton imageForState:0];
  [v16 size];
  v18 = v17;
  v20 = v19;

  [(UIButton *)self->_expandCollapseButton setBounds:0.0, 0.0, v18, v20];
}

- (id)nextSlide
{
  viewIndex = self->_viewIndex;
  self->_viewIndex = viewIndex + 1;
  v3 = &OBJC_IVAR___AXCaptionPreviewView__cloudView1;
  if ((viewIndex & 1) == 0)
  {
    v3 = &OBJC_IVAR___AXCaptionPreviewView__cloudView2;
  }

  return *(&self->super.super.super.super.isa + *v3);
}

- (id)currentSlide
{
  if (self->_viewIndex)
  {
    v2 = &OBJC_IVAR___AXCaptionPreviewView__cloudView1;
  }

  else
  {
    v2 = &OBJC_IVAR___AXCaptionPreviewView__cloudView2;
  }

  return *(&self->super.super.super.super.isa + *v2);
}

- (void)showNextImage
{
  v3 = self->_cloudIndex + 1;
  v4 = +[AXCaptionPreviewView cloudImages];
  self->_cloudIndex = v3 % [v4 count];

  nextSlide = [(AXCaptionPreviewView *)self nextSlide];
  currentSlide = [(AXCaptionPreviewView *)self currentSlide];
  v7 = +[AXCaptionPreviewView cloudImages];
  v8 = [v7 count];
  cloudIndex = self->_cloudIndex;

  if (v8 > cloudIndex)
  {
    v10 = +[AXCaptionPreviewView cloudImages];
    v11 = [v10 objectAtIndex:self->_cloudIndex];
    [nextSlide setImage:v11];
  }

  [nextSlide setAlpha:1.0];
  image = [nextSlide image];
  image2 = [currentSlide image];

  if (image == image2)
  {
    __37__AXCaptionPreviewView_showNextImage__block_invoke(v14, nextSlide, currentSlide);
  }

  else
  {
    [(AXCaptionPreviewView *)self _xOffset];
    v16 = v15;
    [nextSlide frame];
    v18 = v17;
    [nextSlide frame];
    v20 = v19;
    [nextSlide frame];
    [nextSlide setFrame:{v16, v18, v20}];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __37__AXCaptionPreviewView_showNextImage__block_invoke_3;
    v25[3] = &unk_2553B0;
    v26 = nextSlide;
    [UIView animateWithDuration:v25 animations:4.9];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __37__AXCaptionPreviewView_showNextImage__block_invoke_4;
    v23[3] = &unk_2553B0;
    v24 = currentSlide;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __37__AXCaptionPreviewView_showNextImage__block_invoke_5;
    v21[3] = &unk_258F20;
    v21[4] = self;
    v22 = v24;
    [UIView animateWithDuration:v23 animations:v21 completion:1.0];
  }
}

void __37__AXCaptionPreviewView_showNextImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 image];
  if (v6 && ([v4 alpha], v7 > 0.0))
  {
  }

  else
  {
    v8 = [v5 image];
    if (v8)
    {
      v9 = v8;
      [v5 alpha];
      v11 = v10;

      if (v11 > 0.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [v4 setAlpha:0.0];
    [v5 setAlpha:0.0];
    v12 = +[AXCaptionPreviewView cloudImages];
    v13 = [v12 firstObject];
    [v4 setImage:v13];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __37__AXCaptionPreviewView_showNextImage__block_invoke_2;
    v14[3] = &unk_2553B0;
    v15 = v4;
    [UIView animateWithDuration:v14 animations:1.0];
  }

LABEL_9:
}

id __37__AXCaptionPreviewView_showNextImage__block_invoke_3(uint64_t a1)
{
  v2 = (rand() % 20);
  memset(&v8.c, 0, 32);
  if (rand())
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  *&v8.a = 0uLL;
  CGAffineTransformMakeTranslation(&v8, 0.0, v3);
  v6 = v8;
  CGAffineTransformScale(&v7, &v6, 1.08000004, 1.08000004);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

id __37__AXCaptionPreviewView_showNextImage__block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 40) sendSubviewToBack:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  return [v2 setTransform:v5];
}

- (AXCaptionPreviewDelegate)previewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->previewDelegate);

  return WeakRetained;
}

- (CGRect)originalFrame
{
  x = self->originalFrame.origin.x;
  y = self->originalFrame.origin.y;
  width = self->originalFrame.size.width;
  height = self->originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)originalCenter
{
  x = self->originalCenter.x;
  y = self->originalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end