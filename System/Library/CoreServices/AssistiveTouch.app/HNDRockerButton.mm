@interface HNDRockerButton
+ (HNDRockerButton)buttonWithTitle:(id)title imageName:(id)name downBlock:(id)block upBlock:(id)upBlock showWithGuidedAccess:(BOOL)access showWithAssistiveAccess:(BOOL)assistiveAccess;
+ (id)_dummyImage;
- (BOOL)_inSelectedState;
- (BOOL)isAccessibilityElement;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)accessibilityFrame;
- (HNDRockerButton)initWithImageName:(id)name;
- (UIImage)deviceSpecificImage;
- (double)_screenHeight;
- (id)_deviceSpecificImageForName:(id)name screenHeight:(double)height;
- (id)accessibilityLabel;
- (id)description;
- (void)__applyUpdatedImage:(id)image;
- (void)_retrieveCurrentImage:(id)image;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateFont;
- (void)_updateImage;
- (void)_updateImageView;
- (void)_updateLabelText;
- (void)dealloc;
- (void)getDeviceSpecificImageForColor:(id)color withCompletion:(id)completion;
- (void)handleFingerDriftedAway;
- (void)handleRealCancelEvent:(CGPoint)event;
- (void)handleRealDownEvent:(CGPoint)event;
- (void)handleRealUpEvent:(CGPoint)event maxOrb:(double)orb;
- (void)performPress:(BOOL)press;
- (void)resetImages;
- (void)setDisabled:(BOOL)disabled;
- (void)setDownBlock:(id)block;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageName:(id)name;
- (void)setOverrideImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)setUpBlock:(id)block;
- (void)updateTextColor;
@end

@implementation HNDRockerButton

+ (HNDRockerButton)buttonWithTitle:(id)title imageName:(id)name downBlock:(id)block upBlock:(id)upBlock showWithGuidedAccess:(BOOL)access showWithAssistiveAccess:(BOOL)assistiveAccess
{
  assistiveAccessCopy = assistiveAccess;
  accessCopy = access;
  upBlockCopy = upBlock;
  blockCopy = block;
  nameCopy = name;
  titleCopy = title;
  v17 = [objc_allocWithZone(HNDRockerButton) initWithImageName:nameCopy];

  [v17 setTitle:titleCopy];
  [v17 setDownBlock:blockCopy];

  [v17 setUpBlock:upBlockCopy];
  [v17 setShowWithGuidedAccess:accessCopy];
  [v17 setShowWithAssistiveAccess:assistiveAccessCopy];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView = [v17 imageView];
  LODWORD(v19) = 1148846080;
  [imageView setContentCompressionResistancePriority:0 forAxis:v19];

  imageView2 = [v17 imageView];
  LODWORD(v21) = 1148846080;
  [imageView2 setContentCompressionResistancePriority:1 forAxis:v21];

  imageView3 = [v17 imageView];
  LODWORD(v23) = 1148846080;
  [imageView3 setContentHuggingPriority:0 forAxis:v23];

  imageView4 = [v17 imageView];
  LODWORD(v25) = 1148846080;
  [imageView4 setContentHuggingPriority:1 forAxis:v25];

  return v17;
}

+ (id)_dummyImage
{
  if (qword_100218AA8 != -1)
  {
    sub_100129870();
  }

  v3 = qword_100218AA0;

  return v3;
}

- (HNDRockerButton)initWithImageName:(id)name
{
  nameCopy = name;
  v70.receiver = self;
  v70.super_class = HNDRockerButton;
  v4 = [(HNDRockerButton *)&v70 init];
  [(HNDRockerButton *)v4 setClipsToBounds:0];
  v5 = +[UIColor clearColor];
  [(HNDRockerButton *)v4 setBackgroundColor:v5];

  [(HNDRockerButton *)v4 setAlpha:1.0];
  obj = objc_opt_new();
  v6 = +[AXAssistiveTouchLayoutView fontMetrics];
  [obj setFontMetrics:v6];

  v7 = +[AXAssistiveTouchLayoutView imageMinimumContentSizeCategory];
  [obj setMinimumContentSizeCategory:v7];

  v8 = +[AXAssistiveTouchLayoutView imageMaximumContentSizeCategory];
  [obj setMaximumContentSizeCategory:v8];

  objc_storeStrong(&v4->_imageView, obj);
  [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  _dummyImage = [objc_opt_class() _dummyImage];
  [(UIImageView *)v4->_imageView setImage:_dummyImage];

  [(HNDRockerButton *)v4 setImageName:nameCopy];
  v10 = objc_alloc_init(UILabel);
  label = v4->_label;
  v4->_label = v10;

  [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor clearColor];
  [(UILabel *)v4->_label setBackgroundColor:v12];

  [(UILabel *)v4->_label setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v4->_label setClipsToBounds:0];
  [(UILabel *)v4->_label setNumberOfLines:2];
  [(HNDRockerButton *)v4 _updateFont];
  [(HNDRockerButton *)v4 updateTextColor];
  [(HNDRockerButton *)v4 addSubview:v4->_imageView];
  [(HNDRockerButton *)v4 addSubview:v4->_label];
  topAnchor = [(UILabel *)v4->_label topAnchor];
  centerYAnchor = [(UIImageView *)v4->_imageView centerYAnchor];
  v65 = [topAnchor constraintEqualToAnchor:centerYAnchor constant:32.0];

  LODWORD(v15) = 1148829696;
  [v65 setPriority:v15];
  leadingAnchor = [(HNDRockerButton *)v4 leadingAnchor];
  leadingAnchor2 = [(UIImageView *)v4->_imageView leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  LODWORD(v18) = 1132003328;
  [v64 setPriority:v18];
  leadingAnchor3 = [(HNDRockerButton *)v4 leadingAnchor];
  leadingAnchor4 = [(UILabel *)v4->_label leadingAnchor];
  v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  LODWORD(v21) = 1132003328;
  [v63 setPriority:v21];
  trailingAnchor = [(HNDRockerButton *)v4 trailingAnchor];
  trailingAnchor2 = [(UIImageView *)v4->_imageView trailingAnchor];
  v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v24) = 1132003328;
  [v62 setPriority:v24];
  trailingAnchor3 = [(HNDRockerButton *)v4 trailingAnchor];
  trailingAnchor4 = [(UILabel *)v4->_label trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  LODWORD(v27) = 1132003328;
  [v61 setPriority:v27];
  topAnchor2 = [(UIImageView *)v4->_imageView topAnchor];
  topAnchor3 = [(HNDRockerButton *)v4 topAnchor];
  v57 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v72[0] = v57;
  v72[1] = v65;
  topAnchor4 = [(UILabel *)v4->_label topAnchor];
  bottomAnchor = [(UIImageView *)v4->_imageView bottomAnchor];
  v54 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v72[2] = v54;
  bottomAnchor2 = [(UILabel *)v4->_label bottomAnchor];
  bottomAnchor3 = [(HNDRockerButton *)v4 bottomAnchor];
  v51 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v72[3] = v51;
  centerXAnchor = [(UILabel *)v4->_label centerXAnchor];
  centerXAnchor2 = [(UIImageView *)v4->_imageView centerXAnchor];
  v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v72[4] = v48;
  centerXAnchor3 = [(UIImageView *)v4->_imageView centerXAnchor];
  centerXAnchor4 = [(HNDRockerButton *)v4 centerXAnchor];
  v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v72[5] = v45;
  leadingAnchor5 = [(UIImageView *)v4->_imageView leadingAnchor];
  leadingAnchor6 = [(HNDRockerButton *)v4 leadingAnchor];
  v42 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  v72[6] = v42;
  leadingAnchor7 = [(UILabel *)v4->_label leadingAnchor];
  leadingAnchor8 = [(HNDRockerButton *)v4 leadingAnchor];
  v29 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
  v72[7] = v29;
  trailingAnchor5 = [(UIImageView *)v4->_imageView trailingAnchor];
  trailingAnchor6 = [(HNDRockerButton *)v4 trailingAnchor];
  v32 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  v72[8] = v32;
  trailingAnchor7 = [(UILabel *)v4->_label trailingAnchor];
  trailingAnchor8 = [(HNDRockerButton *)v4 trailingAnchor];
  v35 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v72[9] = v35;
  v72[10] = v64;
  v72[11] = v63;
  v72[12] = v62;
  v72[13] = v61;
  v36 = [NSArray arrayWithObjects:v72 count:14];
  [NSLayoutConstraint activateConstraints:v36];

  objc_initWeak(&location, v4);
  v37 = objc_opt_self();
  v71 = v37;
  v38 = [NSArray arrayWithObjects:&v71 count:1];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100062DEC;
  v67[3] = &unk_1001D5610;
  objc_copyWeak(&v68, &location);
  v39 = [(HNDRockerButton *)v4 registerForTraitChanges:v38 withHandler:v67];

  objc_destroyWeak(&v68);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(HNDRockerButton *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqual:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
    [(HNDRockerButton *)self _updateFont];

    [(HNDRockerButton *)self _updateLabelText];
  }
}

- (void)_updateFont
{
  v3 = +[AXAssistiveTouchLayoutView labelFont];
  [(UILabel *)self->_label setFont:v3];
}

- (void)_updateImage
{
  [(HNDRockerButton *)self resetImages];

  [(HNDRockerButton *)self _updateImageView];
}

- (void)_updateImageView
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006300C;
  v2[3] = &unk_1001D5638;
  v2[4] = self;
  [(HNDRockerButton *)self _retrieveCurrentImage:v2];
}

- (void)__applyUpdatedImage:(id)image
{
  imageCopy = image;
  if ([UIApp userInterfaceLayoutDirection] == 1 && AXUIAssistiveTouchIconRequiresRTLFlipping())
  {
    imageWithHorizontallyFlippedOrientation = [imageCopy imageWithHorizontallyFlippedOrientation];

    imageCopy = imageWithHorizontallyFlippedOrientation;
  }

  if ([(NSString *)self->_imageName isEqualToString:@"AT_pinned_narrow_for_flipping"])
  {
    imageWithHorizontallyFlippedOrientation2 = [imageCopy imageWithHorizontallyFlippedOrientation];

    imageCopy = imageWithHorizontallyFlippedOrientation2;
  }

  if (!imageCopy)
  {
    imageCopy = [objc_opt_class() _dummyImage];
  }

  [(UIImageView *)self->_imageView setImage:imageCopy];
  v7 = 1.0;
  if (self->_disabled)
  {
    v7 = 0.5;
  }

  [(UIImageView *)self->_imageView setAlpha:v7];
  type = [(HNDRockerButton *)self type];
  v9 = [type isEqualToString:AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath];

  if (v9)
  {
    alternateImageView = [(HNDRockerButton *)self alternateImageView];

    if (!alternateImageView)
    {
      v11 = [[_AXSlideToTypeImageView alloc] initWithFrame:0.0, 0.0, 60.0, 60.0];
      [(HNDRockerButton *)self setAlternateImageView:v11];

      alternateImageView2 = [(HNDRockerButton *)self alternateImageView];
      [alternateImageView2 setAutoresizingMask:18];

      imageView = self->_imageView;
      alternateImageView3 = [(HNDRockerButton *)self alternateImageView];
      [(UIImageView *)imageView addSubview:alternateImageView3];

      alternateImageView4 = [(HNDRockerButton *)self alternateImageView];
      widthAnchor = [alternateImageView4 widthAnchor];
      v17 = [widthAnchor constraintEqualToConstant:60.0];
      v24[0] = v17;
      alternateImageView5 = [(HNDRockerButton *)self alternateImageView];
      heightAnchor = [alternateImageView5 heightAnchor];
      v20 = [heightAnchor constraintEqualToConstant:60.0];
      v24[1] = v20;
      v21 = [NSArray arrayWithObjects:v24 count:2];
      [NSLayoutConstraint activateConstraints:v21];
    }

    alternateImageView6 = [(HNDRockerButton *)self alternateImageView];
    if ([(HNDRockerButton *)self _inSelectedState])
    {
      [UIColor colorWithRed:0.37 green:0.79 blue:0.96 alpha:1.0];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v23 = ;
    [alternateImageView6 setTintColor:v23];

    [(UIImageView *)self->_imageView setImage:0];
  }
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (self->_imageName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->_imageName, name);
    [(HNDRockerButton *)self _updateImage];
    nameCopy = v6;
  }
}

- (void)setOverrideImage:(id)image
{
  objc_storeStrong(&self->_overrideImage, image);
  imageCopy = image;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063460;
  block[3] = &unk_1001D3488;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setUpBlock:(id)block
{
  v4 = objc_retainBlock(block);
  upBlock = self->_upBlock;
  self->_upBlock = v4;

  _objc_release_x1(v4, upBlock);
}

- (void)setDownBlock:(id)block
{
  v4 = objc_retainBlock(block);
  downBlock = self->_downBlock;
  self->_downBlock = v4;

  _objc_release_x1(v4, downBlock);
}

- (void)setType:(id)type
{
  typeCopy = type;
  if (![(NSString *)self->_type isEqualToString:?])
  {
    objc_storeStrong(&self->_type, type);
    [(HNDRockerButton *)self _updateImageView];
  }
}

- (void)handleRealDownEvent:(CGPoint)event
{
  if (![(HNDRockerButton *)self highlighted:event.x])
  {

    [(HNDRockerButton *)self performPress:1];
  }
}

- (void)handleFingerDriftedAway
{
  [(HNDRockerButton *)self setHighlighted:0];
  if ([(HNDRockerButton *)self isModalDown])
  {

    [(HNDRockerButton *)self performPress:0];
  }
}

- (void)handleRealCancelEvent:(CGPoint)event
{
  y = event.y;
  x = event.x;
  if ([(HNDRockerButton *)self isModalDown])
  {
    v6 = +[HNDHandManager sharedManager];
    isVoiceControlRunning = [v6 isVoiceControlRunning];

    if (isVoiceControlRunning)
    {
      [(HNDRockerButton *)self setHighlighted:0];
      v13 = +[HNDHandManager sharedManager];
      window = [(HNDRockerButton *)self window];
      screen = [window screen];
      displayIdentity = [screen displayIdentity];
      v11 = [v13 displayManagerForDisplayId:{objc_msgSend(displayIdentity, "displayID")}];
      hardwareIdentifier = [v11 hardwareIdentifier];
      [v13 menuExitedOnDisplay:hardwareIdentifier];
    }

    else
    {

      [(HNDRockerButton *)self handleFingerDriftedAway];
    }
  }

  else
  {

    [(HNDRockerButton *)self handleRealUpEvent:x maxOrb:y, 0.0];
  }
}

- (void)handleRealUpEvent:(CGPoint)event maxOrb:(double)orb
{
  if ([(HNDRockerButton *)self pointInside:0 withEvent:event.x, event.y, orb])
  {

    [(HNDRockerButton *)self performPress:0];
  }

  else
  {
    [(HNDRockerButton *)self handleFingerDriftedAway];

    [(HNDRockerButton *)self setHighlighted:0];
  }
}

- (void)performPress:(BOOL)press
{
  pressCopy = press;
  if (![(HNDRockerButton *)self disabled])
  {
    if (pressCopy)
    {
      [(HNDRockerButton *)self setHighlighted:1];
      v5 = 32;
    }

    else
    {
      [(HNDRockerButton *)self setHighlighted:[(HNDRockerButton *)self continueHighlightAfterTouch]];
      v5 = 40;
    }

    v6 = *(&self->super.super.super.super.isa + v5);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UIImageView *)self->_imageView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UILabel *)self->_label frame];
  v26.origin.x = v15;
  v26.origin.y = v16;
  v26.size.width = v17;
  v26.size.height = v18;
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v24 = CGRectUnion(v23, v26);
  v25 = CGRectInset(v24, -20.0, -20.0);
  v19 = x;
  v20 = y;

  return CGRectContainsPoint(v25, *&v19);
}

- (BOOL)_inSelectedState
{
  if ([(HNDRockerButton *)self highlighted]|| (v3 = [(HNDRockerButton *)self selected]))
  {
    LOBYTE(v3) = ![(HNDRockerButton *)self disabled];
  }

  return v3;
}

- (void)resetImages
{
  selectedImage = self->_selectedImage;
  self->_selectedImage = 0;

  unselectedImage = self->_unselectedImage;
  self->_unselectedImage = 0;
}

- (void)_retrieveCurrentImage:(id)image
{
  imageCopy = image;
  if ([(HNDRockerButton *)self _inSelectedState])
  {
    p_selectedImage = &self->_selectedImage;
    selectedImage = self->_selectedImage;
    if (!selectedImage)
    {
      v7 = [UIColor colorWithRed:0.37 green:0.79 blue:0.96 alpha:1.0];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100063B7C;
      v19 = &unk_1001D5660;
      selfCopy = self;
      v8 = &v21;
      v21 = imageCopy;
      v9 = &v16;
LABEL_6:
      [(HNDRockerButton *)self getDeviceSpecificImageForColor:v7 withCompletion:v9, v10, v11, v12, v13, selfCopy2, v15, v16, v17, v18, v19, selfCopy, v21];

      selectedImage = *p_selectedImage;
    }
  }

  else
  {
    p_selectedImage = &self->_unselectedImage;
    selectedImage = self->_unselectedImage;
    if (!selectedImage)
    {
      v7 = +[UIColor whiteColor];
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100063C14;
      v13 = &unk_1001D5660;
      selfCopy2 = self;
      v8 = &v15;
      v15 = imageCopy;
      v9 = &v10;
      goto LABEL_6;
    }
  }

  (*(imageCopy + 2))(imageCopy, selectedImage);
}

- (void)getDeviceSpecificImageForColor:(id)color withCompletion:(id)completion
{
  colorCopy = color;
  completionCopy = completion;
  overrideImage = [(HNDRockerButton *)self overrideImage];
  if (!overrideImage)
  {
    v9 = self->_imageName;
    if ([(NSString *)v9 length])
    {
      [(HNDRockerButton *)self _screenHeight];
      v11 = v10;
      v12 = dispatch_get_global_queue(0, 0);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100063E78;
      v14[3] = &unk_1001D5688;
      v14[4] = self;
      v15 = v9;
      v18 = v11;
      v16 = colorCopy;
      v17 = completionCopy;
      dispatch_async(v12, v14);

      v13 = v15;
    }

    else
    {
      if (!completionCopy)
      {
LABEL_8:

        goto LABEL_9;
      }

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100063E64;
      v22 = &unk_1001D3F90;
      v23 = completionCopy;
      AXPerformBlockAsynchronouslyOnMainThread();
      v13 = v23;
    }

    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, overrideImage);
LABEL_9:
}

- (id)_deviceSpecificImageForName:(id)name screenHeight:(double)height
{
  nameCopy = name;
  v6 = AXUIAssistiveTouchImageForName();
  if (AXDeviceIsPhoneIdiom())
  {
    HasHomeButton = AXDeviceHasHomeButton();
    if (height > 480.0 && HasHomeButton != 0)
    {
      v9 = [nameCopy stringByAppendingString:@"-tall"];
      v10 = [UIImage _deviceSpecificImageNamed:v9];

      v6 = v10;
    }
  }

  if (!v6)
  {
    v11 = [UIImage _deviceSpecificImageNamed:nameCopy];
    v12 = [v11 imageByPreparingThumbnailOfSize:{60.0, 60.0}];
    v13 = v12;
    if (v12)
    {
      v6 = v12;
    }

    else
    {
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
      v6 = [v11 imageByApplyingSymbolConfiguration:v14];

      v11 = v14;
    }
  }

  return v6;
}

- (double)_screenHeight
{
  v2 = +[UIScreen mainScreen];
  [v2 _referenceBounds];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (UIImage)deviceSpecificImage
{
  imageName = self->_imageName;
  if (imageName)
  {
    [(HNDRockerButton *)self _screenHeight];
    v4 = [(HNDRockerButton *)self _deviceSpecificImageForName:imageName screenHeight:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateTextColor
{
  if (self->_disabled)
  {
    label = self->_label;
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 0.5;
  }

  else
  {
    if (self->_selected || self->_highlighted)
    {
      label = self->_label;
      v3 = 0.250980392;
      v4 = 0.670588235;
      v5 = 0.992156863;
    }

    else
    {
      label = self->_label;
      v3 = 1.0;
      v4 = 1.0;
      v5 = 1.0;
    }

    v6 = 1.0;
  }

  v7 = [UIColor colorWithRed:v3 green:v4 blue:v5 alpha:v6];
  [(UILabel *)label setTextColor:?];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(HNDRockerButton *)self updateTextColor];

    [(HNDRockerButton *)self _updateImageView];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(HNDRockerButton *)self updateTextColor];

    [(HNDRockerButton *)self _updateImageView];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(HNDRockerButton *)self updateTextColor];

    [(HNDRockerButton *)self _updateImageView];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(HNDRockerButton *)self _updateLabelText];
    titleCopy = v6;
  }
}

- (void)_updateLabelText
{
  title = [(HNDRockerButton *)self title];
  if (title)
  {
    v4 = title;
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    LODWORD(v6) = 981668463;
    [v5 setHyphenationFactor:v6];
    v7 = +[AXAssistiveTouchLayoutView fontMetrics];
    if (AXDeviceIsPad())
    {
      v8 = 20.0;
    }

    else
    {
      v8 = 16.0;
    }

    v9 = +[AXAssistiveTouchLayoutView traitCollectionForLabelPreferredContentSizeCategory];
    [v7 scaledValueForValue:v9 compatibleWithTraitCollection:v8];
    [v5 setMinimumLineHeight:?];

    [v5 minimumLineHeight];
    [v5 setMaximumLineHeight:?];
    if ([v4 containsString:@"\\n"])
    {
      v10 = [v4 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

      v4 = v10;
    }

    [v5 setAlignment:1];
    [v5 setLineBreakMode:4];
    [(UILabel *)self->_label setText:0];
    v11 = [NSAttributedString alloc];
    v15 = NSParagraphStyleAttributeName;
    v16 = v5;
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [v11 initWithString:v4 attributes:v12];

    [(UILabel *)self->_label setAttributedText:v13];
  }

  else
  {
    label = self->_label;

    [(UILabel *)label setText:0];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HNDRockerButton;
  [(HNDRockerButton *)&v4 dealloc];
}

- (BOOL)isAccessibilityElement
{
  text = [(UILabel *)self->_label text];
  if ([text length])
  {
    v4 = 1;
  }

  else
  {
    accessibilityLabel = [(HNDRockerButton *)self accessibilityLabel];
    v4 = accessibilityLabel != 0;
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  label = self->_label;
  [(UIImageView *)self->_imageView accessibilityFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (label)
  {
    [(UILabel *)self->_label accessibilityFrame];
    v23.origin.x = v12;
    v23.origin.y = v13;
    v23.size.width = v14;
    v23.size.height = v15;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectUnion(v20, v23);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)accessibilityLabel
{
  if ([(HNDRockerButton *)self isBackButton])
  {
    v3 = @"back.button";
LABEL_5:
    v4 = sub_100042B24(v3);
    goto LABEL_7;
  }

  if ([(HNDRockerButton *)self isEmptyFavorite])
  {
    v3 = @"empty.favorite.gesture.button";
    goto LABEL_5;
  }

  v4 = [(NSString *)self->_title stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
LABEL_7:

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  text = [(UILabel *)self->_label text];
  [(HNDRockerButton *)self frame];
  v5 = NSStringFromCGRect(v9);
  v6 = [NSString stringWithFormat:@"[%@ %p] - Label: %@ Frame: %@", v3, self, text, v5];

  return v6;
}

@end