@interface FPSetTagsOperation
- (FPSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)items;
- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index;
@end

@implementation FPSetTagsOperation

- (FPSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists
{
  itemsCopy = items;
  listsCopy = lists;
  v12.receiver = self;
  v12.super_class = FPSetTagsOperation;
  v8 = [(FPTransformOperation *)&v12 initWithItemsOfDifferentProviders:itemsCopy action:0];
  if (v8)
  {
    v9 = [itemsCopy count];
    if (v9 != [listsCopy count])
    {
      v10 = [itemsCopy count];
      if (v10 != [listsCopy count])
      {
        [FPSetTagsOperation initWithItems:itemsCopy tagsLists:listsCopy];
      }
    }

    objc_storeStrong(&v8->_tagsLists, lists);
    [(FPActionOperation *)v8 setSetupRemoteOperationService:1];
  }

  return v8;
}

- (id)replicateForItems:(id)items
{
  itemsCopy = items;
  v5 = [FPSetTagsOperation alloc];
  items = [(FPTransformOperation *)self items];
  v7 = [items fp_pickItemsFromArray:self->_tagsLists correspondingToIndexesOfItemsInArray:itemsCopy];
  v8 = [(FPSetTagsOperation *)v5 initWithItems:itemsCopy tagsLists:v7];

  return v8;
}

- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index
{
  tagsLists = self->_tagsLists;
  itemCopy = item;
  v7 = [(NSArray *)tagsLists objectAtIndex:index];
  [itemCopy setTags:v7];

  return 16;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  items = [(FPTransformOperation *)self items];
  fp_itemIdentifiers = [items fp_itemIdentifiers];
  v6 = FPAbbreviatedArrayDescription(fp_itemIdentifiers);
  v7 = FPAbbreviatedArrayDescription(self->_tagsLists);
  v8 = [v3 stringWithFormat:@"tag items %@ with tags %@", v6, v7];

  return v8;
}

- (void)initWithItems:(void *)a1 tagsLists:(void *)a2 .cold.1(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [a1 count];
  v7 = [a2 count];
  OUTLINED_FUNCTION_6();
  [v6 handleFailureInMethod:v5 object:v7 file:? lineNumber:? description:?];
}

@end