@interface ChildItemsViewModel
- (BOOL)isEqual:(id)equal;
- (ChildItemsViewModel)initWithChildItems:(id)items childItemsSpacing:(double)spacing font:(id)font maxWidth:(double)width buttonContentEdgeInsets:(UIEdgeInsets)insets;
- (void)calculateModelWithChildItemsSpacing:(double)spacing font:(id)font maxWidth:(double)width buttonContentEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation ChildItemsViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numberOfRows = [(ChildItemsViewModel *)self numberOfRows];
      if (numberOfRows == [(ChildItemsViewModel *)v5 numberOfRows]&& (v7 = [(ChildItemsViewModel *)self numberOfColumns], v7 == [(ChildItemsViewModel *)v5 numberOfColumns]))
      {
        childItemsCount = [(ChildItemsViewModel *)self childItemsCount];
        v9 = childItemsCount == [(ChildItemsViewModel *)v5 childItemsCount];
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

- (void)calculateModelWithChildItemsSpacing:(double)spacing font:(id)font maxWidth:(double)width buttonContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  fontCopy = font;
  v12 = [NSMutableArray arrayWithCapacity:[(ChildItemsViewModel *)self childItemsCount]];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  childItems = [(ChildItemsViewModel *)self childItems];
  v14 = [childItems countByEnumeratingWithState:&v36 objects:v43 count:16];
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
          objc_enumerationMutation(childItems);
        }

        v18 = [ChildItemButton buttonTitleWithChildItem:*(*(&v36 + 1) + 8 * i)];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [childItems countByEnumeratingWithState:&v36 objects:v43 count:16];
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
        v41 = fontCopy;
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
  if (([(ChildItemsViewModel *)self childItemsCount]== 3 || [(ChildItemsViewModel *)self childItemsCount]== 5 || [(ChildItemsViewModel *)self childItemsCount]== 6) && spacing + spacing + v29 * 3.0 < width)
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:3];
    if ([(ChildItemsViewModel *)self childItemsCount]<= 3)
    {
      childItemsCount = 1;
    }

    else
    {
      childItemsCount = 2;
    }
  }

  else if (([(ChildItemsViewModel *)self childItemsCount]& 1) != 0 || spacing + v29 * 2.0 >= width)
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:1];
    childItemsCount = [(ChildItemsViewModel *)self childItemsCount];
  }

  else
  {
    [(ChildItemsViewModel *)self setNumberOfColumns:2];
    childItemsCount2 = [(ChildItemsViewModel *)self childItemsCount];
    childItemsCount = ([(ChildItemsViewModel *)self childItemsCount]& 1) + (childItemsCount2 >> 1);
  }

  [(ChildItemsViewModel *)self setNumberOfRows:childItemsCount, v32];
}

- (ChildItemsViewModel)initWithChildItems:(id)items childItemsSpacing:(double)spacing font:(id)font maxWidth:(double)width buttonContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  itemsCopy = items;
  fontCopy = font;
  v21.receiver = self;
  v21.super_class = ChildItemsViewModel;
  v17 = [(ChildItemsViewModel *)&v21 init];
  if (v17)
  {
    v18 = [itemsCopy copy];
    childItems = v17->_childItems;
    v17->_childItems = v18;

    [(ChildItemsViewModel *)v17 calculateModelWithChildItemsSpacing:fontCopy font:spacing maxWidth:width buttonContentEdgeInsets:top, left, bottom, right];
  }

  return v17;
}

@end