@interface TransitRouteSnapshotTransitionCell
+ (id)snapshotToTransitionFromCell:(id)cell toCell:(id)toCell withBackgroundBlur:(BOOL)blur;
- (id)initToTransitionFromCell:(id)cell toCell:(id)toCell withBackgroundBlur:(BOOL)blur;
- (void)updateWithTransitionProgress:(double)progress;
@end

@implementation TransitRouteSnapshotTransitionCell

- (void)updateWithTransitionProgress:(double)progress
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_updateHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(progress);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)initToTransitionFromCell:(id)cell toCell:(id)toCell withBackgroundBlur:(BOOL)blur
{
  blurCopy = blur;
  cellCopy = cell;
  toCellCopy = toCell;
  [cellCopy frame];
  v86.receiver = self;
  v86.super_class = TransitRouteSnapshotTransitionCell;
  v9 = [(TransitRouteSnapshotTransitionCell *)&v86 initWithFrame:?];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    updateHandlers = v9->_updateHandlers;
    v9->_updateHandlers = v10;

    if (blurCopy)
    {
      v12 = +[RoutingAppearanceManager customGrayBlurCellBackgroundView];
    }

    else
    {
      v12 = 0;
    }

    [cellCopy bounds];
    v14 = v13;
    v16 = v15;
    [toCellCopy bounds];
    v18 = v17;
    v20 = v19;
    [(TransitRouteSnapshotTransitionCell *)v9 frame];
    [(TransitRouteSnapshotTransitionCell *)v9 setFrame:?];
    if (blurCopy)
    {
      [v12 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, *&v14, *&v16}];
    }

    objc_initWeak(&location, v9);
    v21 = v9->_updateHandlers;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100B05A10;
    v81[3] = &unk_1016380A8;
    v83[1] = v14;
    v83[2] = v16;
    v83[3] = v18;
    v83[4] = v20;
    objc_copyWeak(v83, &location);
    v84 = blurCopy;
    v66 = v12;
    v82 = v66;
    v22 = objc_retainBlock(v81);
    [(NSMutableArray *)v21 addObject:v22];

    if (blurCopy)
    {
      [(TransitRouteSnapshotTransitionCell *)v9 addSubview:v66];
    }

    _indexedContentSubviewOrNullArray = [cellCopy _indexedContentSubviewOrNullArray];
    _indexedContentSubviewOrNullArray2 = [toCellCopy _indexedContentSubviewOrNullArray];
    v24 = 0;
    v67 = cellCopy;
    while (1)
    {
      if (v24 >= [_indexedContentSubviewOrNullArray count])
      {
        v64 = v9;

        objc_destroyWeak(v83);
        objc_destroyWeak(&location);

        goto LABEL_38;
      }

      v25 = [_indexedContentSubviewOrNullArray objectAtIndexedSubscript:v24];
      v26 = +[NSNull null];
      if (v25 == v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = [_indexedContentSubviewOrNullArray objectAtIndexedSubscript:v24];
      }

      v28 = [_indexedContentSubviewOrNullArray2 objectAtIndexedSubscript:v24];
      v29 = +[NSNull null];
      if (v28 == v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = [_indexedContentSubviewOrNullArray2 objectAtIndexedSubscript:v24];
      }

      if (!v27)
      {
        if (v30)
        {
          break;
        }
      }

      if (v27 && !v30)
      {
        v36 = [v27 snapshotViewAfterScreenUpdates:1];
        [v27 bounds];
        [cellCopy convertRect:v27 fromView:?];
        [v36 setFrame:?];
        [v36 setAlpha:1.0];
        v37 = v9->_updateHandlers;
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100B05AE8;
        v77[3] = &unk_101638478;
        v33 = v36;
        v78 = v33;
        v38 = objc_retainBlock(v77);
        [(NSMutableArray *)v37 addObject:v38];

        [(TransitRouteSnapshotTransitionCell *)v9 addSubview:v33];
        v35 = v78;
        goto LABEL_35;
      }

      if (v27 && v30)
      {
        v39 = [v30 snapshotViewAfterScreenUpdates:1];
        v40 = [v27 snapshotViewAfterScreenUpdates:1];
        if (MKApplicationLayoutDirectionIsRightToLeft())
        {
          v41 = 1.0;
        }

        else
        {
          v41 = 0.0;
        }

        if (MKApplicationLayoutDirectionIsRightToLeft())
        {
          [v27 bounds];
          MaxX = CGRectGetMaxX(v87);
        }

        else
        {
          [v27 bounds];
        }

        v43 = MaxX;
        [v27 bounds];
        v45 = v44;
        if (MKApplicationLayoutDirectionIsRightToLeft())
        {
          [v30 bounds];
          v46 = CGRectGetMaxX(v88);
        }

        else
        {
          [v30 bounds];
        }

        v47 = v46;
        [v30 bounds];
        v49 = v48;
        [cellCopy convertPoint:v27 fromView:{v43, v45}];
        v51 = v50;
        v53 = v52;
        [toCellCopy convertPoint:v30 fromView:{v47, v49}];
        v55 = v54;
        v57 = v56;
        [v39 setAlpha:0.0];
        [v40 setAlpha:1.0];
        layer = [v39 layer];
        [layer setAnchorPoint:{v41, 0.0}];
        layer2 = [v40 layer];
        [layer2 setAnchorPoint:{v41, 0.0}];

        layer3 = [v39 layer];
        [layer3 setPosition:{v51, v53}];
        layer4 = [v40 layer];
        [layer4 setPosition:{v51, v53}];

        v62 = v9->_updateHandlers;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_100B05AF8;
        v70[3] = &unk_1016380D0;
        v35 = v40;
        v71 = v35;
        v33 = v39;
        v72 = v33;
        v73 = v51;
        v74 = v53;
        v75 = v55;
        v76 = v57;
        v63 = objc_retainBlock(v70);
        [(NSMutableArray *)v62 addObject:v63];

        [(TransitRouteSnapshotTransitionCell *)v9 addSubview:v35];
        [(TransitRouteSnapshotTransitionCell *)v9 addSubview:v33];

        cellCopy = v67;
        goto LABEL_35;
      }

LABEL_36:

      ++v24;
    }

    v31 = [v30 snapshotViewAfterScreenUpdates:1];
    [v30 bounds];
    [toCellCopy convertRect:v30 fromView:?];
    [v31 setFrame:?];
    [v31 setAlpha:0.0];
    v32 = v9->_updateHandlers;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100B05AE0;
    v79[3] = &unk_101638478;
    v33 = v31;
    v80 = v33;
    v34 = objc_retainBlock(v79);
    [(NSMutableArray *)v32 addObject:v34];

    [(TransitRouteSnapshotTransitionCell *)v9 addSubview:v33];
    v35 = v80;
LABEL_35:

    goto LABEL_36;
  }

LABEL_38:

  return v9;
}

+ (id)snapshotToTransitionFromCell:(id)cell toCell:(id)toCell withBackgroundBlur:(BOOL)blur
{
  blurCopy = blur;
  toCellCopy = toCell;
  cellCopy = cell;
  v10 = [[self alloc] initToTransitionFromCell:cellCopy toCell:toCellCopy withBackgroundBlur:blurCopy];

  return v10;
}

@end