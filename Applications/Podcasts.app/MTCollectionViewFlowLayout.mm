@interface MTCollectionViewFlowLayout
- (BOOL)updateAttributes:(id)attributes forIndexPath:(id)path;
- (MTCollectionViewFlowLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)superLayoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)updateAttributes:(id)attributes withTopAlignmentGuide:(double)guide andLastYOrigin:(double)origin;
- (void)updateCachedLayoutAttributesForElementsInRect:(id)rect;
- (void)updateCellPresentationAttributes:(id)attributes;
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

- (BOOL)updateAttributes:(id)attributes forIndexPath:(id)path
{
  attributesCopy = attributes;
  pathCopy = path;
  item = [pathCopy item];
  collectionView = [(MTCollectionViewFlowLayout *)self collectionView];
  v10 = [collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

  if (item < v10)
  {
    v69 = item;
    v70 = v10;
    v11 = [pathCopy row];
    v12 = v11 / [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    v13 = [pathCopy row];
    v68 = v13 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    [attributesCopy frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    numberOfColumns = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
    v67 = v12;
    if ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns])
    {
      v23 = 0;
      do
      {
        v24 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v23 + numberOfColumns * v12, [pathCopy section]);
        item2 = [v24 item];
        collectionView2 = [(MTCollectionViewFlowLayout *)self collectionView];
        v27 = [collectionView2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

        if (item2 < v27 && [v24 compare:pathCopy])
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
      item = v69;
    }

    else
    {
      collectionView3 = [(MTCollectionViewFlowLayout *)self collectionView];
      v31 = [collectionView3 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1;
      v32 = [pathCopy row];

      item = v69;
      if (v31 == v32)
      {
        collectionView4 = [(MTCollectionViewFlowLayout *)self collectionView];
        [collectionView4 bounds];
        Width = CGRectGetWidth(v73);

        [attributesCopy frame];
        v35 = CGRectGetWidth(v74);
        v36 = Width - v35 * [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];
        [(MTCollectionViewFlowLayout *)self minimumInteritemSpacing];
        v15 = (v36 - v37 * ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns]- 1)) * 0.5;
      }
    }

    [attributesCopy setFrame:{v15, v17, v19, v21}];
    [attributesCopy setZIndex:1];
    section = [pathCopy section];
    expandedIndexPath = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    if (section != [expandedIndexPath section])
    {
      goto LABEL_24;
    }

    expandedIndexPath2 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    v41 = [expandedIndexPath2 compare:pathCopy];

    v10 = v70;
    if (v41)
    {
      expandedIndexPath3 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
      v43 = [expandedIndexPath3 row];
      v44 = v43 / [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

      expandedIndexPath4 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
      v46 = [expandedIndexPath4 row];
      v47 = v46 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

      v48 = v67 > v44;
      if (v67 == v44)
      {
        item = v69;
        v10 = v70;
        if (v47 != v68)
        {
          expandedIndexPath5 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
          v50 = [expandedIndexPath5 row];
          collectionView5 = [(MTCollectionViewFlowLayout *)self collectionView];
          v52 = [collectionView5 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

          v53 = v50 >= v52;
          v10 = v70;
          if (!v53)
          {
            expandedIndexPath6 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
            v71.receiver = self;
            v71.super_class = MTCollectionViewFlowLayout;
            expandedIndexPath = [(MTCollectionViewFlowLayout *)&v71 layoutAttributesForItemAtIndexPath:expandedIndexPath6];

            [attributesCopy frame];
            v56 = v55;
            [expandedIndexPath frame];
            [attributesCopy setFrame:v56];
LABEL_24:

            v10 = v70;
          }
        }
      }

      else
      {
        item = v69;
        v10 = v70;
        if (v48 && v47 != v68)
        {
          expandedIndexPath = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), objc_msgSend(pathCopy, "section"));
          v57 = [(MTCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:expandedIndexPath];
          [attributesCopy frame];
          v59 = v58;
          v61 = v60;
          v63 = v62;
          [v57 frame];
          MaxY = CGRectGetMaxY(v75);
          [(MTCollectionViewFlowLayout *)self minimumLineSpacing];
          [attributesCopy setFrame:{v59, MaxY + v65, v61, v63}];

          goto LABEL_24;
        }
      }
    }
  }

  return item < v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = MTCollectionViewFlowLayout;
  v5 = [(MTCollectionViewFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:pathCopy];
  if ([(MTBaseCollectionViewFlowLayout *)self numberOfColumns]< 2)
  {
    [v5 setZIndex:1];
  }

  else
  {
    [(MTCollectionViewFlowLayout *)self updateAttributes:v5 forIndexPath:pathCopy];
  }

  [(MTCollectionViewFlowLayout *)self updateCellPresentationAttributes:v5];

  return v5;
}

- (id)superLayoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = MTCollectionViewFlowLayout;
  v8 = [(MTCollectionViewFlowLayout *)&v10 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];

  return v8;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v8 = [(MTCollectionViewFlowLayout *)self superLayoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  if (v8)
  {
    [(MTBaseCollectionViewFlowLayout *)self appliedYOffset];
    v10 = v9;
    collectionView = [(MTCollectionViewFlowLayout *)self collectionView];
    v12 = [collectionView numberOfSections] - 1;

    if ([pathCopy section] == v12)
    {
      v13 = 1.79769313e308;
    }

    else
    {
      v14 = +[NSIndexPath indexPathWithIndex:](NSIndexPath, "indexPathWithIndex:", [pathCopy section] + 1);
      v15 = [(MTCollectionViewFlowLayout *)self superLayoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:v14];
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

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v78.receiver = self;
  v78.super_class = MTCollectionViewFlowLayout;
  v63 = [(MTCollectionViewFlowLayout *)&v78 layoutAttributesForElementsInRect:?];
  collectionView = [(MTCollectionViewFlowLayout *)self collectionView];
  v9 = [collectionView numberOfSections] == 0;

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
            representedElementKind = [v15 representedElementKind];
            v17 = representedElementKind == 0;

            if (v17)
            {
              indexPath = [v15 indexPath];
              [(MTCollectionViewFlowLayout *)self updateAttributes:v15 forIndexPath:indexPath];
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
          representedElementKind2 = [v23 representedElementKind];
          v25 = representedElementKind2 == 0;

          if (v25)
          {
            [(MTCollectionViewFlowLayout *)self updateCellPresentationAttributes:v23];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v20);
    }

    expandedIndexPath = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
    if (expandedIndexPath)
    {
      v27 = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns]> 1;

      if (v27)
      {
        expandedIndexPath2 = [(MTBaseCollectionViewFlowLayout *)self expandedIndexPath];
        v29 = [expandedIndexPath2 row];
        numberOfColumns = [(MTBaseCollectionViewFlowLayout *)self numberOfColumns];

        lastObject = [v19 lastObject];
        indexPath2 = [lastObject indexPath];
        collectionView2 = [(MTCollectionViewFlowLayout *)self collectionView];
        v33 = [collectionView2 numberOfItemsInSection:{objc_msgSend(indexPath2, "section")}];

        v34 = [indexPath2 item] + 1;
        if (v34 < v33)
        {
          v35 = v29 % numberOfColumns;
          do
          {
            while (v34 % [(MTBaseCollectionViewFlowLayout *)self numberOfColumns]== v35)
            {
              if (++v34 >= v33)
              {
                goto LABEL_33;
              }
            }

            v36 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", v34, [indexPath2 section]);
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
          representedElementKind3 = [v46 representedElementKind];

          if (representedElementKind3)
          {
            indexPath3 = [v46 indexPath];
            v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [indexPath3 section]);
            [v41 setObject:v46 forKeyedSubscript:v49];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v43);
    }

    [(MTBaseCollectionViewFlowLayout *)self appliedYOffset];
    v51 = v50;
    collectionView3 = [(MTCollectionViewFlowLayout *)self collectionView];
    numberOfSections = [collectionView3 numberOfSections];

    if (numberOfSections >= 1)
    {
      v54 = numberOfSections + 1;
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

- (void)updateCachedLayoutAttributesForElementsInRect:(id)rect
{
  rectCopy = rect;
  v5 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v5, "_collectionViewData");
  collectionView = [(MTCollectionViewFlowLayout *)self collectionView];
  v8 = object_getIvar(collectionView, InstanceVariable);

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
      v37 = rectCopy;
      v14 = rectCopy;
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
            representedElementKind = [v19 representedElementKind];
            v21 = [UICollectionElementKindSectionHeader isEqualToString:representedElementKind];

            if (v21)
            {
              indexPath = [v19 indexPath];
              v23 = [v12 objectForKeyedSubscript:indexPath];
              v24 = v23;
              if (v23 && ([v23 isEqual:v19] & 1) == 0)
              {
                [v12 setObject:v19 forKey:indexPath];
                v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [indexPath section]);
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
        allObjects = [v13 allObjects];
        v28 = [allObjects componentsJoinedByString:{@", "}];
        [v26 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/CollectionView/MTCollectionViewFlowLayout.m" lineNumber:393 format:{@"Collection view data cache updated with new attributes for sections: %@", v28}];
      }

      v8 = v36;
      rectCopy = v37;
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

- (void)updateCellPresentationAttributes:(id)attributes
{
  attributesCopy = attributes;
  collectionView = [(MTCollectionViewFlowLayout *)self collectionView];
  indexPath = [attributesCopy indexPath];
  collectionView2 = [(MTCollectionViewFlowLayout *)self collectionView];
  v7 = [collectionView2 numberOfItemsInSection:{objc_msgSend(indexPath, "section")}];

  v8 = (v7 - 1);
  swipedCellIndexPath = [collectionView swipedCellIndexPath];
  v10 = [swipedCellIndexPath compare:indexPath];

  swipedCellIndexPath2 = [collectionView swipedCellIndexPath];
  if (swipedCellIndexPath2)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  [attributesCopy setOpen:v13];

  [attributesCopy setShowsSeperator:1];
  if ([indexPath item] == v8 || (v14 = objc_msgSend(indexPath, "item"), v15 = v14 / -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v16 = objc_msgSend(indexPath, "item"), v17 = -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v18 = v8 / -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v19 = -[MTBaseCollectionViewFlowLayout numberOfColumns](self, "numberOfColumns"), v15 == v18 - 1) && v16 % v17 != v8 % v19 || v15 == v18)
  {
    [attributesCopy setShowsSeperator:0];
  }
}

- (void)updateAttributes:(id)attributes withTopAlignmentGuide:(double)guide andLastYOrigin:(double)origin
{
  attributesCopy = attributes;
  if (attributesCopy)
  {
    v15 = attributesCopy;
    [attributesCopy naturalRect];
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
    if (CGRectGetMinY(v17) >= guide || (v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, CGRectGetHeight(v18) + guide >= origin))
    {
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinY = CGRectGetMinY(v19);
      if (origin > guide && MinY < guide)
      {
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        y = origin - CGRectGetHeight(v20);
        [v15 setFloating:1];
        [v15 setPartiallyOffTheTop:1];
      }
    }

    else
    {
      [v15 setFloating:1];
      y = guide;
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
    attributesCopy = v15;
  }
}

@end