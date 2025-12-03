@interface SettingsPanelCollectionSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)needsScrollBar;
- (CARSettingsCollectionPanel)panel;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SettingsPanelCollectionSource)initWithPanel:(id)panel sections:(id)sections;
- (SettingsPanelCollectionSource)initWithPanel:(id)panel specifiers:(id)specifiers;
- (id)_specifierAtIndexPath:(id)path;
- (id)accessibilityNumberFormatter;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateContentSize:(CGSize)size;
- (void)setNeedsScrollBar:(BOOL)bar;
@end

@implementation SettingsPanelCollectionSource

- (SettingsPanelCollectionSource)initWithPanel:(id)panel specifiers:(id)specifiers
{
  panelCopy = panel;
  specifiersCopy = specifiers;
  v11.receiver = self;
  v11.super_class = SettingsPanelCollectionSource;
  v8 = [(SettingsPanelCollectionSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_panel, panelCopy);
    objc_storeStrong(&v9->_specifiers, specifiers);
  }

  return v9;
}

- (SettingsPanelCollectionSource)initWithPanel:(id)panel sections:(id)sections
{
  panelCopy = panel;
  sectionsCopy = sections;
  v11.receiver = self;
  v11.super_class = SettingsPanelCollectionSource;
  v8 = [(SettingsPanelCollectionSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_panel, panelCopy);
    objc_storeStrong(&v9->_sections, sections);
  }

  return v9;
}

- (BOOL)needsScrollBar
{
  panel = [(SettingsPanelCollectionSource *)self panel];
  needsScrollBar = [panel needsScrollBar];

  return needsScrollBar;
}

- (void)setNeedsScrollBar:(BOOL)bar
{
  barCopy = bar;
  panel = [(SettingsPanelCollectionSource *)self panel];
  [panel setNeedsScrollBar:barCopy];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sections = [(SettingsPanelCollectionSource *)self sections];

  if (!sections)
  {
    return 1;
  }

  sections2 = [(SettingsPanelCollectionSource *)self sections];
  v6 = [sections2 count];

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  sections = [(SettingsPanelCollectionSource *)self sections];

  if (sections)
  {
    sections2 = [(SettingsPanelCollectionSource *)self sections];
    specifiers2 = [sections2 objectAtIndexedSubscript:section];

    specifiers = [specifiers2 specifiers];
    v10 = [specifiers count];
  }

  else
  {
    specifiers2 = [(SettingsPanelCollectionSource *)self specifiers];
    v10 = [specifiers2 count];
  }

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CARSettingsCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:pathCopy];
  [v9 setSpecifier:v10];

  v11 = [pathCopy row];
  v12 = [NSNumber numberWithInteger:v11 + 1];
  accessibilityNumberFormatter = [(SettingsPanelCollectionSource *)self accessibilityNumberFormatter];
  v14 = [accessibilityNumberFormatter stringFromNumber:v12];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [v9 setAccessibilityUserInputLabels:v15];

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([kind isEqualToString:UICollectionElementKindSectionHeader])
  {
    v10 = +[CARSettingsCollectionViewHeader reuseIdentifier];
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v10 forIndexPath:pathCopy];

    sections = [(SettingsPanelCollectionSource *)self sections];
    v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    title = [v13 title];
    [v11 setTitle:title];

    panel = [(SettingsPanelCollectionSource *)self panel];
    [panel effectiveSectionHeaderInset];
    [v11 setSectionInsets:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectionView:(id)view didUpdateContentSize:(CGSize)size
{
  height = size.height;
  [view frame];

  [(SettingsPanelCollectionSource *)self setNeedsScrollBar:height > v6];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:path];
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

  canBecomeFocused = [v6 canBecomeFocused];
  return canBecomeFocused;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:path];
  actionBlock = [v6 actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [v6 actionBlock];
    actionBlock2[2](actionBlock2, 0);
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  v8 = [(SettingsPanelCollectionSource *)self _specifierAtIndexPath:path];
  [v8 intrinsicContentSize];
  v11 = v10;
  v12 = v9;
  if (v10 == UIViewNoIntrinsicMetric && v9 == UIViewNoIntrinsicMetric)
  {
    panel = [(SettingsPanelCollectionSource *)self panel];
    [panel calculatedCellWidth];
    v16 = floor(v15);
    v11 = v16 * 0.5 + v16 * 0.5;

    panel2 = [(SettingsPanelCollectionSource *)self panel];
    [panel2 calculatedCellHeight];
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

      traitCollection = [viewCopy traitCollection];
      [traitCollection displayScale];
      UIFloorToScale();
      v11 = v24;
    }

    else
    {
      traitCollection = [viewCopy traitCollection];
      [traitCollection displayScale];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v7 = [(SettingsPanelCollectionSource *)self sections:view];

  if (v7)
  {
    sections = [(SettingsPanelCollectionSource *)self sections];
    v9 = [sections objectAtIndexedSubscript:section];

    title = [v9 title];

    if (title)
    {
      width = 1.0;
    }

    else
    {
      width = CGSizeZero.width;
    }

    if (title)
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

- (id)_specifierAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(SettingsPanelCollectionSource *)self sections];

  if (sections)
  {
    sections2 = [(SettingsPanelCollectionSource *)self sections];
    specifiers2 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    specifiers = [specifiers2 specifiers];
    v9 = [pathCopy row];

    v10 = [specifiers objectAtIndexedSubscript:v9];
  }

  else
  {
    specifiers2 = [(SettingsPanelCollectionSource *)self specifiers];
    v11 = [pathCopy row];

    v10 = [specifiers2 objectAtIndexedSubscript:v11];
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