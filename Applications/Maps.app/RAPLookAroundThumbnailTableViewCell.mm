@interface RAPLookAroundThumbnailTableViewCell
- (RAPLookAroundThumbnailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateFonts;
- (void)setThumbnailImage:(id)image;
- (void)setViewState:(id)state;
@end

@implementation RAPLookAroundThumbnailTableViewCell

- (void)_updateFonts
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_nameLabel setFont:v3];

  v4 = +[UIFont system17];
  [(UILabel *)self->_locationLabel setFont:v4];
}

- (void)_contentSizeDidChange
{
  [(RAPLookAroundThumbnailTableViewCell *)self _updateFonts];
  font = [(UILabel *)self->_nameLabel font];
  [font _scaledValueForValue:60.0];
  [(NSLayoutConstraint *)self->_topToNameBaselineConstraint setConstant:?];

  font2 = [(UILabel *)self->_locationLabel font];
  [font2 _scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_nameToLocationBaselineConstraint setConstant:?];

  font3 = [(UILabel *)self->_locationLabel font];
  [font3 _scaledValueForValue:-48.0];
  [(NSLayoutConstraint *)self->_locationToBottomBaselineConstraint setConstant:?];
}

- (void)setViewState:(id)state
{
  stateCopy = state;
  if (self->_viewState != stateCopy)
  {
    v10 = stateCopy;
    objc_storeStrong(&self->_viewState, state);
    locationInfo = [(GEOPDMuninViewState *)self->_viewState locationInfo];
    locationName = [locationInfo locationName];
    [(UILabel *)self->_nameLabel setText:locationName];

    locationInfo2 = [(GEOPDMuninViewState *)self->_viewState locationInfo];
    localityName = [locationInfo2 localityName];
    [(UILabel *)self->_locationLabel setText:localityName];

    stateCopy = v10;
  }
}

- (void)_setupConstraints
{
  contentView = [(RAPLookAroundThumbnailTableViewCell *)self contentView];
  [(UIImageView *)self->_thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_locationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  firstBaselineAnchor = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  font = [(UILabel *)self->_nameLabel font];
  [font _scaledValueForValue:60.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToNameBaselineConstraint = self->_topToNameBaselineConstraint;
  self->_topToNameBaselineConstraint = v7;

  firstBaselineAnchor2 = [(UILabel *)self->_locationLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_nameLabel lastBaselineAnchor];
  font2 = [(UILabel *)self->_locationLabel font];
  [font2 _scaledValueForValue:22.0];
  v12 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  nameToLocationBaselineConstraint = self->_nameToLocationBaselineConstraint;
  self->_nameToLocationBaselineConstraint = v12;

  lastBaselineAnchor2 = [(UILabel *)self->_locationLabel lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  font3 = [(UILabel *)self->_locationLabel font];
  [font3 _scaledValueForValue:-48.0];
  v17 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:?];
  locationToBottomBaselineConstraint = self->_locationToBottomBaselineConstraint;
  self->_locationToBottomBaselineConstraint = v17;

  leadingAnchor = [contentView leadingAnchor];
  leadingAnchor2 = [(UIImageView *)self->_thumbnailImageView leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-20.0];
  v46[0] = v43;
  heightAnchor = [(UIImageView *)self->_thumbnailImageView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:110.0];
  v46[1] = v41;
  widthAnchor = [(UIImageView *)self->_thumbnailImageView widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:90.0];
  v46[2] = v39;
  trailingAnchor = [(UIImageView *)self->_thumbnailImageView trailingAnchor];
  leadingAnchor3 = [(UILabel *)self->_nameLabel leadingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
  v46[3] = v36;
  leadingAnchor4 = [(UILabel *)self->_locationLabel leadingAnchor];
  leadingAnchor5 = [(UILabel *)self->_nameLabel leadingAnchor];
  v32 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v46[4] = v32;
  centerYAnchor = [(UIImageView *)self->_thumbnailImageView centerYAnchor];
  v20 = contentView;
  v33 = contentView;
  centerYAnchor2 = [contentView centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[5] = v22;
  trailingAnchor2 = [(UILabel *)self->_nameLabel trailingAnchor];
  trailingAnchor3 = [v20 trailingAnchor];
  v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v46[6] = v25;
  trailingAnchor4 = [(UILabel *)self->_locationLabel trailingAnchor];
  trailingAnchor5 = [v20 trailingAnchor];
  v28 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v29 = self->_topToNameBaselineConstraint;
  v46[7] = v28;
  v46[8] = v29;
  v30 = self->_locationToBottomBaselineConstraint;
  v46[9] = self->_nameToLocationBaselineConstraint;
  v46[10] = v30;
  v31 = [NSArray arrayWithObjects:v46 count:11];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)_setupSubviews
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  thumbnailImageView = self->_thumbnailImageView;
  self->_thumbnailImageView = v7;

  [(UIImageView *)self->_thumbnailImageView setContentMode:2];
  [(UIImageView *)self->_thumbnailImageView setClipsToBounds:1];
  [(UIImageView *)self->_thumbnailImageView _setContinuousCornerRadius:10.0];
  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v9;

  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  [(UILabel *)self->_nameLabel setLineBreakMode:0];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  locationLabel = self->_locationLabel;
  self->_locationLabel = v11;

  [(UILabel *)self->_locationLabel setNumberOfLines:0];
  [(UILabel *)self->_locationLabel setLineBreakMode:0];
  v13 = +[UIColor labelColor];
  [(UILabel *)self->_nameLabel setTextColor:v13];

  v14 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_locationLabel setTextColor:v14];

  contentView = [(RAPLookAroundThumbnailTableViewCell *)self contentView];
  [contentView addSubview:self->_thumbnailImageView];
  [contentView addSubview:self->_nameLabel];
  [contentView addSubview:self->_locationLabel];
  [(RAPLookAroundThumbnailTableViewCell *)self _updateFonts];
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  if (self->_thumbnailImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_thumbnailImage, image);
    [(UIImageView *)self->_thumbnailImageView setImage:self->_thumbnailImage];
    imageCopy = v6;
  }
}

- (RAPLookAroundThumbnailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = RAPLookAroundThumbnailTableViewCell;
  v4 = [(RAPLookAroundThumbnailTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RAPLookAroundThumbnailTableViewCell *)v4 _setupSubviews];
    [(RAPLookAroundThumbnailTableViewCell *)v5 _setupConstraints];
    [(RAPLookAroundThumbnailTableViewCell *)v5 _updateFonts];
    [(RAPLookAroundThumbnailTableViewCell *)v5 setSelectionStyle:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

@end