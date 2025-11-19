@interface CNContactListCollectionView
- (CNContactListCollectionView)init;
- (CNContactListCollectionViewDelegate)contactListCollectionViewDelegate;
- (CNContactListCountViewDelegate)countViewDelegate;
- (unint64_t)globalIndexForItemAtIndexPath:(id)a3;
- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setContactCount:(int64_t)a3;
- (void)setContactCountView:(id)a3;
- (void)setDuplicateCount:(int64_t)a3;
- (void)setSelectedCount:(int64_t)a3;
- (void)updateSelectedContactCount;
@end

@implementation CNContactListCollectionView

- (void)updateSelectedContactCount
{
  if (-[CNContactListCollectionView isEditing](self, "isEditing") && -[CNContactListCollectionView allowsMultipleSelectionDuringEditing](self, "allowsMultipleSelectionDuringEditing") && (-[CNContactListCollectionView contactListCollectionViewDelegate](self, "contactListCollectionViewDelegate"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[CNContactListCollectionView contactListCollectionViewDelegate](self, "contactListCollectionViewDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasNoContacts], v5, v4, (v6 & 1) == 0))
  {
    v8 = [(CNContactListCollectionView *)self indexPathsForSelectedItems];
    v7 = [v8 count];
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

- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CNContactListCollectionView;
  [(CNContactListCollectionView *)&v5 deselectItemAtIndexPath:a3 animated:a4];
  [(CNContactListCollectionView *)self updateSelectedContactCount];
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = CNContactListCollectionView;
  [(CNContactListCollectionView *)&v6 selectItemAtIndexPath:a3 animated:a4 scrollPosition:a5];
  [(CNContactListCollectionView *)self updateSelectedContactCount];
}

- (void)setSelectedCount:(int64_t)a3
{
  if (self->_selectedCount != a3)
  {
    self->_selectedCount = a3;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setSelectedCount:?];
    }
  }
}

- (void)setDuplicateCount:(int64_t)a3
{
  if (self->_duplicateCount != a3)
  {
    self->_duplicateCount = a3;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setDuplicateCount:?];
    }
  }
}

- (void)setContactCount:(int64_t)a3
{
  if (self->_contactCount != a3)
  {
    self->_contactCount = a3;
    contactCountView = self->_contactCountView;
    if (contactCountView)
    {
      [(CNContactListCountFooterView *)contactCountView setContactCount:?];
    }
  }
}

- (void)setContactCountView:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_contactCountView] & 1) == 0)
  {
    objc_storeStrong(&self->_contactCountView, a3);
    [(CNContactListCountFooterView *)self->_contactCountView setContactCount:[(CNContactListCollectionView *)self contactCount]];
    [(CNContactListCollectionView *)self updateSelectedContactCount];
    [(CNContactListCountFooterView *)self->_contactCountView setSelectedCount:[(CNContactListCollectionView *)self selectedCount]];
    [(CNContactListCountFooterView *)self->_contactCountView setDuplicateCount:[(CNContactListCollectionView *)self duplicateCount]];
  }
}

- (unint64_t)globalIndexForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v4 section];
  if (v6 >= [(CNContactListCollectionView *)self numberOfSections]|| v5 >= [(CNContactListCollectionView *)self numberOfItemsInSection:v6])
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v6 < 1)
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

      while (v6 != v7);
    }

    v9 = v8 + v5;
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