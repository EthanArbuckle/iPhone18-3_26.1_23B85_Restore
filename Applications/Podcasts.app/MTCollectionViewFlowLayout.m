@interface MTCollectionViewFlowLayout
- (BOOL)updateAttributes:(id)a3 forIndexPath:(id)a4;
- (MTCollectionViewFlowLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)superLayoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)updateAttributes:(id)a3 withTopAlignmentGuide:(double)a4 andLastYOrigin:(double)a5;
- (void)updateCachedLayoutAttributesForElementsInRect:(id)a3;
- (void)updateCellPresentationAttributes:(id)a3;
@end

@implementation MTCollectionViewFlowLayout

- (MTCollectionViewFlowLayout)init
{
  v6.receiver = self;
  v6.super_class = MTCollectionViewFlowLayout;
  v2 = [(MTCollectionViewFlowLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MTBaseCollectionViewFlowLayout *)v2 setNumberOfColumns:1];
    v7[0] = UIFlowLayoutCommonRowHorizontalAlignmentKey;
    v7[1] = UIFlowLayoutLastRowHorizontalAlignmentKey;
    v8[0] = &off_100500EE0;
    v8[1] = &off_100500EE0;
    v7[2] = UIFlowLayoutRowVerticalAlignmentKey;
    v8[2] = &off_100500EF8;
    v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    [(MTCollectionViewFlowLayout *)v3 _setRowAlignmentsOptions:v4];

    [(MTCollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:kMTCollectionViewInterItemSpacing];
    [(MTCollectionViewFlowLayout *)v3 setMinimumLineSpacing:kMTCollectionViewInterLineSpacing];
    [(MTCollectionViewFlowLayout *)v3 setSectionInset:kMTCollectionViewVerticalSectionInset, 0.0, kMTCollectionViewVerticalSectionInset, 0.0];
  }

  return v3;
}

- (BOOL)updateAttributes:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 item];
  v9 = [(MTCollectionViewFlowLayout *)self collectionView];
  v10 = [v9 numberOfItemsInSection:{objc_msgSend(v7, "section")}];

  if (v8 < v10)
  {
    v69 = v8;
    v70 = v10;
    v11 = [v7 row];
    v12 = v11 / [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    v13 = [v7 row];
    v68 = v13 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    [v6 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    v67 = v12;
    if ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns])
    {
      v23 = 0;
      do
      {
        v24 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v23 + v22 * v12, [v7 section]);
        v25 = [v24 item];
        v26 = [(MTCollectionViewFlowLayout *)self collectionView];
        v27 = [v26 numberOfItemsInSection:{objc_msgSend(v7, "section")}];

        if (v25 < v27 && [v24 compare:v7])
        {
          v72.receiver = self;
          v72.super_class = MTCollectionViewFlowLayout;
          v28 = [(MTCollectionViewFlowLayout *)&v72 layoutAttributesForItemAtIndexPath:v24];
          [v28 frame];
          if (v29 < v17)
          {
            v17 = v29;
          }
        }

        ++v23;
      }

      while (v23 < [(MTBaseCollectionViewFlowLayout *)self numberOfColumns]);
    }

    if (v68)
    {
      v8 = v69;
    }

    else
    {
      v30 = [(MTCollectionViewFlowLayout *)self collectionView];
      v31 = [v30 numberOfItemsInSection:{objc_msgSend(v7, "section")}] - 1;
      v32 = [v7 row];

      v8 = v69;
      if (v31 == v32)
      {
        v33 = [(MTCollectionViewFlowLayout *)self collectionView];
        [v33 bounds];
        Width = CGRectGetWidth(v73);

        [v6 frame];
        v35 = CGRectGetWidth(v74);
        v36 = Width - v35 * [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
        [(MTCollectionViewFlowLayout *)self minimumInteritemSpacing];
        v15 = (v36 - v37 * ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns]- 1)) * 0.5;
      }
    }

    [v6 setFrame:{v15, v17, v19, v21}];
    [v6 setZIndex:1];
    v38 = [v7 section];
    v39 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    if (v38 != [v39 section])
    {
      goto LABEL_24;
    }

    v40 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    v41 = [v40 compare:v7];

    v10 = v70;
    if (v41)
    {
      v42 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
      v43 = [v42 row];
      v44 = v43 / [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

      v45 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
      v46 = [v45 row];
      v47 = v46 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

      v48 = v67 > v44;
      if (v67 == v44)
      {
        v8 = v69;
        v10 = v70;
        if (v47 != v68)
        {
          v49 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
          v50 = [v49 row];
          v51 = [(MTCollectionViewFlowLayout *)self collectionView];
          v52 = [v51 numberOfItemsInSection:{objc_msgSend(v7, "section")}];

          v53 = v50 >= v52;
          v10 = v70;
          if (!v53)
          {
            v54 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
            v71.receiver = self;
            v71.super_class = MTCollectionViewFlowLayout;
            v39 = [(MTCollectionViewFlowLayout *)&v71 layoutAttributesForItemAtIndexPath:v54];

            [v6 frame];
            v56 = v55;
            [v39 frame];
            [v6 setFrame:v56];
LABEL_24:

            v10 = v70;
          }
        }
      }

      else
      {
        v8 = v69;
        v10 = v70;
        if (v48 && v47 != v68)
        {
          v39 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v7 row] - -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), objc_msgSend(v7, "section"));
          v57 = [(MTCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v39];
          [v6 frame];
          v59 = v58;
          v61 = v60;
          v63 = v62;
          [v57 frame];
          MaxY = CGRectGetMaxY(v75);
          [(MTCollectionViewFlowLayout *)self minimumLineSpacing];
          [v6 setFrame:{v59, MaxY + v65, v61, v63}];

          goto LABEL_24;
        }
      }
    }
  }

  return v8 < v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MTCollectionViewFlowLayout;
  v5 = [(MTCollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:v4];
  if ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns]< 2)
  {
    [v5 setZIndex:1];
  }

  else
  {
    [(MTCollectionViewFlowLayout *)self updateAttributes:v5 forIndexPath:v4];
  }

  [(MTCollectionViewFlowLayout *)self updateCellPresentationAttributes:v5];

  return v5;
}

- (id)superLayoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = MTCollectionViewFlowLayout;
  v8 = [(MTCollectionViewFlowLayout *)&v10 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];

  return v8;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTCollectionViewFlowLayout *)self superLayoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
  if (v8)
  {
    [(MTBaseCollectionViewFlowLayout *)self appliedYOffset];
    v10 = v9;
    v11 = [(MTCollectionViewFlowLayout *)self collectionView];
    v12 = [v11 numberOfSections] - 1;

    if ([v7 section] == v12)
    {
      v13 = 1.79769313e308;
    }

    else
    {
      v14 = +[NSIndexPath indexPathWithIndex:](NSIndexPath, "indexPathWithIndex:", [v7 section] + 1);
      v15 = [(MTCollectionViewFlowLayout *)self superLayoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v14];
      v16 = v15;
      if (v15)
      {
        [v15 frame];
        v13 = v17;
      }

      else
      {
        v13 = 1.79769313e308;
      }
    }

    [(MTCollectionViewFlowLayout *)self updateAttributes:v8 withTopAlignmentGuide:v10 andLastYOrigin:v13];
    v18 = v8;
  }

  return v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v78.receiver = self;
  v78.super_class = MTCollectionViewFlowLayout;
  v63 = [(MTCollectionViewFlowLayout *)&v78 layoutAttributesForElementsInRect:?];
  v8 = [(MTCollectionViewFlowLayout *)self collectionView];
  v9 = [v8 numberOfSections] == 0;

  if (v9)
  {
    v61 = v63;
    v60 = v63;
  }

  else
  {
    v10 = [v63 mutableCopy];
    if ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns]>= 2)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v74 objects:v81 count:16];
      if (v12)
      {
        v13 = *v75;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v75 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v74 + 1) + 8 * i);
            v16 = [v15 representedElementKind];
            v17 = v16 == 0;

            if (v17)
            {
              v18 = [v15 indexPath];
              [(MTCollectionViewFlowLayout *)self updateAttributes:v15 forIndexPath:v18];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v74 objects:v81 count:16];
        }

        while (v12);
      }
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v20)
    {
      v21 = *v71;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v71 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v70 + 1) + 8 * j);
          v24 = [v23 representedElementKind];
          v25 = v24 == 0;

          if (v25)
          {
            [(MTCollectionViewFlowLayout *)self updateCellPresentationAttributes:v23];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v20);
    }

    v26 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    if (v26)
    {
      v27 = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns]> 1;

      if (v27)
      {
        v28 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
        v29 = [v28 row];
        v30 = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

        v64 = [v19 lastObject];
        v31 = [v64 indexPath];
        v32 = [(MTCollectionViewFlowLayout *)self collectionView];
        v33 = [v32 numberOfItemsInSection:{objc_msgSend(v31, "section")}];

        v34 = [v31 item] + 1;
        if (v34 < v33)
        {
          v35 = v29 % v30;
          do
          {
            while (v34 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns]== v35)
            {
              if (++v34 >= v33)
              {
                goto LABEL_33;
              }
            }

            v36 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", v34, [v31 section]);
            v37 = [(MTCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v36];
            [v19 addObject:v37];
            [v37 frame];
            MaxY = CGRectGetMaxY(v83);
            v84.origin.x = x;
            v84.origin.y = y;
            v84.size.width = width;
            v84.size.height = height;
            v39 = MaxY < CGRectGetMaxY(v84);
          }

          while (++v34 < v33 && v39);
        }

LABEL_33:
      }
    }

    v41 = +[NSMutableDictionary dictionary];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v42 = v19;
    v43 = [v42 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v43)
    {
      v44 = *v67;
      do
      {
        for (k = 0; k != v43; k = k + 1)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v66 + 1) + 8 * k);
          v47 = [v46 representedElementKind];

          if (v47)
          {
            v48 = [v46 indexPath];
            v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v48 section]);
            [v41 setObject:v46 forKeyedSubscript:v49];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v43);
    }

    [(MTBaseCollectionViewFlowLayout *)self appliedYOffset];
    v51 = v50;
    v52 = [(MTCollectionViewFlowLayout *)self collectionView];
    v53 = [v52 numberOfSections];

    if (v53 >= 1)
    {
      v54 = v53 + 1;
      v55 = 1.79769313e308;
      while (1)
      {
        v56 = [NSIndexPath indexPathWithIndex:v54 - 2];
        v57 = [NSNumber numberWithInteger:v54 - 2];
        v58 = [v41 objectForKeyedSubscript:v57];

        if (v58)
        {
          goto LABEL_48;
        }

        v65.receiver = self;
        v65.super_class = MTCollectionViewFlowLayout;
        v58 = [(MTCollectionViewFlowLayout *)&v65 layoutAttributesForSupplementaryViewOfKind:UICollectionElementKindSectionHeader atIndexPath:v56];
        if (v58)
        {
          break;
        }

LABEL_51:

        if (--v54 <= 1)
        {
          goto LABEL_52;
        }
      }

      [v42 addObject:v58];
LABEL_48:
      [(MTCollectionViewFlowLayout *)self updateAttributes:v58 withTopAlignmentGuide:v51 andLastYOrigin:v55];
      [v58 frame];
      if (v55 >= v59)
      {
        v55 = v59;
      }

      goto LABEL_51;
    }

LABEL_52:
    v60 = [v42 copy];
    [(MTCollectionViewFlowLayout *)self updateCachedLayoutAttributesForElementsInRect:v60];

    v61 = v63;
  }

  return v60;
}

- (void)updateCachedLayoutAttributesForElementsInRect:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v5, "_collectionViewData");
  v7 = [(MTCollectionViewFlowLayout *)self collectionView];
  v8 = object_getIvar(v7, InstanceVariable);

  if (!v8)
  {
    v29 = +[IMLogger sharedLogger];
    v30 = v29;
    v31 = @"Unable to retreive collection view data instance.";
    v32 = 344;
LABEL_26:
    [v29 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/CollectionView/MTCollectionViewFlowLayout.m" lineNumber:v32 format:v31];

    goto LABEL_30;
  }

  v9 = NSClassFromString(@"UICollectionViewData");
  if (!v9)
  {
    v29 = +[IMLogger sharedLogger];
    v30 = v29;
    v31 = @"Unable to retreive collection view data class.";
    v32 = 350;
    goto LABEL_26;
  }

  v10 = class_getInstanceVariable(v9, "_supplementaryLayoutAttributes");
  v11 = object_getIvar(v8, v10);
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 objectForKeyedSubscript:UICollectionElementKindSectionHeader];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v34 = +[IMLogger sharedLogger];
      [v34 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/CollectionView/MTCollectionViewFlowLayout.m" lineNumber:363 format:@"Unable to retreive cached supplementary layout attributes of kind header from collection view data."];
    }

    else if ([v12 count])
    {
      v35 = v11;
      v36 = v8;
      v13 = +[NSMutableSet set];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = v4;
      v14 = v4;
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            v20 = [v19 representedElementKind];
            v21 = [UICollectionElementKindSectionHeader isEqualToString:v20];

            if (v21)
            {
              v22 = [v19 indexPath];
              v23 = [v12 objectForKeyedSubscript:v22];
              v24 = v23;
              if (v23 && ([v23 isEqual:v19] & 1) == 0)
              {
                [v12 setObject:v19 forKey:v22];
                v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 section]);
                [v13 addObject:v25];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v16);
      }

      if ([v13 count])
      {
        v26 = +[IMLogger sharedLogger];
        v27 = [v13 allObjects];
        v28 = [v27 componentsJoinedByString:{@", "}];
        [v26 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/CollectionView/MTCollectionViewFlowLayout.m" lineNumber:393 format:{@"Collection view data cache updated with new attributes for sections: %@", v28}];
      }

      v8 = v36;
      v4 = v37;
      v11 = v35;
    }
  }

  else
  {
    v33 = +[IMLogger sharedLogger];
    [v33 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/CollectionView/MTCollectionViewFlowLayout.m" lineNumber:357 format:@"Unable to retreive cached supplementary layout attributes from collection view data."];
  }

LABEL_30:
}

- (void)updateCellPresentationAttributes:(id)a3
{
  v20 = a3;
  v4 = [(MTCollectionViewFlowLayout *)self collectionView];
  v5 = [v20 indexPath];
  v6 = [(MTCollectionViewFlowLayout *)self collectionView];
  v7 = [v6 numberOfItemsInSection:{objc_msgSend(v5, "section")}];

  v8 = (v7 - 1);
  v9 = [v4 swipedCellIndexPath];
  v10 = [v9 compare:v5];

  v11 = [v4 swipedCellIndexPath];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  [v20 setOpen:v13];

  [v20 setShowsSeperator:1];
  if ([v5 item] == v8 || (v14 = objc_msgSend(v5, "item"), v15 = v14 / -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v16 = objc_msgSend(v5, "item"), v17 = -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v18 = v8 / -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v19 = -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v15 == v18 - 1) && v16 % v17 != v8 % v19 || v15 == v18)
  {
    [v20 setShowsSeperator:0];
  }
}

- (void)updateAttributes:(id)a3 withTopAlignmentGuide:(double)a4 andLastYOrigin:(double)a5
{
  v7 = a3;
  if (v7)
  {
    v15 = v7;
    [v7 naturalRect];
    if (v8 == 0.0)
    {
      [v15 frame];
      [v15 setNaturalRect:?];
    }

    [v15 frame];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    if (CGRectGetMinY(v17) >= a4 || (v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, CGRectGetHeight(v18) + a4 >= a5))
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinY = CGRectGetMinY(v19);
      if (a5 > a4 && MinY < a4)
      {
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        y = a5 - CGRectGetHeight(v20);
        [v15 setFloating:1];
        [v15 setPartiallyOffTheTop:1];
      }
    }

    else
    {
      [v15 setFloating:1];
      y = a4;
    }

    [v15 setFrame:{x, y, width, height}];
    if ([v15 isFloating])
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    [v15 setZIndex:v14];
    v7 = v15;
  }
}

@end