@interface EKEventDetailGroup
- (BOOL)hasSubitemForIndexPathRow:(unint64_t)row;
- (EKEventDetailGroup)initWithTag:(unint64_t)tag headerTitle:(id)title;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index withTraitCollection:(id)collection;
- (id)description;
- (id)itemAtIndex:(unint64_t)index subitemIndex:(unint64_t *)subitemIndex;
- (unint64_t)numberOfRows;
- (void)updateCellLayoutsForRowCountIfNeededUsingWidth:(double)width;
@end

@implementation EKEventDetailGroup

- (EKEventDetailGroup)initWithTag:(unint64_t)tag headerTitle:(id)title
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = EKEventDetailGroup;
  v7 = [(EKEventDetailGroup *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKEventDetailGroup *)v7 setTag:tag];
    [(EKEventDetailGroup *)v8 setHeaderTitle:titleCopy];
  }

  return v8;
}

- (unint64_t)numberOfRows
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [(EKEventDetailGroup *)self items];
  v3 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(items);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfSubitems];
      }

      v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)itemAtIndex:(unint64_t)index subitemIndex:(unint64_t *)subitemIndex
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(EKEventDetailGroup *)self items];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (index - v8 < [v12 numberOfSubitems])
      {
        v13 = v12;

        v9 = v13;
      }

      if (subitemIndex)
      {
        *subitemIndex = index - v8;
      }

      v8 += [v12 numberOfSubitems];
      if (v8 > index)
      {
        break;
      }

      if (v7 == ++v11)
      {
        v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cellForSubitemAtIndex:(unint64_t)index withTraitCollection:(id)collection
{
  v10 = 0;
  collectionCopy = collection;
  v7 = [(EKEventDetailGroup *)self itemAtIndex:index subitemIndex:&v10];
  v8 = [v7 cellForSubitemAtIndex:v10 withTraitCollection:collectionCopy];

  return v8;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  updateCopy = update;
  v11 = 0;
  v7 = [(EKEventDetailGroup *)self itemAtIndex:index subitemIndex:&v11];
  [v7 defaultCellHeightForSubitemAtIndex:v11 forWidth:updateCopy forceUpdate:width];
  v9 = v8;

  return v9;
}

- (BOOL)hasSubitemForIndexPathRow:(unint64_t)row
{
  v6 = 0;
  v3 = [(EKEventDetailGroup *)self itemAtIndex:row subitemIndex:&v6];
  v4 = [v3 hasDetailViewControllerAtIndex:v6];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  items = [(EKEventDetailGroup *)self items];
  v4 = [v2 stringWithFormat:@"%@", items];

  return v4;
}

- (void)updateCellLayoutsForRowCountIfNeededUsingWidth:(double)width
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [(EKEventDetailGroup *)self items];
  v5 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 requiresLayoutForSubitemCount] && objc_msgSend(v9, "maximumNumberOfSubItems"))
        {
          v10 = 0;
          do
          {
            v11 = [v9 cellForSubitemAtIndex:v10];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 layoutForWidth:objc_msgSend(v9 position:{"cellPosition"), width}];
            }

            ++v10;
          }

          while (v10 < [v9 maximumNumberOfSubItems]);
        }
      }

      v6 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end