@interface NSDiffableDataSourceSectionSnapshot
- (NSString)_maps_recursiveDescription;
- (id)_maps_applyChangesWithNewRootSnapshot:(id)a3 oldRootSnapshot:(id)a4;
- (id)_maps_internal_recursiveDescriptionOfItem:(id)a3;
- (id)_maps_recursiveDescriptionOfItem:(id)a3;
- (void)_maps_updateWithNodeSnapshot:(id)a3 previousNodeSnapshot:(id)a4 reloadedItems:(id)a5 insertedItems:(id)a6 deletedItems:(id)a7 movedItems:(id)a8 expandedItems:(id)a9 collapsedItems:(id)a10;
@end

@implementation NSDiffableDataSourceSectionSnapshot

- (void)_maps_updateWithNodeSnapshot:(id)a3 previousNodeSnapshot:(id)a4 reloadedItems:(id)a5 insertedItems:(id)a6 deletedItems:(id)a7 movedItems:(id)a8 expandedItems:(id)a9 collapsedItems:(id)a10
{
  v16 = a3;
  v17 = a4;
  v77 = a5;
  v81 = a6;
  v79 = a7;
  v80 = a8;
  v76 = a9;
  v75 = a10;
  v78 = v17;
  v18 = [v17 childSnapshots];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1007CD998;
  v90[3] = &unk_10162A4A0;
  v90[4] = self;
  v19 = sub_100021DB0(v18, v90);

  v20 = [v16 childSnapshots];
  v21 = sub_100021DB0(v20, &stru_10162A4E0);

  v22 = sub_100021DB0(v19, &stru_10162A500);
  v70 = v22;
  v71 = v21;
  v74 = v16;
  v72 = v19;
  if (v21 != v22)
  {
    v23 = v22;
    if (([v21 isEqual:v22] & 1) == 0)
    {
      v24 = [v21 differenceFromArray:v23 withOptions:4];
      v25 = [NSMutableArray arrayWithArray:v19];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v86 objects:v98 count:16];
      if (!v27)
      {
        goto LABEL_28;
      }

      v28 = v27;
      v29 = *v87;
      v30 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      while (1)
      {
        v31 = 0;
        v73 = v28;
        do
        {
          if (*v87 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v86 + 1) + 8 * v31);
          v33 = [v32 object];
          v34 = [v32 changeType];
          if (v34 == 1)
          {
            v94 = v33;
            v40 = [v30[286] arrayWithObjects:&v94 count:1];
            [(NSDiffableDataSourceSectionSnapshot *)self deleteItems:v40];

            v41 = [v25 objectAtIndexedSubscript:{objc_msgSend(v32, "index")}];
            [v25 removeObjectAtIndex:{objc_msgSend(v32, "index")}];
            if ([v32 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v79 addObject:v41];
            }

            goto LABEL_23;
          }

          if (v34)
          {
            goto LABEL_24;
          }

          v35 = [v32 index];
          if (v35 >= [v25 count])
          {
            v38 = v25;
            v97 = v33;
            v36 = [v30[286] arrayWithObjects:&v97 count:1];
            v37 = [v74 identifierPath];
            if (![v37 length])
            {
              [(NSDiffableDataSourceSectionSnapshot *)self appendItems:v36 intoParentItem:0];
              goto LABEL_19;
            }

            v39 = [v74 identifierPath];
            [(NSDiffableDataSourceSectionSnapshot *)self appendItems:v36 intoParentItem:v39];
          }

          else if ([v32 index])
          {
            v95 = v33;
            v36 = [v30[286] arrayWithObjects:&v95 count:1];
            v37 = [v25 objectAtIndexedSubscript:{objc_msgSend(v32, "index") - 1}];
            [v37 identifierPath];
            v39 = v38 = v25;
            [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v36 afterItem:v39];
          }

          else
          {
            v96 = v33;
            v36 = [v30[286] arrayWithObjects:&v96 count:1];
            v37 = [v25 objectAtIndexedSubscript:0];
            [v37 identifierPath];
            v39 = v38 = v25;
            [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v36 beforeItem:v39];
          }

LABEL_19:
          v42 = [v33 identifiers];
          v43 = [v42 lastObject];
          v41 = [v74 childSnapshotWithIdentifier:v43];

          [v38 insertObject:v41 atIndex:{objc_msgSend(v32, "index")}];
          if ([v32 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = v81;
          }

          else
          {
            v44 = v80;
          }

          [v44 addObject:v41];
          v25 = v38;
          v30 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          v28 = v73;
LABEL_23:

LABEL_24:
          v31 = v31 + 1;
        }

        while (v28 != v31);
        v45 = [v26 countByEnumeratingWithState:&v86 objects:v98 count:16];
        v28 = v45;
        if (!v45)
        {
LABEL_28:

          v16 = v74;
          break;
        }
      }
    }
  }

  v46 = [v16 identifierPath];
  v47 = [v46 length];

  if (v47)
  {
    if (([v16 expanded] & 1) == 0)
    {
      v48 = [v16 identifierPath];
      v49 = [(NSDiffableDataSourceSectionSnapshot *)self isExpanded:v48];

      if (v49)
      {
        v50 = [v16 identifierPath];
        v93 = v50;
        v51 = [NSArray arrayWithObjects:&v93 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)self collapseItems:v51];

        [v75 addObject:v16];
      }
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = [v16 childSnapshots];
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v83;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v83 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v82 + 1) + 8 * i);
        v58 = [v57 identifierPath];
        v59 = [v58 identifiers];
        v60 = [v59 lastObject];
        v61 = [v78 childSnapshotWithIdentifier:v60];

        [(NSDiffableDataSourceSectionSnapshot *)self _maps_updateWithNodeSnapshot:v57 previousNodeSnapshot:v61 reloadedItems:v77 insertedItems:v81 deletedItems:v79 movedItems:v80 expandedItems:v76 collapsedItems:v75, v70, v71];
      }

      v54 = [v52 countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v54);
  }

  v62 = [v74 identifierPath];
  v63 = [v62 length];

  if (v63)
  {
    if ([v74 expanded])
    {
      v64 = [v74 identifierPath];
      v65 = [(NSDiffableDataSourceSectionSnapshot *)self isExpanded:v64];

      if ((v65 & 1) == 0)
      {
        v66 = [v74 identifierPath];
        v91 = v66;
        v67 = [NSArray arrayWithObjects:&v91 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)self expandItems:v67];

        [v76 addObject:v74];
      }
    }

    v68 = [v74 identifierPath];
    v69 = [(NSDiffableDataSourceSectionSnapshot *)self isVisible:v68];

    if (v78 && v69 && [v74 needsReloadFromPreviousItemSnapshot:v78])
    {
      [v77 addObject:v74];
    }
  }
}

- (id)_maps_applyChangesWithNewRootSnapshot:(id)a3 oldRootSnapshot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  [(NSDiffableDataSourceSectionSnapshot *)self _maps_updateWithNodeSnapshot:v7 previousNodeSnapshot:v6 reloadedItems:v8 insertedItems:v9 deletedItems:v10 movedItems:v11 expandedItems:v12 collapsedItems:v13];

  v14 = [[MapsUIDiffableDataSourceSectionSnapshotUpdateDifference alloc] initWithReloadedItems:v8 insertedItems:v9 deletedItems:v10 movedItems:v11 expandedItems:v12 collapsedItems:v13];

  return v14;
}

- (id)_maps_internal_recursiveDescriptionOfItem:(id)a3
{
  v4 = a3;
  v5 = [v4 description];
  v6 = [NSMutableString stringWithString:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = v4;
  v7 = [(NSDiffableDataSourceSectionSnapshot *)self snapshotOfParentItem:v4 includingParentItem:0];
  v8 = [v7 rootItems];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [(NSDiffableDataSourceSectionSnapshot *)self _maps_internal_recursiveDescriptionOfItem:*(*(&v18 + 1) + 8 * i)];
        v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n |  "];
        [v6 appendFormat:@"\n +-- %@", v14];
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)_maps_recursiveDescriptionOfItem:(id)a3
{
  v4 = a3;
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self snapshotOfParentItem:v4 includingParentItem:1];
  v6 = [v5 _maps_internal_recursiveDescriptionOfItem:v4];

  return v6;
}

- (NSString)_maps_recursiveDescription
{
  v3 = [(NSDiffableDataSourceSectionSnapshot *)self description];
  v4 = [NSMutableString stringWithString:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [(NSDiffableDataSourceSectionSnapshot *)self rootItems];
  v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSDiffableDataSourceSectionSnapshot *)self _maps_internal_recursiveDescriptionOfItem:*(*(&v13 + 1) + 8 * i)];
        v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n |  "];
        [v4 appendFormat:@"\n +-- %@", v10];
      }

      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

@end