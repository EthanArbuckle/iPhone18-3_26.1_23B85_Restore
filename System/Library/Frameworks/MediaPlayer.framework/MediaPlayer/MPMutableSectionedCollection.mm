@interface MPMutableSectionedCollection
- (id)copyWithZone:(_NSZone *)a3;
- (void)_initializeAsEmptySectionedCollection;
- (void)appendItem:(id)a3;
- (void)appendItems:(id)a3;
- (void)appendSection:(id)a3;
- (void)insertItem:(id)a3 atIndexPath:(id)a4;
- (void)insertSection:(id)a3 atIndex:(int64_t)a4;
- (void)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)moveSectionFromIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)removeAllObjects;
- (void)removeItemAtIndexPath:(id)a3;
- (void)removeSectionAtIndex:(int64_t)a3;
- (void)replaceItemsUsingBlock:(id)a3;
- (void)replaceObjectAtIndexPath:(id)a3 withObject:(id)a4;
- (void)replaceSectionsUsingBlock:(id)a3;
@end

@implementation MPMutableSectionedCollection

- (void)replaceItemsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->super._sections count])
  {
    v5 = 0;
    while (1)
    {
      v13 = 0;
      v6 = [(NSArray *)self->super._sectionedItems objectAtIndexedSubscript:v5];
      if ([v6 count])
      {
        break;
      }

LABEL_9:

      if (++v5 >= [(NSArray *)self->super._sections count])
      {
        goto LABEL_12;
      }
    }

    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:v5];
      v10 = v4[2](v4, v8, v9, &v13);

      if (v8 != v10)
      {
        v11 = [(NSArray *)self->super._sectionedItems objectAtIndexedSubscript:v5];
        [v11 replaceObjectAtIndex:v7 withObject:v10];
      }

      v12 = v13;

      if (v12 == 1)
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:
}

- (void)replaceSectionsUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  if ([(NSArray *)self->super._sections count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->super._sections objectAtIndexedSubscript:v5];
      v7 = v4[2](v4, v6, v5, &v9);
      if (v6 != v7)
      {
        [(NSArray *)self->super._sections replaceObjectAtIndex:v5 withObject:v7];
      }

      v8 = v9;

      if (v8 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [(NSArray *)self->super._sections count]);
  }
}

- (void)removeAllObjects
{
  [(NSArray *)self->super._sections removeAllObjects];
  sectionedItems = self->super._sectionedItems;

  [(NSArray *)sectionedItems removeAllObjects];
}

- (void)appendItems:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MPMutableSectionedCollection *)self appendItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)appendItem:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedCollection *)self numberOfSections]- 1;
  v6 = [(MPSectionedCollection *)self numberOfItemsInSection:v5];
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:v5];
  [(MPMutableSectionedCollection *)self insertItem:v4 atIndexPath:v7];
}

- (void)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  v16 = self->super._sectionedItems;
  v6 = a4;
  v7 = a3;
  v8 = [v7 section];
  v9 = [v7 item];

  v10 = [v6 section];
  v11 = [v6 item];

  v12 = [(NSArray *)v16 objectAtIndex:v8];
  v13 = v12;
  if (v8 == v10)
  {
    [v12 exchangeObjectAtIndex:v9 withObjectAtIndex:v11];
  }

  else
  {
    v14 = [(NSArray *)v16 objectAtIndex:v10];
    v15 = [v13 objectAtIndex:v9];
    [v13 removeObjectAtIndex:v9];
    [v14 insertObject:v15 atIndex:v11];
  }
}

- (void)replaceObjectAtIndexPath:(id)a3 withObject:(id)a4
{
  v6 = self->super._sectionedItems;
  v7 = a4;
  v8 = a3;
  v9 = [v8 section];
  v10 = [v8 item];

  v11 = [(NSArray *)v6 objectAtIndex:v9];

  [v11 replaceObjectAtIndex:v10 withObject:v7];
}

- (void)removeItemAtIndexPath:(id)a3
{
  v4 = self->super._sectionedItems;
  v5 = a3;
  v6 = [v5 section];
  v7 = [v5 item];

  v8 = [(NSArray *)v4 objectAtIndex:v6];

  [v8 removeObjectAtIndex:v7];
}

- (void)insertItem:(id)a3 atIndexPath:(id)a4
{
  v6 = self->super._sectionedItems;
  v7 = a4;
  v8 = a3;
  v9 = [v7 section];
  v10 = [v7 item];

  v11 = [(NSArray *)v6 objectAtIndex:v9];

  [v11 insertObject:v8 atIndex:v10];
}

- (void)appendSection:(id)a3
{
  v4 = a3;
  [(MPMutableSectionedCollection *)self insertSection:v4 atIndex:[(MPSectionedCollection *)self numberOfSections]];
}

- (void)moveSectionFromIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  sections = self->super._sections;
  v7 = self->super._sectionedItems;
  v8 = sections;
  [(NSArray *)v8 exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
  [(NSArray *)v7 exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
}

- (void)removeSectionAtIndex:(int64_t)a3
{
  sections = self->super._sections;
  v5 = self->super._sectionedItems;
  v6 = sections;
  [(NSArray *)v6 removeObjectAtIndex:a3];
  [(NSArray *)v5 removeObjectAtIndex:a3];
}

- (void)insertSection:(id)a3 atIndex:(int64_t)a4
{
  sections = self->super._sections;
  v7 = self->super._sectionedItems;
  v9 = sections;
  [(NSArray *)v9 insertObject:a3 atIndex:a4];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSArray *)v7 insertObject:v8 atIndex:a4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MPSectionedCollection);
  if (v4)
  {
    v5 = [(NSArray *)self->super._sections copy];
    sections = v4->_sections;
    v4->_sections = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->super._sectionedItems, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->super._sectionedItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) copy];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    sectionedItems = v4->_sectionedItems;
    v4->_sectionedItems = v14;
  }

  return v4;
}

- (void)_initializeAsEmptySectionedCollection
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionedItems = self->super._sectionedItems;
  self->super._sectionedItems = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sections = self->super._sections;
  self->super._sections = v5;
}

@end