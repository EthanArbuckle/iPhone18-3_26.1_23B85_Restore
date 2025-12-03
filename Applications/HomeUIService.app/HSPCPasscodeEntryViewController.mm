@interface HSPCPasscodeEntryViewController
- (HSPCPasscodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_scrollToWells;
- (void)_textDidChange:(id)change;
- (void)_updatePasscodeEntryView;
- (void)passcodeEntryViewDidBecomeFirstResponder:(id)responder;
- (void)setFootnote:(id)footnote;
- (void)setImage:(id)image;
- (void)setNumberOfDigits:(int64_t)digits;
- (void)setUseMonospacedFont:(BOOL)font;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HSPCPasscodeEntryViewController

- (HSPCPasscodeEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [[PRXCardContentView alloc] initWithCardStyle:1];
  v6 = [(HSPCPasscodeEntryViewController *)self initWithContentView:v5];

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HSPCPasscodeEntryViewController;
  [(HSPCPasscodeEntryViewController *)&v3 viewDidLoad];
  [(HSPCPasscodeEntryViewController *)self _updatePasscodeEntryView];
}

- (void)setNumberOfDigits:(int64_t)digits
{
  if (self->_numberOfDigits != digits)
  {
    self->_numberOfDigits = digits;
    [(HSPCPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setUseMonospacedFont:(BOOL)font
{
  if (self->_useMonospacedFont != font)
  {
    self->_useMonospacedFont = font;
    [(HSPCPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(HSPCPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)setFootnote:(id)footnote
{
  footnoteCopy = footnote;
  if (![(NSAttributedString *)self->_footnote isEqualToAttributedString:?])
  {
    v4 = [footnoteCopy copy];
    footnote = self->_footnote;
    self->_footnote = v4;

    [(HSPCPasscodeEntryViewController *)self _updatePasscodeEntryView];
  }
}

- (void)_updatePasscodeEntryView
{
  if ([(HSPCPasscodeEntryViewController *)self isViewLoaded])
  {
    contentView = [(HSPCPasscodeEntryViewController *)self contentView];
    mainContentGuide = [contentView mainContentGuide];

    [(PRXImageView *)self->_imageView removeFromSuperview];
    v5 = &HFResultApplicationIsInstalled_ptr;
    v56 = mainContentGuide;
    if (self->_image)
    {
      v6 = [PRXImageView imageViewWithStyle:0];
      imageView = self->_imageView;
      self->_imageView = v6;

      [(PRXImageView *)self->_imageView setImage:self->_image];
      [(PRXImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView2 = [(HSPCPasscodeEntryViewController *)self contentView];
      [contentView2 addSubview:self->_imageView];

      centerXAnchor = [(PRXImageView *)self->_imageView centerXAnchor];
      centerXAnchor2 = [mainContentGuide centerXAnchor];
      v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v64[0] = v11;
      topAnchor = [(PRXImageView *)self->_imageView topAnchor];
      topAnchor2 = [mainContentGuide topAnchor];
      v14 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v64[1] = v14;
      heightAnchor = [(PRXImageView *)self->_imageView heightAnchor];
      v16 = [heightAnchor constraintEqualToConstant:50.0];
      v64[2] = v16;
      v17 = [NSArray arrayWithObjects:v64 count:3];
      [NSLayoutConstraint activateConstraints:v17];

      mainContentGuide = v56;
      v5 = &HFResultApplicationIsInstalled_ptr;
    }

    [(HSPCPasscodeEntryView *)self->_passcodeEntryView removeFromSuperview];
    v18 = [HSPCPasscodeEntryView alloc];
    if (self->_numberOfDigits)
    {
      numberOfDigits = self->_numberOfDigits;
    }

    else
    {
      numberOfDigits = 4;
    }

    v20 = [(HSPCPasscodeEntryView *)v18 initWithNumberOfDigits:numberOfDigits useMonospacedFont:self->_useMonospacedFont delegate:self];
    passcodeEntryView = self->_passcodeEntryView;
    self->_passcodeEntryView = v20;

    [(HSPCPasscodeEntryView *)self->_passcodeEntryView setSemanticContentAttribute:3];
    [(HSPCPasscodeEntryView *)self->_passcodeEntryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HSPCPasscodeEntryView *)self->_passcodeEntryView addTarget:self action:"_textDidChange:" forControlEvents:4096];
    contentView3 = [(HSPCPasscodeEntryViewController *)self contentView];
    [contentView3 addSubview:self->_passcodeEntryView];

    leadingAnchor = [(HSPCPasscodeEntryView *)self->_passcodeEntryView leadingAnchor];
    leadingAnchor2 = [mainContentGuide leadingAnchor];
    v25 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v63[0] = v25;
    centerXAnchor3 = [(HSPCPasscodeEntryView *)self->_passcodeEntryView centerXAnchor];
    centerXAnchor4 = [mainContentGuide centerXAnchor];
    v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v63[1] = v28;
    v29 = [v5[115] arrayWithObjects:v63 count:2];
    [NSLayoutConstraint activateConstraints:v29];

    v30 = self->_imageView;
    topAnchor3 = [(HSPCPasscodeEntryView *)self->_passcodeEntryView topAnchor];
    if (v30)
    {
      bottomAnchor = [(PRXImageView *)self->_imageView bottomAnchor];
      v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
      v62 = v33;
      centerYAnchor = [NSArray arrayWithObjects:&v62 count:1];
      [NSLayoutConstraint activateConstraints:centerYAnchor];
    }

    else
    {
      bottomAnchor = [v56 topAnchor];
      v33 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
      v61[0] = v33;
      centerYAnchor = [(HSPCPasscodeEntryView *)self->_passcodeEntryView centerYAnchor];
      centerYAnchor2 = [v56 centerYAnchor];
      v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v61[1] = v35;
      v36 = [NSArray arrayWithObjects:v61 count:2];
      [NSLayoutConstraint activateConstraints:v36];
    }

    [(PRXLabel *)self->_footnoteLabel removeFromSuperview];
    if (self->_footnote)
    {
      v37 = [PRXLabel labelWithStyle:3];
      footnoteLabel = self->_footnoteLabel;
      self->_footnoteLabel = v37;

      [(PRXLabel *)self->_footnoteLabel setAttributedText:self->_footnote];
      [(PRXLabel *)self->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView4 = [(HSPCPasscodeEntryViewController *)self contentView];
      [contentView4 addSubview:self->_footnoteLabel];

      leadingAnchor3 = [(PRXLabel *)self->_footnoteLabel leadingAnchor];
      v40 = v56;
      leadingAnchor4 = [v56 leadingAnchor];
      v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v60[0] = v52;
      trailingAnchor = [(PRXLabel *)self->_footnoteLabel trailingAnchor];
      trailingAnchor2 = [v56 trailingAnchor];
      v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v60[1] = v53;
      topAnchor4 = [(PRXLabel *)self->_footnoteLabel topAnchor];
      bottomAnchor2 = [(HSPCPasscodeEntryView *)self->_passcodeEntryView bottomAnchor];
      v44 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
      v60[2] = v44;
      bottomAnchor3 = [v56 bottomAnchor];
      bottomAnchor4 = [(PRXLabel *)self->_footnoteLabel bottomAnchor];
      v47 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:10.0];
      v60[3] = v47;
      v48 = [NSArray arrayWithObjects:v60 count:4];
      [NSLayoutConstraint activateConstraints:v48];

      v49 = v52;
      bottomAnchor6 = leadingAnchor4;

      bottomAnchor5 = leadingAnchor3;
    }

    else
    {
      v40 = v56;
      bottomAnchor5 = [v56 bottomAnchor];
      bottomAnchor6 = [(HSPCPasscodeEntryView *)self->_passcodeEntryView bottomAnchor];
      v49 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:10.0];
      v59 = v49;
      trailingAnchor = [NSArray arrayWithObjects:&v59 count:1];
      [NSLayoutConstraint activateConstraints:trailingAnchor];
    }
  }
}

- (void)_textDidChange:(id)change
{
  changeCopy = change;
  [(HSPCPasscodeEntryViewController *)self textDidChange:?];
  textChangeHandler = self->_textChangeHandler;
  if (textChangeHandler)
  {
    text = [changeCopy text];
    textChangeHandler[2](textChangeHandler, text);
  }

  text2 = [changeCopy text];
  v7 = [text2 length];
  numberOfDigits = [changeCopy numberOfDigits];

  if (v7 == numberOfDigits)
  {
    [(HSPCPasscodeEntryViewController *)self didCompleteTextEntry:changeCopy];
    textEntryCompletionHandler = self->_textEntryCompletionHandler;
    if (textEntryCompletionHandler)
    {
      text3 = [changeCopy text];
      textEntryCompletionHandler[2](textEntryCompletionHandler, text3);
    }
  }
}

- (void)_scrollToWells
{
  if ([(HSPCPasscodeEntryView *)self->_passcodeEntryView isFirstResponder])
  {
    contentView = [(HSPCPasscodeEntryViewController *)self contentView];
    superview = [contentView superview];
    [superview frame];
    v6 = v5;
    contentView2 = [(HSPCPasscodeEntryViewController *)self contentView];
    [contentView2 frame];
    v9 = v6 - v8;
    [(HSPCPasscodeEntryView *)self->_passcodeEntryView frame];
    v11 = v10;

    [(HSPCPasscodeEntryView *)self->_passcodeEntryView frame];
    if (v11 - v9 + v12 + 4.0 > 0.0)
    {

      [(HSPCPasscodeEntryViewController *)self setContentOffset:1 animated:0.0];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HSPCPasscodeEntryViewController;
  coordinatorCopy = coordinator;
  [(HSPCPasscodeEntryViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003A46C;
  v8[3] = &unk_1000C6FA0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)passcodeEntryViewDidBecomeFirstResponder:(id)responder
{
  if (self->_passcodeEntryView == responder)
  {
    [(HSPCPasscodeEntryViewController *)self _scrollToWells];
  }
}

@end