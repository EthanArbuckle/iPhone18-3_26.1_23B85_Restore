@interface NTKCFaceDetailKaleidoscopeEditOptionCell
- (NTKCFaceDetailKaleidoscopeEditOptionCellDelegate)delegate;
- (void)_setupFromCollection;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)selectUserOption;
- (void)setUserOptionIndex:(int64_t)a3;
@end

@implementation NTKCFaceDetailKaleidoscopeEditOptionCell

- (void)_setupFromCollection
{
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self setUserOptionIndex:0x7FFFFFFFFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v3 _setupFromCollection];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
  v9 = a5;
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v11 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:v9];
  v10 = [v9 row];

  if (v10 == self->_userOptionIndex)
  {
    [v8 setActive:0 animated:0];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row] == self->_userOptionIndex)
  {
    v8 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self delegate];
    [v8 kaleidoscopeEditOptionCellDidSelectUserOption:self];

    [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _ensureIndexPathVisible:v7 animated:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
    [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v9 collectionView:v6 didSelectItemAtIndexPath:v7];
  }
}

- (void)setUserOptionIndex:(int64_t)a3
{
  if (self->_userOptionIndex != a3)
  {
    self->_userOptionIndex = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView];
      v5 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _indexPathForEditOptionIndex:self->_userOptionIndex];
      v6 = [v4 cellForItemAtIndexPath:v5];

      [v6 setActive:0 animated:0];
    }
  }
}

- (void)selectUserOption
{
  v3 = +[CLKDevice currentDevice];
  v4 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v3];

  v5 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collection];
  v6 = [v5 options];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _indexPathForEditOptionIndex:v7];
    v9 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView];
    v10 = [v9 indexPathsForVisibleItems];
    v11 = [v10 containsObject:v8];

    if (v11)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_77E0;
      v16 = &unk_249B0;
      v17 = self;
      v18 = v8;
      [UIView performWithoutAnimation:&v13];
    }

    v12 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView:v13];
    [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView:v12 didSelectItemAtIndexPath:v8];
  }
}

- (NTKCFaceDetailKaleidoscopeEditOptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end