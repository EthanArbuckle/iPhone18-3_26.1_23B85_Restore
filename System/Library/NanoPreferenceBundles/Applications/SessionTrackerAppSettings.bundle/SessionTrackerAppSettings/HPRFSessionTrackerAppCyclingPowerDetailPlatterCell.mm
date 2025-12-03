@interface HPRFSessionTrackerAppCyclingPowerDetailPlatterCell
- (HPRFSessionTrackerAppCyclingPowerDetailPlatterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation HPRFSessionTrackerAppCyclingPowerDetailPlatterCell

- (HPRFSessionTrackerAppCyclingPowerDetailPlatterCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v110.receiver = self;
  v110.super_class = HPRFSessionTrackerAppCyclingPowerDetailPlatterCell;
  v9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)&v110 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v9 setPreservesSuperviewLayoutMargins:1];
    v108 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellTitleKey"];
    v107 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellDetailKey"];
    v11 = [UIImageView alloc];
    v12 = [UIImage _systemImageNamed:@"bluetooth.applewatch"];
    v13 = [v11 initWithImage:v12];
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setIconView:v13];

    iconView = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    iconView2 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [iconView2 setContentMode:1];

    contentView = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    iconView3 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [contentView addSubview:iconView3];

    v18 = objc_alloc_init(UILabel);
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setTitleView:v18];

    titleView = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView setText:v108];

    titleView2 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleView3 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView3 setAdjustsFontForContentSizeCategory:1];

    titleView4 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    font = [titleView4 font];
    [font fontDescriptor];
    v24 = v109 = specifierCopy;
    v25 = [v24 fontDescriptorWithSymbolicTraits:2];
    titleView5 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    font2 = [titleView5 font];
    [font2 pointSize];
    v28 = [UIFont fontWithDescriptor:v25 size:?];
    titleView6 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView6 setFont:v28];

    v30 = +[UIColor whiteColor];
    titleView7 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView7 setTextColor:v30];

    titleView8 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView8 setTextAlignment:1];

    titleView9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [titleView9 setNumberOfLines:0];

    contentView2 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    titleView10 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [contentView2 addSubview:titleView10];

    v36 = objc_alloc_init(UILabel);
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setDetailView:v36];

    detailView = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView setText:v107];

    detailView2 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    detailView3 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView3 setAdjustsFontForContentSizeCategory:1];

    v40 = +[UIColor whiteColor];
    detailView4 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView4 setTextColor:v40];

    detailView5 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView5 setTextAlignment:1];

    detailView6 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [detailView6 setNumberOfLines:0];

    contentView3 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    detailView7 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [contentView3 addSubview:detailView7];

    iconView4 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    topAnchor = [iconView4 topAnchor];
    contentView4 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v101 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v111[0] = v101;
    iconView5 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    centerXAnchor = [iconView5 centerXAnchor];
    contentView5 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide2 centerXAnchor];
    v95 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v111[1] = v95;
    iconView6 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    widthAnchor = [iconView6 widthAnchor];
    iconView7 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    heightAnchor = [iconView7 heightAnchor];
    v90 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v111[2] = v90;
    iconView8 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    widthAnchor2 = [iconView8 widthAnchor];
    v87 = [widthAnchor2 constraintEqualToConstant:60.0];
    v111[3] = v87;
    titleView11 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    topAnchor3 = [titleView11 topAnchor];
    iconView9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    bottomAnchor = [iconView9 bottomAnchor];
    v82 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    v111[4] = v82;
    titleView12 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    leadingAnchor = [titleView12 leadingAnchor];
    contentView6 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v111[5] = v76;
    titleView13 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    trailingAnchor = [titleView13 trailingAnchor];
    contentView7 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v111[6] = v70;
    detailView8 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    topAnchor4 = [detailView8 topAnchor];
    titleView14 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    bottomAnchor2 = [titleView14 bottomAnchor];
    v65 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    v111[7] = v65;
    detailView9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    leadingAnchor3 = [detailView9 leadingAnchor];
    contentView8 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v111[8] = v59;
    detailView10 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    trailingAnchor3 = [detailView10 trailingAnchor];
    contentView9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
    v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v111[9] = v48;
    contentView10 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    bottomAnchor3 = [contentView10 bottomAnchor];
    detailView11 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    bottomAnchor4 = [detailView11 bottomAnchor];
    v53 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:16.0];
    v111[10] = v53;
    v54 = [NSArray arrayWithObjects:v111 count:11];
    [NSLayoutConstraint activateConstraints:v54];

    specifierCopy = v109;
  }

  return v10;
}

@end