@interface MFCollectionViewPagingAnimator
- (MFCollectionViewPagingAnimator)initWithCollectionView:(id)view;
- (void)bounceAlongEdge:(unint64_t)edge;
- (void)cancelAllAnimations;
- (void)scrollToItemAtIndexPath:(id)path dynamicOffset:(id)offset shouldAdjustToShowPreviousMessage:(BOOL)message animated:(BOOL)animated completion:(id)completion;
@end

@implementation MFCollectionViewPagingAnimator

- (MFCollectionViewPagingAnimator)initWithCollectionView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = MFCollectionViewPagingAnimator;
  v5 = [(MFCollectionViewPagingAnimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFCollectionViewPagingAnimator *)v5 setCollectionView:viewCopy];
  }

  return v6;
}

- (void)scrollToItemAtIndexPath:(id)path dynamicOffset:(id)offset shouldAdjustToShowPreviousMessage:(BOOL)message animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  messageCopy = message;
  pathCopy = path;
  offsetCopy = offset;
  completionCopy = completion;
  [(MFCollectionViewPagingAnimator *)self cancelAllAnimations];
  collectionView = [(MFCollectionViewPagingAnimator *)self collectionView];
  [collectionView _systemContentInset];
  v17 = v16;
  [collectionView contentInset];
  if (offsetCopy)
  {
    [collectionView mf_contentOffsetApplyingDynamicOffset:offsetCopy indexPath:pathCopy];
    v20 = v19;
  }

  else
  {
    v21 = v17 + v18;
    if ([pathCopy item])
    {
      collectionView2 = [(MFCollectionViewPagingAnimator *)self collectionView];
      v23 = [collectionView2 layoutAttributesForItemAtIndexPath:pathCopy];

      if (v23)
      {
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        if (messageCopy)
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
  v34 = collectionView;
  v40 = v34;
  v41 = v20;
  v42 = animatedCopy;
  v35 = objc_retainBlock(v39);
  v36 = v35;
  if (animatedCopy)
  {
    [(MFCollectionViewPagingAnimator *)self setAnimatingScroll:1];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001B4854;
    v37[3] = &unk_10064FAE0;
    v37[4] = self;
    v38 = completionCopy;
    [UIView animateWithDuration:0 delay:v36 usingSpringWithDamping:v37 initialSpringVelocity:0.45 options:0.0 animations:1.0 completion:0.0];
  }

  else
  {
    (v35[2])(v35);
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)bounceAlongEdge:(unint64_t)edge
{
  if (edge != 1 && edge != 4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFCollectionViewPagingAnimator.m" lineNumber:98 description:@"bounceOnEdge currently only supports UIRectEdgeTop and UIRectEdgeBottom"];
  }

  [(MFCollectionViewPagingAnimator *)self cancelAllAnimations];
  collectionView = [(MFCollectionViewPagingAnimator *)self collectionView];
  v8 = collectionView;
  if (edge == 1)
  {
    [collectionView contentInset];
    v10 = -v9;
    v11 = -70.0 - v9;
  }

  else
  {
    [collectionView contentSize];
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
  selfCopy = self;
  [UIView animateWithDuration:0x10000 delay:v23 options:v19 animations:0.2 completion:0.0];
}

- (void)cancelAllAnimations
{
  collectionView = [(MFCollectionViewPagingAnimator *)self collectionView];
  layer = [collectionView layer];
  [layer removeAllAnimations];

  collectionView2 = [(MFCollectionViewPagingAnimator *)self collectionView];
  [collectionView2 _stopScrollingAndZoomingAnimations];
}

@end