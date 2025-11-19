@interface EKEventDetailGroup
- (BOOL)hasSubitemForIndexPathRow:(unint64_t)a3;
- (EKEventDetailGroup)initWithTag:(unint64_t)a3 headerTitle:(id)a4;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4;
- (id)description;
- (id)itemAtIndex:(unint64_t)a3 subitemIndex:(unint64_t *)a4;
- (unint64_t)numberOfRows;
- (void)updateCellLayoutsForRowCountIfNeededUsingWidth:(double)a3;
@end

@implementation EKEventDetailGroup

- (EKEventDetailGroup)initWithTag:(unint64_t)a3 headerTitle:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = EKEventDetailGroup;
  v7 = [(EKEventDetailGroup *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKEventDetailGroup *)v7 setTag:a3];
    [(EKEventDetailGroup *)v8 setHeaderTitle:v6];
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
  v2 = [(EKEventDetailGroup *)self items];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfSubitems];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)itemAtIndex:(unint64_t)a3 subitemIndex:(unint64_t *)a4
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
      if (a3 - v8 < [v12 numberOfSubitems])
      {
        v13 = v12;

        v9 = v13;
      }

      if (a4)
      {
        *a4 = a3 - v8;
      }

      v8 += [v12 numberOfSubitems];
      if (v8 > a3)
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

- (id)cellForSubitemAtIndex:(unint64_t)a3 withTraitCollection:(id)a4
{
  v10 = 0;
  v6 = a4;
  v7 = [(EKEventDetailGroup *)self itemAtIndex:a3 subitemIndex:&v10];
  v8 = [v7 cellForSubitemAtIndex:v10 withTraitCollection:v6];

  return v8;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  v11 = 0;
  v7 = [(EKEventDetailGroup *)self itemAtIndex:a3 subitemIndex:&v11];
  [v7 defaultCellHeightForSubitemAtIndex:v11 forWidth:v5 forceUpdate:a4];
  v9 = v8;

  return v9;
}

- (BOOL)hasSubitemForIndexPathRow:(unint64_t)a3
{
  v6 = 0;
  v3 = [(EKEventDetailGroup *)self itemAtIndex:a3 subitemIndex:&v6];
  v4 = [v3 hasDetailViewControllerAtIndex:v6];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(EKEventDetailGroup *)self items];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (void)updateCellLayoutsForRowCountIfNeededUsingWidth:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKEventDetailGroup *)self items];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
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
              [v11 layoutForWidth:objc_msgSend(v9 position:{"cellPosition"), a3}];
            }

            ++v10;
          }

          while (v10 < [v9 maximumNumberOfSubItems]);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end