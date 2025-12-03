@interface TPSOutroTipCollectionViewCell
- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance;
- (TPSOutroTipCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setParallaxOffset:(CGPoint)offset;
- (void)updateConstraints;
@end

@implementation TPSOutroTipCollectionViewCell

- (TPSOutroTipCollectionViewCell)initWithFrame:(CGRect)frame
{
  v64.receiver = self;
  v64.super_class = TPSOutroTipCollectionViewCell;
  v3 = [(TPSBookendsCollectionViewCell *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(TPSOutroTipCollectionViewCell *)v3 contentView];
    contentScrollView = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    v6 = objc_alloc_init(UIView);
    standardAssetLayoutGuide = v4->_standardAssetLayoutGuide;
    v4->_standardAssetLayoutGuide = v6;

    [(UIView *)v4->_standardAssetLayoutGuide setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentScrollView addSubview:v4->_standardAssetLayoutGuide];
    heightAnchor = [(UIView *)v4->_standardAssetLayoutGuide heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:0.0];
    standardAssetLayoutGuideHeightConstraint = v4->_standardAssetLayoutGuideHeightConstraint;
    v4->_standardAssetLayoutGuideHeightConstraint = v9;

    [(NSLayoutConstraint *)v4->_standardAssetLayoutGuideHeightConstraint setActive:1];
    topAnchor = [(UIView *)v4->_standardAssetLayoutGuide topAnchor];
    v63 = contentScrollView;
    topAnchor2 = [contentScrollView topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    standardAssetLayoutGuideTopConstraint = v4->_standardAssetLayoutGuideTopConstraint;
    v4->_standardAssetLayoutGuideTopConstraint = v13;

    [(NSLayoutConstraint *)v4->_standardAssetLayoutGuideTopConstraint setActive:1];
    topAnchor3 = [(UIView *)v4->_standardAssetLayoutGuide topAnchor];
    titleLabel = [(TPSBaseTipCollectionViewCell *)v4 titleLabel];
    bottomAnchor = [titleLabel bottomAnchor];
    v18 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    standardAssetLayoutGuideToTitleTopConstraint = v4->_standardAssetLayoutGuideToTitleTopConstraint;
    v4->_standardAssetLayoutGuideToTitleTopConstraint = v18;

    widthAnchor = [(UIView *)v4->_standardAssetLayoutGuide widthAnchor];
    widthAnchor2 = [contentView widthAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v22 setActive:1];

    titleLabel2 = [(TPSBaseTipCollectionViewCell *)v4 titleLabel];
    contentLabel = [(TPSBaseTipCollectionViewCell *)v4 contentLabel];
    centerXAnchor = [contentLabel centerXAnchor];
    frameLayoutGuide = [contentScrollView frameLayoutGuide];
    centerXAnchor2 = [frameLayoutGuide centerXAnchor];
    v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    widthAnchor3 = [contentLabel widthAnchor];
    widthAnchor4 = [titleLabel2 widthAnchor];
    v59 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];

    topAnchor4 = [contentLabel topAnchor];
    bottomAnchor2 = [(UIView *)v4->_standardAssetLayoutGuide bottomAnchor];
    v31 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    contentLabelTopConstraint = v4->_contentLabelTopConstraint;
    v4->_contentLabelTopConstraint = v31;

    bottomAnchor3 = [contentLabel bottomAnchor];
    contentScrollView2 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    bottomAnchor4 = [contentScrollView2 bottomAnchor];
    v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    contentLabelBottomConstraint = v4->_contentLabelBottomConstraint;
    v4->_contentLabelBottomConstraint = v36;

    LODWORD(v38) = 1147224064;
    [(NSLayoutConstraint *)v4->_contentLabelBottomConstraint setPriority:v38];
    v66[0] = v4->_contentLabelTopConstraint;
    v66[1] = v60;
    v66[2] = v59;
    v66[3] = v4->_contentLabelBottomConstraint;
    v39 = [NSArray arrayWithObjects:v66 count:4];
    [(TPSBaseTipCollectionViewCell *)v4 setContentLabelConstraints:v39];

    [(TPSBaseTipCollectionViewCell *)v4 setNeedsTextView:0];
    contentTextView = [(TPSBaseTipCollectionViewCell *)v4 contentTextView];
    centerXAnchor3 = [contentTextView centerXAnchor];
    frameLayoutGuide2 = [v63 frameLayoutGuide];
    centerXAnchor4 = [frameLayoutGuide2 centerXAnchor];
    v44 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

    widthAnchor5 = [contentTextView widthAnchor];
    widthAnchor6 = [titleLabel2 widthAnchor];
    v47 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];

    topAnchor5 = [contentTextView topAnchor];
    bottomAnchor5 = [(UIView *)v4->_standardAssetLayoutGuide bottomAnchor];
    v50 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
    textViewTopConstraint = v4->_textViewTopConstraint;
    v4->_textViewTopConstraint = v50;

    bottomAnchor6 = [contentTextView bottomAnchor];
    contentScrollView3 = [(TPSBaseTipCollectionViewCell *)v4 contentScrollView];
    bottomAnchor7 = [contentScrollView3 bottomAnchor];
    v55 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    textViewBottomConstraint = v4->_textViewBottomConstraint;
    v4->_textViewBottomConstraint = v55;

    v65[0] = v4->_textViewTopConstraint;
    v65[1] = v44;
    v65[2] = v47;
    v65[3] = v4->_textViewBottomConstraint;
    v57 = [NSArray arrayWithObjects:v65 count:4];
    [(TPSBaseTipCollectionViewCell *)v4 setContentTextViewConstraints:v57];

    [(TPSBaseTipCollectionViewCell *)v4 updateFonts];
  }

  return v4;
}

- (void)setParallaxOffset:(CGPoint)offset
{
  x = offset.x;
  v6.receiver = self;
  v6.super_class = TPSOutroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v6 setParallaxOffset:offset.x, offset.y];
  titleLabelCenterXConstraint = [(TPSBookendsCollectionViewCell *)self titleLabelCenterXConstraint];
  [titleLabelCenterXConstraint setConstant:x * -4.0];
}

- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance
{
  tipCopy = tip;
  appearanceCopy = appearance;
  [appearanceCopy size];
  v9 = v8;
  v11 = v10;
  [(TPSBaseTipCollectionViewCell *)self cacheCellSize];
  v14 = v11 != v13 || v9 != v12;
  v15 = [(TPSBaseTipCollectionViewCell *)self tip];

  v19.receiver = self;
  v19.super_class = TPSOutroTipCollectionViewCell;
  [(TPSBookendsCollectionViewCell *)&v19 setTip:tipCopy withCellAppearance:appearanceCopy];

  if (v15 != tipCopy || v14)
  {
    v16 = +[TPSImageAssetView defaultBackgroundColor];
    contentScrollView = [(TPSBaseTipCollectionViewCell *)self contentScrollView];
    [contentScrollView setBackgroundColor:v16];

    -[TPSBaseTipCollectionViewCell setNeedsTextView:](self, "setNeedsTextView:", [tipCopy containsLinks]);
    if (v14)
    {
      [(TPSOutroTipCollectionViewCell *)self setNeedsUpdateConstraints];
    }
  }

  return v15 != tipCopy;
}

- (void)updateConstraints
{
  [(TPSBaseTipCollectionViewCell *)self bottomPadding];
  v4 = v3;
  [(NSLayoutConstraint *)self->_contentLabelBottomConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_textViewBottomConstraint setConstant:v4];
  cellAppearance = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  [cellAppearance outroTextLabelTopPadding];
  v7 = v6;

  [(NSLayoutConstraint *)self->_contentLabelTopConstraint setConstant:v7];
  [(NSLayoutConstraint *)self->_textViewTopConstraint setConstant:v7];
  cellAppearance2 = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  [cellAppearance2 assetHeight];
  [(NSLayoutConstraint *)self->_standardAssetLayoutGuideHeightConstraint setConstant:?];

  v9.receiver = self;
  v9.super_class = TPSOutroTipCollectionViewCell;
  [(TPSBookendsCollectionViewCell *)&v9 updateConstraints];
  [(NSLayoutConstraint *)self->_standardAssetLayoutGuideTopConstraint setActive:[(TPSBookendsCollectionViewCell *)self bookendAssetUnderTitle]^ 1];
  [(NSLayoutConstraint *)self->_standardAssetLayoutGuideToTitleTopConstraint setActive:[(TPSBookendsCollectionViewCell *)self bookendAssetUnderTitle]];
}

@end