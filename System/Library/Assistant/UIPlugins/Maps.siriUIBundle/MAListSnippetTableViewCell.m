@interface MAListSnippetTableViewCell
- (MAListSnippetTableViewCell)initWithReuseIdentifier:(id)a3;
@end

@implementation MAListSnippetTableViewCell

- (MAListSnippetTableViewCell)initWithReuseIdentifier:(id)a3
{
  v22.receiver = self;
  v22.super_class = MAListSnippetTableViewCell;
  v3 = [(MAListSnippetTableViewCell *)&v22 initWithStyle:0 reuseIdentifier:a3];
  if (v3)
  {
    v4 = [MAResultView alloc];
    v5 = [(MAListSnippetTableViewCell *)v3 contentView];
    [v5 frame];
    v6 = [(MAResultView *)v4 initWithFrame:?];
    resultView = v3->_resultView;
    v3->_resultView = v6;

    [(MAResultView *)v3->_resultView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MAResultView *)v3->_resultView _ma_updateSemanticContentAttribute];
    v8 = [(MAListSnippetTableViewCell *)v3 contentView];
    [v8 addSubview:v3->_resultView];

    v9 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [&off_49D28 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(&off_49D28);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = _NSDictionaryOfVariableBindings(@"_resultView", v3->_resultView, 0);
          v16 = [NSLayoutConstraint constraintsWithVisualFormat:v14 options:0 metrics:0 views:v15];
          [v9 addObjectsFromArray:v16];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [&off_49D28 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    [NSLayoutConstraint activateConstraints:v9];
  }

  return v3;
}

@end