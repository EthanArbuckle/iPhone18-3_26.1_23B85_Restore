@interface ChildItemsViewModel
- (BOOL)isEqual:(id)a3;
- (ChildItemsViewModel)initWithChildItems:(id)a3 childItemsSpacing:(double)a4 font:(id)a5 maxWidth:(double)a6 buttonContentEdgeInsets:(UIEdgeInsets)a7;
- (void)calculateModelWithChildItemsSpacing:(double)a3 font:(id)a4 maxWidth:(double)a5 buttonContentEdgeInsets:(UIEdgeInsets)a6;
@end

@implementation ChildItemsViewModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ChildItemsViewModel *)self numberOfRows];
      if (v6 == [(ChildItemsViewModel *)v5 numberOfRows]&& (v7 = [(ChildItemsViewModel *)self numberOfColumns], v7 == [(ChildItemsViewModel *)v5 numberOfColumns]))
      {
        v8 = [(ChildItemsViewModel *)self childItemsCount];
        v9 = v8 == [(ChildItemsViewModel *)v5 childItemsCount];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)calculateModelWithChildItemsSpacing:(double)a3 font:(id)a4 maxWidth:(double)a5 buttonContentEdgeInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  left = a6.left;
  v11 = a4;
  v12 = [NSMutableArray arrayWithCapacity:[(ChildItemsViewModel *)self childItemsCount]];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = [(ChildItemsViewModel *)self childItems];
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [ChildItemButton buttonTitleWithChildItem:*(*(&v36 + 1) + 8 * i)];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    v23 = 0.0;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v40 = NSFontAttributeName;
        v41 = v11;
        v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1, v32];
        [v25 sizeWithAttributes:v26];
        v28 = ceil(v27);

        v23 = fmax(v23, v28);
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  v29 = left + right + v23;
  if (([(ChildItemsViewModel *)self childItemsCount]== 3 || [(ChildItemsViewModel *)self childItemsCount]== 5 || [(ChildItemsViewModel *)self childItemsCount]== 6) && a3 + a3 + v29 * 3.0 < a5)
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:3];
    if ([(ChildItemsViewModel *)self childItemsCount]<= 3)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }
  }

  else if (([(ChildItemsViewModel *)self childItemsCount]& 1) != 0 || a3 + v29 * 2.0 >= a5)
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:1];
    v30 = [(ChildItemsViewModel *)self childItemsCount];
  }

  else
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:2];
    v31 = [(ChildItemsViewModel *)self childItemsCount];
    v30 = ([(ChildItemsViewModel *)self childItemsCount]& 1) + (v31 >> 1);
  }

  [(ChildItemsViewModel *)self setNumberOfRows:v30, v32];
}

- (ChildItemsViewModel)initWithChildItems:(id)a3 childItemsSpacing:(double)a4 font:(id)a5 maxWidth:(double)a6 buttonContentEdgeInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v15 = a3;
  v16 = a5;
  v21.receiver = self;
  v21.super_class = ChildItemsViewModel;
  v17 = [(ChildItemsViewModel *)&v21 init];
  if (v17)
  {
    v18 = [v15 copy];
    childItems = v17->_childItems;
    v17->_childItems = v18;

    [(ChildItemsViewModel *)v17 calculateModelWithChildItemsSpacing:v16 font:a4 maxWidth:a6 buttonContentEdgeInsets:top, left, bottom, right];
  }

  return v17;
}

@end