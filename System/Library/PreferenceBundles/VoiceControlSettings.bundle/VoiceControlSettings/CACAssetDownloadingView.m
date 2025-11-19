@interface CACAssetDownloadingView
- (CACAssetDownloadingView)initWithActivityIndicatorStyle:(int64_t)a3;
@end

@implementation CACAssetDownloadingView

- (CACAssetDownloadingView)initWithActivityIndicatorStyle:(int64_t)a3
{
  v30.receiver = self;
  v30.super_class = CACAssetDownloadingView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(CACAssetDownloadingView *)&v30 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v7)
  {
    v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:a3];
    indicator = v7->_indicator;
    v7->_indicator = v8;

    [(UIActivityIndicatorView *)v7->_indicator startAnimating];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    downloadLabel = v7->_downloadLabel;
    v7->_downloadLabel = v10;

    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v7->_downloadLabel setTextColor:v12];

    v13 = settingsLocString(@"DOWNLOADING", @"CommandAndControlSettings");
    [(UILabel *)v7->_downloadLabel setText:v13];

    v29 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [(UILabel *)v7->_downloadLabel setFont:v29];
    [(UILabel *)v7->_downloadLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_downloadLabel setNumberOfLines:0];
    [(UIActivityIndicatorView *)v7->_indicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_downloadLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CACAssetDownloadingView *)v7 addSubview:v7->_indicator];
    [(CACAssetDownloadingView *)v7 addSubview:v7->_downloadLabel];
    v14 = [(CACAssetDownloadingView *)v7 safeAreaLayoutGuide];
    v28 = [(UIActivityIndicatorView *)v7->_indicator trailingAnchor];
    v27 = [v14 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(UIActivityIndicatorView *)v7->_indicator centerYAnchor];
    v24 = [v14 centerYAnchor];
    v15 = [v25 constraintEqualToAnchor:v24];
    v31[1] = v15;
    v16 = [(UILabel *)v7->_downloadLabel trailingAnchor];
    v17 = [(UIActivityIndicatorView *)v7->_indicator leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];
    v31[2] = v18;
    v19 = [(UILabel *)v7->_downloadLabel centerYAnchor];
    v20 = [v14 centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v31[3] = v21;
    v22 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v7;
}

@end