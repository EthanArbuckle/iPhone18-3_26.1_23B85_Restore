@interface StewieAssetCell
- (StewieAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (StewieDemoPresenterDelegate)delegate;
- (void)configureTryOutButton;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setUpConstraints;
- (void)tryOutButtonWasTapped:(id)tapped;
@end

@implementation StewieAssetCell

- (StewieAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v21.receiver = self;
  v21.super_class = StewieAssetCell;
  v5 = [(StewieAssetCell *)&v21 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [UIImageView alloc];
    v7 = +[SOSUtilities stewieGroupAsset];
    v8 = [v6 initWithImage:v7];
    assetView = v5->assetView;
    v5->assetView = v8;

    v10 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v14 = [v10 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    tryOutText = v5->tryOutText;
    v5->tryOutText = v14;

    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    separatorLine = v5->separatorLine;
    v5->separatorLine = v16;

    v18 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    tryOutButton = v5->tryOutButton;
    v5->tryOutButton = v18;

    [(StewieAssetCell *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  [(UIView *)self->assetView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->assetView setContentMode:1];
  contentView = [(StewieAssetCell *)self contentView];
  [contentView addSubview:self->assetView];

  [(UILabel *)self->tryOutText setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[SOSUtilities stewieDemoCellText];
  [(UILabel *)self->tryOutText setText:v4];

  [(UILabel *)self->tryOutText setNumberOfLines:0];
  contentView2 = [(StewieAssetCell *)self contentView];
  [contentView2 addSubview:self->tryOutText];

  [(UIView *)self->separatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(StewieAssetCell *)self contentView];
  [contentView3 addSubview:self->separatorLine];

  v7 = +[UIColor separatorColor];
  [(UIView *)self->separatorLine setBackgroundColor:v7];

  contentView4 = [(StewieAssetCell *)self contentView];
  [contentView4 addSubview:self->tryOutButton];

  [(StewieAssetCell *)self configureTryOutButton];
  [(StewieAssetCell *)self setSelectionStyle:0];
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tryOutButtonWasTapped:"];
  contentView5 = [(StewieAssetCell *)self contentView];
  [contentView5 addGestureRecognizer:v9];

  assetView = self->assetView;
  if (assetView)
  {
    topAnchor = [(UIView *)assetView topAnchor];
    contentView6 = [(StewieAssetCell *)self contentView];
    topAnchor2 = [contentView6 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];
    v63[0] = v59;
    leadingAnchor = [(UIView *)self->assetView leadingAnchor];
    contentView7 = [(StewieAssetCell *)self contentView];
    leadingAnchor2 = [contentView7 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
    v63[1] = v55;
    widthAnchor = [(UIView *)self->assetView widthAnchor];
    v53 = [widthAnchor constraintGreaterThanOrEqualToConstant:36.0];
    v63[2] = v53;
    contentView8 = [(StewieAssetCell *)self contentView];
    bottomAnchor = [contentView8 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->assetView bottomAnchor];
    v49 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v63[3] = v49;
    topAnchor3 = [(UILabel *)self->tryOutText topAnchor];
    topAnchor4 = [(UIView *)self->assetView topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v63[4] = v46;
    leadingAnchor3 = [(UILabel *)self->tryOutText leadingAnchor];
    trailingAnchor = [(UIView *)self->assetView trailingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:11.0];
    v63[5] = v43;
    contentView9 = [(StewieAssetCell *)self contentView];
    trailingAnchor2 = [contentView9 trailingAnchor];
    trailingAnchor3 = [(UILabel *)self->tryOutText trailingAnchor];
    v39 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:13.0];
    v63[6] = v39;
    heightAnchor = [(UIView *)self->separatorLine heightAnchor];
    v37 = [heightAnchor constraintEqualToConstant:0.5];
    v63[7] = v37;
    topAnchor5 = [(UIView *)self->separatorLine topAnchor];
    bottomAnchor3 = [(UILabel *)self->tryOutText bottomAnchor];
    v34 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:11.0];
    v63[8] = v34;
    leadingAnchor4 = [(UIView *)self->separatorLine leadingAnchor];
    leadingAnchor5 = [(UILabel *)self->tryOutText leadingAnchor];
    v31 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v63[9] = v31;
    contentView10 = [(StewieAssetCell *)self contentView];
    trailingAnchor4 = [contentView10 trailingAnchor];
    trailingAnchor5 = [(UIView *)self->separatorLine trailingAnchor];
    v27 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v63[10] = v27;
    topAnchor6 = [(UIButton *)self->tryOutButton topAnchor];
    bottomAnchor4 = [(UIView *)self->separatorLine bottomAnchor];
    v24 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    v63[11] = v24;
    leadingAnchor6 = [(UIButton *)self->tryOutButton leadingAnchor];
    leadingAnchor7 = [(UIView *)self->separatorLine leadingAnchor];
    v21 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v63[12] = v21;
    contentView11 = [(StewieAssetCell *)self contentView];
    trailingAnchor6 = [contentView11 trailingAnchor];
    trailingAnchor7 = [(UIButton *)self->tryOutButton trailingAnchor];
    v15 = [trailingAnchor6 constraintGreaterThanOrEqualToAnchor:trailingAnchor7 constant:13.0];
    v63[13] = v15;
    contentView12 = [(StewieAssetCell *)self contentView];
    bottomAnchor5 = [contentView12 bottomAnchor];
    bottomAnchor6 = [(UIButton *)self->tryOutButton bottomAnchor];
    v19 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:10.0];
    v63[14] = v19;
    v20 = [NSArray arrayWithObjects:v63 count:15];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)configureTryOutButton
{
  [(UIButton *)self->tryOutButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIButtonConfiguration plainButtonConfiguration];
  v3 = +[SOSUtilities stewieDemoButtonTitle];
  [v4 setTitle:v3];

  [v4 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  [(UIButton *)self->tryOutButton setConfiguration:v4];
  [(UIButton *)self->tryOutButton addTarget:self action:"tryOutButtonWasTapped:" forEvents:64];
}

- (void)tryOutButtonWasTapped:(id)tapped
{
  delegate = [(StewieAssetCell *)self delegate];
  [delegate presentStewieTryOutModeIfPossible];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5 = [specifier propertyForKey:@"StewieSectionDemoDelegate"];
  nonretainedObjectValue = [v5 nonretainedObjectValue];
  [(StewieAssetCell *)self setDelegate:nonretainedObjectValue];
}

- (StewieDemoPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end