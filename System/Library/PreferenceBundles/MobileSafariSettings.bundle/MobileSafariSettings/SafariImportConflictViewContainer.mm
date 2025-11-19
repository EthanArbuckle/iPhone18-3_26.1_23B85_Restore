@interface SafariImportConflictViewContainer
- (SafariImportConflictViewContainer)initWithPasswordsImportedData:(id)a3 extensionsImportedData:(id)a4;
@end

@implementation SafariImportConflictViewContainer

- (SafariImportConflictViewContainer)initWithPasswordsImportedData:(id)a3 extensionsImportedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = SafariImportConflictViewContainer;
  v8 = [(SafariImportConflictViewContainer *)&v38 init];
  v9 = v8;
  if (v8)
  {
    [(SafariImportConflictViewContainer *)v8 setAxis:1];
    [(SafariImportConflictViewContainer *)v9 setAlignment:0];
    [(SafariImportConflictViewContainer *)v9 setDistribution:0];
    [(SafariImportConflictViewContainer *)v9 setLayoutMarginsRelativeArrangement:1];
    [(SafariImportConflictViewContainer *)v9 setLayoutMargins:15.0, 0.0, 0.0, 0.0];
    [(SafariImportConflictViewContainer *)v9 setSpacing:10.0];
    if ([v6 numberOfItemsFailedToImport])
    {
      v10 = +[SafariImportConflictView passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:numberOfPasswordsFailedToImport:](SafariImportConflictView, "passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:numberOfPasswordsFailedToImport:", [v6 numberOfItemsSuccessfullyImported], objc_msgSend(v6, "numberOfItemsFailedToImport"));
      [(SafariImportConflictViewContainer *)v9 addArrangedSubview:v10];
    }

    else
    {
      v10 = 0;
    }

    if (![v7 numberOfItemsFailedToImport])
    {
      v14 = 0;
      goto LABEL_19;
    }

    v11 = [v7 numberOfItemsSuccessfullyImported];
    v12 = [v7 numberOfItemsFailedToImport];
    v13 = [v7 extensionLockupViews];
    v14 = [SafariImportConflictView extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:v11 numberOfExtensionsFailedToImport:v12 lockupViews:v13];

    [(SafariImportConflictViewContainer *)v9 addArrangedSubview:v14];
    if (!v10 || !v14)
    {
      goto LABEL_19;
    }

    v15 = [v10 iconAndTitleLabelStackView];
    v16 = [v15 arrangedSubviews];
    if ([v16 count] == &dword_0 + 3)
    {
      v17 = [v14 iconAndTitleLabelStackView];
      v18 = [v17 arrangedSubviews];
      v19 = [v18 count];

      if (v19 != &dword_0 + 3)
      {
LABEL_19:
        v36 = v9;

        goto LABEL_20;
      }

      v20 = [v10 iconAndTitleLabelStackView];
      v21 = [v20 arrangedSubviews];
      v22 = [v21 firstObject];
      height = UILayoutFittingCompressedSize.height;
      [v22 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v25 = v24;

      v26 = [v14 iconAndTitleLabelStackView];
      v27 = [v26 arrangedSubviews];
      v28 = [v27 firstObject];
      [v28 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v30 = v29;

      if (v25 - v30 >= 0.0)
      {
        v31 = v25 - v30;
      }

      else
      {
        v31 = -(v25 - v30);
      }

      if (v25 <= v30)
      {
        v32 = v10;
      }

      else
      {
        v32 = v14;
      }

      v33 = v32;
      v15 = [v33 iconAndTitleLabelStackView];
      v16 = [v33 iconAndTitleLabelStackView];

      v34 = [v16 arrangedSubviews];
      v35 = [v34 firstObject];
      [v15 setCustomSpacing:v35 afterView:v31 + 5.0];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

@end