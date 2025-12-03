@interface TPSBookendsCollectionViewCell
- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance;
- (TPSBookendsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)updateConstraints;
@end

@implementation TPSBookendsCollectionViewCell

- (TPSBookendsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = TPSBookendsCollectionViewCell;
  v3 = [(TPSBaseTipCollectionViewCell *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[TPSAppearance defaultBackgroundColor];
    [(TPSBaseTipCollectionViewCell *)v3 setNoImageBackgroundColorOverride:v4];

    heroAssetView = [(TPSBaseTipCollectionViewCell *)v3 heroAssetView];
    titleLabel = [(TPSBaseTipCollectionViewCell *)v3 titleLabel];
    contentScrollView = [(TPSBaseTipCollectionViewCell *)v3 contentScrollView];
    topAnchor = [heroAssetView topAnchor];
    topAnchor2 = [contentScrollView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v10 setActive:1];

    widthAnchor = [heroAssetView widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:0.0];
    heroAssetViewWidthConstraint = v3->_heroAssetViewWidthConstraint;
    v3->_heroAssetViewWidthConstraint = v12;

    [(NSLayoutConstraint *)v3->_heroAssetViewWidthConstraint setActive:1];
    heightAnchor = [heroAssetView heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:0.0];
    [(TPSBaseTipCollectionViewCell *)v3 setAssetViewHeightConstraint:v15];

    assetViewHeightConstraint = [(TPSBaseTipCollectionViewCell *)v3 assetViewHeightConstraint];
    [assetViewHeightConstraint setActive:1];

    centerXAnchor = [heroAssetView centerXAnchor];
    centerXAnchor2 = [contentScrollView centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    [v19 setActive:1];
    [(TPSBaseTipCollectionViewCell *)v3 setAssetViewLayoutGuideCenterXConstraint:v19];
    v20 = +[UIColor clearColor];
    [titleLabel setBackgroundColor:v20];

    frameLayoutGuide = [contentScrollView frameLayoutGuide];
    centerXAnchor3 = [titleLabel centerXAnchor];
    centerXAnchor4 = [frameLayoutGuide centerXAnchor];
    v24 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    titleLabelCenterXConstraint = v3->_titleLabelCenterXConstraint;
    v3->_titleLabelCenterXConstraint = v24;

    [(NSLayoutConstraint *)v3->_titleLabelCenterXConstraint setActive:1];
    widthAnchor2 = [titleLabel widthAnchor];
    widthAnchor3 = [frameLayoutGuide widthAnchor];
    v28 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    titleLabelWidthConstraint = v3->_titleLabelWidthConstraint;
    v3->_titleLabelWidthConstraint = v28;

    [(NSLayoutConstraint *)v3->_titleLabelWidthConstraint setActive:1];
    topAnchor3 = [titleLabel topAnchor];
    topAnchor4 = [contentScrollView topAnchor];
    v32 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:40.0];
    [v32 setActive:1];

    [(TPSBaseTipCollectionViewCell *)v3 updateFonts];
  }

  return v3;
}

- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance
{
  tipCopy = tip;
  appearanceCopy = appearance;
  [appearanceCopy size];
  v9 = v8;
  v11 = v10;
  [(TPSBaseTipCollectionViewCell *)self cacheCellSize];
  v14 = v11 == v13 && v9 == v12;
  v29.receiver = self;
  v29.super_class = TPSBookendsCollectionViewCell;
  v15 = [(TPSBaseTipCollectionViewCell *)&v29 setTip:tipCopy withCellAppearance:appearanceCopy];
  isOutro = [tipCopy isOutro];
  v17 = 1.0;
  if (isOutro)
  {
    [appearanceCopy outroWidthMultiplier];
    v17 = -v18;
  }

  [(TPSBaseTipCollectionViewCell *)self setImageParallaxMultiplier:v17];
  titleLabel = [(TPSBaseTipCollectionViewCell *)self titleLabel];
  [titleLabel setAccessibilityIgnoresInvertColors:0];

  contentLabel = [(TPSBaseTipCollectionViewCell *)self contentLabel];
  [contentLabel setAccessibilityIgnoresInvertColors:0];

  fullContent = [tipCopy fullContent];
  labelStyle = [fullContent labelStyle];

  if (labelStyle)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[TPSAppearance defaultLabelColor];
  }
  v23 = ;
  titleLabel2 = [(TPSBaseTipCollectionViewCell *)self titleLabel];
  [titleLabel2 setTextColor:v23];

  titleLabel3 = [(TPSBaseTipCollectionViewCell *)self titleLabel];
  textColor = [titleLabel3 textColor];
  contentLabel2 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
  [contentLabel2 setTextColor:textColor];

  if (!v14)
  {
    [(TPSBookendsCollectionViewCell *)self setNeedsUpdateConstraints];
  }

  return v15;
}

- (void)updateConstraints
{
  v16.receiver = self;
  v16.super_class = TPSBookendsCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v16 updateConstraints];
  cellAppearance = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  [cellAppearance size];
  v5 = v4;
  [cellAppearance bookendsHeightMultiplier];
  v7 = v6;
  [cellAppearance size];
  v9 = v8;
  v10 = [(TPSBaseTipCollectionViewCell *)self tip];
  if ([v10 isOutro])
  {
    [cellAppearance outroWidthMultiplier];
    v12 = v11;

    if (v12 != 0.0)
    {
      [cellAppearance outroWidthMultiplier];
      v9 = v9 * v13;
    }
  }

  else
  {
  }

  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [heroAssetView setAspectFillAsset:1];

  [(NSLayoutConstraint *)self->_heroAssetViewWidthConstraint setConstant:v9];
  [(NSLayoutConstraint *)self->_heroAssetViewHeightConstraint setConstant:ceil(v5 * v7)];
  [cellAppearance bookendsContentSidePadding];
  [(NSLayoutConstraint *)self->_titleLabelWidthConstraint setConstant:v15 * -2.0];
}

@end