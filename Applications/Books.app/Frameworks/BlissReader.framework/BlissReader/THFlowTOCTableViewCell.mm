@interface THFlowTOCTableViewCell
- (THFlowTOCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)p_setupConstraints;
- (void)p_setupContentView;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)startProgressIndicator;
- (void)stopProgressIndicator;
- (void)updateBackgroundImage;
- (void)updateConstraintsWithConfiguration:(id)configuration;
- (void)updateOrdinalLabelFrame:(CGRect)frame;
- (void)updatePageNumberLabelWidth:(double)width;
@end

@implementation THFlowTOCTableViewCell

- (THFlowTOCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = THFlowTOCTableViewCell;
  v4 = [(THFlowTOCTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(THFlowTOCTableViewCell *)v4 setSelectionStyle:0];
    [(THFlowTOCTableViewCell *)v5 p_setupContentView];
  }

  return v5;
}

- (void)prepareForReuse
{
  [(THFlowTOCTableViewCell *)self setDelegate:0];
  openCloseButton = [(THFlowTOCTableViewCell *)self openCloseButton];
  [openCloseButton setHidden:1];

  activityIndicatorView = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [activityIndicatorView setHidden:1];

  pageNumberLabel = [(THFlowTOCTableViewCell *)self pageNumberLabel];
  [pageNumberLabel setHidden:1];

  v6.receiver = self;
  v6.super_class = THFlowTOCTableViewCell;
  [(THFlowTOCTableViewCell *)&v6 prepareForReuse];
}

- (void)updateBackgroundImage
{
  backgroundView = [(THFlowTOCTableViewCell *)self backgroundView];

  if (!backgroundView)
  {
    v4 = [UIView alloc];
    [(THFlowTOCTableViewCell *)self frame];
    v5 = [v4 initWithFrame:?];
    [(THFlowTOCTableViewCell *)self setBackgroundView:v5];
  }

  delegate = [(THFlowTOCTableViewCell *)self delegate];
  v7 = [delegate tableViewCellShouldStayHighlighted:self];

  v8 = [(THFlowTOCTableViewCell *)self isHighlighted]| v7;
  delegate2 = [(THFlowTOCTableViewCell *)self delegate];
  [delegate2 tableViewCell:self hideSeparators:v8 & 1];

  delegate3 = [(THFlowTOCTableViewCell *)self delegate];
  v10 = [delegate3 tableViewCellBackgroundColor:self];
  backgroundView2 = [(THFlowTOCTableViewCell *)self backgroundView];
  [backgroundView2 setBackgroundColor:v10];
}

- (void)startProgressIndicator
{
  openCloseButton = [(THFlowTOCTableViewCell *)self openCloseButton];
  [openCloseButton setAlpha:1.0];

  activityIndicatorView = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [activityIndicatorView setAlpha:0.0];

  activityIndicatorView2 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [activityIndicatorView2 setHidden:0];

  activityIndicatorView3 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [activityIndicatorView3 startAnimating];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C79F8;
  v8[3] = &unk_45AD60;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C7A68;
  v7[3] = &unk_45ADD8;
  v7[4] = self;
  [UIView animateWithDuration:0 delay:v8 options:v7 animations:0.0 completion:0.25];
}

- (void)stopProgressIndicator
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_C7B84;
  v3[3] = &unk_45AD60;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_C7BF4;
  v2[3] = &unk_45ADD8;
  v2[4] = self;
  [UIView animateWithDuration:4 delay:v3 options:v2 animations:0.0 completion:0.0];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = THFlowTOCTableViewCell;
  [(THFlowTOCTableViewCell *)&v6 setHighlighted:highlighted animated:animated];
  delegate = [(THFlowTOCTableViewCell *)self delegate];
  [delegate tableViewCellHighlightDidChange:self];

  [(THFlowTOCTableViewCell *)self updateBackgroundImage];
}

- (void)p_setupContentView
{
  if (self->mOrdinalLabel)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupContentView]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:226 description:{@"expected nil value for '%s'", "mOrdinalLabel"}];
  }

  v6 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mOrdinalLabel = self->mOrdinalLabel;
  self->mOrdinalLabel = v10;

  contentView = [(THFlowTOCTableViewCell *)self contentView];
  [contentView addSubview:self->mOrdinalLabel];

  if (self->mRowLabel)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupContentView]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:230 description:{@"expected nil value for '%s'", "mRowLabel"}];
  }

  v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mRowLabel = self->mRowLabel;
  self->mRowLabel = v16;

  contentView2 = [(THFlowTOCTableViewCell *)self contentView];
  [contentView2 addSubview:self->mRowLabel];

  if (self->mPageNumberLabel)
  {
    v19 = +[TSUAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupContentView]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v19 handleFailureInFunction:v20 file:v21 lineNumber:234 description:{@"expected nil value for '%s'", "mPageNumberLabel"}];
  }

  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mPageNumberLabel = self->mPageNumberLabel;
  self->mPageNumberLabel = v22;

  [(UILabel *)self->mPageNumberLabel setHidden:1];
  contentView3 = [(THFlowTOCTableViewCell *)self contentView];
  [contentView3 addSubview:self->mPageNumberLabel];

  if (self->mOpenCloseButton)
  {
    v25 = +[TSUAssertionHandler currentHandler];
    v26 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupContentView]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v25 handleFailureInFunction:v26 file:v27 lineNumber:239 description:{@"expected nil value for '%s'", "mOpenCloseButton"}];
  }

  v28 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mOpenCloseButton = self->mOpenCloseButton;
  self->mOpenCloseButton = v28;

  [(UIButton *)self->mOpenCloseButton setHidden:1];
  contentView4 = [(THFlowTOCTableViewCell *)self contentView];
  [contentView4 addSubview:self->mOpenCloseButton];

  if (self->mActivityIndicatorView)
  {
    v31 = +[TSUAssertionHandler currentHandler];
    v32 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupContentView]"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v31 handleFailureInFunction:v32 file:v33 lineNumber:244 description:{@"expected nil value for '%s'", "mActivityIndicatorView"}];
  }

  v34 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  mActivityIndicatorView = self->mActivityIndicatorView;
  self->mActivityIndicatorView = v34;

  [(UIActivityIndicatorView *)self->mActivityIndicatorView setHidden:1];
  contentView5 = [(THFlowTOCTableViewCell *)self contentView];
  [contentView5 addSubview:self->mActivityIndicatorView];

  [(THFlowTOCTableViewCell *)self p_setupConstraints];
}

- (void)p_setupConstraints
{
  if (self->mOrdinalLabelLeadingConstraint)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:259 description:{@"expected nil value for '%s'", "mOrdinalLabelLeadingConstraint"}];
  }

  if (self->mOrdinalLabelWidthConstraint)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:260 description:{@"expected nil value for '%s'", "mOrdinalLabelWidthConstraint"}];
  }

  if (self->mRowLabelLeadingConstraint)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:261 description:{@"expected nil value for '%s'", "mRowLabelLeadingConstraint"}];
  }

  if (self->mPageNumberLabelTrailingConstraint)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:262 description:{@"expected nil value for '%s'", "mPageNumberLabelTrailingConstraint"}];
  }

  if (self->mPageNumberLabelWidthConstraint)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:263 description:{@"expected nil value for '%s'", "mPageNumberLabelWidthConstraint"}];
  }

  if (self->mOpenCloseButtonTrailingConstraint)
  {
    v18 = +[TSUAssertionHandler currentHandler];
    v19 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:264 description:{@"expected nil value for '%s'", "mOpenCloseButtonTrailingConstraint"}];
  }

  if (self->mOpenCloseButtonWidthConstraint)
  {
    v21 = +[TSUAssertionHandler currentHandler];
    v22 = [NSString stringWithUTF8String:"[THFlowTOCTableViewCell p_setupConstraints]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowTOCViewController.m"];
    [v21 handleFailureInFunction:v22 file:v23 lineNumber:265 description:{@"expected nil value for '%s'", "mOpenCloseButtonWidthConstraint"}];
  }

  [(UILabel *)self->mOrdinalLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->mRowLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->mPageNumberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->mOpenCloseButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->mActivityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(THFlowTOCTableViewCell *)self contentView];
  topAnchor = [(UILabel *)self->mOrdinalLabel topAnchor];
  topAnchor2 = [contentView topAnchor];
  v82 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v85[0] = v82;
  bottomAnchor = [(UILabel *)self->mOrdinalLabel bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v78 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v85[1] = v78;
  leadingAnchor = [(UILabel *)self->mOrdinalLabel leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  mOrdinalLabelLeadingConstraint = self->mOrdinalLabelLeadingConstraint;
  self->mOrdinalLabelLeadingConstraint = v25;

  v85[2] = v25;
  widthAnchor = [(UILabel *)self->mOrdinalLabel widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:0.0];
  mOrdinalLabelWidthConstraint = self->mOrdinalLabelWidthConstraint;
  self->mOrdinalLabelWidthConstraint = v27;

  v85[3] = v27;
  topAnchor3 = [(UIButton *)self->mOpenCloseButton topAnchor];
  topAnchor4 = [contentView topAnchor];
  v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v85[4] = v71;
  bottomAnchor3 = [(UIButton *)self->mOpenCloseButton bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v68 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v85[5] = v68;
  trailingAnchor = [(UIButton *)self->mOpenCloseButton trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  mOpenCloseButtonTrailingConstraint = self->mOpenCloseButtonTrailingConstraint;
  self->mOpenCloseButtonTrailingConstraint = v29;

  v85[6] = v29;
  widthAnchor2 = [(UIButton *)self->mOpenCloseButton widthAnchor];
  v31 = [widthAnchor2 constraintEqualToConstant:0.0];
  mOpenCloseButtonWidthConstraint = self->mOpenCloseButtonWidthConstraint;
  self->mOpenCloseButtonWidthConstraint = v31;

  v85[7] = v31;
  topAnchor5 = [(UILabel *)self->mPageNumberLabel topAnchor];
  topAnchor6 = [contentView topAnchor];
  v62 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v85[8] = v62;
  bottomAnchor5 = [(UILabel *)self->mPageNumberLabel bottomAnchor];
  bottomAnchor6 = [contentView bottomAnchor];
  v59 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v85[9] = v59;
  trailingAnchor3 = [(UILabel *)self->mPageNumberLabel trailingAnchor];
  leadingAnchor3 = [(UIButton *)self->mOpenCloseButton leadingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3];
  mPageNumberLabelTrailingConstraint = self->mPageNumberLabelTrailingConstraint;
  self->mPageNumberLabelTrailingConstraint = v33;

  v85[10] = v33;
  widthAnchor3 = [(UILabel *)self->mPageNumberLabel widthAnchor];
  v35 = [widthAnchor3 constraintEqualToConstant:0.0];
  mPageNumberLabelWidthConstraint = self->mPageNumberLabelWidthConstraint;
  self->mPageNumberLabelWidthConstraint = v35;

  v85[11] = v35;
  centerXAnchor = [(UIActivityIndicatorView *)self->mActivityIndicatorView centerXAnchor];
  centerXAnchor2 = [(UIButton *)self->mOpenCloseButton centerXAnchor];
  v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v85[12] = v54;
  centerYAnchor = [(UIActivityIndicatorView *)self->mActivityIndicatorView centerYAnchor];
  centerYAnchor2 = [(UIButton *)self->mOpenCloseButton centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v85[13] = v51;
  topAnchor7 = [(UILabel *)self->mRowLabel topAnchor];
  v58 = contentView;
  topAnchor8 = [contentView topAnchor];
  v37 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v85[14] = v37;
  bottomAnchor7 = [(UILabel *)self->mRowLabel bottomAnchor];
  bottomAnchor8 = [contentView bottomAnchor];
  v40 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v85[15] = v40;
  leadingAnchor4 = [(UILabel *)self->mRowLabel leadingAnchor];
  trailingAnchor4 = [(UILabel *)self->mOrdinalLabel trailingAnchor];
  v43 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4];
  mRowLabelLeadingConstraint = self->mRowLabelLeadingConstraint;
  self->mRowLabelLeadingConstraint = v43;

  v85[16] = v43;
  trailingAnchor5 = [(UILabel *)self->mRowLabel trailingAnchor];
  leadingAnchor5 = [(UILabel *)self->mPageNumberLabel leadingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5];
  v85[17] = v47;
  v48 = [NSArray arrayWithObjects:v85 count:18];
  [NSLayoutConstraint activateConstraints:v48];
}

- (void)updateConstraintsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy sectionLabelRightMargin];
  v6 = v5;
  [configurationCopy discloseButtonLeftMargin];
  [(NSLayoutConstraint *)self->mPageNumberLabelTrailingConstraint setConstant:-(v6 + v7)];
  [configurationCopy discloseButtonRightMargin];
  [(NSLayoutConstraint *)self->mOpenCloseButtonTrailingConstraint setConstant:-v8];
  [configurationCopy discloseButtonWidth];
  v10 = v9;

  [(NSLayoutConstraint *)self->mOpenCloseButtonWidthConstraint setConstant:v10];
  contentView = [(THFlowTOCTableViewCell *)self contentView];
  [contentView setNeedsLayout];
}

- (void)updateOrdinalLabelFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(NSLayoutConstraint *)self->mOrdinalLabelLeadingConstraint setConstant:CGRectGetMinX(frame)];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetWidth(v11);
  mOrdinalLabelWidthConstraint = self->mOrdinalLabelWidthConstraint;

  [(NSLayoutConstraint *)mOrdinalLabelWidthConstraint setConstant:v8];
}

- (void)updatePageNumberLabelWidth:(double)width
{
  [(NSLayoutConstraint *)self->mPageNumberLabelWidthConstraint constant];
  if (v5 != width)
  {
    [(NSLayoutConstraint *)self->mPageNumberLabelWidthConstraint setConstant:width];
    superview = [(UILabel *)self->mPageNumberLabel superview];
    [superview setNeedsLayout];

    [(UILabel *)self->mPageNumberLabel setNeedsLayout];
    mRowLabel = self->mRowLabel;

    [(UILabel *)mRowLabel setNeedsLayout];
  }
}

@end