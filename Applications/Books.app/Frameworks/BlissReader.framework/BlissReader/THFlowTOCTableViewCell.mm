@interface THFlowTOCTableViewCell
- (THFlowTOCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)p_setupConstraints;
- (void)p_setupContentView;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)startProgressIndicator;
- (void)stopProgressIndicator;
- (void)updateBackgroundImage;
- (void)updateConstraintsWithConfiguration:(id)a3;
- (void)updateOrdinalLabelFrame:(CGRect)a3;
- (void)updatePageNumberLabelWidth:(double)a3;
@end

@implementation THFlowTOCTableViewCell

- (THFlowTOCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = THFlowTOCTableViewCell;
  v4 = [(THFlowTOCTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(THFlowTOCTableViewCell *)self openCloseButton];
  [v3 setHidden:1];

  v4 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [v4 setHidden:1];

  v5 = [(THFlowTOCTableViewCell *)self pageNumberLabel];
  [v5 setHidden:1];

  v6.receiver = self;
  v6.super_class = THFlowTOCTableViewCell;
  [(THFlowTOCTableViewCell *)&v6 prepareForReuse];
}

- (void)updateBackgroundImage
{
  v3 = [(THFlowTOCTableViewCell *)self backgroundView];

  if (!v3)
  {
    v4 = [UIView alloc];
    [(THFlowTOCTableViewCell *)self frame];
    v5 = [v4 initWithFrame:?];
    [(THFlowTOCTableViewCell *)self setBackgroundView:v5];
  }

  v6 = [(THFlowTOCTableViewCell *)self delegate];
  v7 = [v6 tableViewCellShouldStayHighlighted:self];

  v8 = [(THFlowTOCTableViewCell *)self isHighlighted]| v7;
  v9 = [(THFlowTOCTableViewCell *)self delegate];
  [v9 tableViewCell:self hideSeparators:v8 & 1];

  v12 = [(THFlowTOCTableViewCell *)self delegate];
  v10 = [v12 tableViewCellBackgroundColor:self];
  v11 = [(THFlowTOCTableViewCell *)self backgroundView];
  [v11 setBackgroundColor:v10];
}

- (void)startProgressIndicator
{
  v3 = [(THFlowTOCTableViewCell *)self openCloseButton];
  [v3 setAlpha:1.0];

  v4 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [v4 setAlpha:0.0];

  v5 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [v5 setHidden:0];

  v6 = [(THFlowTOCTableViewCell *)self activityIndicatorView];
  [v6 startAnimating];

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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = THFlowTOCTableViewCell;
  [(THFlowTOCTableViewCell *)&v6 setHighlighted:a3 animated:a4];
  v5 = [(THFlowTOCTableViewCell *)self delegate];
  [v5 tableViewCellHighlightDidChange:self];

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

  v12 = [(THFlowTOCTableViewCell *)self contentView];
  [v12 addSubview:self->mOrdinalLabel];

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

  v18 = [(THFlowTOCTableViewCell *)self contentView];
  [v18 addSubview:self->mRowLabel];

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
  v24 = [(THFlowTOCTableViewCell *)self contentView];
  [v24 addSubview:self->mPageNumberLabel];

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
  v30 = [(THFlowTOCTableViewCell *)self contentView];
  [v30 addSubview:self->mOpenCloseButton];

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
  v36 = [(THFlowTOCTableViewCell *)self contentView];
  [v36 addSubview:self->mActivityIndicatorView];

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
  v24 = [(THFlowTOCTableViewCell *)self contentView];
  v84 = [(UILabel *)self->mOrdinalLabel topAnchor];
  v83 = [v24 topAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v85[0] = v82;
  v81 = [(UILabel *)self->mOrdinalLabel bottomAnchor];
  v80 = [v24 bottomAnchor];
  v78 = [v81 constraintEqualToAnchor:v80];
  v85[1] = v78;
  v76 = [(UILabel *)self->mOrdinalLabel leadingAnchor];
  v75 = [v24 leadingAnchor];
  v25 = [v76 constraintEqualToAnchor:v75];
  mOrdinalLabelLeadingConstraint = self->mOrdinalLabelLeadingConstraint;
  self->mOrdinalLabelLeadingConstraint = v25;

  v85[2] = v25;
  v79 = [(UILabel *)self->mOrdinalLabel widthAnchor];
  v27 = [v79 constraintEqualToConstant:0.0];
  mOrdinalLabelWidthConstraint = self->mOrdinalLabelWidthConstraint;
  self->mOrdinalLabelWidthConstraint = v27;

  v85[3] = v27;
  v74 = [(UIButton *)self->mOpenCloseButton topAnchor];
  v72 = [v24 topAnchor];
  v71 = [v74 constraintEqualToAnchor:v72];
  v85[4] = v71;
  v70 = [(UIButton *)self->mOpenCloseButton bottomAnchor];
  v69 = [v24 bottomAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v85[5] = v68;
  v67 = [(UIButton *)self->mOpenCloseButton trailingAnchor];
  v66 = [v24 trailingAnchor];
  v29 = [v67 constraintEqualToAnchor:v66];
  mOpenCloseButtonTrailingConstraint = self->mOpenCloseButtonTrailingConstraint;
  self->mOpenCloseButtonTrailingConstraint = v29;

  v85[6] = v29;
  v65 = [(UIButton *)self->mOpenCloseButton widthAnchor];
  v31 = [v65 constraintEqualToConstant:0.0];
  mOpenCloseButtonWidthConstraint = self->mOpenCloseButtonWidthConstraint;
  self->mOpenCloseButtonWidthConstraint = v31;

  v85[7] = v31;
  v64 = [(UILabel *)self->mPageNumberLabel topAnchor];
  v63 = [v24 topAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v85[8] = v62;
  v61 = [(UILabel *)self->mPageNumberLabel bottomAnchor];
  v60 = [v24 bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v85[9] = v59;
  v57 = [(UILabel *)self->mPageNumberLabel trailingAnchor];
  v56 = [(UIButton *)self->mOpenCloseButton leadingAnchor];
  v33 = [v57 constraintEqualToAnchor:v56];
  mPageNumberLabelTrailingConstraint = self->mPageNumberLabelTrailingConstraint;
  self->mPageNumberLabelTrailingConstraint = v33;

  v85[10] = v33;
  v77 = [(UILabel *)self->mPageNumberLabel widthAnchor];
  v35 = [v77 constraintEqualToConstant:0.0];
  mPageNumberLabelWidthConstraint = self->mPageNumberLabelWidthConstraint;
  self->mPageNumberLabelWidthConstraint = v35;

  v85[11] = v35;
  v73 = [(UIActivityIndicatorView *)self->mActivityIndicatorView centerXAnchor];
  v55 = [(UIButton *)self->mOpenCloseButton centerXAnchor];
  v54 = [v73 constraintEqualToAnchor:v55];
  v85[12] = v54;
  v53 = [(UIActivityIndicatorView *)self->mActivityIndicatorView centerYAnchor];
  v52 = [(UIButton *)self->mOpenCloseButton centerYAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v85[13] = v51;
  v50 = [(UILabel *)self->mRowLabel topAnchor];
  v58 = v24;
  v49 = [v24 topAnchor];
  v37 = [v50 constraintEqualToAnchor:v49];
  v85[14] = v37;
  v38 = [(UILabel *)self->mRowLabel bottomAnchor];
  v39 = [v24 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v85[15] = v40;
  v41 = [(UILabel *)self->mRowLabel leadingAnchor];
  v42 = [(UILabel *)self->mOrdinalLabel trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  mRowLabelLeadingConstraint = self->mRowLabelLeadingConstraint;
  self->mRowLabelLeadingConstraint = v43;

  v85[16] = v43;
  v45 = [(UILabel *)self->mRowLabel trailingAnchor];
  v46 = [(UILabel *)self->mPageNumberLabel leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v85[17] = v47;
  v48 = [NSArray arrayWithObjects:v85 count:18];
  [NSLayoutConstraint activateConstraints:v48];
}

- (void)updateConstraintsWithConfiguration:(id)a3
{
  v4 = a3;
  [v4 sectionLabelRightMargin];
  v6 = v5;
  [v4 discloseButtonLeftMargin];
  [(NSLayoutConstraint *)self->mPageNumberLabelTrailingConstraint setConstant:-(v6 + v7)];
  [v4 discloseButtonRightMargin];
  [(NSLayoutConstraint *)self->mOpenCloseButtonTrailingConstraint setConstant:-v8];
  [v4 discloseButtonWidth];
  v10 = v9;

  [(NSLayoutConstraint *)self->mOpenCloseButtonWidthConstraint setConstant:v10];
  v11 = [(THFlowTOCTableViewCell *)self contentView];
  [v11 setNeedsLayout];
}

- (void)updateOrdinalLabelFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NSLayoutConstraint *)self->mOrdinalLabelLeadingConstraint setConstant:CGRectGetMinX(a3)];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetWidth(v11);
  mOrdinalLabelWidthConstraint = self->mOrdinalLabelWidthConstraint;

  [(NSLayoutConstraint *)mOrdinalLabelWidthConstraint setConstant:v8];
}

- (void)updatePageNumberLabelWidth:(double)a3
{
  [(NSLayoutConstraint *)self->mPageNumberLabelWidthConstraint constant];
  if (v5 != a3)
  {
    [(NSLayoutConstraint *)self->mPageNumberLabelWidthConstraint setConstant:a3];
    v6 = [(UILabel *)self->mPageNumberLabel superview];
    [v6 setNeedsLayout];

    [(UILabel *)self->mPageNumberLabel setNeedsLayout];
    mRowLabel = self->mRowLabel;

    [(UILabel *)mRowLabel setNeedsLayout];
  }
}

@end