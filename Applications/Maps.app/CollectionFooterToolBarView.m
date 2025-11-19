@interface CollectionFooterToolBarView
- (BOOL)_shouldUseGlyphForStrings:(id)a3;
- (void)_updateContent;
- (void)addAction:(id)a3;
- (void)addToAction:(id)a3;
- (void)cancelAction:(id)a3;
- (void)cancelListAction:(id)a3;
- (void)deleteAction:(id)a3;
- (void)deleteListAction:(id)a3;
- (void)editAction:(id)a3;
- (void)editListAction:(id)a3;
- (void)loadContentActions;
- (void)loadEditActions;
- (void)loadEditAllActions;
- (void)loadListActions;
- (void)loadListEditActions;
- (void)loadListEditAllActions;
- (void)newCollectionAction:(id)a3;
- (void)selectAction:(id)a3;
- (void)selectAllAction:(id)a3;
- (void)shareAction:(id)a3;
@end

@implementation CollectionFooterToolBarView

- (void)selectAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:0];
}

- (void)shareAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:10];
}

- (void)addAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:9];
}

- (void)deleteAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:2];
}

- (void)selectAllAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:6];
}

- (void)addToAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:7];
}

- (void)newCollectionAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:8];
}

- (void)cancelAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:1];
}

- (void)editAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:0];
}

- (void)deleteListAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:5];
}

- (void)cancelListAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:4];
}

- (void)editListAction:(id)a3
{
  v4 = [(FooterToolBarView *)self delegate];
  [v4 view:self requestsCollectionFooterAction:3];
}

- (void)loadEditActions
{
  [(FooterToolBarView *)self setCanAdaptToWidth:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Footer] Cancel" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] Add to Guide" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Collection] Delete" value:@"localized string not found" table:0];

  v31[0] = v4;
  v31[1] = v6;
  v31[2] = v8;
  v27 = [NSArray arrayWithObjects:v31 count:3];
  v25 = [(CollectionFooterToolBarView *)self _shouldUseGlyphForStrings:?];
  v28 = v4;
  v9 = [[UIBarButtonItem alloc] initWithTitle:v4 style:0 target:self action:"cancelAction:"];
  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v26 = v6;
  v11 = [[UIBarButtonItem alloc] initWithTitle:v6 style:0 target:self action:"addToAction:"];
  v12 = [[UIBarButtonItem alloc] initWithTitle:v8 style:0 target:self action:"deleteAction:"];
  v13 = +[UIColor systemRedColor];
  [v12 setTintColor:v13];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"deleteAction:"];
  v15 = v11;
  v16 = v9;
  v17 = +[UIColor systemRedColor];
  [v14 setTintColor:v17];

  v18 = [NSMutableArray arrayWithObjects:v9, v10, 0];
  if (![(CollectionFooterToolBarView *)self useMacConfig])
  {
    if ([(FooterToolBarView *)self canBeSaved])
    {
      [v18 addObject:v15];
    }

    else
    {
      if (v25)
      {
        v19 = v14;
      }

      else
      {
        v19 = v12;
      }

      v20 = v19;
      if ([(FooterToolBarView *)self canMove])
      {
        v30[0] = v15;
        v30[1] = v10;
        v30[2] = v20;
        v21 = v30;
        v22 = 3;
      }

      else
      {
        v29 = v20;
        v21 = &v29;
        v22 = 1;
      }

      v23 = [NSArray arrayWithObjects:v21 count:v22];

      [v18 addObjectsFromArray:v23];
    }
  }

  v24 = [(FooterToolBarView *)self toolBar];
  [v24 setItems:v18];
}

- (void)loadEditAllActions
{
  [(FooterToolBarView *)self setCanAdaptToWidth:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Footer] Cancel" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[Collection] Select All" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Collection] Delete" value:@"localized string not found" table:0];

  v29[0] = v4;
  v29[1] = v6;
  v29[2] = v8;
  v26 = [NSArray arrayWithObjects:v29 count:3];
  v24 = [(CollectionFooterToolBarView *)self _shouldUseGlyphForStrings:?];
  v27 = v4;
  v9 = [[UIBarButtonItem alloc] initWithTitle:v4 style:0 target:self action:"cancelAction:"];
  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v25 = v6;
  v11 = [[UIBarButtonItem alloc] initWithTitle:v6 style:0 target:self action:"selectAllAction:"];
  v12 = [[UIBarButtonItem alloc] initWithTitle:v8 style:0 target:self action:"deleteAction:"];
  v13 = +[UIColor systemRedColor];
  [v12 setTintColor:v13];

  [v12 setEnabled:0];
  v14 = v9;
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"deleteAction:"];
  v16 = +[UIColor systemRedColor];
  [v15 setTintColor:v16];

  [v15 setEnabled:0];
  v17 = [NSMutableArray arrayWithObjects:v9, v10, 0];
  if (![(CollectionFooterToolBarView *)self useMacConfig])
  {
    if ([(FooterToolBarView *)self canBeSaved])
    {
      [v17 addObject:v11];
    }

    else
    {
      if (v24)
      {
        v18 = v15;
      }

      else
      {
        v18 = v12;
      }

      v28[0] = v11;
      v28[1] = v10;
      v28[2] = v18;
      v19 = v11;
      v20 = v14;
      v21 = v18;
      v22 = [NSArray arrayWithObjects:v28 count:3];

      v14 = v20;
      v11 = v19;
      [v17 addObjectsFromArray:v22];
    }
  }

  v23 = [(FooterToolBarView *)self toolBar];
  [v23 setItems:v17];
}

- (BOOL)_shouldUseGlyphForStrings:(id)a3
{
  v4 = a3;
  v5 = ([v4 count] + 1) * 20.0;
  v22 = NSFontAttributeName;
  v6 = +[UIFont system17];
  v23 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * i) sizeWithAttributes:{v7, v17}];
        v5 = v13 + v5;
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [(CollectionFooterToolBarView *)self frame];
  v15 = v14 < v5;

  return v15;
}

- (void)loadContentActions
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addAction:"];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareAction:"];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editAction:"];
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v7 = +[NSMutableArray array];
  if (![(CollectionFooterToolBarView *)self hideEditButton])
  {
    [v7 addObject:v5];
  }

  if (![(FooterToolBarView *)self canDeleteOnly])
  {
    v10[0] = v6;
    v10[1] = v4;
    v10[2] = v6;
    v10[3] = v3;
    v8 = [NSArray arrayWithObjects:v10 count:4];
    [v7 addObjectsFromArray:v8];
  }

  v9 = [(FooterToolBarView *)self toolBar];
  [v9 setItems:v7];
}

- (void)loadListEditAllActions
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelListAction:"];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Collection] Delete" value:@"localized string not found" table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"deleteListAction:"];

  v9 = +[UIColor systemRedColor];
  [v8 setTintColor:v9];

  [v8 setEnabled:0];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v8;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  v11 = [(FooterToolBarView *)self toolBar];
  [v11 setItems:v10];
}

- (void)loadListEditActions
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelListAction:"];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Collection] Delete" value:@"localized string not found" table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"deleteListAction:"];

  v9 = +[UIColor systemRedColor];
  [v8 setTintColor:v9];

  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v8;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  v11 = [(FooterToolBarView *)self toolBar];
  [v11 setItems:v10];
}

- (void)loadListActions
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"newCollectionAction:"];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editListAction:"];
  if ([(CollectionFooterToolBarView *)self hideEditButton])
  {
    v10 = v4;
    v11 = v3;
    v6 = &v10;
    v7 = 2;
  }

  else
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v6 = &v12;
    v7 = 3;
  }

  v8 = [NSArray arrayWithObjects:v6 count:v7, v10, v11, v12, v13, v14];
  v9 = [(FooterToolBarView *)self toolBar];
  [v9 setItems:v8];
}

- (void)_updateContent
{
  v3 = [(FooterToolBarView *)self state];
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {

        [(CollectionFooterToolBarView *)self loadContentActions];
      }

      else if (v3 == 2)
      {

        [(CollectionFooterToolBarView *)self loadEditActions];
      }
    }

    else
    {
      v4 = [(FooterToolBarView *)self toolBar];
      [v4 setItems:&__NSArray0__struct];
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {

      [(CollectionFooterToolBarView *)self loadListEditActions];
    }

    else if (v3 == 6)
    {

      [(CollectionFooterToolBarView *)self loadListEditAllActions];
    }
  }

  else if (v3 == 3)
  {

    [(CollectionFooterToolBarView *)self loadEditAllActions];
  }

  else
  {

    [(CollectionFooterToolBarView *)self loadListActions];
  }
}

@end