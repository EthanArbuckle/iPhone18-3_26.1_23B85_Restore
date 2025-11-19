@interface HangNoPreviewAvailablePane
- (HangNoPreviewAvailablePane)initWithFrame:(CGRect)a3;
- (void)setPreferenceSpecifier:(id)a3;
@end

@implementation HangNoPreviewAvailablePane

- (HangNoPreviewAvailablePane)initWithFrame:(CGRect)a3
{
  v56.receiver = self;
  v56.super_class = HangNoPreviewAvailablePane;
  v3 = [(HangNoPreviewAvailablePane *)&v56 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v17 = [(UIImageView *)v3->_iconView layer];
    [v17 setCornerRadius:4.0];

    [(UIImageView *)v3->_iconView setContentMode:1];
    [(HangNoPreviewAvailablePane *)v3 addSubview:v3->_iconView];
    v54 = [(UILabel *)v3->_filenameLabel leadingAnchor];
    v55 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v53 = [v55 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:20.0];
    v57[0] = v52;
    v50 = [(UILabel *)v3->_filenameLabel trailingAnchor];
    v51 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v49 = [v51 trailingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:-20.0];
    v57[1] = v48;
    v46 = [(UILabel *)v3->_filenameLabel centerYAnchor];
    v47 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v45 = [v47 centerYAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v57[2] = v44;
    v42 = [(UILabel *)v3->_filenameLabel centerXAnchor];
    v43 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v41 = [v43 centerXAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v57[3] = v40;
    v39 = [(UIImageView *)v3->_iconView bottomAnchor];
    v38 = [(UILabel *)v3->_filenameLabel topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:-10.0];
    v57[4] = v37;
    v35 = [(UIImageView *)v3->_iconView centerXAnchor];
    v36 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v34 = [v36 centerXAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v57[5] = v33;
    v32 = [(UIImageView *)v3->_iconView widthAnchor];
    v31 = [(HangNoPreviewAvailablePane *)v3 widthAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 multiplier:0.3];
    v57[6] = v30;
    v29 = [(UIImageView *)v3->_iconView heightAnchor];
    v28 = [(UIImageView *)v3->_iconView widthAnchor];
    v18 = [v29 constraintEqualToAnchor:v28];
    v57[7] = v18;
    v19 = [(UILabel *)v3->_filesizeLabel topAnchor];
    v20 = [(UILabel *)v3->_filenameLabel bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:10.0];
    v57[8] = v21;
    v22 = [(UILabel *)v3->_filesizeLabel centerXAnchor];
    v23 = [(HangNoPreviewAvailablePane *)v3 layoutMarginsGuide];
    v24 = [v23 centerXAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v57[9] = v25;
    v26 = [NSArray arrayWithObjects:v57 count:10];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v3;
}

- (void)setPreferenceSpecifier:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HangNoPreviewAvailablePane;
  [(HangNoPreviewAvailablePane *)&v23 setPreferenceSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"file-path"];
  v6 = [v5 lastPathComponent];
  [(UILabel *)self->_filenameLabel setText:v6];

  v7 = [v4 objectForKeyedSubscript:@"HangsDataControllerFileSize"];
  v8 = [v7 unsignedLongLongValue];

  if (v8)
  {
    v9 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
    p_filesizeLabel = &self->_filesizeLabel;
    [(UILabel *)self->_filesizeLabel setText:v9];
  }

  else
  {
    v11 = [v4 objectForKeyedSubscript:@"file-path"];
    NSLog(@"Unable to retrieve the size of file at path %@", v11);

    p_filesizeLabel = &self->_filesizeLabel;
  }

  [(UILabel *)*p_filesizeLabel setHidden:v8 == 0];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3042000000;
  v21[3] = sub_AF80;
  v21[4] = sub_AF8C;
  objc_initWeak(&v22, self);
  v12 = [v4 objectForKeyedSubscript:@"file-path"];
  v13 = [NSURL fileURLWithPath:v12];

  v14 = [QLThumbnailGenerationRequest alloc];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = [v14 initWithFileAtURL:v13 size:1 scale:200.0 representationTypes:{270.0, v16}];

  [v17 setIconVariant:1];
  v18 = [UTTypeArchive identifier];
  [v17 setContentTypeUTI:v18];

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