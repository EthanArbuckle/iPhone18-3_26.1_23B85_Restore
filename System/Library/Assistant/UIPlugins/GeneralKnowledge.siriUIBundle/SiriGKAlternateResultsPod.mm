@interface SiriGKAlternateResultsPod
- (SiriGKAlternateResultsPod)initWithPod:(id)pod;
- (UIEdgeInsets)headerInsets;
@end

@implementation SiriGKAlternateResultsPod

- (SiriGKAlternateResultsPod)initWithPod:(id)pod
{
  podCopy = pod;
  v28.receiver = self;
  v28.super_class = SiriGKAlternateResultsPod;
  v5 = [(SiriGKAlternateResultsPod *)&v28 init];
  if (v5)
  {
    alternateResults = [podCopy alternateResults];
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [alternateResults count]);
    viewArray = v5->_viewArray;
    v5->_viewArray = v7;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    alternateResults2 = [podCopy alternateResults];
    v10 = [alternateResults2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(alternateResults2);
          }

          v14 = [[SiriGKAlternateResultView alloc] initWithAlternateResult:*(*(&v24 + 1) + 8 * v13)];
          if (v14)
          {
            [(NSMutableArray *)v5->_viewArray addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [alternateResults2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v15 = [SiriUIPlatterSectionHeaderView alloc];
    title = [podCopy title];
    v17 = [NSLocale alloc];
    v18 = AFUIGetLanguageCode();
    v19 = [v17 initWithLocaleIdentifier:v18];
    v20 = [title uppercaseStringWithLocale:v19];
    v21 = [v15 initWithText:v20];
    headerView = v5->_headerView;
    v5->_headerView = v21;

    [(SiriUIPlatterSectionHeaderView *)v5->_headerView setTextAlignment:4];
  }

  return v5;
}

- (UIEdgeInsets)headerInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end