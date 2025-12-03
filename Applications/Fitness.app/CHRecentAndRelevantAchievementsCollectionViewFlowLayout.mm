@interface CHRecentAndRelevantAchievementsCollectionViewFlowLayout
- (id)_transformAttributes:(id)attributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation CHRecentAndRelevantAchievementsCollectionViewFlowLayout

- (id)_transformAttributes:(id)attributes
{
  v4 = [attributes copy];
  collectionView = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self collectionView];
  delegate = [collectionView delegate];

  collectionView2 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self collectionView];
  dataSource = [collectionView2 dataSource];

  collectionView3 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self collectionView];
  [delegate collectionView:collectionView3 layout:self referenceSizeForHeaderInSection:0];
  v11 = v10;
  height = v12;

  collectionView4 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self collectionView];
  v15 = [NSIndexPath indexPathForItem:0 inSection:0];
  [delegate collectionView:collectionView4 layout:self sizeForItemAtIndexPath:v15];
  width = v16;

  collectionView5 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self collectionView];
  indexPath = [v4 indexPath];
  v20 = [dataSource collectionView:collectionView5 numberOfItemsInSection:{objc_msgSend(indexPath, "section")}];

  if (![v4 representedElementCategory])
  {
    [v4 frame];
    width = v31;
    y = height;
    x = v32 - v11;
    height = v33;
    goto LABEL_14;
  }

  if ([v4 representedElementCategory] == 1)
  {
    representedElementKind = [v4 representedElementKind];
    v22 = [representedElementKind isEqualToString:UICollectionElementKindSectionHeader];

    if (v22)
    {
      if (v20)
      {
        [v4 frame];
LABEL_14:
        [v4 setFrame:{x, y, width, height}];
        goto LABEL_15;
      }

LABEL_13:
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      goto LABEL_14;
    }
  }

  if ([v4 representedElementCategory] == 1)
  {
    representedElementKind2 = [v4 representedElementKind];
    v26 = [representedElementKind2 isEqualToString:UICollectionElementKindSectionFooter];

    if (v26)
    {
      if (v20)
      {
        [v4 frame];
        v28 = v27;
        v30 = v29;
        if (qword_1008F9A08 != -1)
        {
          sub_10069C684();
        }

        x = v28 - v11;
        width = *&qword_1008F9A00;
        height = v30 + -32.0;
        y = 16.0;
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_15:

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v17.receiver = self;
  v17.super_class = CHRecentAndRelevantAchievementsCollectionViewFlowLayout;
  v4 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)&v17 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self _transformAttributes:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = CHRecentAndRelevantAchievementsCollectionViewFlowLayout;
  v4 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:path];
  v5 = [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)self _transformAttributes:v4];

  return v5;
}

@end