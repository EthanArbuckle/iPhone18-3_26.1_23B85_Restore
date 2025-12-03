@interface MFSearchBar
- (MFSearchBar)initWithCoder:(id)coder;
- (MFSearchBar)initWithFrame:(CGRect)frame;
- (NSArray)representedObjects;
- (NSArray)representedSuggestionTokens;
- (NSArray)selectedRepresentedObjects;
- (void)replaceSearchBarWithTokens:(id)tokens userQueryString:(id)string;
- (void)setRepresentedObjects:(id)objects;
@end

@implementation MFSearchBar

- (MFSearchBar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MFSearchBar;
  v5 = [(MFSearchBar *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    sub_100013FB8(v5);
  }

  return v6;
}

- (MFSearchBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFSearchBar;
  v3 = [(MFSearchBar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  searchTextField = [(MFSearchBar *)self searchTextField];
  tokens = [searchTextField tokens];
  v6 = [tokens count];

  if (v6)
  {
    searchTextField2 = [(MFSearchBar *)self searchTextField];
    tokens2 = [searchTextField2 tokens];
    v9 = [tokens2 ef_map:&stru_100655678];
    [v3 addObjectsFromArray:v9];
  }

  text = [(MFSearchBar *)self text];
  v11 = [text length];

  if (v11)
  {
    text2 = [(MFSearchBar *)self text];
    [v3 addObject:text2];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)setRepresentedObjects:(id)objects
{
  objectsCopy = objects;
  searchTextField = [(MFSearchBar *)self searchTextField];
  tokens = [searchTextField tokens];
  v5 = [tokens count];

  while (v5 > 0)
  {
    [searchTextField removeTokenAtIndex:--v5];
  }

  [(MFSearchBar *)self setText:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [objectsCopy reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate = v10;
          image = [delegate image];
          title = [delegate title];
          v14 = [UISearchToken tokenWithIcon:image text:title];

          [v14 setRepresentedObject:delegate];
          [searchTextField insertToken:v14 atIndex:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_14;
          }

          [(MFSearchBar *)self setText:v10];
          delegate = [(MFSearchBar *)self delegate];
          [delegate searchBar:self textDidChange:v10];
        }

LABEL_14:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (NSArray)selectedRepresentedObjects
{
  v3 = +[NSMutableArray array];
  searchTextField = [(MFSearchBar *)self searchTextField];
  searchTextField2 = [(MFSearchBar *)self searchTextField];
  selectedTextRange = [searchTextField2 selectedTextRange];
  v7 = [searchTextField tokensInRange:selectedTextRange];

  if ([v7 count])
  {
    v8 = [v7 ef_map:&stru_100655698];
    [v3 addObjectsFromArray:v8];
  }

  searchTextField3 = [(MFSearchBar *)self searchTextField];
  selectedTextRange2 = [searchTextField3 selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    searchTextField4 = [(MFSearchBar *)self searchTextField];
    searchTextField5 = [(MFSearchBar *)self searchTextField];
    selectedTextRange3 = [searchTextField5 selectedTextRange];
    v15 = [searchTextField4 textInRange:selectedTextRange3];
    [v3 addObject:v15];
  }

  v16 = [v3 copy];

  return v16;
}

- (NSArray)representedSuggestionTokens
{
  representedObjects = [(MFSearchBar *)self representedObjects];
  v3 = [representedObjects ef_filter:&stru_1006556B8];

  return v3;
}

- (void)replaceSearchBarWithTokens:(id)tokens userQueryString:(id)string
{
  tokensCopy = tokens;
  stringCopy = string;
  searchTextField = [(MFSearchBar *)self searchTextField];
  [searchTextField setText:&stru_100662A88];
  v8 = [tokensCopy ef_map:&stru_1006556F8];
  if ([stringCopy length])
  {
    [searchTextField setText:stringCopy];
  }

  [searchTextField setTokens:v8];
  tokens = [searchTextField tokens];
  v10 = [tokens count];

  if (v10 && ![stringCopy length])
  {
    v11 = [searchTextField positionOfTokenAtIndex:v10 - 1];
    endOfDocument = [searchTextField endOfDocument];
    v13 = [searchTextField textRangeFromPosition:v11 toPosition:endOfDocument];
    [searchTextField setSelectedTextRange:v13];
  }
}

@end