@interface GKCollectionViewFlowLayout
- (GKCollectionViewFlowLayout)init;
- (GKCollectionViewFlowLayoutDelegate)delegate;
- (NSArray)podList;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)prepareLayout;
@end

@implementation GKCollectionViewFlowLayout

- (GKCollectionViewFlowLayout)init
{
  v4.receiver = self;
  v4.super_class = GKCollectionViewFlowLayout;
  v2 = [(GKCollectionViewFlowLayout *)&v4 init];
  if (v2)
  {
    [(GKCollectionViewFlowLayout *)v2 registerClass:objc_opt_class() forDecorationViewOfKind:@"sectionBackground"];
  }

  return v2;
}

- (void)prepareLayout
{
  v2.receiver = self;
  v2.super_class = GKCollectionViewFlowLayout;
  [(GKCollectionViewFlowLayout *)&v2 prepareLayout];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v82.receiver = self;
  v82.super_class = GKCollectionViewFlowLayout;
  v4 = [(GKCollectionViewFlowLayout *)&v82 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v73 = [NSMutableArray arrayWithArray:v4];
  v5 = +[NSMutableDictionary dictionary];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained isManagingBackgroundColor];

  if (v7)
  {
    v67 = v4;
    v68 = v5;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v79;
      v70 = *v79;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v79 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v78 + 1) + 8 * i);
          v13 = [v12 indexPath];
          v14 = [v13 section];
          v15 = [(GKCollectionViewFlowLayout *)self podList];
          v16 = [v15 count];

          if (v14 < v16)
          {
            v17 = [(GKCollectionViewFlowLayout *)self podList];
            v18 = [v17 objectAtIndex:{objc_msgSend(v13, "section")}];

            if ([v18 viewCount])
            {
              v19 = [v18 viewAtIndex:0];
              if (([v19 isFullWidth] & 1) == 0)
              {
                v20 = [v12 representedElementKind];

                if (!v20)
                {
                  v21 = [v13 section];
                  [v12 frame];
                  MinY = CGRectGetMinY(v86);
                  [v12 frame];
                  MaxY = CGRectGetMaxY(v87);
                  v24 = [v68 allKeys];
                  v69 = v21;
                  v25 = [NSNumber numberWithInteger:v21];
                  v26 = [v24 containsObject:v25];

                  if (v26)
                  {
                    v27 = [NSNumber numberWithInteger:v69];
                    v28 = v68;
                    v29 = [v68 objectForKey:v27];

                    v30 = [v29 objectForKey:@"frameMinY"];
                    [v30 floatValue];
                    v32 = v31;

                    v33 = [v29 objectForKey:@"frameMaxY"];
                    [v33 floatValue];
                    v35 = v34;

                    if (MaxY > v35)
                    {
                      v36 = [NSNumber numberWithDouble:MaxY];
                      [v29 setObject:v36 forKey:@"frameMaxY"];
                    }

                    if (MinY < v32)
                    {
                      v37 = [NSNumber numberWithDouble:MinY];
                      [v29 setObject:v37 forKey:@"frameMinY"];
                    }
                  }

                  else
                  {
                    v29 = +[NSMutableDictionary dictionary];
                    [v29 setObject:v12 forKey:@"firstAttribute"];
                    v38 = [NSNumber numberWithDouble:MinY];
                    [v29 setObject:v38 forKey:@"frameMinY"];

                    v39 = [NSNumber numberWithDouble:MaxY];
                    [v29 setObject:v39 forKey:@"frameMaxY"];

                    [v29 setObject:v18 forKey:@"pod"];
                    v28 = v68;
                  }

                  v40 = [NSNumber numberWithInteger:v69];
                  [v28 setObject:v29 forKey:v40];
                }
              }

              v10 = v70;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v9);
    }

    v5 = v68;
    v4 = v67;
    if ([v68 count])
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obja = [v68 allValues];
      v41 = [obja countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v75;
        do
        {
          for (j = 0; j != v42; j = j + 1)
          {
            if (*v75 != v43)
            {
              objc_enumerationMutation(obja);
            }

            v45 = *(*(&v74 + 1) + 8 * j);
            v46 = [v45 objectForKey:{@"pod", v67}];
            v47 = [v45 objectForKey:@"firstAttribute"];
            v48 = [v45 objectForKey:@"frameMinY"];
            [v48 floatValue];
            v50 = v49;

            v51 = [v45 objectForKey:@"frameMaxY"];
            [v51 floatValue];
            v53 = v52;

            v54 = [v47 indexPath];
            v55 = [GKCollectionViewFlowLayoutAttributes layoutAttributesForDecorationViewOfKind:@"sectionBackground" withIndexPath:v54];

            v56 = [v46 footerView];
            [v46 edgeInsets];
            v58 = v50 - v57;
            [(GKCollectionViewFlowLayout *)self collectionViewContentSize];
            v60 = v59;
            [v46 edgeInsets];
            v62 = v53 - v50 + v61;
            [v46 edgeInsets];
            v64 = v62 + v63;
            [v56 frame];
            [v55 setFrame:{0.0, v58, v60, v64 + v65}];
            [v55 setZIndex:{objc_msgSend(v47, "zIndex") - 1}];
            [v73 addObject:v55];
          }

          v42 = [obja countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v42);
      }

      v4 = v67;
      v5 = v68;
    }
  }

  return v73;
}

- (NSArray)podList
{
  WeakRetained = objc_loadWeakRetained(&self->_podList);

  return WeakRetained;
}

- (GKCollectionViewFlowLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end