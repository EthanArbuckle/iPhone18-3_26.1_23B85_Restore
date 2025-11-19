@interface MFSearchBar
- (MFSearchBar)initWithCoder:(id)a3;
- (MFSearchBar)initWithFrame:(CGRect)a3;
- (NSArray)representedObjects;
- (NSArray)representedSuggestionTokens;
- (NSArray)selectedRepresentedObjects;
- (void)replaceSearchBarWithTokens:(id)a3 userQueryString:(id)a4;
- (void)setRepresentedObjects:(id)a3;
@end

@implementation MFSearchBar

- (MFSearchBar)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFSearchBar;
  v5 = [(MFSearchBar *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    sub_100013FB8(v5);
  }

  return v6;
}

- (MFSearchBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFSearchBar;
  v3 = [(MFSearchBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    sub_100013FB8(v3);
  }

  return v4;
}

- (NSArray)representedObjects
{
  v3 = +[NSMutableArray array];
  v4 = [(MFSearchBar *)self searchTextField];
  v5 = [v4 tokens];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MFSearchBar *)self searchTextField];
    v8 = [v7 tokens];
    v9 = [v8 ef_map:&stru_100655678];
    [v3 addObjectsFromArray:v9];
  }

  v10 = [(MFSearchBar *)self text];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(MFSearchBar *)self text];
    [v3 addObject:v12];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)setRepresentedObjects:(id)a3
{
  v15 = a3;
  v16 = [(MFSearchBar *)self searchTextField];
  v4 = [v16 tokens];
  v5 = [v4 count];

  while (v5 > 0)
  {
    [v16 removeTokenAtIndex:--v5];
  }

  [(MFSearchBar *)self setText:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v15 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 image];
          v13 = [v11 title];
          v14 = [UISearchToken tokenWithIcon:v12 text:v13];

          [v14 setRepresentedObject:v11];
          [v16 insertToken:v14 atIndex:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_14;
          }

          [(MFSearchBar *)self setText:v10];
          v11 = [(MFSearchBar *)self delegate];
          [v11 searchBar:self textDidChange:v10];
        }

LABEL_14:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (NSArray)selectedRepresentedObjects
{
  v3 = +[NSMutableArray array];
  v4 = [(MFSearchBar *)self searchTextField];
  v5 = [(MFSearchBar *)self searchTextField];
  v6 = [v5 selectedTextRange];
  v7 = [v4 tokensInRange:v6];

  if ([v7 count])
  {
    v8 = [v7 ef_map:&stru_100655698];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [(MFSearchBar *)self searchTextField];
  v10 = [v9 selectedTextRange];
  v11 = [v10 isEmpty];

  if ((v11 & 1) == 0)
  {
    v12 = [(MFSearchBar *)self searchTextField];
    v13 = [(MFSearchBar *)self searchTextField];
    v14 = [v13 selectedTextRange];
    v15 = [v12 textInRange:v14];
    [v3 addObject:v15];
  }

  v16 = [v3 copy];

  return v16;
}

- (NSArray)representedSuggestionTokens
{
  v2 = [(MFSearchBar *)self representedObjects];
  v3 = [v2 ef_filter:&stru_1006556B8];

  return v3;
}

- (void)replaceSearchBarWithTokens:(id)a3 userQueryString:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(MFSearchBar *)self searchTextField];
  [v7 setText:&stru_100662A88];
  v8 = [v14 ef_map:&stru_1006556F8];
  if ([v6 length])
  {
    [v7 setText:v6];
  }

  [v7 setTokens:v8];
  v9 = [v7 tokens];
  v10 = [v9 count];

  if (v10 && ![v6 length])
  {
    v11 = [v7 positionOfTokenAtIndex:v10 - 1];
    v12 = [v7 endOfDocument];
    v13 = [v7 textRangeFromPosition:v11 toPosition:v12];
    [v7 setSelectedTextRange:v13];
  }
}

@end