@interface SettingsPanelCollectionSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)needsScrollBar;
- (CARSettingsCollectionPanel)panel;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SettingsPanelCollectionSource)initWithPanel:(id)a3 sections:(id)a4;
- (SettingsPanelCollectionSource)initWithPanel:(id)a3 specifiers:(id)a4;
- (id)_specifierAtIndexPath:(id)a3;
- (id)accessibilityNumberFormatter;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateContentSize:(CGSize)a4;
- (void)setNeedsScrollBar:(BOOL)a3;
@end

@implementation SettingsPanelCollectionSource

- (SettingsPanelCollectionSource)initWithPanel:(id)a3 specifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SettingsPanelCollectionSource;
  v8 = [(SettingsPanelCollectionSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_panel, v6);
    objc_storeStrong(&v9->_specifiers, a4);
  }

  return v9;
}

- (SettingsPanelCollectionSource)initWithPanel:(id)a3 sections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SettingsPanelCollectionSource;
  v8 = [(SettingsPanelCollectionSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_panel, v6);
    objc_storeStrong(&v9->_sections, a4);
  }

  return v9;
}

- (BOOL)needsScrollBar
{
  v2 = [(SettingsPanelCollectionSource *)self panel];
  v3 = [v2 needsScrollBar];

  return v3;
}

- (void)setNeedsScrollBar:(BOOL)a3
{
  v3 = a3;
  v4 = [(SettingsPanelCollectionSource *)self panel];
  [v4 setNeedsScrollBar:v3];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [(SettingsPanelCollectionSource *)self sections];

  if (!v4)
  {
    return 1;
  }

  v5 = [(SettingsPanelCollectionSource *)self sections];
  v6 = [v5 count];

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(SettingsPanelCollectionSource *)self sections];

  if (v6)
  {
    v7 = [(SettingsPanelCollectionSource *)self sections];
    v8 = [v7 objectAtIndexedSubscript:a4];

    v9 = [v8 specifiers];
    v10 = [v9 count];
  }

  else
  {
    v8 = [(SettingsPanelCollectionSource *)self specifiers];
    v10 = [v8 count];
  }

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CARSettingsCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:v6];
  [v9 setSpecifier:v10];

  v11 = [v6 row];
  v12 = [NSNumber numberWithInteger:v11 + 1];
  v13 = [(SettingsPanelCollectionSource *)self accessibilityNumberFormatter];
  v14 = [v13 stringFromNumber:v12];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [v9 setAccessibilityUserInputLabels:v15];

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:UICollectionElementKindSectionHeader])
  {
    v10 = +[CARSettingsCollectionViewHeader reuseIdentifier];
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v10 forIndexPath:v9];

    v12 = [(SettingsPanelCollectionSource *)self sections];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

    v14 = [v13 title];
    [v11 setTitle:v14];

    v15 = [(SettingsPanelCollectionSource *)self panel];
    [v15 effectiveSectionHeaderInset];
    [v11 setSectionInsets:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectionView:(id)a3 didUpdateContentSize:(CGSize)a4
{
  height = a4.height;
  [a3 frame];

  [(SettingsPanelCollectionSource *)self setNeedsScrollBar:height > v6];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:a4];
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 canBecomeFocused];
  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:a4];
  v4 = [v6 actionBlock];

  if (v4)
  {
    v5 = [v6 actionBlock];
    v5[2](v5, 0);
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:a5];
  [v8 intrinsicContentSize];
  v11 = v10;
  v12 = v9;
  if (v10 == UIViewNoIntrinsicMetric && v9 == UIViewNoIntrinsicMetric)
  {
    v14 = [(SettingsPanelCollectionSource *)self panel];
    [v14 calculatedCellWidth];
    v16 = floor(v15);
    v11 = v16 * 0.5 + v16 * 0.5;

    v17 = [(SettingsPanelCollectionSource *)self panel];
    [v17 calculatedCellHeight];
    v19 = v18;

    [v8 systemLayoutSizeFittingSize:{v11, UILayoutFittingCompressedSize.height}];
    if (v20 == 0.0)
    {
      v21 = floor(v19);
      v12 = v21 * 0.5 + v21 * 0.5;
      [v8 systemLayoutSizeFittingSize:?];
      if (v22 <= 0.0)
      {
        goto LABEL_11;
      }

      v23 = [v7 traitCollection];
      [v23 displayScale];
      UIFloorToScale();
      v11 = v24;
    }

    else
    {
      v23 = [v7 traitCollection];
      [v23 displayScale];
      UIFloorToScale();
      v12 = v25;
    }
  }

LABEL_11:

  v26 = v11;
  v27 = v12;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = [(SettingsPanelCollectionSource *)self sections:a3];

  if (v7)
  {
    v8 = [(SettingsPanelCollectionSource *)self sections];
    v9 = [v8 objectAtIndexedSubscript:a5];

    v10 = [v9 title];

    if (v10)
    {
      width = 1.0;
    }

    else
    {
      width = CGSizeZero.width;
    }

    if (v10)
    {
      height = 32.0;
    }

    else
    {
      height = CGSizeZero.height;
    }
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)_specifierAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SettingsPanelCollectionSource *)self sections];

  if (v5)
  {
    v6 = [(SettingsPanelCollectionSource *)self sections];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    v8 = [v7 specifiers];
    v9 = [v4 row];

    v10 = [v8 objectAtIndexedSubscript:v9];
  }

  else
  {
    v7 = [(SettingsPanelCollectionSource *)self specifiers];
    v11 = [v4 row];

    v10 = [v7 objectAtIndexedSubscript:v11];
  }

  return v10;
}

- (id)accessibilityNumberFormatter
{
  if (qword_100101EE8 != -1)
  {
    sub_100091984();
  }

  v3 = qword_100101EE0;

  return v3;
}

- (CARSettingsCollectionPanel)panel
{
  WeakRetained = objc_loadWeakRetained(&self->_panel);

  return WeakRetained;
}

@end