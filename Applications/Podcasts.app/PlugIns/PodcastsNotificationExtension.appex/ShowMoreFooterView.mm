@interface ShowMoreFooterView
+ (double)defaultHeight;
- (ShowMoreFooterView)initWithFrame:(CGRect)frame;
- (ShowMoreFooterViewActionHandler)actionHandler;
- (void)buttonTapped:(id)tapped;
- (void)loadViewAndConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateDynamicConstraints;
@end

@implementation ShowMoreFooterView

+ (double)defaultHeight
{
  v2 = +[EpisodeListAvailableStyle defaultStyle];
  seeMore_containerTop_To_buttonBL = [v2 seeMore_containerTop_To_buttonBL];
  [seeMore_containerTop_To_buttonBL currentConstant];
  v5 = v4;
  seeMore_buttonBL_To_containerBottom = [v2 seeMore_buttonBL_To_containerBottom];
  [seeMore_buttonBL_To_containerBottom currentConstant];
  v8 = v5 + v7;

  return v8;
}

- (ShowMoreFooterView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ShowMoreFooterView;
  v3 = [(ShowMoreFooterView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  selfCopy = self;
  [(ShowMoreFooterView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  style = [(ShowMoreFooterView *)selfCopy style];
  newSeeMoreButton = [style newSeeMoreButton];
  [newSeeMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [newSeeMoreButton addTarget:selfCopy action:"buttonTapped:" forControlEvents:64];
  [(ShowMoreFooterView *)selfCopy addSubview:newSeeMoreButton];
  leadingAnchor = [newSeeMoreButton leadingAnchor];
  leadingAnchor2 = [(ShowMoreFooterView *)selfCopy leadingAnchor];
  [style defaultMarginH];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  firstBaselineAnchor = [newSeeMoreButton firstBaselineAnchor];
  topAnchor = [(ShowMoreFooterView *)selfCopy topAnchor];
  v10 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  seeMore_containerTop_To_buttonBL = [style seeMore_containerTop_To_buttonBL];
  v12 = [v10 mt_copyWithDynamicTypeConstant:seeMore_containerTop_To_buttonBL];

  v21[1] = v12;
  bottomAnchor = [(ShowMoreFooterView *)selfCopy bottomAnchor];
  lastBaselineAnchor = [newSeeMoreButton lastBaselineAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
  seeMore_buttonBL_To_containerBottom = [style seeMore_buttonBL_To_containerBottom];
  v17 = [v15 mt_copyWithDynamicTypeConstant:seeMore_buttonBL_To_containerBottom];

  v21[2] = v17;
  v18 = [NSArray arrayWithObjects:v21 count:3];
  installedConstraints = selfCopy->_installedConstraints;
  selfCopy->_installedConstraints = v18;

  installedConstraints = [(ShowMoreFooterView *)selfCopy installedConstraints];

  [NSLayoutConstraint activateConstraints:installedConstraints];
}

- (void)updateDynamicConstraints
{
  installedConstraints = [(ShowMoreFooterView *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:installedConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = ShowMoreFooterView;
  [(ShowMoreFooterView *)&v4 traitCollectionDidChange:change];
  [(ShowMoreFooterView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = ShowMoreFooterView;
  [(ShowMoreFooterView *)&v3 updateConstraints];
  [(ShowMoreFooterView *)self updateDynamicConstraints];
}

- (void)buttonTapped:(id)tapped
{
  actionHandler = [(ShowMoreFooterView *)self actionHandler];
  [actionHandler handleShowMoreEpisodesForFooterView:self];
}

- (ShowMoreFooterViewActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end