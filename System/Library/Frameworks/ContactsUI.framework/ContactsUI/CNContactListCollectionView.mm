@interface CNContactListCollectionView
- (CNContactListCollectionView)init;
- (CNContactListCollectionViewDelegate)contactListCollectionViewDelegate;
- (CNContactListCountViewDelegate)countViewDelegate;
- (unint64_t)globalIndexForItemAtIndexPath:(id)path;
- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)setContactCount:(int64_t)count;
- (void)setContactCountView:(id)view;
- (void)setDuplicateCount:(int64_t)count;
- (void)setSelectedCount:(int64_t)count;
- (void)updateSelectedContactCount;
@end

@implementation CNContactListCollectionView

- (void)updateSelectedContactCount
{
  if (-[CNContactListCollectionView isEditing](self, "isEditing") && -[CNContactListCollectionView allowsMultipleSelectionDuringEditing](self, "allowsMultipleSelectionDuringEditing") && (-[CNContactListCollectionView contactListCollectionViewDelegate](self, "contactListCollectionViewDelegate"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[CNContactListCollectionView contactListCollectionViewDelegate](self, "contactListCollectionViewDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasNoContacts], v5, v4, (v6 & 1) == 0))
  {
    indexPathsForSelectedItems = [(CNContactListCollectionView *)self indexPathsForSelectedItems];
    v7 = [indexPathsForSelectedItems count];
  }

  else
  {
    v7 = -1;
  }

  [(CNContactListCollectionView *)self setSelectedCount:v7];
}

- (CNContactListCollectionViewDelegate)contactListCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactListCollectionViewDelegate);

  return WeakRetained;
}

- (CNContactListCountViewDelegate)countViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_countViewDelegate);

  return WeakRetained;
}

- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CNContactListCollectionView;
  [(CNContactListCollectionView *)&v5 deselectItemAtIndexPath:path animated:animated];
  [(CNContactListCollectionView *)self updateSelectedContactCount];
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  v6.receiver = self;
  v6.super_class = CNContactListCollectionView;
  [(CNContactListCollectionView *)&v6 selectItemAtIndexPath:path animated:animated scrollPosition:position];
  [(CNContactListCollectionView *)self updateSelectedContactCount];
}

- (void)setSelectedCount:(int64_t)count
{
  if (self->_selectedCount != count)
  {
    self->_selectedCount = count;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setSelectedCount:?];
    }
  }
}

- (void)setDuplicateCount:(int64_t)count
{
  if (self->_duplicateCount != count)
  {
    self->_duplicateCount = count;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setDuplicateCount:?];
    }
  }
}

- (void)setContactCount:(int64_t)count
{
  if (self->_contactCount != count)
  {
    self->_contactCount = count;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setContactCount:?];
    }
  }
}

- (void)setContactCountView:(id)view
{
  viewCopy = view;
  if (([viewCopy isEqual:self->_contactCountView] & 1) == 0)
  {
    objc_storeStrong(&self->_contactCountView, view);
    [(CNContactListCountFooterView *)self->_contactCountView setContactCount:[(CNContactListCollectionView *)self contactCount]];
    [(CNContactListCollectionView *)self updateSelectedContactCount];
    [(CNContactListCountFooterView *)self->_contactCountView setSelectedCount:[(CNContactListCollectionView *)self selectedCount]];
    [(CNContactListCountFooterView *)self->_contactCountView setDuplicateCount:[(CNContactListCollectionView *)self duplicateCount]];
  }
}

- (unint64_t)globalIndexForItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];
  if (section >= [(CNContactListCollectionView *)self numberOfSections]|| item >= [(CNContactListCollectionView *)self numberOfItemsInSection:section])
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (section < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v8 += [(CNContactListCollectionView *)self numberOfItemsInSection:v7++];
      }

      while (section != v7);
    }

    v9 = v8 + item;
  }

  return v9;
}

- (CNContactListCollectionView)init
{
  v6.receiver = self;
  v6.super_class = CNContactListCollectionView;
  v2 = [(CNContactListCollectionView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_countViewDelegate, 0);
    v4 = v3;
  }

  return v3;
}

@end