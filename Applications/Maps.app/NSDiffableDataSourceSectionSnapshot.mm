@interface NSDiffableDataSourceSectionSnapshot
- (NSString)_maps_recursiveDescription;
- (id)_maps_applyChangesWithNewRootSnapshot:(id)snapshot oldRootSnapshot:(id)rootSnapshot;
- (id)_maps_internal_recursiveDescriptionOfItem:(id)item;
- (id)_maps_recursiveDescriptionOfItem:(id)item;
- (void)_maps_updateWithNodeSnapshot:(id)snapshot previousNodeSnapshot:(id)nodeSnapshot reloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems movedItems:(id)movedItems expandedItems:(id)expandedItems collapsedItems:(id)self0;
@end

@implementation NSDiffableDataSourceSectionSnapshot

- (void)_maps_updateWithNodeSnapshot:(id)snapshot previousNodeSnapshot:(id)nodeSnapshot reloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems movedItems:(id)movedItems expandedItems:(id)expandedItems collapsedItems:(id)self0
{
  snapshotCopy = snapshot;
  nodeSnapshotCopy = nodeSnapshot;
  itemsCopy = items;
  insertedItemsCopy = insertedItems;
  deletedItemsCopy = deletedItems;
  movedItemsCopy = movedItems;
  expandedItemsCopy = expandedItems;
  collapsedItemsCopy = collapsedItems;
  v78 = nodeSnapshotCopy;
  childSnapshots = [nodeSnapshotCopy childSnapshots];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1007CD998;
  v90[3] = &unk_10162A4A0;
  v90[4] = self;
  v19 = sub_100021DB0(childSnapshots, v90);

  childSnapshots2 = [snapshotCopy childSnapshots];
  v21 = sub_100021DB0(childSnapshots2, &stru_10162A4E0);

  v22 = sub_100021DB0(v19, &stru_10162A500);
  v70 = v22;
  v71 = v21;
  v74 = snapshotCopy;
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
          object = [v32 object];
          changeType = [v32 changeType];
          if (changeType == 1)
          {
            v94 = object;
            v40 = [v30[286] arrayWithObjects:&v94 count:1];
            [(NSDiffableDataSourceSectionSnapshot *)self deleteItems:v40];

            v41 = [v25 objectAtIndexedSubscript:{objc_msgSend(v32, "index")}];
            [v25 removeObjectAtIndex:{objc_msgSend(v32, "index")}];
            if ([v32 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [deletedItemsCopy addObject:v41];
            }

            goto LABEL_23;
          }

          if (changeType)
          {
            goto LABEL_24;
          }

          index = [v32 index];
          if (index >= [v25 count])
          {
            v38 = v25;
            v97 = object;
            v36 = [v30[286] arrayWithObjects:&v97 count:1];
            identifierPath = [v74 identifierPath];
            if (![identifierPath length])
            {
              [(NSDiffableDataSourceSectionSnapshot *)self appendItems:v36 intoParentItem:0];
              goto LABEL_19;
            }

            identifierPath2 = [v74 identifierPath];
            [(NSDiffableDataSourceSectionSnapshot *)self appendItems:v36 intoParentItem:identifierPath2];
          }

          else if ([v32 index])
          {
            v95 = object;
            v36 = [v30[286] arrayWithObjects:&v95 count:1];
            identifierPath = [v25 objectAtIndexedSubscript:{objc_msgSend(v32, "index") - 1}];
            [identifierPath identifierPath];
            identifierPath2 = v38 = v25;
            [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v36 afterItem:identifierPath2];
          }

          else
          {
            v96 = object;
            v36 = [v30[286] arrayWithObjects:&v96 count:1];
            identifierPath = [v25 objectAtIndexedSubscript:0];
            [identifierPath identifierPath];
            identifierPath2 = v38 = v25;
            [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v36 beforeItem:identifierPath2];
          }

LABEL_19:
          identifiers = [object identifiers];
          lastObject = [identifiers lastObject];
          v41 = [v74 childSnapshotWithIdentifier:lastObject];

          [v38 insertObject:v41 atIndex:{objc_msgSend(v32, "index")}];
          if ([v32 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = insertedItemsCopy;
          }

          else
          {
            v44 = movedItemsCopy;
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

          snapshotCopy = v74;
          break;
        }
      }
    }
  }

  identifierPath3 = [snapshotCopy identifierPath];
  v47 = [identifierPath3 length];

  if (v47)
  {
    if (([snapshotCopy expanded] & 1) == 0)
    {
      identifierPath4 = [snapshotCopy identifierPath];
      v49 = [(NSDiffableDataSourceSectionSnapshot *)self isExpanded:identifierPath4];

      if (v49)
      {
        identifierPath5 = [snapshotCopy identifierPath];
        v93 = identifierPath5;
        v51 = [NSArray arrayWithObjects:&v93 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)self collapseItems:v51];

        [collapsedItemsCopy addObject:snapshotCopy];
      }
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  childSnapshots3 = [snapshotCopy childSnapshots];
  v53 = [childSnapshots3 countByEnumeratingWithState:&v82 objects:v92 count:16];
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
          objc_enumerationMutation(childSnapshots3);
        }

        v57 = *(*(&v82 + 1) + 8 * i);
        identifierPath6 = [v57 identifierPath];
        identifiers2 = [identifierPath6 identifiers];
        lastObject2 = [identifiers2 lastObject];
        v61 = [v78 childSnapshotWithIdentifier:lastObject2];

        [(NSDiffableDataSourceSectionSnapshot *)self _maps_updateWithNodeSnapshot:v57 previousNodeSnapshot:v61 reloadedItems:itemsCopy insertedItems:insertedItemsCopy deletedItems:deletedItemsCopy movedItems:movedItemsCopy expandedItems:expandedItemsCopy collapsedItems:collapsedItemsCopy, v70, v71];
      }

      v54 = [childSnapshots3 countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v54);
  }

  identifierPath7 = [v74 identifierPath];
  v63 = [identifierPath7 length];

  if (v63)
  {
    if ([v74 expanded])
    {
      identifierPath8 = [v74 identifierPath];
      v65 = [(NSDiffableDataSourceSectionSnapshot *)self isExpanded:identifierPath8];

      if ((v65 & 1) == 0)
      {
        identifierPath9 = [v74 identifierPath];
        v91 = identifierPath9;
        v67 = [NSArray arrayWithObjects:&v91 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)self expandItems:v67];

        [expandedItemsCopy addObject:v74];
      }
    }

    identifierPath10 = [v74 identifierPath];
    v69 = [(NSDiffableDataSourceSectionSnapshot *)self isVisible:identifierPath10];

    if (v78 && v69 && [v74 needsReloadFromPreviousItemSnapshot:v78])
    {
      [itemsCopy addObject:v74];
    }
  }
}

- (id)_maps_applyChangesWithNewRootSnapshot:(id)snapshot oldRootSnapshot:(id)rootSnapshot
{
  rootSnapshotCopy = rootSnapshot;
  snapshotCopy = snapshot;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  [(NSDiffableDataSourceSectionSnapshot *)self _maps_updateWithNodeSnapshot:snapshotCopy previousNodeSnapshot:rootSnapshotCopy reloadedItems:v8 insertedItems:v9 deletedItems:v10 movedItems:v11 expandedItems:v12 collapsedItems:v13];

  v14 = [[MapsUIDiffableDataSourceSectionSnapshotUpdateDifference alloc] initWithReloadedItems:v8 insertedItems:v9 deletedItems:v10 movedItems:v11 expandedItems:v12 collapsedItems:v13];

  return v14;
}

- (id)_maps_internal_recursiveDescriptionOfItem:(id)item
{
  itemCopy = item;
  v5 = [itemCopy description];
  v6 = [NSMutableString stringWithString:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = itemCopy;
  v7 = [(NSDiffableDataSourceSectionSnapshot *)self snapshotOfParentItem:itemCopy includingParentItem:0];
  rootItems = [v7 rootItems];

  obj = rootItems;
  v9 = [rootItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_maps_recursiveDescriptionOfItem:(id)item
{
  itemCopy = item;
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self snapshotOfParentItem:itemCopy includingParentItem:1];
  v6 = [v5 _maps_internal_recursiveDescriptionOfItem:itemCopy];

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