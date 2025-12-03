@interface PreferenceValuesDataSource
+ (void)registerCellsInCollectionView:(id)view;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PreferenceValuesDelegate)delegate;
- (id)_sections;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)rowAtIndexPath:(id)path;
- (id)sectionAtIndex:(int64_t)index;
- (id)sectionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (void)addSectionWithTitle:(id)title content:(id)content;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadContentNowIfNeeded;
- (void)prepareContentWithBlock:(id)block;
- (void)rebuildSections;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PreferenceValuesDataSource

- (PreferenceValuesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v3 = [(PreferenceValuesDataSource *)self sectionAtIndex:section];
  rows = [v3 rows];
  v5 = [rows count];

  return v5;
}

- (id)rowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(PreferenceValuesDataSource *)self sectionAtIndexPath:pathCopy];
  rows = [v5 rows];
  v7 = [pathCopy row];

  if (v7 >= [rows count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [rows objectAtIndexedSubscript:v7];
  }

  return v8;
}

- (id)sectionAtIndexPath:(id)path
{
  section = [path section];

  return [(PreferenceValuesDataSource *)self sectionAtIndex:section];
}

- (id)sectionAtIndex:(int64_t)index
{
  _sections = [(PreferenceValuesDataSource *)self _sections];
  v6 = [_sections count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    _sections2 = [(PreferenceValuesDataSource *)self _sections];
    v8 = [_sections2 objectAtIndexedSubscript:index];
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
  delegate = [(PreferenceValuesDataSource *)self delegate];
  [delegate dataSourceDidRebuildSections:self];
}

- (id)_sections
{
  [(PreferenceValuesDataSource *)self loadContentNowIfNeeded];
  sections = self->_sections;

  return sections;
}

- (void)addSectionWithTitle:(id)title content:(id)content
{
  contentCopy = content;
  titleCopy = title;
  v12 = objc_alloc_init(MapsDebugTableSection);
  [(MapsDebugTableSection *)v12 setTitle:titleCopy];

  contentCopy[2](contentCopy, v12);
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

- (void)prepareContentWithBlock:(id)block
{
  blockCopy = block;
  if (!self->_sections)
  {
    v5 = objc_alloc_init(NSMutableArray);
    mutableSections = self->_mutableSections;
    self->_mutableSections = v5;

    blockCopy[2](blockCopy, self);
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(PreferenceValuesDataSource *)self sectionAtIndex:section];
  footer = [v4 footer];

  return footer;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(PreferenceValuesDataSource *)self sectionAtIndex:section];
  title = [v4 title];

  return title;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PreferenceValuesDataSource *)self rowAtIndexPath:pathCopy];
  selectionAction = [v7 selectionAction];

  if (selectionAction)
  {
    selectionAction2 = [v7 selectionAction];
    selectionAction2[2]();
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(PreferenceValuesDataSource *)self rowAtIndexPath:path];
  selectionAction = [v4 selectionAction];
  v6 = selectionAction != 0;

  return v6;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:path];
  currentCell = [v9 currentCell];

  if (currentCell == cellCopy)
  {
    [v9 setCurrentCell:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(PreferenceValuesDataSource *)self rowAtIndexPath:path];
  v8 = [v7 cellForTableView:viewCopy];
  theme = [viewCopy theme];

  v10 = [theme _maps_colorNamed:@"BackgroundGroupedTableView"];
  [v8 setBackgroundColor:v10];

  v11 = +[UIColor clearColor];
  contentView = [v8 contentView];
  [contentView setBackgroundColor:v11];

  [v8 setOpaque:0];
  selectionAction = [v7 selectionAction];
  [v8 setSelectionStyle:selectionAction != 0];

  [v7 setCurrentCell:v8];

  return v8;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100CEA73C;
  v20[3] = &unk_101650C88;
  v21 = viewCopy;
  v11 = kindCopy;
  v22 = v11;
  v12 = pathCopy;
  v23 = v12;
  v13 = viewCopy;
  v14 = objc_retainBlock(v20);
  v15 = -[PreferenceValuesDataSource sectionAtIndex:](self, "sectionAtIndex:", [v12 section] - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  if ([v11 isEqualToString:_UICollectionViewListLayoutElementKindSectionHeader])
  {
    title = [v15 title];
    v17 = (v14[2])(v14, title, 0);
LABEL_5:
    v18 = v17;

    goto LABEL_7;
  }

  if ([v11 isEqualToString:_UICollectionViewListLayoutElementKindSectionFooter])
  {
    title = [v15 footer];
    v17 = (v14[2])(v14, title, 1);
    goto LABEL_5;
  }

  v18 = (v14[2])(v14, 0, 0);
LABEL_7:

  return v18;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item], objc_msgSend(pathCopy, "section") - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  v8 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v7];
  selectionAction = [v8 selectionAction];

  if (selectionAction)
  {
    selectionAction2 = [v8 selectionAction];
    selectionAction2[2]();
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  v8 = [NSIndexPath indexPathForItem:item inSection:section - [(PreferenceValuesDataSource *)self sectionOffset]];
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v8];
  selectionAction = [v9 selectionAction];
  LOBYTE(pathCopy) = selectionAction != 0;

  return pathCopy;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  item = [pathCopy item];
  section = [pathCopy section];

  v13 = [NSIndexPath indexPathForItem:item inSection:section - [(PreferenceValuesDataSource *)self sectionOffset]];
  v11 = [(PreferenceValuesDataSource *)self rowAtIndexPath:?];
  currentCollectionViewCell = [v11 currentCollectionViewCell];

  if (currentCollectionViewCell == cellCopy)
  {
    [v11 setCurrentCollectionViewCell:0];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item], objc_msgSend(pathCopy, "section") - -[PreferenceValuesDataSource sectionOffset](self, "sectionOffset"));
  v9 = [(PreferenceValuesDataSource *)self rowAtIndexPath:v8];
  v10 = [v9 cellForCollectionView:viewCopy forIndexPath:pathCopy];

  theme = [viewCopy theme];

  v12 = [theme _maps_colorNamed:@"BackgroundGroupedTableView"];
  [v10 setBackgroundColor:v12];

  v13 = +[UIColor clearColor];
  contentView = [v10 contentView];
  [contentView setBackgroundColor:v13];

  [v10 setOpaque:0];
  [v9 setCurrentCollectionViewCell:v10];

  return v10;
}

+ (void)registerCellsInCollectionView:(id)view
{
  viewCopy = view;
  [MapsDebugTableRow registerCellsInCollectionView:viewCopy];
  v4 = objc_opt_class();
  v5 = _UICollectionViewListLayoutElementKindSectionHeader;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [viewCopy registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = _UICollectionViewListLayoutElementKindSectionFooter;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [viewCopy registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v11];
}

@end