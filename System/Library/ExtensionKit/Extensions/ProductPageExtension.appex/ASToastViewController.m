@interface ASToastViewController
+ (id)_fontWithSize:(double)a3 textStyleAttribute:(__CFString *)a4;
+ (id)_primaryLabelFont;
+ (id)_secondaryLabelFont;
- (ASToastViewController)initWithTitle:(id)a3 message:(id)a4 duration:(double)a5 image:(id)a6;
- (void)_dismissAfterDelay:(double)a3;
- (void)present;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ASToastViewController

- (ASToastViewController)initWithTitle:(id)a3 message:(id)a4 duration:(double)a5 image:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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

    [(ASToastViewController *)v13 setTitle:v10];
    [(ASToastViewController *)v13 setMessage:v11];
    [(ASToastViewController *)v13 setImage:v12];
    [(ASToastViewController *)v13 setDuration:a5];
    [(ASToastViewController *)v13 setModalPresentationStyle:6];
  }

  return v13;
}

- (void)viewDidLoad
{
  v43.receiver = self;
  v43.super_class = ASToastViewController;
  [(ASToastViewController *)&v43 viewDidLoad];
  v3 = [(ASToastViewController *)self presentationController];
  [v3 _setContainerIgnoresDirectTouchEvents:1];

  v4 = [(ASToastViewController *)self view];
  [v4 setUserInteractionEnabled:0];

  v5 = [(ASToastViewController *)self image];
  v6 = [(ASToastViewController *)self imageView];
  [v6 setImage:v5];

  v7 = [(ASToastViewController *)self imageView];
  [v7 setAlpha:0.64];

  v8 = +[UIColor labelColor];
  v9 = [(ASToastViewController *)self imageView];
  [v9 setTintColor:v8];

  v10 = [(ASToastViewController *)self imageView];
  [v10 setContentMode:2];

  v11 = [(ASToastViewController *)self title];
  v12 = [(ASToastViewController *)self primaryLabel];
  [v12 setText:v11];

  v13 = [(ASToastViewController *)self primaryLabel];
  [v13 setTextAlignment:1];

  v14 = [(ASToastViewController *)self primaryLabel];
  [v14 setNumberOfLines:2];

  v15 = +[UIColor secondaryLabelColor];
  v16 = [(ASToastViewController *)self primaryLabel];
  [v16 setTextColor:v15];

  v17 = [(ASToastViewController *)self primaryLabel];
  [v17 setLineBreakMode:4];

  v18 = [(ASToastViewController *)self message];

  if (v18)
  {
    v19 = [NSMutableAttributedString alloc];
    v20 = [(ASToastViewController *)self message];
    v18 = [v19 initWithString:v20];
  }

  v21 = objc_alloc_init(NSMutableParagraphStyle);
  [v21 setLineSpacing:2.0];
  [v18 addAttribute:NSParagraphStyleAttributeName value:v21 range:{0, objc_msgSend(v18, "length")}];
  v22 = [(ASToastViewController *)self secondaryLabel];
  [v22 setAttributedText:v18];

  v23 = [(ASToastViewController *)self secondaryLabel];
  [v23 setTextAlignment:1];

  v24 = [(ASToastViewController *)self secondaryLabel];
  [v24 setNumberOfLines:4];

  v25 = +[UIColor secondaryLabelColor];
  v26 = [(ASToastViewController *)self secondaryLabel];
  [v26 setTextColor:v25];

  v27 = [(ASToastViewController *)self secondaryLabel];
  [v27 setLineBreakMode:4];

  v28 = [(ASToastViewController *)self toastView];
  v29 = [v28 contentView];
  v30 = [(ASToastViewController *)self imageView];
  [v29 addSubview:v30];

  v31 = [(ASToastViewController *)self toastView];
  v32 = [v31 contentView];
  v33 = [(ASToastViewController *)self primaryLabel];
  [v32 addSubview:v33];

  v34 = [(ASToastViewController *)self toastView];
  v35 = [v34 contentView];
  v36 = [(ASToastViewController *)self secondaryLabel];
  [v35 addSubview:v36];

  CGAffineTransformMakeScale(&v42, 0.88, 0.88);
  v37 = [(ASToastViewController *)self toastView];
  v41 = v42;
  [v37 setTransform:&v41];

  v38 = [(ASToastViewController *)self toastView];
  [v38 setAlpha:0.0];

  v39 = [(ASToastViewController *)self view];
  v40 = [(ASToastViewController *)self toastView];
  [v39 addSubview:v40];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ASToastViewController;
  [(ASToastViewController *)&v5 viewWillAppear:a3];
  v4 = [(ASToastViewController *)self presentationController];
  [v4 _setContainerIgnoresDirectTouchEvents:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ASToastViewController;
  [(ASToastViewController *)&v6 viewDidAppear:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006B98;
  v5[3] = &unk_100881828;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006C18;
  v4[3] = &unk_100881850;
  v4[4] = self;
  [UIView animateWithDuration:2 delay:v5 options:v4 animations:0.2 completion:0.0];
}

- (void)viewDidLayoutSubviews
{
  v65.receiver = self;
  v65.super_class = ASToastViewController;
  [(ASToastViewController *)&v65 viewDidLayoutSubviews];
  v3 = [(ASToastViewController *)self view];
  [v3 bounds];

  v4 = [(ASToastViewController *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = [(ASToastViewController *)self toastView];
  [v7 setFrame:{0.0, 0.0, 250.0, 450.0}];

  v59 = 0;
  v60 = &v59;
  v61 = 0x4010000000;
  v62 = &unk_1007C7DEE;
  v63 = 0u;
  v64 = 0u;
  v8 = [(ASToastViewController *)self toastView];
  [v8 bounds];
  *&v63 = v9 + 25.0;
  *(&v63 + 1) = v10 + 40.0;
  *&v64 = v11 + -50.0;
  *(&v64 + 1) = v12 + -65.0;

  v13 = [(ASToastViewController *)self toastView];
  [v13 bounds];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(ASToastViewController *)self imageView];
  [v22 setFrame:{v15, v17, v19, v21}];

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
  v53[2] = sub_10000711C;
  v53[3] = &unk_100881878;
  v53[4] = &v59;
  v53[5] = v54;
  v53[6] = &v55;
  v24 = objc_retainBlock(v53);
  v25 = [objc_opt_class() _primaryLabelFont];
  v26 = [(ASToastViewController *)self primaryLabel];
  [v26 setFont:v25];

  v27 = [(ASToastViewController *)self primaryLabel];
  (v24[2])(v24, v27, 0, 18.0);

  v28 = [objc_opt_class() _secondaryLabelFont];
  v29 = [(ASToastViewController *)self secondaryLabel];
  [v29 setFont:v28];

  v30 = [(ASToastViewController *)self secondaryLabel];
  (v24[2])(v24, v30, 0, 25.5);

  v31 = [(ASToastViewController *)self toastView];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v56[3];
  v39 = [(ASToastViewController *)self toastView];
  v40 = v39;
  v41 = fmin(v38 + 25.0, 450.0);
  if (v41 < 250.0)
  {
    v41 = 250.0;
  }

  v42 = v41;
  [v39 setBounds:{v33, v35, v37, ceilf(v42)}];

  v43 = [(ASToastViewController *)self toastView];
  [v43 frame];
  UIRectCenteredXInRectScale();

  UIRectCenteredYInRectScale();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = [(ASToastViewController *)self toastView];
  [v52 setFrame:{v45, v47, v49, v51}];

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

- (void)_dismissAfterDelay:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073F0;
  block[3] = &unk_100881828;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

+ (id)_primaryLabelFont
{
  v2 = qword_1009687F8;
  if (!qword_1009687F8)
  {
    v3 = [a1 _fontWithSize:kCTFontDescriptorTextStyleSemibold textStyleAttribute:22.0];
    v4 = qword_1009687F8;
    qword_1009687F8 = v3;

    v2 = qword_1009687F8;
  }

  return v2;
}

+ (id)_secondaryLabelFont
{
  v2 = qword_100968800;
  if (!qword_100968800)
  {
    v3 = [a1 _fontWithSize:kCTFontDescriptorTextStyleRegular textStyleAttribute:16.0];
    v4 = qword_100968800;
    qword_100968800 = v3;

    v2 = qword_100968800;
  }

  return v2;
}

+ (id)_fontWithSize:(double)a3 textStyleAttribute:(__CFString *)a4
{
  v5 = [UIFont systemFontOfSize:a3];
  v6 = [v5 fontDescriptor];
  v11 = UIFontDescriptorTextStyleAttribute;
  v12 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v6 fontDescriptorByAddingAttributes:v7];
  v9 = [UIFont fontWithDescriptor:v8 size:0.0];

  return v9;
}

@end