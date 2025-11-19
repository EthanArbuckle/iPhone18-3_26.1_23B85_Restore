@interface SiriGKAlternateResultsPod
- (SiriGKAlternateResultsPod)initWithPod:(id)a3;
- (UIEdgeInsets)headerInsets;
@end

@implementation SiriGKAlternateResultsPod

- (SiriGKAlternateResultsPod)initWithPod:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SiriGKAlternateResultsPod;
  v5 = [(SiriGKAlternateResultsPod *)&v28 init];
  if (v5)
  {
    v6 = [v4 alternateResults];
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    viewArray = v5->_viewArray;
    v5->_viewArray = v7;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v4 alternateResults];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [[SiriGKAlternateResultView alloc] initWithAlternateResult:*(*(&v24 + 1) + 8 * v13)];
          if (v14)
          {
            [(NSMutableArray *)v5->_viewArray addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v15 = [SiriUIPlatterSectionHeaderView alloc];
    v16 = [v4 title];
    v17 = [NSLocale alloc];
    v18 = AFUIGetLanguageCode();
    v19 = [v17 initWithLocaleIdentifier:v18];
    v20 = [v16 uppercaseStringWithLocale:v19];
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