@interface HangNoPreviewAvailablePane
- (HangNoPreviewAvailablePane)initWithFrame:(CGRect)frame;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation HangNoPreviewAvailablePane

- (HangNoPreviewAvailablePane)initWithFrame:(CGRect)frame
{
  v56.receiver = self;
  v56.super_class = HangNoPreviewAvailablePane;
  v3 = [(HangNoPreviewAvailablePane *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    filenameLabel = v3->_filenameLabel;
    v3->_filenameLabel = v8;

    [(UILabel *)v3->_filenameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_filenameLabel setNumberOfLines:0];
    [(UILabel *)v3->_filenameLabel setTextAlignment:1];
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)v3->_filenameLabel setFont:v10];

    [(HangNoPreviewAvailablePane *)v3 addSubview:v3->_filenameLabel];
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    filesizeLabel = v3->_filesizeLabel;
    v3->_filesizeLabel = v11;

    [(UILabel *)v3->_filesizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_filesizeLabel setTextAlignment:1];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v3->_filesizeLabel setFont:v13];

    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_filesizeLabel setTextColor:v14];

    [(HangNoPreviewAvailablePane *)v3 addSubview:v3->_filesizeLabel];
    v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v3->_iconView;
    v3->_iconView = v15;

    [(UIImageView *)v3->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIImageView *)v3->_iconView layer];
    [layer setCornerRadius:4.0];

    [(UIImageView *)v3->_iconView setContentMode:1];
    [(HangNoPreviewAvailablePane *)v3 addSubview:v3->_iconView];
    leadingAnchor = [(UILabel *)v3->_filenameLabel leadingAnchor];
    layoutMarginsGuide = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v57[0] = v52;
    trailingAnchor = [(UILabel *)v3->_filenameLabel trailingAnchor];
    layoutMarginsGuide2 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v57[1] = v48;
    centerYAnchor = [(UILabel *)v3->_filenameLabel centerYAnchor];
    layoutMarginsGuide3 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide3 centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v57[2] = v44;
    centerXAnchor = [(UILabel *)v3->_filenameLabel centerXAnchor];
    layoutMarginsGuide4 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide4 centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v57[3] = v40;
    bottomAnchor = [(UIImageView *)v3->_iconView bottomAnchor];
    topAnchor = [(UILabel *)v3->_filenameLabel topAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-10.0];
    v57[4] = v37;
    centerXAnchor3 = [(UIImageView *)v3->_iconView centerXAnchor];
    layoutMarginsGuide5 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    centerXAnchor4 = [layoutMarginsGuide5 centerXAnchor];
    v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v57[5] = v33;
    widthAnchor = [(UIImageView *)v3->_iconView widthAnchor];
    widthAnchor2 = [(HangNoPreviewAvailablePane *)v3 widthAnchor];
    v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.3];
    v57[6] = v30;
    heightAnchor = [(UIImageView *)v3->_iconView heightAnchor];
    widthAnchor3 = [(UIImageView *)v3->_iconView widthAnchor];
    v18 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
    v57[7] = v18;
    topAnchor2 = [(UILabel *)v3->_filesizeLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v3->_filenameLabel bottomAnchor];
    v21 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
    v57[8] = v21;
    centerXAnchor5 = [(UILabel *)v3->_filesizeLabel centerXAnchor];
    layoutMarginsGuide6 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    centerXAnchor6 = [layoutMarginsGuide6 centerXAnchor];
    v25 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v57[9] = v25;
    v26 = [NSArray arrayWithObjects:v57 count:10];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v3;
}

- (void)setPreferenceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v23.receiver = self;
  v23.super_class = HangNoPreviewAvailablePane;
  [(HangNoPreviewAvailablePane *)&v23 setPreferenceSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"file-path"];
  lastPathComponent = [v5 lastPathComponent];
  [(UILabel *)self->_filenameLabel setText:lastPathComponent];

  v7 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerFileSize"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  if (unsignedLongLongValue)
  {
    v9 = [NSByteCountFormatter stringFromByteCount:unsignedLongLongValue countStyle:0];
    p_filesizeLabel = &self->_filesizeLabel;
    [(UILabel *)self->_filesizeLabel setText:v9];
  }

  else
  {
    v11 = [specifierCopy objectForKeyedSubscript:@"file-path"];
    NSLog(@"Unable to retrieve the size of file at path %@", v11);

    p_filesizeLabel = &self->_filesizeLabel;
  }

  [(UILabel *)*p_filesizeLabel setHidden:unsignedLongLongValue == 0];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3042000000;
  v21[3] = sub_AF80;
  v21[4] = sub_AF8C;
  objc_initWeak(&v22, self);
  v12 = [specifierCopy objectForKeyedSubscript:@"file-path"];
  v13 = [NSURL fileURLWithPath:v12];

  v14 = [QLThumbnailGenerationRequest alloc];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = [v14 initWithFileAtURL:v13 size:1 scale:200.0 representationTypes:{270.0, v16}];

  [v17 setIconVariant:1];
  identifier = [UTTypeArchive identifier];
  [v17 setContentTypeUTI:identifier];

  v19 = +[QLThumbnailGenerator sharedGenerator];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_AF94;
  v20[3] = &unk_3D3D0;
  v20[4] = v21;
  [v19 generateBestRepresentationForRequest:v17 completionHandler:v20];

  _Block_object_dispose(v21, 8);
  objc_destroyWeak(&v22);
}

@end