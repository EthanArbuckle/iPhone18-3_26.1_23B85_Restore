@interface NSDiffableDataSourceSnapshot
+ (id)_maps_singleSectionSnapshotWithIdentifiersForItems:(id)items reloadingChangesFromPreviousItems:(id)previousItems;
- (id)_maps_appendIdentifiersForSection:(id)section items:(id)items reloadingChangesFromPreviousItems:(id)previousItems;
@end

@implementation NSDiffableDataSourceSnapshot

- (id)_maps_appendIdentifiersForSection:(id)section items:(id)items reloadingChangesFromPreviousItems:(id)previousItems
{
  sectionCopy = section;
  itemsCopy = items;
  previousItemsCopy = previousItems;
  if (![itemsCopy count])
  {
    v63 = [MapsUIDiffableDataSourceSnapshotDifference alloc];
    if (previousItemsCopy)
    {
      v64 = previousItemsCopy;
    }

    else
    {
      v64 = &__NSArray0__struct;
    }

    v62 = [(MapsUIDiffableDataSourceSnapshotDifference *)v63 initWithReloadedItems:&__NSArray0__struct insertedItems:&__NSArray0__struct deletedItems:v64];
    goto LABEL_72;
  }

  v70 = previousItemsCopy;
  v73 = sub_10009B2BC(sectionCopy);
  v106 = v73;
  v11 = [NSArray arrayWithObjects:&v106 count:1];
  [(NSDiffableDataSourceSnapshot *)self appendSectionsWithIdentifiers:v11];

  selfCopy = self;
  itemIdentifiers = [(NSDiffableDataSourceSnapshot *)self itemIdentifiers];
  v74 = [NSSet setWithArray:itemIdentifiers];

  v75 = +[NSMutableOrderedSet orderedSet];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v68 = itemsCopy;
  v13 = itemsCopy;
  v14 = [v13 countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = *v94;
  do
  {
    v17 = 0;
    do
    {
      if (*v94 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v93 + 1) + 8 * v17);
      v19 = sub_10009B2BC(v18);
      if (!v19)
      {
        v20 = sub_1000410AC();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v102 = v18;
          v21 = v20;
          v22 = "Diffable identifier missing for object: %@";
          v23 = 12;
          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_19;
      }

      if ([v75 containsObject:v19])
      {
        v20 = sub_1000410AC();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 138412546;
        v102 = v73;
        v103 = 2112;
        v104 = v19;
        v21 = v20;
        v22 = "Diffable identifier is not unique within section '%@': %@";
        goto LABEL_16;
      }

      if ([v74 containsObject:v19])
      {
        v20 = sub_1000410AC();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 138412546;
        v102 = v73;
        v103 = 2112;
        v104 = v19;
        v21 = v20;
        v22 = "Diffable identifier is not unique outside of section '%@': %@";
LABEL_16:
        v23 = 22;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
        goto LABEL_18;
      }

      [v75 addObject:v19];
LABEL_19:

      v17 = v17 + 1;
    }

    while (v15 != v17);
    v24 = [v13 countByEnumeratingWithState:&v93 objects:v105 count:16];
    v15 = v24;
  }

  while (v24);
LABEL_23:

  array = [v75 array];
  [(NSDiffableDataSourceSnapshot *)selfCopy appendItemsWithIdentifiers:array intoSectionWithIdentifier:v73];
  previousItemsCopy = v70;
  if (v70)
  {
    v67 = sectionCopy;
    v76 = +[NSMutableArray array];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v26 = v70;
    v27 = [v26 countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v90;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v90 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = sub_10009B2BC(*(*(&v89 + 1) + 8 * i));
          if (v31)
          {
            [v76 addObject:v31];
          }

          else
          {
            v32 = sub_1000410AC();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = objc_opt_class();
              *buf = 138412290;
              v102 = v33;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Diffable identifier from a previous item is nil. item class: %@", buf, 0xCu);
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v89 objects:v100 count:16];
      }

      while (v28);
    }

    v71 = +[NSMutableArray array];
    v72 = +[NSMutableArray array];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v66 = array;
    v34 = array;
    v35 = [v34 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v86;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v86 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v85 + 1) + 8 * j);
          v40 = [v76 indexOfObject:{v39, v66}];
          v41 = [v34 indexOfObject:v39];
          if (v40 != 0x7FFFFFFFFFFFFFFFLL && v41 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = v41;
            v44 = [v26 objectAtIndexedSubscript:v40];
            v45 = [v13 objectAtIndexedSubscript:v43];
            if (v44 != v45 && ([v44 isEqual:v45] & 1) == 0)
            {
              [v71 addObject:v45];
              [v72 addObject:v39];
            }
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v36);
    }

    [(NSDiffableDataSourceSnapshot *)selfCopy reconfigureItemsWithIdentifiers:v72];
    v46 = [v34 differenceFromArray:v76];
    v47 = +[NSMutableArray array];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    insertions = [v46 insertions];
    v49 = [insertions countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v82;
      do
      {
        for (k = 0; k != v50; k = k + 1)
        {
          if (*v82 != v51)
          {
            objc_enumerationMutation(insertions);
          }

          v53 = [v13 objectAtIndexedSubscript:{objc_msgSend(*(*(&v81 + 1) + 8 * k), "index", v66)}];
          [v47 addObject:v53];
        }

        v50 = [insertions countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v50);
    }

    v54 = +[NSMutableArray array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v55 = v46;
    removals = [v46 removals];
    v57 = [removals countByEnumeratingWithState:&v77 objects:v97 count:16];
    array = v66;
    if (v57)
    {
      v58 = v57;
      v59 = *v78;
      do
      {
        for (m = 0; m != v58; m = m + 1)
        {
          if (*v78 != v59)
          {
            objc_enumerationMutation(removals);
          }

          v61 = [v26 objectAtIndexedSubscript:{objc_msgSend(*(*(&v77 + 1) + 8 * m), "index", v66)}];
          [v54 addObject:v61];
        }

        v58 = [removals countByEnumeratingWithState:&v77 objects:v97 count:16];
      }

      while (v58);
    }

    v62 = [[MapsUIDiffableDataSourceSnapshotDifference alloc] initWithReloadedItems:v71 insertedItems:v47 deletedItems:v54];
    previousItemsCopy = v70;
    sectionCopy = v67;
  }

  else
  {
    v62 = [[MapsUIDiffableDataSourceSnapshotDifference alloc] initWithReloadedItems:&__NSArray0__struct insertedItems:v13 deletedItems:&__NSArray0__struct];
  }

  itemsCopy = v68;
LABEL_72:

  return v62;
}

+ (id)_maps_singleSectionSnapshotWithIdentifiersForItems:(id)items reloadingChangesFromPreviousItems:(id)previousItems
{
  itemsCopy = items;
  previousItemsCopy = previousItems;
  v8 = objc_alloc_init(self);
  v9 = objc_opt_new();
  v10 = [v8 _maps_appendIdentifiersForSection:v9 items:itemsCopy reloadingChangesFromPreviousItems:previousItemsCopy];

  return v8;
}

@end