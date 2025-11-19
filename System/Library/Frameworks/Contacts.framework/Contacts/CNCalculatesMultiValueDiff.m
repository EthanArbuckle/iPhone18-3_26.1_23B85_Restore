@interface CNCalculatesMultiValueDiff
+ (id)diffMultiValue:(id)a3 toMultiValue:(id)a4;
- (CNCalculatesMultiValueDiff)initWithMultiValue1:(id)a3 multiValue2:(id)a4;
- (void)appendAddUpdates;
- (void)appendRemoveUpdates;
- (void)appendReorderUpdates;
- (void)appendReplaceUpdates;
- (void)calculateDiff;
- (void)setupAddedIdentifiers;
- (void)setupCalculatedFinalIdentifiers;
- (void)setupFinalIdentifiers;
- (void)setupOriginalIdentifiers;
- (void)setupRemovedIdentifiers;
- (void)setupSameIdentifiers;
@end

@implementation CNCalculatesMultiValueDiff

+ (id)diffMultiValue:(id)a3 toMultiValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqual:v6])
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v7 = CNResultWithAutoreleasePool();
  }

  return v7;
}

id __58__CNCalculatesMultiValueDiff_diffMultiValue_toMultiValue___block_invoke(uint64_t a1)
{
  v1 = [[CNCalculatesMultiValueDiff alloc] initWithMultiValue1:*(a1 + 32) multiValue2:*(a1 + 40)];
  [(CNCalculatesMultiValueDiff *)v1 calculateDiff];
  v2 = [(CNCalculatesMultiValueDiff *)v1 updates];

  return v2;
}

- (CNCalculatesMultiValueDiff)initWithMultiValue1:(id)a3 multiValue2:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNCalculatesMultiValueDiff;
  v9 = [(CNCalculatesMultiValueDiff *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiValue1, a3);
    objc_storeStrong(&v10->_multiValue2, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updates = v10->_updates;
    v10->_updates = v11;

    v13 = v10;
  }

  return v10;
}

- (void)setupOriginalIdentifiers
{
  v7 = [(NSArray *)self->_multiValue1 _cn_filter:&__block_literal_global_22];
  v3 = objc_alloc(MEMORY[0x1E695DFB8]);
  v4 = [v7 _cn_map:&__block_literal_global_148];
  v5 = [v3 initWithArray:v4];
  originalIdentifiers = self->_originalIdentifiers;
  self->_originalIdentifiers = v5;
}

BOOL __54__CNCalculatesMultiValueDiff_setupOriginalIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 storeIdentifier];
  v3 = v2 == 0;

  return v3;
}

- (void)setupFinalIdentifiers
{
  v7 = [(NSArray *)self->_multiValue2 _cn_filter:&__block_literal_global_6_0];
  v3 = objc_alloc(MEMORY[0x1E695DFB8]);
  v4 = [v7 _cn_map:&__block_literal_global_148];
  v5 = [v3 initWithArray:v4];
  finalIdentifiers = self->_finalIdentifiers;
  self->_finalIdentifiers = v5;
}

BOOL __51__CNCalculatesMultiValueDiff_setupFinalIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 storeIdentifier];
  v3 = v2 == 0;

  return v3;
}

- (void)setupRemovedIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:self->_originalIdentifiers];
  removedIdentifiers = self->_removedIdentifiers;
  self->_removedIdentifiers = v3;

  v5 = self->_removedIdentifiers;
  finalIdentifiers = self->_finalIdentifiers;

  [(NSMutableOrderedSet *)v5 minusOrderedSet:finalIdentifiers];
}

- (void)setupAddedIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:self->_finalIdentifiers];
  addedIdentifiers = self->_addedIdentifiers;
  self->_addedIdentifiers = v3;

  v5 = self->_addedIdentifiers;
  originalIdentifiers = self->_originalIdentifiers;

  [(NSMutableOrderedSet *)v5 minusOrderedSet:originalIdentifiers];
}

- (void)setupSameIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:self->_originalIdentifiers];
  sameIdentifiers = self->_sameIdentifiers;
  self->_sameIdentifiers = v3;

  v5 = self->_sameIdentifiers;
  finalIdentifiers = self->_finalIdentifiers;

  [(NSMutableOrderedSet *)v5 intersectOrderedSet:finalIdentifiers];
}

- (void)setupCalculatedFinalIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:self->_originalIdentifiers];
  calculatedFinalIdentifiers = self->_calculatedFinalIdentifiers;
  self->_calculatedFinalIdentifiers = v3;

  [(NSMutableOrderedSet *)self->_calculatedFinalIdentifiers minusOrderedSet:self->_removedIdentifiers];
  v5 = self->_calculatedFinalIdentifiers;
  addedIdentifiers = self->_addedIdentifiers;

  [(NSMutableOrderedSet *)v5 unionOrderedSet:addedIdentifiers];
}

- (void)appendRemoveUpdates
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_removedIdentifiers;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CNLabeledValue entryForIdentifier:*(*(&v10 + 1) + 8 * v7) inArray:self->_multiValue1, v10];
        v9 = [CNMultiValueUpdate removeValue:v8];
        [(NSMutableArray *)self->_updates addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)appendAddUpdates
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_addedIdentifiers;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [CNLabeledValue entryForIdentifier:*(*(&v10 + 1) + 8 * v7) inArray:self->_multiValue2, v10];
        v9 = [CNMultiValueUpdate addValue:v8];
        [(NSMutableArray *)self->_updates addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)appendReplaceUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_sameIdentifiers;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [CNLabeledValue entryForIdentifier:v8 inArray:self->_multiValue1, v12];
        v10 = [CNLabeledValue entryForIdentifier:v8 inArray:self->_multiValue2];
        if (([v9 isEqual:v10] & 1) == 0)
        {
          v11 = [CNMultiValueUpdate replaceValue:v9 withValue:v10];
          [(NSMutableArray *)self->_updates addObject:v11];
        }
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)appendReorderUpdates
{
  if (([(NSMutableOrderedSet *)self->_calculatedFinalIdentifiers isEqual:self->_finalIdentifiers]& 1) == 0)
  {
    v3 = self->_multiValue2;
    v4 = [(NSOrderedSet *)self->_finalIdentifiers array];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__CNCalculatesMultiValueDiff_appendReorderUpdates__block_invoke;
    v8[3] = &unk_1E7412D30;
    v9 = v3;
    v5 = v3;
    v6 = [v4 _cn_map:v8];

    v7 = [CNMultiValueUpdate reorderValues:v6];
    [(NSMutableArray *)self->_updates addObject:v7];
  }
}

- (void)calculateDiff
{
  [(CNCalculatesMultiValueDiff *)self setupOriginalIdentifiers];
  [(CNCalculatesMultiValueDiff *)self setupFinalIdentifiers];
  [(CNCalculatesMultiValueDiff *)self setupAddedIdentifiers];
  [(CNCalculatesMultiValueDiff *)self setupRemovedIdentifiers];
  [(CNCalculatesMultiValueDiff *)self setupSameIdentifiers];
  [(CNCalculatesMultiValueDiff *)self setupCalculatedFinalIdentifiers];
  [(CNCalculatesMultiValueDiff *)self appendRemoveUpdates];
  [(CNCalculatesMultiValueDiff *)self appendAddUpdates];
  [(CNCalculatesMultiValueDiff *)self appendReplaceUpdates];

  [(CNCalculatesMultiValueDiff *)self appendReorderUpdates];
}

@end