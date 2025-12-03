@interface NTKCFaceDetailKaleidoscopeEditOptionCell
- (NTKCFaceDetailKaleidoscopeEditOptionCellDelegate)delegate;
- (void)_setupFromCollection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)selectUserOption;
- (void)setUserOptionIndex:(int64_t)index;
@end

@implementation NTKCFaceDetailKaleidoscopeEditOptionCell

- (void)_setupFromCollection
{
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self setUserOptionIndex:0x7FFFFFFFFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v3 _setupFromCollection];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
  pathCopy = path;
  [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v11 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  v10 = [pathCopy row];

  if (v10 == self->_userOptionIndex)
  {
    [cellCopy setActive:0 animated:0];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] == self->_userOptionIndex)
  {
    delegate = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self delegate];
    [delegate kaleidoscopeEditOptionCellDidSelectUserOption:self];

    [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _ensureIndexPathVisible:pathCopy animated:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKCFaceDetailKaleidoscopeEditOptionCell;
    [(NTKCFaceDetailKaleidoscopeEditOptionCell *)&v9 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }
}

- (void)setUserOptionIndex:(int64_t)index
{
  if (self->_userOptionIndex != index)
  {
    self->_userOptionIndex = index;
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      collectionView = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView];
      v5 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _indexPathForEditOptionIndex:self->_userOptionIndex];
      v6 = [collectionView cellForItemAtIndexPath:v5];

      [v6 setActive:0 animated:0];
    }
  }
}

- (void)selectUserOption
{
  v3 = +[CLKDevice currentDevice];
  v4 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v3];

  collection = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collection];
  options = [collection options];
  v7 = [options indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self _indexPathForEditOptionIndex:v7];
    collectionView = [(NTKCFaceDetailKaleidoscopeEditOptionCell *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v11 = [indexPathsForVisibleItems containsObject:v8];

    if (v11)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_77E0;
      v16 = &unk_249B0;
      selfCopy = self;
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