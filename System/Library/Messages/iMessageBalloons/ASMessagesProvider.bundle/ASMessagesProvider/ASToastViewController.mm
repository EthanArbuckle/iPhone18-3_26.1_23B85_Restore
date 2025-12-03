@interface ASToastViewController
+ (id)_fontWithSize:(double)size textStyleAttribute:(__CFString *)attribute;
+ (id)_primaryLabelFont;
+ (id)_secondaryLabelFont;
- (ASToastViewController)initWithTitle:(id)title message:(id)message duration:(double)duration image:(id)image;
- (void)_dismissAfterDelay:(double)delay;
- (void)present;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ASToastViewController

- (ASToastViewController)initWithTitle:(id)title message:(id)message duration:(double)duration image:(id)image
{
  titleCopy = title;
  messageCopy = message;
  imageCopy = image;
  v28.receiver = self;
  v28.super_class = ASToastViewController;
  v13 = [(ASToastViewController *)&v28 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    primaryLabel = v13->_primaryLabel;
    v13->_primaryLabel = v18;

    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    secondaryLabel = v13->_secondaryLabel;
    v13->_secondaryLabel = v20;

    v22 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v13->_imageView;
    v13->_imageView = v22;

    v24 = [UIBlurEffect effectWithStyle:9];
    v25 = [[UIVisualEffectView alloc] initWithEffect:v24];
    [(UIVisualEffectView *)v25 setClipsToBounds:1];
    [(UIVisualEffectView *)v25 _setContinuousCornerRadius:20.0];
    toastView = v13->_toastView;
    v13->_toastView = v25;

    [(ASToastViewController *)v13 setTitle:titleCopy];
    [(ASToastViewController *)v13 setMessage:messageCopy];
    [(ASToastViewController *)v13 setImage:imageCopy];
    [(ASToastViewController *)v13 setDuration:duration];
    [(ASToastViewController *)v13 setModalPresentationStyle:6];
  }

  return v13;
}

- (void)viewDidLoad
{
  v43.receiver = self;
  v43.super_class = ASToastViewController;
  [(ASToastViewController *)&v43 viewDidLoad];
  presentationController = [(ASToastViewController *)self presentationController];
  [presentationController _setContainerIgnoresDirectTouchEvents:1];

  view = [(ASToastViewController *)self view];
  [view setUserInteractionEnabled:0];

  image = [(ASToastViewController *)self image];
  imageView = [(ASToastViewController *)self imageView];
  [imageView setImage:image];

  imageView2 = [(ASToastViewController *)self imageView];
  [imageView2 setAlpha:0.64];

  v8 = +[UIColor labelColor];
  imageView3 = [(ASToastViewController *)self imageView];
  [imageView3 setTintColor:v8];

  imageView4 = [(ASToastViewController *)self imageView];
  [imageView4 setContentMode:2];

  title = [(ASToastViewController *)self title];
  primaryLabel = [(ASToastViewController *)self primaryLabel];
  [primaryLabel setText:title];

  primaryLabel2 = [(ASToastViewController *)self primaryLabel];
  [primaryLabel2 setTextAlignment:1];

  primaryLabel3 = [(ASToastViewController *)self primaryLabel];
  [primaryLabel3 setNumberOfLines:2];

  v15 = +[UIColor secondaryLabelColor];
  primaryLabel4 = [(ASToastViewController *)self primaryLabel];
  [primaryLabel4 setTextColor:v15];

  primaryLabel5 = [(ASToastViewController *)self primaryLabel];
  [primaryLabel5 setLineBreakMode:4];

  message = [(ASToastViewController *)self message];

  if (message)
  {
    v19 = [NSMutableAttributedString alloc];
    message2 = [(ASToastViewController *)self message];
    message = [v19 initWithString:message2];
  }

  v21 = objc_alloc_init(NSMutableParagraphStyle);
  [v21 setLineSpacing:2.0];
  [message addAttribute:NSParagraphStyleAttributeName value:v21 range:{0, objc_msgSend(message, "length")}];
  secondaryLabel = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel setAttributedText:message];

  secondaryLabel2 = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel2 setTextAlignment:1];

  secondaryLabel3 = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel3 setNumberOfLines:4];

  v25 = +[UIColor secondaryLabelColor];
  secondaryLabel4 = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel4 setTextColor:v25];

  secondaryLabel5 = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel5 setLineBreakMode:4];

  toastView = [(ASToastViewController *)self toastView];
  contentView = [toastView contentView];
  imageView5 = [(ASToastViewController *)self imageView];
  [contentView addSubview:imageView5];

  toastView2 = [(ASToastViewController *)self toastView];
  contentView2 = [toastView2 contentView];
  primaryLabel6 = [(ASToastViewController *)self primaryLabel];
  [contentView2 addSubview:primaryLabel6];

  toastView3 = [(ASToastViewController *)self toastView];
  contentView3 = [toastView3 contentView];
  secondaryLabel6 = [(ASToastViewController *)self secondaryLabel];
  [contentView3 addSubview:secondaryLabel6];

  CGAffineTransformMakeScale(&v42, 0.88, 0.88);
  toastView4 = [(ASToastViewController *)self toastView];
  v41 = v42;
  [toastView4 setTransform:&v41];

  toastView5 = [(ASToastViewController *)self toastView];
  [toastView5 setAlpha:0.0];

  view2 = [(ASToastViewController *)self view];
  toastView6 = [(ASToastViewController *)self toastView];
  [view2 addSubview:toastView6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ASToastViewController;
  [(ASToastViewController *)&v5 viewWillAppear:appear];
  presentationController = [(ASToastViewController *)self presentationController];
  [presentationController _setContainerIgnoresDirectTouchEvents:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ASToastViewController;
  [(ASToastViewController *)&v6 viewDidAppear:appear];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_74A0;
  v5[3] = &unk_87D678;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7520;
  v4[3] = &unk_87D6A0;
  v4[4] = self;
  [UIView animateWithDuration:2 delay:v5 options:v4 animations:0.2 completion:0.0];
}

- (void)viewDidLayoutSubviews
{
  v65.receiver = self;
  v65.super_class = ASToastViewController;
  [(ASToastViewController *)&v65 viewDidLayoutSubviews];
  view = [(ASToastViewController *)self view];
  [view bounds];

  traitCollection = [(ASToastViewController *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  toastView = [(ASToastViewController *)self toastView];
  [toastView setFrame:{0.0, 0.0, 250.0, 450.0}];

  v59 = 0;
  v60 = &v59;
  v61 = 0x4010000000;
  v62 = &unk_7C31E1;
  v63 = 0u;
  v64 = 0u;
  toastView2 = [(ASToastViewController *)self toastView];
  [toastView2 bounds];
  *&v63 = v9 + 25.0;
  *(&v63 + 1) = v10 + 40.0;
  *&v64 = v11 + -50.0;
  *(&v64 + 1) = v12 + -65.0;

  toastView3 = [(ASToastViewController *)self toastView];
  [toastView3 bounds];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  imageView = [(ASToastViewController *)self imageView];
  [imageView setFrame:{v15, v17, v19, v21}];

  v23 = v60;
  v60[5] = v21 + v60[5];
  v23[7] = v23[7] - v21;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_7A24;
  v53[3] = &unk_87D6C8;
  v53[4] = &v59;
  v53[5] = v54;
  v53[6] = &v55;
  v24 = objc_retainBlock(v53);
  _primaryLabelFont = [objc_opt_class() _primaryLabelFont];
  primaryLabel = [(ASToastViewController *)self primaryLabel];
  [primaryLabel setFont:_primaryLabelFont];

  primaryLabel2 = [(ASToastViewController *)self primaryLabel];
  (v24[2])(v24, primaryLabel2, 0, 18.0);

  _secondaryLabelFont = [objc_opt_class() _secondaryLabelFont];
  secondaryLabel = [(ASToastViewController *)self secondaryLabel];
  [secondaryLabel setFont:_secondaryLabelFont];

  secondaryLabel2 = [(ASToastViewController *)self secondaryLabel];
  (v24[2])(v24, secondaryLabel2, 0, 25.5);

  toastView4 = [(ASToastViewController *)self toastView];
  [toastView4 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v56[3];
  toastView5 = [(ASToastViewController *)self toastView];
  v40 = toastView5;
  v41 = fmin(v38 + 25.0, 450.0);
  if (v41 < 250.0)
  {
    v41 = 250.0;
  }

  v42 = v41;
  [toastView5 setBounds:{v33, v35, v37, ceilf(v42)}];

  toastView6 = [(ASToastViewController *)self toastView];
  [toastView6 frame];
  UIRectCenteredXInRectScale();

  UIRectCenteredYInRectScale();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  toastView7 = [(ASToastViewController *)self toastView];
  [toastView7 setFrame:{v45, v47, v49, v51}];

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
}

- (void)present
{
  v3 = objc_alloc_init(ASToastPresentationWindow);
  [(ASToastViewController *)self setPresentationWindow:v3];
  [(ASToastPresentationWindow *)v3 setHidden:0];
  [(ASToastPresentationWindow *)v3 setUserInteractionEnabled:0];
  [(ASToastPresentationWindow *)v3 presentViewController:self animated:0 completion:0];
}

- (void)_dismissAfterDelay:(double)delay
{
  v4 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7CF8;
  block[3] = &unk_87D678;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

+ (id)_primaryLabelFont
{
  v2 = qword_9652C8;
  if (!qword_9652C8)
  {
    v3 = [self _fontWithSize:kCTFontDescriptorTextStyleSemibold textStyleAttribute:22.0];
    v4 = qword_9652C8;
    qword_9652C8 = v3;

    v2 = qword_9652C8;
  }

  return v2;
}

+ (id)_secondaryLabelFont
{
  v2 = qword_9652D0;
  if (!qword_9652D0)
  {
    v3 = [self _fontWithSize:kCTFontDescriptorTextStyleRegular textStyleAttribute:16.0];
    v4 = qword_9652D0;
    qword_9652D0 = v3;

    v2 = qword_9652D0;
  }

  return v2;
}

+ (id)_fontWithSize:(double)size textStyleAttribute:(__CFString *)attribute
{
  v5 = [UIFont systemFontOfSize:size];
  fontDescriptor = [v5 fontDescriptor];
  v11 = UIFontDescriptorTextStyleAttribute;
  attributeCopy = attribute;
  v7 = [NSDictionary dictionaryWithObjects:&attributeCopy forKeys:&v11 count:1];
  v8 = [fontDescriptor fontDescriptorByAddingAttributes:v7];
  v9 = [UIFont fontWithDescriptor:v8 size:0.0];

  return v9;
}

@end