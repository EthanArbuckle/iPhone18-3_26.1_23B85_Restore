@interface MFCollectionViewPagingAnimator
- (MFCollectionViewPagingAnimator)initWithCollectionView:(id)a3;
- (void)bounceAlongEdge:(unint64_t)a3;
- (void)cancelAllAnimations;
- (void)scrollToItemAtIndexPath:(id)a3 dynamicOffset:(id)a4 shouldAdjustToShowPreviousMessage:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
@end

@implementation MFCollectionViewPagingAnimator

- (MFCollectionViewPagingAnimator)initWithCollectionView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFCollectionViewPagingAnimator;
  v5 = [(MFCollectionViewPagingAnimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFCollectionViewPagingAnimator *)v5 setCollectionView:v4];
  }

  return v6;
}

- (void)scrollToItemAtIndexPath:(id)a3 dynamicOffset:(id)a4 shouldAdjustToShowPreviousMessage:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  [(MFCollectionViewPagingAnimator *)self cancelAllAnimations];
  v15 = [(MFCollectionViewPagingAnimator *)self collectionView];
  [v15 _systemContentInset];
  v17 = v16;
  [v15 contentInset];
  if (v13)
  {
    [v15 mf_contentOffsetApplyingDynamicOffset:v13 indexPath:v12];
    v20 = v19;
  }

  else
  {
    v21 = v17 + v18;
    if ([v12 item])
    {
      v22 = [(MFCollectionViewPagingAnimator *)self collectionView];
      v23 = [v22 layoutAttributesForItemAtIndexPath:v12];

      if (v23)
      {
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        if (v9)
        {
          [(MFCollectionViewPagingAnimator *)self autoScrollOffsetAdjustment];
        }

        else
        {
          [(MFCollectionViewPagingAnimator *)self autoScrollOffsetAdjustmentWithoutPreviousMessage];
        }

        v33 = v32;
        v43.origin.x = v25;
        v43.origin.y = v27;
        v43.size.width = v29;
        v43.size.height = v31;
        v20 = CGRectGetMinY(v43) - (v21 + v33);
      }

      else
      {
        v20 = 0.0;
      }
    }

    else
    {
      v20 = -v21;
    }
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001B46D8;
  v39[3] = &unk_10064EF40;
  v34 = v15;
  v40 = v34;
  v41 = v20;
  v42 = v8;
  v35 = objc_retainBlock(v39);
  v36 = v35;
  if (v8)
  {
    [(MFCollectionViewPagingAnimator *)self setAnimatingScroll:1];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001B4854;
    v37[3] = &unk_10064FAE0;
    v37[4] = self;
    v38 = v14;
    [UIView animateWithDuration:0 delay:v36 usingSpringWithDamping:v37 initialSpringVelocity:0.45 options:0.0 animations:1.0 completion:0.0];
  }

  else
  {
    (v35[2])(v35);
    if (v14)
    {
      v14[2](v14);
    }
  }
}

- (void)bounceAlongEdge:(unint64_t)a3
{
  if (a3 != 1 && a3 != 4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFCollectionViewPagingAnimator.m" lineNumber:98 description:@"bounceOnEdge currently only supports UIRectEdgeTop and UIRectEdgeBottom"];
  }

  [(MFCollectionViewPagingAnimator *)self cancelAllAnimations];
  v7 = [(MFCollectionViewPagingAnimator *)self collectionView];
  v8 = v7;
  if (a3 == 1)
  {
    [v7 contentInset];
    v10 = -v9;
    v11 = -70.0 - v9;
  }

  else
  {
    [v7 contentSize];
    v13 = v12;
    [v8 frame];
    Height = CGRectGetHeight(v26);
    [v8 contentInset];
    v16 = v15;
    [v8 contentOffset];
    if (v13 - (Height - v16) >= v17)
    {
      v10 = v13 - (Height - v16);
    }

    else
    {
      v10 = v17;
    }

    v11 = v10 + 70.0;
  }

  [(MFCollectionViewPagingAnimator *)self setAnimatingScroll:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001B4AD8;
  v23[3] = &unk_10064DE08;
  v24 = v8;
  v25 = v11;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001B4AE8;
  v19[3] = &unk_100653920;
  v18 = v24;
  v22 = v10;
  v20 = v18;
  v21 = self;
  [UIView animateWithDuration:0x10000 delay:v23 options:v19 animations:0.2 completion:0.0];
}

- (void)cancelAllAnimations
{
  v4 = [(MFCollectionViewPagingAnimator *)self collectionView];
  v3 = [v4 layer];
  [v3 removeAllAnimations];

  v5 = [(MFCollectionViewPagingAnimator *)self collectionView];
  [v5 _stopScrollingAndZoomingAnimations];
}

@end