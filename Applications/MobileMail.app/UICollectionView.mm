@interface UICollectionView
+ (id)mf_offsetLog;
- (BOOL)mf_isIndexPathValid:(id)valid;
- (BOOL)mf_isIndexPathVisible:(id)visible overlap:(CGRect)overlap;
- (double)mf_cellOffsetByApplyingDynamicOffset:(id)offset cellHeight:(double)height;
- (double)mf_contentOffsetApplyingDynamicOffset:(id)offset indexPath:(id)path;
- (id)mf_dynamicOffsetForVisibleCell:(id)cell;
- (id)mf_mostVisibleCellNearestEdge:(unint64_t)edge preferredMinimumHeight:(double)height;
- (void)pageDirection:(int64_t)direction;
@end

@implementation UICollectionView

- (void)pageDirection:(int64_t)direction
{
  [(UICollectionView *)self mf_visibleHeight];
  v6 = v5;
  [(UICollectionView *)self contentInset];
  v8 = v7;
  v9 = v6 + -20.0;
  [(UICollectionView *)self visibleBounds];
  MinY = CGRectGetMinY(v16);
  v11 = MinY;
  if (direction == 1)
  {
    v11 = MinY - v9;
    if (MinY - v9 <= -v8)
    {
      v11 = -v8;
    }
  }

  else if (!direction)
  {
    v11 = v9 + MinY;
    v12 = v6 + v9 + MinY;
    [(UICollectionView *)self contentSize];
    if (v12 >= v13)
    {
      [(UICollectionView *)self contentSize];
      v11 = v14 - v6;
    }
  }

  [(UICollectionView *)self setContentOffset:1 animated:0.0, v11];

  [(UICollectionView *)self flashScrollIndicators];
}

+ (id)mf_offsetLog
{
  if (qword_1006DD8A0 != -1)
  {
    sub_10048D57C();
  }

  v3 = qword_1006DD898;

  return v3;
}

- (id)mf_mostVisibleCellNearestEdge:(unint64_t)edge preferredMinimumHeight:(double)height
{
  edgeCopy = edge;
  v6 = +[UICollectionView mf_offsetLog];
  v7 = edgeCopy & 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10048D590(v7, v6, height);
  }

  v8 = +[UICollectionView mf_offsetLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(UICollectionView *)self contentOffset];
    sub_10048D614(buf, v8, v9, v10);
  }

  visibleCells = [(UICollectionView *)self visibleCells];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100258E4C;
  v52[3] = &unk_100656A70;
  v53 = v7;
  v12 = [visibleCells sortedArrayUsingComparator:v52];

  [(UICollectionView *)self mui_safeVisibleBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = +[UICollectionView mf_offsetLog];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v57.origin.x = v14;
    v57.origin.y = v16;
    v57.size.width = v18;
    v57.size.height = v20;
    NSStringFromCGRect(v57);
    objc_claimAutoreleasedReturnValue();
    sub_10048D658();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v23)
  {
    v24 = 0;
    v25 = *v49;
    v47 = 0.0;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v48 + 1) + 8 * i);
        [v27 frame];
        v63.origin.x = v28;
        v63.origin.y = v29;
        v63.size.width = v30;
        v63.size.height = v31;
        v58.origin.x = v14;
        v58.origin.y = v16;
        v58.size.width = v18;
        v58.size.height = v20;
        v59 = CGRectIntersection(v58, v63);
        x = v59.origin.x;
        y = v59.origin.y;
        width = v59.size.width;
        height = v59.size.height;
        if (!CGRectIsNull(v59))
        {
          [v27 frame];
          if (CGRectGetHeight(v60) > height)
          {
            [v27 frame];
            v64.origin.x = v36;
            v64.origin.y = v37;
            v64.size.width = v38;
            v64.size.height = v39;
            v61.origin.x = v14;
            v61.origin.y = v16;
            v61.size.width = v18;
            v61.size.height = v20;
            if (CGRectContainsRect(v61, v64))
            {
              v43 = +[UICollectionView mf_offsetLog];
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                [(UICollectionView *)self indexPathForCell:v27];
                objc_claimAutoreleasedReturnValue();
                sub_10048D69C();
              }

              v44 = v27;
              goto LABEL_30;
            }
          }

          v62.origin.x = x;
          v62.origin.y = y;
          v62.size.width = width;
          v62.size.height = height;
          v40 = CGRectGetHeight(v62);
          if (v40 > v47)
          {
            v41 = v27;

            v24 = v41;
            v47 = v40;
          }
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    if (v24)
    {
      v42 = +[UICollectionView mf_offsetLog];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [(UICollectionView *)self indexPathForCell:v24];
        objc_claimAutoreleasedReturnValue();
        sub_10048D6E0();
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v42 = +[UICollectionView mf_offsetLog];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_10048D724(v42);
  }

  v24 = 0;
LABEL_29:

  v24 = v24;
  v44 = v24;
LABEL_30:

  return v44;
}

- (id)mf_dynamicOffsetForVisibleCell:(id)cell
{
  cellCopy = cell;
  visibleCells = [(UICollectionView *)self visibleCells];
  v6 = [visibleCells containsObject:cellCopy];

  if (v6)
  {
    v7 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D768(cellCopy, v7, v8, v9, v10, v11, v12, v13);
    }

    [(UICollectionView *)self mui_safeVisibleBounds];
    v49 = v15;
    v50 = v14;
    v17 = v16;
    v19 = v18;
    [(UICollectionView *)self mui_safeVisibleBounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [cellCopy frame];
    v61.origin.x = v28;
    v61.origin.y = v29;
    v61.size.width = v30;
    v61.size.height = v31;
    v52.origin.x = v21;
    v52.origin.y = v23;
    v52.size.width = v25;
    v52.size.height = v27;
    v53 = CGRectIntersection(v52, v61);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    [cellCopy frame];
    v48 = CGRectGetHeight(v54);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    MinY = CGRectGetMinY(v55);
    [cellCopy frame];
    v37 = CGRectGetMinY(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v38 = CGRectGetMinY(v57);
    v58.origin.y = v49;
    v58.origin.x = v50;
    v58.size.width = v17;
    v58.size.height = v19;
    v39 = CGRectGetMinY(v58);
    v40 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v59.origin.y = v49;
      v59.origin.x = v50;
      v59.size.width = v17;
      v59.size.height = v19;
      NSStringFromCGRect(v59);
      objc_claimAutoreleasedReturnValue();
      sub_10048D658();
    }

    v41 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D7D4();
    }

    v42 = +[UICollectionView mf_offsetLog];
    v43 = MinY - v37;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D840();
    }

    v44 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D8AC();
    }

    v60.origin.y = v49;
    v60.origin.x = v50;
    v60.size.width = v17;
    v60.size.height = v19;
    v45 = [[MFDynamicCellOffsetRepresentation alloc] initWithRelativeCellAnchor:v43 / v48 relativeDistanceFromTop:(v38 - v39) / CGRectGetHeight(v60)];
    v46 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [(MFDynamicCellOffsetRepresentation *)v45 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048D918();
    }
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (double)mf_cellOffsetByApplyingDynamicOffset:(id)offset cellHeight:(double)height
{
  offsetCopy = offset;
  v7 = 0.0;
  if (height > 0.0)
  {
    v8 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [offsetCopy ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048D95C();
    }

    [offsetCopy relativeCellAnchor];
    [offsetCopy relativeDistanceFromTop];
    [(UICollectionView *)self mui_safeVisibleBounds];
    CGRectGetHeight(v14);
    UIRoundToViewScale();
    v7 = v9;
    v10 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10048D9BC();
    }

    v11 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DA28();
    }

    v12 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DA94();
    }
  }

  return v7;
}

- (double)mf_contentOffsetApplyingDynamicOffset:(id)offset indexPath:(id)path
{
  offsetCopy = offset;
  pathCopy = path;
  v8 = [(UICollectionView *)self layoutAttributesForItemAtIndexPath:pathCopy];
  if (v8)
  {
    v9 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DB00(pathCopy, offsetCopy, v9);
    }

    [v8 size];
    [(UICollectionView *)self mf_cellOffsetByApplyingDynamicOffset:offsetCopy cellHeight:v10];
    [v8 frame];
    CGRectGetMinY(v22);
    [(UICollectionView *)self contentInset];
    UIRoundToViewScale();
    v12 = v11;
    v13 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DB88();
    }

    v14 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DBF4();
    }

    [(UICollectionView *)self mf_minContentOffset];
    v16 = v15;
    [(UICollectionView *)self mf_maxContentOffset];
    if (v12 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    if (v16 >= v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    v20 = +[UICollectionView mf_offsetLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10048DC60();
    }
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

- (BOOL)mf_isIndexPathValid:(id)valid
{
  validCopy = valid;
  v5 = [validCopy row];
  section = [validCopy section];
  v8 = validCopy && (v7 = section, section < [(UICollectionView *)self numberOfSections]) && v5 < [(UICollectionView *)self numberOfItemsInSection:v7];

  return v8;
}

- (BOOL)mf_isIndexPathVisible:(id)visible overlap:(CGRect)overlap
{
  visibleCopy = visible;
  indexPathsForVisibleItems = [(UICollectionView *)self indexPathsForVisibleItems];
  v7 = [indexPathsForVisibleItems containsObject:visibleCopy];

  if (v7)
  {
    v8 = [(UICollectionView *)self layoutAttributesForItemAtIndexPath:visibleCopy];
    [v8 frame];
    [(UICollectionView *)self convertRect:self toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UICollectionView *)self mui_safeVisibleBounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    if (CGRectContainsRect(v25, v27))
    {
      v21 = 1;
    }

    else
    {
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      v21 = CGRectIntersectsRect(v26, v28);
    }

    if (!CGRectIsNull(overlap))
    {
      v29.origin.x = v10;
      v29.origin.y = v12;
      v29.size.width = v14;
      v29.size.height = v16;
      v22 = CGRectContainsRect(overlap, v29);
      v30.origin.x = v10;
      v30.origin.y = v12;
      v30.size.width = v14;
      v30.size.height = v16;
      CGRectIntersectsRect(overlap, v30);
      v21 &= !v22;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end