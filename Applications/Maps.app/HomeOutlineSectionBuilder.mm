@interface HomeOutlineSectionBuilder
+ (id)_itemSnapshotsWithStack:(id)stack items:(id)items hidden:(BOOL)hidden itemIdentifierBlock:(id)block viewModelBlock:(id)modelBlock childItemsBlock:(id)itemsBlock expandedBlock:(id)expandedBlock;
+ (id)itemSnapshotsWithItems:(id)items sectionIdentifier:(id)identifier sectionExpanded:(BOOL)expanded itemIdentifierBlock:(id)block viewModelBlock:(id)modelBlock childItemsBlock:(id)itemsBlock expandedBlock:(id)expandedBlock;
@end

@implementation HomeOutlineSectionBuilder

+ (id)_itemSnapshotsWithStack:(id)stack items:(id)items hidden:(BOOL)hidden itemIdentifierBlock:(id)block viewModelBlock:(id)modelBlock childItemsBlock:(id)itemsBlock expandedBlock:(id)expandedBlock
{
  hiddenCopy = hidden;
  stackCopy = stack;
  itemsCopy = items;
  blockCopy = block;
  modelBlockCopy = modelBlock;
  itemsBlockCopy = itemsBlock;
  expandedBlockCopy = expandedBlock;
  v33 = +[NSMutableArray array];
  v16 = +[NSMutableSet set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = itemsCopy;
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
        [stackCopy _pushItem:v24 index:v22];
        v25 = blockCopy[2](blockCopy, v24, stackCopy);
        if (v25 && ![v18 containsObject:v25])
        {
          [stackCopy _setTopIdentifier:v25];
          identifiers = [stackCopy identifiers];
          v42 = [IdentifierPath identifierPathWithIdentifiers:identifiers];

          if (hiddenCopy)
          {
            +[HomeOutlineHiddenViewModel sharedViewModel];
          }

          else
          {
            modelBlockCopy[2](modelBlockCopy, v24, stackCopy);
          }
          v27 = ;
          if (v27)
          {
            v28 = expandedBlockCopy[2](expandedBlockCopy, v24, stackCopy);
            v29 = itemsBlockCopy[2](itemsBlockCopy, v24, stackCopy);
            v30 = [self _itemSnapshotsWithStack:stackCopy items:v29 hidden:hiddenCopy | ((v28 & 1) == 0) itemIdentifierBlock:blockCopy viewModelBlock:modelBlockCopy childItemsBlock:itemsBlockCopy expandedBlock:expandedBlockCopy];
            v31 = [[MapsUIDiffableDataSourceOutlineNodeSnapshot alloc] initWithIdentifierPath:v42 viewModel:v27 childSnapshots:v30 expanded:v28];
            v18 = v38;
            if (v31)
            {
              [v33 addObject:v31];
              [v38 addObject:v25];
            }

            [stackCopy _pop];

            v19 = v34;
          }

          else
          {
            [stackCopy _pop];
            v18 = v38;
          }

          v21 = v39;
        }

        else
        {
          [stackCopy _pop];
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

+ (id)itemSnapshotsWithItems:(id)items sectionIdentifier:(id)identifier sectionExpanded:(BOOL)expanded itemIdentifierBlock:(id)block viewModelBlock:(id)modelBlock childItemsBlock:(id)itemsBlock expandedBlock:(id)expandedBlock
{
  expandedCopy = expanded;
  itemsCopy = items;
  identifierCopy = identifier;
  blockCopy = block;
  modelBlockCopy = modelBlock;
  itemsBlockCopy = itemsBlock;
  expandedBlockCopy = expandedBlock;
  if ([itemsCopy count])
  {
    v21 = [[HomeOutlineSectionBuilderStack alloc] initWithSectionIdentifier:identifierCopy sectionIndex:0];
    v22 = [self _itemSnapshotsWithStack:v21 items:itemsCopy hidden:!expandedCopy itemIdentifierBlock:blockCopy viewModelBlock:modelBlockCopy childItemsBlock:itemsBlockCopy expandedBlock:expandedBlockCopy];
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  return v22;
}

@end