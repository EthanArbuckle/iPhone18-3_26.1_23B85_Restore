@interface HomeOutlineSectionBuilder
+ (id)_itemSnapshotsWithStack:(id)a3 items:(id)a4 hidden:(BOOL)a5 itemIdentifierBlock:(id)a6 viewModelBlock:(id)a7 childItemsBlock:(id)a8 expandedBlock:(id)a9;
+ (id)itemSnapshotsWithItems:(id)a3 sectionIdentifier:(id)a4 sectionExpanded:(BOOL)a5 itemIdentifierBlock:(id)a6 viewModelBlock:(id)a7 childItemsBlock:(id)a8 expandedBlock:(id)a9;
@end

@implementation HomeOutlineSectionBuilder

+ (id)_itemSnapshotsWithStack:(id)a3 items:(id)a4 hidden:(BOOL)a5 itemIdentifierBlock:(id)a6 viewModelBlock:(id)a7 childItemsBlock:(id)a8 expandedBlock:(id)a9
{
  v41 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v40 = a7;
  v37 = a8;
  v36 = a9;
  v33 = +[NSMutableArray array];
  v16 = +[NSMutableSet set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = v14;
  v18 = v16;
  v19 = v17;
  v20 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v34 = v19;
    v43 = *v45;
    v38 = v16;
    do
    {
      v23 = 0;
      v39 = v21;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v44 + 1) + 8 * v23);
        [v13 _pushItem:v24 index:v22];
        v25 = v15[2](v15, v24, v13);
        if (v25 && ![v18 containsObject:v25])
        {
          [v13 _setTopIdentifier:v25];
          v26 = [v13 identifiers];
          v42 = [IdentifierPath identifierPathWithIdentifiers:v26];

          if (v41)
          {
            +[HomeOutlineHiddenViewModel sharedViewModel];
          }

          else
          {
            v40[2](v40, v24, v13);
          }
          v27 = ;
          if (v27)
          {
            v28 = v36[2](v36, v24, v13);
            v29 = v37[2](v37, v24, v13);
            v30 = [a1 _itemSnapshotsWithStack:v13 items:v29 hidden:v41 | ((v28 & 1) == 0) itemIdentifierBlock:v15 viewModelBlock:v40 childItemsBlock:v37 expandedBlock:v36];
            v31 = [[MapsUIDiffableDataSourceOutlineNodeSnapshot alloc] initWithIdentifierPath:v42 viewModel:v27 childSnapshots:v30 expanded:v28];
            v18 = v38;
            if (v31)
            {
              [v33 addObject:v31];
              [v38 addObject:v25];
            }

            [v13 _pop];

            v19 = v34;
          }

          else
          {
            [v13 _pop];
            v18 = v38;
          }

          v21 = v39;
        }

        else
        {
          [v13 _pop];
        }

        v23 = v23 + 1;
        ++v22;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v21);
  }

  return v33;
}

+ (id)itemSnapshotsWithItems:(id)a3 sectionIdentifier:(id)a4 sectionExpanded:(BOOL)a5 itemIdentifierBlock:(id)a6 viewModelBlock:(id)a7 childItemsBlock:(id)a8 expandedBlock:(id)a9
{
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if ([v15 count])
  {
    v21 = [[HomeOutlineSectionBuilderStack alloc] initWithSectionIdentifier:v16 sectionIndex:0];
    v22 = [a1 _itemSnapshotsWithStack:v21 items:v15 hidden:!v12 itemIdentifierBlock:v17 viewModelBlock:v18 childItemsBlock:v19 expandedBlock:v20];
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  return v22;
}

@end