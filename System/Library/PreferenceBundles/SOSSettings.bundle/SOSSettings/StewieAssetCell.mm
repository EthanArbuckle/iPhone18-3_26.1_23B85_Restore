@interface StewieAssetCell
- (StewieAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (StewieDemoPresenterDelegate)delegate;
- (void)configureTryOutButton;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUpConstraints;
- (void)tryOutButtonWasTapped:(id)a3;
@end

@implementation StewieAssetCell

- (StewieAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v21.receiver = self;
  v21.super_class = StewieAssetCell;
  v5 = [(StewieAssetCell *)&v21 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
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
  v3 = [(StewieAssetCell *)self contentView];
  [v3 addSubview:self->assetView];

  [(UILabel *)self->tryOutText setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[SOSUtilities stewieDemoCellText];
  [(UILabel *)self->tryOutText setText:v4];

  [(UILabel *)self->tryOutText setNumberOfLines:0];
  v5 = [(StewieAssetCell *)self contentView];
  [v5 addSubview:self->tryOutText];

  [(UIView *)self->separatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(StewieAssetCell *)self contentView];
  [v6 addSubview:self->separatorLine];

  v7 = +[UIColor separatorColor];
  [(UIView *)self->separatorLine setBackgroundColor:v7];

  v8 = [(StewieAssetCell *)self contentView];
  [v8 addSubview:self->tryOutButton];

  [(StewieAssetCell *)self configureTryOutButton];
  [(StewieAssetCell *)self setSelectionStyle:0];
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tryOutButtonWasTapped:"];
  v10 = [(StewieAssetCell *)self contentView];
  [v10 addGestureRecognizer:v9];

  assetView = self->assetView;
  if (assetView)
  {
    v61 = [(UIView *)assetView topAnchor];
    v62 = [(StewieAssetCell *)self contentView];
    v60 = [v62 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60 constant:11.0];
    v63[0] = v59;
    v57 = [(UIView *)self->assetView leadingAnchor];
    v58 = [(StewieAssetCell *)self contentView];
    v56 = [v58 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:13.0];
    v63[1] = v55;
    v54 = [(UIView *)self->assetView widthAnchor];
    v53 = [v54 constraintGreaterThanOrEqualToConstant:36.0];
    v63[2] = v53;
    v52 = [(StewieAssetCell *)self contentView];
    v51 = [v52 bottomAnchor];
    v50 = [(UIView *)self->assetView bottomAnchor];
    v49 = [v51 constraintGreaterThanOrEqualToAnchor:v50];
    v63[3] = v49;
    v48 = [(UILabel *)self->tryOutText topAnchor];
    v47 = [(UIView *)self->assetView topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v63[4] = v46;
    v45 = [(UILabel *)self->tryOutText leadingAnchor];
    v44 = [(UIView *)self->assetView trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:11.0];
    v63[5] = v43;
    v42 = [(StewieAssetCell *)self contentView];
    v41 = [v42 trailingAnchor];
    v40 = [(UILabel *)self->tryOutText trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:13.0];
    v63[6] = v39;
    v38 = [(UIView *)self->separatorLine heightAnchor];
    v37 = [v38 constraintEqualToConstant:0.5];
    v63[7] = v37;
    v36 = [(UIView *)self->separatorLine topAnchor];
    v35 = [(UILabel *)self->tryOutText bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:11.0];
    v63[8] = v34;
    v33 = [(UIView *)self->separatorLine leadingAnchor];
    v32 = [(UILabel *)self->tryOutText leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v63[9] = v31;
    v30 = [(StewieAssetCell *)self contentView];
    v29 = [v30 trailingAnchor];
    v28 = [(UIView *)self->separatorLine trailingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v63[10] = v27;
    v26 = [(UIButton *)self->tryOutButton topAnchor];
    v25 = [(UIView *)self->separatorLine bottomAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:10.0];
    v63[11] = v24;
    v23 = [(UIButton *)self->tryOutButton leadingAnchor];
    v22 = [(UIView *)self->separatorLine leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v63[12] = v21;
    v12 = [(StewieAssetCell *)self contentView];
    v13 = [v12 trailingAnchor];
    v14 = [(UIButton *)self->tryOutButton trailingAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14 constant:13.0];
    v63[13] = v15;
    v16 = [(StewieAssetCell *)self contentView];
    v17 = [v16 bottomAnchor];
    v18 = [(UIButton *)self->tryOutButton bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];
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

- (void)tryOutButtonWasTapped:(id)a3
{
  v3 = [(StewieAssetCell *)self delegate];
  [v3 presentStewieTryOutModeIfPossible];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = [a3 propertyForKey:@"StewieSectionDemoDelegate"];
  v4 = [v5 nonretainedObjectValue];
  [(StewieAssetCell *)self setDelegate:v4];
}

- (StewieDemoPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end