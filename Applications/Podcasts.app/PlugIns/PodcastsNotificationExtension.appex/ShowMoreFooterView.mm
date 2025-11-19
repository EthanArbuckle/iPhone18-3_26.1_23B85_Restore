@interface ShowMoreFooterView
+ (double)defaultHeight;
- (ShowMoreFooterView)initWithFrame:(CGRect)a3;
- (ShowMoreFooterViewActionHandler)actionHandler;
- (void)buttonTapped:(id)a3;
- (void)loadViewAndConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateDynamicConstraints;
@end

@implementation ShowMoreFooterView

+ (double)defaultHeight
{
  v2 = +[EpisodeListAvailableStyle defaultStyle];
  v3 = [v2 seeMore_containerTop_To_buttonBL];
  [v3 currentConstant];
  v5 = v4;
  v6 = [v2 seeMore_buttonBL_To_containerBottom];
  [v6 currentConstant];
  v8 = v5 + v7;

  return v8;
}

- (ShowMoreFooterView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ShowMoreFooterView;
  v3 = [(ShowMoreFooterView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[EpisodeListAvailableStyle defaultStyle];
    style = v3->_style;
    v3->_style = v4;

    [(ShowMoreFooterView *)v3 loadViewAndConstraints];
  }

  return v3;
}

- (void)loadViewAndConstraints
{
  v2 = self;
  [(ShowMoreFooterView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(ShowMoreFooterView *)v2 style];
  v4 = [v3 newSeeMoreButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:v2 action:"buttonTapped:" forControlEvents:64];
  [(ShowMoreFooterView *)v2 addSubview:v4];
  v5 = [v4 leadingAnchor];
  v6 = [(ShowMoreFooterView *)v2 leadingAnchor];
  [v3 defaultMarginH];
  v7 = [v5 constraintEqualToAnchor:v6 constant:?];

  v8 = [v4 firstBaselineAnchor];
  v9 = [(ShowMoreFooterView *)v2 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v11 = [v3 seeMore_containerTop_To_buttonBL];
  v12 = [v10 mt_copyWithDynamicTypeConstant:v11];

  v21[1] = v12;
  v13 = [(ShowMoreFooterView *)v2 bottomAnchor];
  v14 = [v4 lastBaselineAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v16 = [v3 seeMore_buttonBL_To_containerBottom];
  v17 = [v15 mt_copyWithDynamicTypeConstant:v16];

  v21[2] = v17;
  v18 = [NSArray arrayWithObjects:v21 count:3];
  installedConstraints = v2->_installedConstraints;
  v2->_installedConstraints = v18;

  v20 = [(ShowMoreFooterView *)v2 installedConstraints];

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)updateDynamicConstraints
{
  v2 = [(ShowMoreFooterView *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:v2];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = ShowMoreFooterView;
  [(ShowMoreFooterView *)&v4 traitCollectionDidChange:a3];
  [(ShowMoreFooterView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = ShowMoreFooterView;
  [(ShowMoreFooterView *)&v3 updateConstraints];
  [(ShowMoreFooterView *)self updateDynamicConstraints];
}

- (void)buttonTapped:(id)a3
{
  v4 = [(ShowMoreFooterView *)self actionHandler];
  [v4 handleShowMoreEpisodesForFooterView:self];
}

- (ShowMoreFooterViewActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end