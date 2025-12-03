@interface SafariImportConflictViewContainer
- (SafariImportConflictViewContainer)initWithPasswordsImportedData:(id)data extensionsImportedData:(id)importedData;
@end

@implementation SafariImportConflictViewContainer

- (SafariImportConflictViewContainer)initWithPasswordsImportedData:(id)data extensionsImportedData:(id)importedData
{
  dataCopy = data;
  importedDataCopy = importedData;
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
    if ([dataCopy numberOfItemsFailedToImport])
    {
      v10 = +[SafariImportConflictView passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:numberOfPasswordsFailedToImport:](SafariImportConflictView, "passwordsImportConflictViewWithNumberOfSuccessfullyImportedPasswords:numberOfPasswordsFailedToImport:", [dataCopy numberOfItemsSuccessfullyImported], objc_msgSend(dataCopy, "numberOfItemsFailedToImport"));
      [(SafariImportConflictViewContainer *)v9 addArrangedSubview:v10];
    }

    else
    {
      v10 = 0;
    }

    if (![importedDataCopy numberOfItemsFailedToImport])
    {
      v14 = 0;
      goto LABEL_19;
    }

    numberOfItemsSuccessfullyImported = [importedDataCopy numberOfItemsSuccessfullyImported];
    numberOfItemsFailedToImport = [importedDataCopy numberOfItemsFailedToImport];
    extensionLockupViews = [importedDataCopy extensionLockupViews];
    v14 = [SafariImportConflictView extensionsImportConflictViewWithNumberOfSuccessfullyImportedExtensions:numberOfItemsSuccessfullyImported numberOfExtensionsFailedToImport:numberOfItemsFailedToImport lockupViews:extensionLockupViews];

    [(SafariImportConflictViewContainer *)v9 addArrangedSubview:v14];
    if (!v10 || !v14)
    {
      goto LABEL_19;
    }

    iconAndTitleLabelStackView = [v10 iconAndTitleLabelStackView];
    arrangedSubviews = [iconAndTitleLabelStackView arrangedSubviews];
    if ([arrangedSubviews count] == &dword_0 + 3)
    {
      iconAndTitleLabelStackView2 = [v14 iconAndTitleLabelStackView];
      arrangedSubviews2 = [iconAndTitleLabelStackView2 arrangedSubviews];
      v19 = [arrangedSubviews2 count];

      if (v19 != &dword_0 + 3)
      {
LABEL_19:
        v36 = v9;

        goto LABEL_20;
      }

      iconAndTitleLabelStackView3 = [v10 iconAndTitleLabelStackView];
      arrangedSubviews3 = [iconAndTitleLabelStackView3 arrangedSubviews];
      firstObject = [arrangedSubviews3 firstObject];
      height = UILayoutFittingCompressedSize.height;
      [firstObject systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v25 = v24;

      iconAndTitleLabelStackView4 = [v14 iconAndTitleLabelStackView];
      arrangedSubviews4 = [iconAndTitleLabelStackView4 arrangedSubviews];
      firstObject2 = [arrangedSubviews4 firstObject];
      [firstObject2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
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
      iconAndTitleLabelStackView = [v33 iconAndTitleLabelStackView];
      arrangedSubviews = [v33 iconAndTitleLabelStackView];

      v16ArrangedSubviews = [arrangedSubviews arrangedSubviews];
      firstObject3 = [v16ArrangedSubviews firstObject];
      [iconAndTitleLabelStackView setCustomSpacing:firstObject3 afterView:v31 + 5.0];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

@end