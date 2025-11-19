@interface PreferenceValuesDataSource
+ (void)registerCellsInCollectionView:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PreferenceValuesDelegate)delegate;
- (id)_sections;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)rowAtIndexPath:(id)a3;
- (id)sectionAtIndex:(int64_t)a3;
- (id)sectionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (void)addSectionWithTitle:(id)a3 content:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadContentNowIfNeeded;
- (void)prepareContentWithBlock:(id)a3;
- (void)rebuildSections;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PreferenceValuesDataSource

- (PreferenceValuesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v3 = [(PreferenceValuesDataSource *)self sectionAtIndex:a3];
  v4 = [v3 rows];
  v5 = [v4 count];

  return v5;
}

- (id)rowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PreferenceValuesDataSource *)self sectionAtIndexPath:v4];
  v6 = [v5 rows];
  v7 = [v4 row];

  if (v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (id)sectionAtIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(PreferenceValuesDataSource *)self sectionAtIndex:v4];
}

- (id)sectionAtIndex:(int64_t)a3
{
  v5 = [(PreferenceValuesDataSource *)self _sections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(PreferenceValuesDataSource *)self _sections];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (void)loadContentNowIfNeeded
{
  if (!self->_sections)
  {
    v3 = objc_alloc_init(NSMutableArray);
    mutableSections = self->_mutableSections;
    self->_mutableSections = v3;

    [(PreferenceValuesDataSource *)self prepareContent];
    v5 = [(NSMutableArray *)self->_mutableSections copy];
    sections = self->_sections;
    self->_sections = v5;

    v7 = self->_mutableSections;
    self->_mutableSections = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_sections;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) commit];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)rebuildSections
{
  sections = self->_sections;
  self->_sections = 0;

  [(PreferenceValuesDataSource *)self loadContentNowIfNeeded];
  v4 = [(PreferenceValuesDataSource *)self delegate];
  [v4 dataSourceDidRebuildSections:self];
}

- (id)_sections
{
  [(PreferenceValuesDataSource *)self loadContentNowIfNeeded];
  sections = self->_sections;

  return sections;
}

- (void)addSectionWithTitle:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_alloc_init(MapsDebugTableSection);
  [(MapsDebugTableSection *)v12 setTitle:v7];

  v6[2](v6, v12);
  [(MapsDebugTableSection *)v12 commit];
  mutableSections = self->_mutableSections;
  if (mutableSections)
  {
    [(NSMutableArray *)mutableSections addObject:v12];
  }

  else
  {
    if (self->_sections)
    {
      sections = self->_sections;
    }

    else
    {
      sections = &__NSArray0__struct;
    }

    v10 = [(NSArray *)sections arrayByAddingObject:v12];
    v11 = self->_sections;
    self->_sections = v10;
  }
}

- (void)prepareContentWithBlock:(id)a3
{
  v4 = a3;
  if (!self->_sections)
  {
    v5 = objc_alloc_init(NSMutableArray);
    mutableSections = self->_mutableSections;
    self->_mutableSections = v5;

    v4[2](v4, self);
    v7 = [(NSMutableArray *)self->_mutableSections copy];
    sections = self->_sections;
    self->_sections = v7;

    v9 = self->_mutableSections;
    self->_mutableSections = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_sections;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14) commit];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(PreferenceValuesDataSource *)self sectionAtIndex:a4];
  v5 = [v4 footer];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(PreferenceValuesDataSource *)self sectionAtIndex:a4];
  v5 = [v4 title];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v6];
  v8 = [v7 selectionAction];

  if (v8)
  {
    v9 = [v7 selectionAction];
    v9[2]();
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(PreferenceValuesDataSource *)self rowAtIndexPath:a4];
  v5 = [v4 selectionAction];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:a5];
  v8 = [v9 currentCell];

  if (v8 == v7)
  {
    [v9 setCurrentCell:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(PreferenceValuesDataSource *)self rowAtIndexPath:a4];
  v8 = [v7 cellForTableView:v6];
  v9 = [v6 theme];

  v10 = [v9 _maps_colorNamed:@"BackgroundGroupedTableView"];
  [v8 setBackgroundColor:v10];

  v11 = +[UIColor clearColor];
  v12 = [v8 contentView];
  [v12 setBackgroundColor:v11];

  [v8 setOpaque:0];
  v13 = [v7 selectionAction];
  [v8 setSelectionStyle:v13 != 0];

  [v7 setCurrentCell:v8];

  return v8;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100CEA73C;
  v20[3] = &unk_101650C88;
  v21 = v8;
  v11 = v9;
  v22 = v11;
  v12 = v10;
  v23 = v12;
  v13 = v8;
  v14 = objc_retainBlock(v20);
  v15 = -[PreferenceValuesDataSource sectionAtIndex:](self, "sectionAtIndex:", [v12 section] - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  if ([v11 isEqualToString:_UICollectionViewListLayoutElementKindSectionHeader])
  {
    v16 = [v15 title];
    v17 = (v14[2])(v14, v16, 0);
LABEL_5:
    v18 = v17;

    goto LABEL_7;
  }

  if ([v11 isEqualToString:_UICollectionViewListLayoutElementKindSectionFooter])
  {
    v16 = [v15 footer];
    v17 = (v14[2])(v14, v16, 1);
    goto LABEL_5;
  }

  v18 = (v14[2])(v14, 0, 0);
LABEL_7:

  return v18;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v6 item], objc_msgSend(v6, "section") - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  v8 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v7];
  v9 = [v8 selectionAction];

  if (v9)
  {
    v10 = [v8 selectionAction];
    v10[2]();
  }

  [v11 deselectItemAtIndexPath:v6 animated:1];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 item];
  v7 = [v5 section];

  v8 = [NSIndexPath indexPathForItem:v6 inSection:v7 - [(PreferenceValuesDataSource *)self sectionOffset]];
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v8];
  v10 = [v9 selectionAction];
  LOBYTE(v5) = v10 != 0;

  return v5;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v7 item];
  v10 = [v7 section];

  v13 = [NSIndexPath indexPathForItem:v9 inSection:v10 - [(PreferenceValuesDataSource *)self sectionOffset]];
  v11 = [(PreferenceValuesDataSource *)self rowAtIndexPath:?];
  v12 = [v11 currentCollectionViewCell];

  if (v12 == v8)
  {
    [v11 setCurrentCollectionViewCell:0];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v6 item], objc_msgSend(v6, "section") - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v8];
  v10 = [v9 cellForCollectionView:v7 forIndexPath:v6];

  v11 = [v7 theme];

  v12 = [v11 _maps_colorNamed:@"BackgroundGroupedTableView"];
  [v10 setBackgroundColor:v12];

  v13 = +[UIColor clearColor];
  v14 = [v10 contentView];
  [v14 setBackgroundColor:v13];

  [v10 setOpaque:0];
  [v9 setCurrentCollectionViewCell:v10];

  return v10;
}

+ (void)registerCellsInCollectionView:(id)a3
{
  v3 = a3;
  [MapsDebugTableRow registerCellsInCollectionView:v3];
  v4 = objc_opt_class();
  v5 = _UICollectionViewListLayoutElementKindSectionHeader;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = _UICollectionViewListLayoutElementKindSectionFooter;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v3 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v11];
}

@end