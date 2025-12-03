@interface ImportDetailsStackView
- (ImportDetailsStackView)init;
- (void)setFileNameAndMetadataFromURL:(id)l;
- (void)setNumberOfItemsToBeImportedPerDataType:(id)type;
@end

@implementation ImportDetailsStackView

- (ImportDetailsStackView)init
{
  v39.receiver = self;
  v39.super_class = ImportDetailsStackView;
  v2 = [(ImportDetailsStackView *)&v39 init];
  if (v2)
  {
    v37 = +[UIColor systemGray5Color];
    v33 = +[UIColor systemBackgroundColor];
    v3 = +[UIColor systemGray4Color];
    cgColor = [v3 cgColor];

    v38 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightSemibold];
    v34 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v35 = +[UIColor systemGrayColor];
    v32 = [UIImageSymbolConfiguration configurationWithPointSize:38.0];
    [(ImportDetailsStackView *)v2 setAxis:0];
    [(ImportDetailsStackView *)v2 setAlignment:0];
    [(ImportDetailsStackView *)v2 setDistribution:0];
    [(ImportDetailsStackView *)v2 setLayoutMarginsRelativeArrangement:1];
    [(ImportDetailsStackView *)v2 setLayoutMargins:15.0, 15.0, 15.0, 15.0];
    [(ImportDetailsStackView *)v2 setBackgroundColor:v37];
    layer = [(ImportDetailsStackView *)v2 layer];
    [layer setCornerRadius:12.0];

    [(ImportDetailsStackView *)v2 setSpacing:10.0];
    v6 = objc_alloc_init(UIStackView);
    [v6 setAxis:1];
    [v6 setAlignment:0];
    [v6 setDistribution:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ImportDetailsStackView *)v2 addArrangedSubview:v6];
    v7 = objc_alloc_init(UIView);
    [v6 addArrangedSubview:v7];
    [v7 setBackgroundColor:v33];
    layer2 = [v7 layer];
    [layer2 setCornerRadius:8.0];

    layer3 = [v7 layer];
    [layer3 setBorderWidth:1.0];

    layer4 = [v7 layer];
    [layer4 setBorderColor:cgColor];

    v11 = objc_alloc_init(UIView);
    [v6 addArrangedSubview:v11];

    v31 = [UIImage systemImageNamed:@"globe" withConfiguration:v32];
    v12 = [[UIImageView alloc] initWithImage:v31];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addSubview:v12];
    v13 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v12 withFrameOfView:v7 edgeInsets:2.0, 2.0, 2.0, 2.0];
    [NSLayoutConstraint activateConstraints:v13];

    widthAnchor = [v6 widthAnchor];
    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v15 = [widthAnchor constraintEqualToConstant:?];
    [v15 setActive:1];

    v16 = objc_alloc_init(UIStackView);
    labelsStackView = v2->_labelsStackView;
    v2->_labelsStackView = v16;

    [(UIStackView *)v2->_labelsStackView setAxis:1];
    [(UIStackView *)v2->_labelsStackView setAlignment:0];
    [(UIStackView *)v2->_labelsStackView setDistribution:0];
    [(UIStackView *)v2->_labelsStackView setSpacing:5.0];
    [(ImportDetailsStackView *)v2 addArrangedSubview:v2->_labelsStackView];
    v18 = objc_alloc_init(UILabel);
    filenameLabel = v2->_filenameLabel;
    v2->_filenameLabel = v18;

    [(UILabel *)v2->_filenameLabel setNumberOfLines:0];
    [(UILabel *)v2->_filenameLabel setFont:v38];
    [(UIStackView *)v2->_labelsStackView addArrangedSubview:v2->_filenameLabel];
    v20 = objc_alloc_init(UIStackView);
    spinnerStackView = v2->_spinnerStackView;
    v2->_spinnerStackView = v20;

    [(UIStackView *)v2->_spinnerStackView setAxis:0];
    [(UIStackView *)v2->_spinnerStackView setAlignment:0];
    [(UIStackView *)v2->_spinnerStackView setDistribution:0];
    [(UIStackView *)v2->_labelsStackView addArrangedSubview:v2->_spinnerStackView];
    v22 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v22 startAnimating];
    [(UIStackView *)v2->_spinnerStackView addArrangedSubview:v22];
    v23 = v2->_spinnerStackView;
    v24 = objc_alloc_init(UIView);
    [(UIStackView *)v23 addArrangedSubview:v24];

    v25 = objc_alloc_init(UILabel);
    importCountsLabel = v2->_importCountsLabel;
    v2->_importCountsLabel = v25;

    [(UILabel *)v2->_importCountsLabel setHidden:1];
    [(UILabel *)v2->_importCountsLabel setNumberOfLines:0];
    [(UILabel *)v2->_importCountsLabel setFont:v34];
    [(UIStackView *)v2->_labelsStackView addArrangedSubview:v2->_importCountsLabel];
    v27 = objc_alloc_init(UILabel);
    metadataLabel = v2->_metadataLabel;
    v2->_metadataLabel = v27;

    [(UILabel *)v2->_metadataLabel setNumberOfLines:0];
    [(UILabel *)v2->_metadataLabel setFont:v36];
    [(UILabel *)v2->_metadataLabel setTextColor:v35];
    [(UIStackView *)v2->_labelsStackView addArrangedSubview:v2->_metadataLabel];
    v29 = v2;
  }

  return v2;
}

- (void)setFileNameAndMetadataFromURL:(id)l
{
  lCopy = l;
  v29 = 0;
  v28 = 0;
  [lCopy getResourceValue:&v29 forKey:NSURLFileSizeKey error:&v28];
  v5 = v29;
  v6 = v28;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ImportDetailsStackView setFileNameAndMetadataFromURL:v9];
    }
  }

  v27 = 0;
  v26 = 0;
  [lCopy getResourceValue:&v27 forKey:NSURLCreationDateKey error:&v26];
  v10 = v27;
  v11 = v26;

  if (!v5 || v11)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ImportDetailsStackView setFileNameAndMetadataFromURL:v12];
    }
  }

  v13 = [NSDateFormatter localizedStringFromDate:v10 dateStyle:1 timeStyle:0];
  [v5 unsignedIntegerValue];
  v14 = NSLocalizedFileSizeDescription();
  if (v10 && v5)
  {
    v15 = _WBSLocalizedString();
    v16 = [NSString localizedStringWithFormat:v15, v13, v14];
    p_metadataLabel = &self->_metadataLabel;
    [(UILabel *)self->_metadataLabel setText:v16];
  }

  else
  {
    p_metadataLabel = &self->_metadataLabel;
    [(UILabel *)self->_metadataLabel setText:0];
  }

  [(UILabel *)*p_metadataLabel setAccessibilityIdentifier:@"ImportDetailsMetadata"];
  if (self->_foundExportLooksLikeChromeExport)
  {
    v25 = v14;
    v18 = v13;
    v19 = v11;
    lastPathComponent2 = _WBSLocalizedString();
    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v23 = [NSString localizedStringWithFormat:lastPathComponent2, stringByDeletingPathExtension];
    p_filenameLabel = &self->_filenameLabel;
    [(UILabel *)*p_filenameLabel setText:v23];

    v11 = v19;
    v13 = v18;
    v14 = v25;
  }

  else
  {
    lastPathComponent2 = [lCopy lastPathComponent];
    lastPathComponent = [lastPathComponent2 stringByDeletingPathExtension];
    p_filenameLabel = &self->_filenameLabel;
    [(UILabel *)*p_filenameLabel setText:lastPathComponent];
  }

  [(UILabel *)*p_filenameLabel setAccessibilityIdentifier:@"ImportDetailsFilename"];
}

- (void)setNumberOfItemsToBeImportedPerDataType:(id)type
{
  typeCopy = type;
  [(UIStackView *)self->_spinnerStackView setHidden:typeCopy != 0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [typeCopy allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v10 + 1) + 8 * i) unsignedIntegerValue])
        {
          LODWORD(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(UILabel *)self->_importCountsLabel setHidden:v6 ^ 1];
  if (((v6 ^ 1) & 1) == 0)
  {
    v9 = [WBSBrowsingDataImportController localizedStringForNumberOfItemsToBeImported:typeCopy];
    [(UILabel *)self->_importCountsLabel setText:v9];

    [(UILabel *)self->_importCountsLabel setAccessibilityIdentifier:@"ImportDetailsItemCounts"];
  }
}

- (void)setFileNameAndMetadataFromURL:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Unable to determine the size of the file to import: %{public}@", v6, v7, v8, v9, v10);
}

- (void)setFileNameAndMetadataFromURL:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Unable to determine the date that the file to import was created: %{public}@", v6, v7, v8, v9, v10);
}

@end