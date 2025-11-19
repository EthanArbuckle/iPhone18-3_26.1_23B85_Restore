@interface IOUIANCriticalUIView
+ (id)_createHeaderLabel;
+ (id)_createMessageLabel;
- (IOUIANCriticalUIView)initWithFrame:(CGRect)a3;
- (IOUIANCriticalUIViewDelegate)delegate;
- (NSString)buttonTitle;
- (NSString)headerText;
- (NSString)messageText;
- (UIImage)image;
- (void)handleButtonAction:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setDebugViews:(BOOL)a3;
- (void)setHeaderText:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageWithSystemImageNamed:(id)a3 andConfiguration:(id)a4;
- (void)setMessageText:(id)a3;
- (void)updateConstraints;
@end

@implementation IOUIANCriticalUIView

- (IOUIANCriticalUIView)initWithFrame:(CGRect)a3
{
  v81.receiver = self;
  v81.super_class = IOUIANCriticalUIView;
  v3 = [(IOUIANCriticalUIView *)&v81 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    contentView = v3->_contentView;
    v3->_contentView = v4;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_contentView addSubview:v3->_imageView];
    v8 = +[IOUIANCriticalUIView _createHeaderLabel];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v8;

    [(UIView *)v3->_contentView addSubview:v3->_headerLabel];
    v10 = +[IOUIANCriticalUIView _createMessageLabel];
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v10;

    [(UIView *)v3->_contentView addSubview:v3->_messageLabel];
    [(IOUIANCriticalUIView *)v3 addSubview:v3->_contentView];
    v80 = [(IOUIANCriticalUIView *)v3 contentView];
    v79 = [v80 centerYAnchor];
    v78 = [(IOUIANCriticalUIView *)v3 centerYAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v82[0] = v77;
    v76 = [(IOUIANCriticalUIView *)v3 contentView];
    v75 = [v76 leadingAnchor];
    v74 = [(IOUIANCriticalUIView *)v3 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v82[1] = v73;
    v72 = [(IOUIANCriticalUIView *)v3 contentView];
    v71 = [v72 trailingAnchor];
    v70 = [(IOUIANCriticalUIView *)v3 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v82[2] = v69;
    v68 = [(IOUIANCriticalUIView *)v3 contentView];
    v66 = [v68 topAnchor];
    v67 = [(IOUIANCriticalUIView *)v3 imageView];
    v65 = [v67 topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v82[3] = v64;
    v63 = [(IOUIANCriticalUIView *)v3 contentView];
    v61 = [v63 bottomAnchor];
    v62 = [(IOUIANCriticalUIView *)v3 messageLabel];
    v60 = [v62 bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v82[4] = v59;
    v58 = [(IOUIANCriticalUIView *)v3 imageView];
    v56 = [v58 topAnchor];
    v57 = [(IOUIANCriticalUIView *)v3 contentView];
    v55 = [v57 topAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v82[5] = v54;
    v53 = [(IOUIANCriticalUIView *)v3 imageView];
    v51 = [v53 centerXAnchor];
    v52 = [(IOUIANCriticalUIView *)v3 contentView];
    v50 = [v52 centerXAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v82[6] = v49;
    v48 = [(IOUIANCriticalUIView *)v3 headerLabel];
    v46 = [v48 topAnchor];
    v47 = [(IOUIANCriticalUIView *)v3 imageView];
    v45 = [v47 bottomAnchor];
    v44 = [v46 constraintEqualToAnchor:v45 constant:20.0];
    v82[7] = v44;
    v43 = [(IOUIANCriticalUIView *)v3 headerLabel];
    v41 = [v43 leadingAnchor];
    v42 = [(IOUIANCriticalUIView *)v3 contentView];
    v40 = [v42 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v82[8] = v39;
    v38 = [(IOUIANCriticalUIView *)v3 headerLabel];
    v36 = [v38 trailingAnchor];
    v37 = [(IOUIANCriticalUIView *)v3 contentView];
    v35 = [v37 trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v82[9] = v34;
    v33 = [(IOUIANCriticalUIView *)v3 messageLabel];
    v31 = [v33 topAnchor];
    v32 = [(IOUIANCriticalUIView *)v3 headerLabel];
    v30 = [v32 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
    v82[10] = v29;
    v28 = [(IOUIANCriticalUIView *)v3 messageLabel];
    v26 = [v28 leadingAnchor];
    v27 = [(IOUIANCriticalUIView *)v3 contentView];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v82[11] = v24;
    v23 = [(IOUIANCriticalUIView *)v3 messageLabel];
    v22 = [v23 trailingAnchor];
    v12 = [(IOUIANCriticalUIView *)v3 contentView];
    v13 = [v12 trailingAnchor];
    v14 = [v22 constraintEqualToAnchor:v13];
    v82[12] = v14;
    v15 = [(IOUIANCriticalUIView *)v3 messageLabel];
    v16 = [v15 bottomAnchor];
    v17 = [(IOUIANCriticalUIView *)v3 contentView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v82[13] = v19;
    v20 = [NSArray arrayWithObjects:v82 count:14];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v3;
}

- (void)setDebugViews:(BOOL)a3
{
  self->_debugViews = a3;
  if (a3)
  {
    v4 = +[UIColor blueColor];
    [(IOUIANCriticalUIView *)self setBackgroundColor:v4];

    v6 = +[UIColor redColor];
    v5 = [(IOUIANCriticalUIView *)self contentView];
    [v5 setBackgroundColor:v6];
  }

  else
  {
    [(IOUIANCriticalUIView *)self setBackgroundColor:0];
    v6 = [(IOUIANCriticalUIView *)self contentView];
    [v6 setBackgroundColor:0];
  }
}

- (void)updateConstraints
{
  v3 = [(IOUIANCriticalUIView *)self button];

  if (v3)
  {
    v4 = [(IOUIANCriticalUIView *)self button];
    v5 = [v4 centerXAnchor];
    v6 = [(IOUIANCriticalUIView *)self centerXAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v14[0] = v7;
    v8 = [(IOUIANCriticalUIView *)self button];
    v9 = [v8 bottomAnchor];
    v10 = [(IOUIANCriticalUIView *)self bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-24.0];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    [NSLayoutConstraint activateConstraints:v12];
  }

  v13.receiver = self;
  v13.super_class = IOUIANCriticalUIView;
  [(IOUIANCriticalUIView *)&v13 updateConstraints];
}

- (UIImage)image
{
  v2 = [(IOUIANCriticalUIView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(IOUIANCriticalUIView *)self imageView];
  [v5 setImage:v4];
}

- (void)setImageWithSystemImageNamed:(id)a3 andConfiguration:(id)a4
{
  v5 = [UIImage systemImageNamed:a3 withConfiguration:a4];
  [(IOUIANCriticalUIView *)self setImage:v5];
}

- (NSString)headerText
{
  v2 = [(IOUIANCriticalUIView *)self headerLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setHeaderText:(id)a3
{
  v4 = a3;
  v5 = [(IOUIANCriticalUIView *)self headerLabel];
  [v5 setText:v4];
}

- (NSString)messageText
{
  v2 = [(IOUIANCriticalUIView *)self messageLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setMessageText:(id)a3
{
  v4 = a3;
  v5 = [(IOUIANCriticalUIView *)self messageLabel];
  [v5 setText:v4];
}

- (NSString)buttonTitle
{
  v2 = [(IOUIANCriticalUIView *)self button];
  v3 = [v2 titleLabel];
  v4 = [v3 text];

  return v4;
}

- (void)setButtonTitle:(id)a3
{
  v11 = a3;
  v4 = [(IOUIANCriticalUIView *)self button];
  if (v11)
  {

    if (!v4)
    {
      v5 = +[IOUIANCriticalUIButton button];
      [(IOUIANCriticalUIView *)self setButton:v5];

      v6 = [(IOUIANCriticalUIView *)self button];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

      v7 = [(IOUIANCriticalUIView *)self button];
      [v7 setDelegate:self];

      v8 = [(IOUIANCriticalUIView *)self button];
      [(IOUIANCriticalUIView *)self addSubview:v8];

      [(IOUIANCriticalUIView *)self setNeedsUpdateConstraints];
    }

    v9 = [(IOUIANCriticalUIView *)self button];
    [v9 setTitle:v11 forState:0];
  }

  else
  {

    if (v4)
    {
      v10 = [(IOUIANCriticalUIView *)self button];
      [v10 removeFromSuperview];

      [(IOUIANCriticalUIView *)self setButton:0];
      [(IOUIANCriticalUIView *)self setNeedsUpdateConstraints];
    }
  }
}

+ (id)_createHeaderLabel
{
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTextAlignment:1];
  v3 = sub_100002CA0(UIFontTextStyleLargeTitle, UIContentSizeCategoryAccessibilityMedium);
  [v2 setFont:v3];

  v4 = +[UIColor whiteColor];
  [v2 setTextColor:v4];

  [v2 setNumberOfLines:2];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setContentMode:5];

  return v2;
}

+ (id)_createMessageLabel
{
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTextAlignment:1];
  v3 = sub_100002CA0(UIFontTextStyleTitle2, UIContentSizeCategoryAccessibilityMedium);
  [v2 setFont:v3];

  v4 = +[UIColor whiteColor];
  [v2 setTextColor:v4];

  [v2 setNumberOfLines:10];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setContentMode:5];

  return v2;
}

- (void)handleButtonAction:(id)a3
{
  v4 = [(IOUIANCriticalUIView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IOUIANCriticalUIView *)self delegate];
    [v6 handleButtonAction:self];
  }
}

- (IOUIANCriticalUIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end