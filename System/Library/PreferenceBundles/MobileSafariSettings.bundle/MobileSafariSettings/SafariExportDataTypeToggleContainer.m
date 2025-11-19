@interface SafariExportDataTypeToggleContainer
- (SafariExportDataTypeToggleContainer)initWithFrame:(CGRect)a3;
- (SafariExportDataTypeToggleContainerDelegate)delegate;
- (void)didTapExportDataTypeToggle:(id)a3;
- (void)showSpinnerForBrowsingDataExportType:(unint64_t)a3;
- (void)updateCountOfBrowsingDataExportType:(unint64_t)a3 count:(unint64_t)a4;
@end

@implementation SafariExportDataTypeToggleContainer

- (SafariExportDataTypeToggleContainer)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = SafariExportDataTypeToggleContainer;
  v3 = [(SafariExportDataTypeToggleContainer *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SafariExportDataTypeToggleContainer *)v3 setAxis:1];
    [(SafariExportDataTypeToggleContainer *)v4 setAlignment:0];
    [(SafariExportDataTypeToggleContainer *)v4 setDistribution:0];
    [(SafariExportDataTypeToggleContainer *)v4 setLayoutMarginsRelativeArrangement:1];
    [(SafariExportDataTypeToggleContainer *)v4 setLayoutMargins:10.0, 0.0, 0.0, 0.0];
    [(SafariExportDataTypeToggleContainer *)v4 setSpacing:5.0];
    v5 = +[NSMutableDictionary dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = +[WBSBrowsingDataExportController orderedBrowsingDataExportTypesForDisplay];
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = -[SafariExportDataTypeToggle initWithBrowsingDataExportType:]([SafariExportDataTypeToggle alloc], "initWithBrowsingDataExportType:", [v11 unsignedIntegerValue]);
          [(SafariExportDataTypeToggle *)v12 addTarget:v4 action:"didTapExportDataTypeToggle:" forControlEvents:64];
          [(SafariExportDataTypeToggleContainer *)v4 addArrangedSubview:v12];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&v4->_exportDataTypeToggles, v5);
    v13 = [(NSDictionary *)v4->_exportDataTypeToggles allValues];
    v14 = [v13 safari_reduceObjectsWithInitialValue:&off_90C58 usingBlock:&__block_literal_global_21];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [(NSDictionary *)v4->_exportDataTypeToggles allValues];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      height = UILayoutFittingCompressedSize.height;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v37 + 1) + 8 * j);
          v22 = [v21 iconStackView];
          [v22 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
          v24 = v23;

          [v14 doubleValue];
          v26 = v25 - v24;
          v27 = [v21 iconStackView];
          v28 = [v27 subviews];
          v29 = v26 / ([v28 count] - 1);

          v30 = [v21 iconStackView];
          [v30 spacing];
          [v30 setSpacing:v29 + v31];

          v32 = [v21 iconStackView];
          v33 = [v32 widthAnchor];
          [v14 doubleValue];
          v34 = [v33 constraintEqualToConstant:?];
          [v34 setActive:1];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v17);
    }

    v35 = v4;
  }

  return v4;
}

NSNumber *__cdecl __53__SafariExportDataTypeToggleContainer_initWithFrame___block_invoke(id a1, SafariExportDataTypeToggle *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = [(SafariExportDataTypeToggle *)a2 iconStackView];
  [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;

  [(NSNumber *)v4 doubleValue];
  if (v7 <= v8)
  {
    [(NSNumber *)v4 doubleValue];
    v7 = v9;
  }

  v10 = [NSNumber numberWithDouble:v7];

  return v10;
}

- (void)didTapExportDataTypeToggle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 browsingDataExportType];

  [WeakRetained sender:self didToggleBrowsingDataExportType:v5];
}

- (void)updateCountOfBrowsingDataExportType:(unint64_t)a3 count:(unint64_t)a4
{
  exportDataTypeToggles = self->_exportDataTypeToggles;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [(NSDictionary *)exportDataTypeToggles objectForKeyedSubscript:v7];

  v9 = [NSNumber numberWithUnsignedInteger:a4];
  [v8 setCount:v9];

  v10 = [v8 labelStackView];
  [v10 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v12 = v11;

  v13 = [v8 labelStackView];
  [v13 frame];
  v15 = v14;

  if (v12 > v15)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [(NSDictionary *)self->_exportDataTypeToggles allValues];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * v20) layoutLabelsVertically];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }
}

- (void)showSpinnerForBrowsingDataExportType:(unint64_t)a3
{
  exportDataTypeToggles = self->_exportDataTypeToggles;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [(NSDictionary *)exportDataTypeToggles objectForKeyedSubscript:v5];
  [v4 showSpinner];
}

- (SafariExportDataTypeToggleContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end