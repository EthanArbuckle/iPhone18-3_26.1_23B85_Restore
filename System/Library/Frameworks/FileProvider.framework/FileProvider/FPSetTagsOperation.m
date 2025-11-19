@interface FPSetTagsOperation
- (FPSetTagsOperation)initWithItems:(id)a3 tagsLists:(id)a4;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)a3;
- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation FPSetTagsOperation

- (FPSetTagsOperation)initWithItems:(id)a3 tagsLists:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FPSetTagsOperation;
  v8 = [(FPTransformOperation *)&v12 initWithItemsOfDifferentProviders:v6 action:0];
  if (v8)
  {
    v9 = [v6 count];
    if (v9 != [v7 count])
    {
      v10 = [v6 count];
      if (v10 != [v7 count])
      {
        [FPSetTagsOperation initWithItems:v6 tagsLists:v7];
      }
    }

    objc_storeStrong(&v8->_tagsLists, a4);
    [(FPActionOperation *)v8 setSetupRemoteOperationService:1];
  }

  return v8;
}

- (id)replicateForItems:(id)a3
{
  v4 = a3;
  v5 = [FPSetTagsOperation alloc];
  v6 = [(FPTransformOperation *)self items];
  v7 = [v6 fp_pickItemsFromArray:self->_tagsLists correspondingToIndexesOfItemsInArray:v4];
  v8 = [(FPSetTagsOperation *)v5 initWithItems:v4 tagsLists:v7];

  return v8;
}

- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4
{
  tagsLists = self->_tagsLists;
  v6 = a3;
  v7 = [(NSArray *)tagsLists objectAtIndex:a4];
  [v6 setTags:v7];

  return 16;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPTransformOperation *)self items];
  v5 = [v4 fp_itemIdentifiers];
  v6 = FPAbbreviatedArrayDescription(v5);
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