@interface CameraTargetView
- (CGSize)flipButtonIntrinsicContentSize;
- (CGSize)shutterButtonIntrinsicContentSize;
- (CameraTargetView)initWithFrame:(CGRect)frame color:(id)color thickness:(double)thickness instructionText:(id)text presentationOptions:(int64_t)options;
- (CameraTargetViewDelegate)delegate;
- (void)cancelTapped:(id)tapped;
- (void)flashTapped:(id)tapped;
- (void)flipTapped:(id)tapped;
- (void)setFlashState:(BOOL)state;
- (void)takePicture:(id)picture;
- (void)updateConstraints;
@end

@implementation CameraTargetView

- (CameraTargetView)initWithFrame:(CGRect)frame color:(id)color thickness:(double)thickness instructionText:(id)text presentationOptions:(int64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  textCopy = text;
  v68.receiver = self;
  v68.super_class = CameraTargetView;
  height = [(CameraTargetView *)&v68 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    height->_cameraPresentation = options;
    [(CameraTargetView *)height setOpaque:0];
    v19 = +[UIColor clearColor];
    [(CameraTargetView *)v18 setBackgroundColor:v19];

    if (options)
    {
      v20 = +[UIBezierPath bezierPath];
      [(CameraTargetView *)v18 frame];
      [(CameraTargetView *)v18 center];
      [v20 addArcWithCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
      layer = [(CameraTargetView *)v18 layer];
      [layer setPath:{objc_msgSend(v20, "CGPath")}];
      [layer setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
      v22 = +[UIColor clearColor];
      [layer setFillColor:{objc_msgSend(v22, "CGColor")}];

      [layer setLineWidth:thickness];
      [layer setLineCap:kCALineCapRound];
      [layer setLineJoin:kCALineJoinRound];
    }

    v23 = [UIColor colorWithWhite:0.0 alpha:0.5];
    v24 = [UIView alloc];
    v25 = CGRectZero.origin.y;
    v26 = CGRectZero.size.width;
    v27 = CGRectZero.size.height;
    v28 = [v24 initWithFrame:{CGRectZero.origin.x, v25, v26, v27}];
    viewfinderOutsideRegionTop = v18->_viewfinderOutsideRegionTop;
    v18->_viewfinderOutsideRegionTop = v28;

    [(UIView *)v18->_viewfinderOutsideRegionTop setOpaque:0];
    [(UIView *)v18->_viewfinderOutsideRegionTop setBackgroundColor:v23];
    LODWORD(v30) = 1148846080;
    [(UIView *)v18->_viewfinderOutsideRegionTop setContentHuggingPriority:1 forAxis:v30];
    [(UIView *)v18->_viewfinderOutsideRegionTop setContentCompressionResistancePriority:1 forAxis:0.0];
    [(UIView *)v18->_viewfinderOutsideRegionTop setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, v25, v26, v27}];
    viewfinderOutsideRegionBottom = v18->_viewfinderOutsideRegionBottom;
    v18->_viewfinderOutsideRegionBottom = v31;

    [(UIView *)v18->_viewfinderOutsideRegionBottom setOpaque:0];
    [(UIView *)v18->_viewfinderOutsideRegionBottom setBackgroundColor:v23];
    [(UIView *)v18->_viewfinderOutsideRegionBottom setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v25, v26, v27}];
    viewfinderInstruction = v18->_viewfinderInstruction;
    v18->_viewfinderInstruction = v33;

    v35 = +[UIColor clearColor];
    [(UILabel *)v18->_viewfinderInstruction setBackgroundColor:v35];

    [(UILabel *)v18->_viewfinderInstruction setContentMode:7];
    LODWORD(v36) = 1144750080;
    [(UILabel *)v18->_viewfinderInstruction setContentHuggingPriority:0 forAxis:v36];
    [(UILabel *)v18->_viewfinderInstruction setContentHuggingPriority:1 forAxis:0.0];
    LODWORD(v37) = 1148846080;
    [(UILabel *)v18->_viewfinderInstruction setContentCompressionResistancePriority:1 forAxis:v37];
    [(UILabel *)v18->_viewfinderInstruction setTextAlignment:1];
    [(UILabel *)v18->_viewfinderInstruction setLineBreakMode:4];
    [(UILabel *)v18->_viewfinderInstruction setNumberOfLines:2];
    v38 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)v18->_viewfinderInstruction setFont:v38];

    v39 = +[UIColor whiteColor];
    [(UILabel *)v18->_viewfinderInstruction setTextColor:v39];

    v67 = textCopy;
    [(UILabel *)v18->_viewfinderInstruction setText:textCopy];
    [(UILabel *)v18->_viewfinderInstruction setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v41 = [UIFont fontWithDescriptor:v40 size:18.0];

    v42 = [UIButton buttonWithType:1];
    cancelButton = v18->_cancelButton;
    v18->_cancelButton = v42;

    [(UIButton *)v18->_cancelButton setOpaque:0];
    v44 = +[UIColor clearColor];
    [(UIButton *)v18->_cancelButton setBackgroundColor:v44];

    titleLabel = [(UIButton *)v18->_cancelButton titleLabel];
    [titleLabel setContentMode:7];

    titleLabel2 = [(UIButton *)v18->_cancelButton titleLabel];
    [titleLabel2 setTextAlignment:1];

    titleLabel3 = [(UIButton *)v18->_cancelButton titleLabel];
    [titleLabel3 setLineBreakMode:4];

    titleLabel4 = [(UIButton *)v18->_cancelButton titleLabel];
    v66 = v41;
    [titleLabel4 setFont:v41];

    titleLabel5 = [(UIButton *)v18->_cancelButton titleLabel];
    [titleLabel5 setNumberOfLines:1];

    v50 = v18->_cancelButton;
    v51 = +[NSBundle mainBundle];
    v52 = [v51 localizedStringForKey:@"CANCEL" value:&stru_10000C4C0 table:0];
    [(UIButton *)v50 setTitle:v52 forState:0];

    v53 = v18->_cancelButton;
    v54 = +[UIColor whiteColor];
    [(UIButton *)v53 setTitleColor:v54 forState:0];

    [(UIButton *)v18->_cancelButton sizeToFit];
    [(UIButton *)v18->_cancelButton addTarget:v18 action:"cancelTapped:" forControlEvents:64];
    [(UIButton *)v18->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((options & 2) != 0)
    {
      v55 = +[CUShutterButton shutterButton];
      shutterButton = v18->_shutterButton;
      v18->_shutterButton = v55;

      [(CUShutterButton *)v18->_shutterButton setExclusiveTouch:1];
      [(CUShutterButton *)v18->_shutterButton intrinsicContentSize];
      v18->_shutterButtonIntrinsicContentSize.width = v57;
      v18->_shutterButtonIntrinsicContentSize.height = v58;
      [(CUShutterButton *)v18->_shutterButton addTarget:v18 action:"takePicture:" forControlEvents:64];
      [(CUShutterButton *)v18->_shutterButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if ((options & 4) != 0)
    {
      v59 = +[CAMFlipButton flipButtonOverContent];
      flipButton = v18->_flipButton;
      v18->_flipButton = v59;

      [(CAMFlipButton *)v18->_flipButton setExclusiveTouch:1];
      [(CAMFlipButton *)v18->_flipButton intrinsicContentSize];
      v18->_flipButtonIntrinsicContentSize.width = v61;
      v18->_flipButtonIntrinsicContentSize.height = v62;
      [(CAMFlipButton *)v18->_flipButton addTarget:v18 action:"flipTapped:" forControlEvents:64];
      [(CAMFlipButton *)v18->_flipButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    if ((options & 8) != 0)
    {
      v63 = [[CAMFlashButton alloc] initWithLayoutStyle:3];
      flashButton = v18->_flashButton;
      v18->_flashButton = v63;

      [(CAMFlashButton *)v18->_flashButton setExclusiveTouch:1];
      [(CAMFlashButton *)v18->_flashButton setAllowsAutomaticFlash:0];
      [(CAMFlashButton *)v18->_flashButton setFlashMode:0];
      [(CAMFlashButton *)v18->_flashButton reloadData];
      [(CAMFlashButton *)v18->_flashButton addTarget:v18 action:"flashTapped:" forControlEvents:4096];
      [(CAMFlashButton *)v18->_flashButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    [(CameraTargetView *)v18 setNeedsUpdateConstraints];
    [(UIView *)v18->_viewfinderOutsideRegionBottom addSubview:v18->_cancelButton];
    if ((options & 2) != 0)
    {
      [(UIView *)v18->_viewfinderOutsideRegionBottom addSubview:v18->_shutterButton];
      if ((options & 4) == 0)
      {
LABEL_12:
        if ((options & 8) == 0)
        {
LABEL_14:
          [(CameraTargetView *)v18 addSubview:v18->_viewfinderOutsideRegionTop];
          [(CameraTargetView *)v18 addSubview:v18->_viewfinderOutsideRegionBottom];
          [(CameraTargetView *)v18 addSubview:v18->_viewfinderInstruction];

          textCopy = v67;
          goto LABEL_15;
        }

LABEL_13:
        [(UIView *)v18->_viewfinderOutsideRegionBottom addSubview:v18->_flashButton];
        goto LABEL_14;
      }
    }

    else if ((options & 4) == 0)
    {
      goto LABEL_12;
    }

    [(UIView *)v18->_viewfinderOutsideRegionBottom addSubview:v18->_flipButton];
    if ((options & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:

  return v18;
}

- (void)setFlashState:(BOOL)state
{
  if ((self->_cameraPresentation & 8) != 0)
  {
    stateCopy = state;
    flashButton = [(CameraTargetView *)self flashButton];
    [flashButton setFlashMode:stateCopy];
  }
}

- (void)cancelTapped:(id)tapped
{
  delegate = [(CameraTargetView *)self delegate];
  [delegate cancelTapped];
}

- (void)flipTapped:(id)tapped
{
  delegate = [(CameraTargetView *)self delegate];
  [delegate flipTapped];
}

- (void)flashTapped:(id)tapped
{
  delegate = [(CameraTargetView *)self delegate];
  [delegate flashTapped];
}

- (void)takePicture:(id)picture
{
  if ((self->_cameraPresentation & 2) != 0)
  {
    shutterButton = [(CameraTargetView *)self shutterButton];
    [shutterButton setEnabled:0];

    delegate = [(CameraTargetView *)self delegate];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001A6C;
    v6[3] = &unk_10000C398;
    v6[4] = self;
    [delegate takePictureWithHandler:v6];
  }
}

- (void)updateConstraints
{
  viewfinderOutsideRegionTop = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  viewfinderOutsideRegionTop2 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  [(CameraTargetView *)self frame];
  v6 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v5];
  [viewfinderOutsideRegionTop addConstraint:v6];

  viewfinderOutsideRegionTop3 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  viewfinderOutsideRegionTop4 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  v9 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop4 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:85.0];
  [viewfinderOutsideRegionTop3 addConstraint:v9];

  viewfinderOutsideRegionTop5 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  v11 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(CameraTargetView *)self addConstraint:v11];

  viewfinderOutsideRegionTop6 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  v13 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop6 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(CameraTargetView *)self addConstraint:v13];

  viewfinderOutsideRegionBottom = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  viewfinderOutsideRegionBottom2 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  [(CameraTargetView *)self frame];
  v17 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionBottom2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v16];
  [viewfinderOutsideRegionBottom addConstraint:v17];

  viewfinderOutsideRegionBottom3 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  viewfinderOutsideRegionBottom4 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v20 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionBottom4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:85.0];
  [viewfinderOutsideRegionBottom3 addConstraint:v20];

  viewfinderOutsideRegionBottom5 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v22 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionBottom5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(CameraTargetView *)self addConstraint:v22];

  viewfinderOutsideRegionBottom6 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v24 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionBottom6 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [(CameraTargetView *)self addConstraint:v24];

  viewfinderInstruction = [(CameraTargetView *)self viewfinderInstruction];
  viewfinderOutsideRegionTop7 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  v27 = [NSLayoutConstraint constraintWithItem:viewfinderInstruction attribute:5 relatedBy:0 toItem:viewfinderOutsideRegionTop7 attribute:5 multiplier:1.0 constant:15.0];
  [(CameraTargetView *)self addConstraint:v27];

  viewfinderOutsideRegionTop8 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  viewfinderInstruction2 = [(CameraTargetView *)self viewfinderInstruction];
  v30 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop8 attribute:6 relatedBy:0 toItem:viewfinderInstruction2 attribute:6 multiplier:1.0 constant:15.0];
  [(CameraTargetView *)self addConstraint:v30];

  viewfinderInstruction3 = [(CameraTargetView *)self viewfinderInstruction];
  topAnchor = [viewfinderInstruction3 topAnchor];
  safeAreaLayoutGuide = [(CameraTargetView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [v35 setActive:1];

  viewfinderOutsideRegionTop9 = [(CameraTargetView *)self viewfinderOutsideRegionTop];
  viewfinderInstruction4 = [(CameraTargetView *)self viewfinderInstruction];
  v38 = [NSLayoutConstraint constraintWithItem:viewfinderOutsideRegionTop9 attribute:4 relatedBy:0 toItem:viewfinderInstruction4 attribute:4 multiplier:1.0 constant:5.0];

  LODWORD(v39) = 1144750080;
  [v38 setPriority:v39];
  [(CameraTargetView *)self addConstraint:v38];
  viewfinderInstruction5 = [(CameraTargetView *)self viewfinderInstruction];
  v41 = [NSLayoutConstraint constraintWithItem:viewfinderInstruction5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(CameraTargetView *)self addConstraint:v41];

  cancelButton = [(CameraTargetView *)self cancelButton];
  cancelButton2 = [(CameraTargetView *)self cancelButton];
  cancelButton3 = [(CameraTargetView *)self cancelButton];
  [cancelButton3 frame];
  v46 = [NSLayoutConstraint constraintWithItem:cancelButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v45];
  [cancelButton addConstraint:v46];

  cancelButton4 = [(CameraTargetView *)self cancelButton];
  cancelButton5 = [(CameraTargetView *)self cancelButton];
  cancelButton6 = [(CameraTargetView *)self cancelButton];
  [cancelButton6 frame];
  v51 = [NSLayoutConstraint constraintWithItem:cancelButton5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v50];
  [cancelButton4 addConstraint:v51];

  viewfinderOutsideRegionBottom7 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  cancelButton7 = [(CameraTargetView *)self cancelButton];
  viewfinderOutsideRegionBottom8 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v55 = [NSLayoutConstraint constraintWithItem:cancelButton7 attribute:5 relatedBy:0 toItem:viewfinderOutsideRegionBottom8 attribute:5 multiplier:1.0 constant:15.0];
  [viewfinderOutsideRegionBottom7 addConstraint:v55];

  viewfinderOutsideRegionBottom9 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  cancelButton8 = [(CameraTargetView *)self cancelButton];
  viewfinderOutsideRegionBottom10 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v59 = [NSLayoutConstraint constraintWithItem:cancelButton8 attribute:10 relatedBy:0 toItem:viewfinderOutsideRegionBottom10 attribute:10 multiplier:1.0 constant:0.0];
  [viewfinderOutsideRegionBottom9 addConstraint:v59];

  cameraPresentation = self->_cameraPresentation;
  if ((cameraPresentation & 2) == 0)
  {
    if ((cameraPresentation & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    flipButton = [(CameraTargetView *)self flipButton];
    flipButton2 = [(CameraTargetView *)self flipButton];
    [(CameraTargetView *)self flipButtonIntrinsicContentSize];
    v96 = [NSLayoutConstraint constraintWithItem:flipButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v95];
    [flipButton addConstraint:v96];

    flipButton3 = [(CameraTargetView *)self flipButton];
    flipButton4 = [(CameraTargetView *)self flipButton];
    [(CameraTargetView *)self flipButtonIntrinsicContentSize];
    v99 = [NSLayoutConstraint constraintWithItem:flipButton4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
    [flipButton3 addConstraint:v99];

    viewfinderOutsideRegionBottom11 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    flipButton5 = [(CameraTargetView *)self flipButton];
    viewfinderOutsideRegionBottom12 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    v103 = [NSLayoutConstraint constraintWithItem:flipButton5 attribute:9 relatedBy:0 toItem:viewfinderOutsideRegionBottom12 attribute:9 multiplier:1.0 constant:0.0];
    [viewfinderOutsideRegionBottom11 addConstraint:v103];

    viewfinderOutsideRegionBottom13 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    flipButton6 = [(CameraTargetView *)self flipButton];
    viewfinderOutsideRegionBottom14 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    v107 = [NSLayoutConstraint constraintWithItem:flipButton6 attribute:10 relatedBy:0 toItem:viewfinderOutsideRegionBottom14 attribute:10 multiplier:1.0 constant:0.0];
    [viewfinderOutsideRegionBottom13 addConstraint:v107];

    if ((self->_cameraPresentation & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  shutterButton = [(CameraTargetView *)self shutterButton];
  shutterButton2 = [(CameraTargetView *)self shutterButton];
  [(CameraTargetView *)self shutterButtonIntrinsicContentSize];
  v81 = [NSLayoutConstraint constraintWithItem:shutterButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v80];
  [shutterButton addConstraint:v81];

  shutterButton3 = [(CameraTargetView *)self shutterButton];
  shutterButton4 = [(CameraTargetView *)self shutterButton];
  [(CameraTargetView *)self shutterButtonIntrinsicContentSize];
  v84 = [NSLayoutConstraint constraintWithItem:shutterButton4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
  [shutterButton3 addConstraint:v84];

  viewfinderOutsideRegionBottom15 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  shutterButton5 = [(CameraTargetView *)self shutterButton];
  viewfinderOutsideRegionBottom16 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v88 = [NSLayoutConstraint constraintWithItem:shutterButton5 attribute:9 relatedBy:0 toItem:viewfinderOutsideRegionBottom16 attribute:9 multiplier:1.0 constant:0.0];
  [viewfinderOutsideRegionBottom15 addConstraint:v88];

  viewfinderOutsideRegionBottom17 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  shutterButton6 = [(CameraTargetView *)self shutterButton];
  viewfinderOutsideRegionBottom18 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
  v92 = [NSLayoutConstraint constraintWithItem:shutterButton6 attribute:10 relatedBy:0 toItem:viewfinderOutsideRegionBottom18 attribute:10 multiplier:1.0 constant:0.0];
  [viewfinderOutsideRegionBottom17 addConstraint:v92];

  cameraPresentation = self->_cameraPresentation;
  if ((cameraPresentation & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((cameraPresentation & 8) != 0)
  {
LABEL_4:
    flashButton = [(CameraTargetView *)self flashButton];
    flashButton2 = [(CameraTargetView *)self flashButton];
    flashButton3 = [(CameraTargetView *)self flashButton];
    [flashButton3 intrinsicContentSize];
    v65 = [NSLayoutConstraint constraintWithItem:flashButton2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v64];
    [flashButton addConstraint:v65];

    flashButton4 = [(CameraTargetView *)self flashButton];
    flashButton5 = [(CameraTargetView *)self flashButton];
    flashButton6 = [(CameraTargetView *)self flashButton];
    [flashButton6 intrinsicContentSize];
    v69 = [NSLayoutConstraint constraintWithItem:flashButton5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
    [flashButton4 addConstraint:v69];

    viewfinderOutsideRegionBottom19 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    flashButton7 = [(CameraTargetView *)self flashButton];
    viewfinderOutsideRegionBottom20 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    v73 = [NSLayoutConstraint constraintWithItem:flashButton7 attribute:6 relatedBy:0 toItem:viewfinderOutsideRegionBottom20 attribute:6 multiplier:1.0 constant:-15.0];
    [viewfinderOutsideRegionBottom19 addConstraint:v73];

    viewfinderOutsideRegionBottom21 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    flashButton8 = [(CameraTargetView *)self flashButton];
    viewfinderOutsideRegionBottom22 = [(CameraTargetView *)self viewfinderOutsideRegionBottom];
    v77 = [NSLayoutConstraint constraintWithItem:flashButton8 attribute:10 relatedBy:0 toItem:viewfinderOutsideRegionBottom22 attribute:10 multiplier:1.0 constant:0.0];
    [viewfinderOutsideRegionBottom21 addConstraint:v77];
  }

LABEL_5:
  v108.receiver = self;
  v108.super_class = CameraTargetView;
  [(CameraTargetView *)&v108 updateConstraints];
}

- (CameraTargetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)flipButtonIntrinsicContentSize
{
  width = self->_flipButtonIntrinsicContentSize.width;
  height = self->_flipButtonIntrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)shutterButtonIntrinsicContentSize
{
  width = self->_shutterButtonIntrinsicContentSize.width;
  height = self->_shutterButtonIntrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end