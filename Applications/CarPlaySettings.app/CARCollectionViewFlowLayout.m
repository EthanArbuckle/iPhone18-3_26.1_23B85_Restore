@interface CARCollectionViewFlowLayout
- (CARCollectionViewFlowLayout)init;
- (CGSize)collectionViewContentSize;
- (CGSize)lastContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation CARCollectionViewFlowLayout

- (CARCollectionViewFlowLayout)init
{
  v3.receiver = self;
  v3.super_class = CARCollectionViewFlowLayout;
  result = [(CARCollectionViewFlowLayout *)&v3 init];
  if (result)
  {
    result->_lastContentSize = CGSizeZero;
  }

  return result;
}

- (CGSize)collectionViewContentSize
{
  v16.receiver = self;
  v16.super_class = CARCollectionViewFlowLayout;
  [(CARCollectionViewFlowLayout *)&v16 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  [(CARCollectionViewFlowLayout *)self lastContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [(CARCollectionViewFlowLayout *)self setLastContentSize:v4, v6];
    v10 = [(CARCollectionViewFlowLayout *)self collectionView];
    v11 = [v10 delegate];
    v12 = [v11 conformsToProtocol:&OBJC_PROTOCOL___CARCollectionViewFlowLayoutDelegate];

    if (v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002547C;
      block[3] = &unk_1000DB670;
      block[4] = self;
      *&block[5] = v4;
      *&block[6] = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  v13 = v4;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v48.receiver = self;
  v48.super_class = CARCollectionViewFlowLayout;
  v4 = [(CARCollectionViewFlowLayout *)&v48 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(CARCollectionViewFlowLayout *)self collectionView];
  v6 = [v5 traitCollection];
  v7 = [v6 layoutDirection];

  v8 = [(CARCollectionViewFlowLayout *)self collectionView];
  [v8 frame];
  Width = CGRectGetWidth(v51);

  [(CARCollectionViewFlowLayout *)self sectionInset];
  v11 = v10;
  v13 = v12;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    if (v7 == 1)
    {
      v17 = Width - v13;
    }

    else
    {
      v17 = v11;
    }

    v18 = *v45;
    v19 = -1.0;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        [v21 frame];
        if (v22 > v19 || ([v21 frame], vabdd_f64(v23, v19) < 0.01))
        {
          [(CARCollectionViewFlowLayout *)self sectionInset];
          if (v7 == 1)
          {
            v17 = Width - v25;
          }

          else
          {
            v17 = v24;
          }
        }

        v26 = [v21 representedElementKind];
        v27 = [v26 isEqualToString:UICollectionElementKindSectionHeader];

        if (v27)
        {
          [v21 frame];
          v29 = v28;
          [v21 frame];
          v31 = v30;
          [v21 frame];
          [v21 setFrame:{0.0, v29, v31}];
        }

        else
        {
          v32 = v17;
          if (v7 == 1)
          {
            [v21 frame];
            v32 = v17 - v33;
          }

          [v21 frame];
          v35 = v34;
          [v21 frame];
          v37 = v36;
          [v21 frame];
          [v21 setFrame:{v32, v35, v37}];
          [v21 frame];
          v39 = v38;
          [(CARCollectionViewFlowLayout *)self minimumInteritemSpacing];
          v41 = v40 + v39;
          if (v7 == 1)
          {
            v41 = -v41;
          }

          v17 = v17 + v41;
        }

        [v21 frame];
        MaxY = CGRectGetMaxY(v52);
        if (MaxY >= v19)
        {
          v19 = MaxY;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v16);
  }

  return v14;
}

- (CGSize)lastContentSize
{
  width = self->_lastContentSize.width;
  height = self->_lastContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end