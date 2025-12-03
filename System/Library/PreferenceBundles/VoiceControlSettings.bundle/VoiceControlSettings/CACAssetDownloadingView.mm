@interface CACAssetDownloadingView
- (CACAssetDownloadingView)initWithActivityIndicatorStyle:(int64_t)style;
@end

@implementation CACAssetDownloadingView

- (CACAssetDownloadingView)initWithActivityIndicatorStyle:(int64_t)style
{
  v30.receiver = self;
  v30.super_class = CACAssetDownloadingView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CACAssetDownloadingView *)&v30 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:style];
    indicator = height->_indicator;
    height->_indicator = v8;

    [(UIActivityIndicatorView *)height->_indicator startAnimating];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    downloadLabel = height->_downloadLabel;
    height->_downloadLabel = v10;

    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)height->_downloadLabel setTextColor:v12];

    v13 = settingsLocString(@"DOWNLOADING", @"CommandAndControlSettings");
    [(UILabel *)height->_downloadLabel setText:v13];

    v29 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [(UILabel *)height->_downloadLabel setFont:v29];
    [(UILabel *)height->_downloadLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)height->_downloadLabel setNumberOfLines:0];
    [(UIActivityIndicatorView *)height->_indicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)height->_downloadLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CACAssetDownloadingView *)height addSubview:height->_indicator];
    [(CACAssetDownloadingView *)height addSubview:height->_downloadLabel];
    safeAreaLayoutGuide = [(CACAssetDownloadingView *)height safeAreaLayoutGuide];
    trailingAnchor = [(UIActivityIndicatorView *)height->_indicator trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[0] = v26;
    centerYAnchor = [(UIActivityIndicatorView *)height->_indicator centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[1] = v15;
    trailingAnchor3 = [(UILabel *)height->_downloadLabel trailingAnchor];
    leadingAnchor = [(UIActivityIndicatorView *)height->_indicator leadingAnchor];
    v18 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-8.0];
    v31[2] = v18;
    centerYAnchor3 = [(UILabel *)height->_downloadLabel centerYAnchor];
    centerYAnchor4 = [safeAreaLayoutGuide centerYAnchor];
    v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v31[3] = v21;
    v22 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return height;
}

@end