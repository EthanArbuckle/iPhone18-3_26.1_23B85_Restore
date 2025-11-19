@interface UITableView
- (double)preferredContentHeightWithMax:(double)a3;
- (id)indexPathForRowPreceedingIndexPath:(id)a3;
- (void)setSeparatorsHidden:(BOOL)a3 forCellAtIndexPath:(id)a4;
- (void)setShowsHorizontalScrollIndicator:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
@end

@implementation UITableView

- (void)setSeparatorsHidden:(BOOL)a3 forCellAtIndexPath:(id)a4
{
  v6 = a4;
  v13 = v6;
  if (a3)
  {
    v7 = v6;
    v8 = UITableViewCellSeparatorStyleNone;
  }

  else
  {
    v9 = [(UITableView *)self separatorStyle];
    v7 = v13;
    v8 = v9;
  }

  v10 = [(UITableView *)self cellForRowAtIndexPath:v7];
  if (v10)
  {
    v11 = [(UITableView *)self indexPathForRowPreceedingIndexPath:v13];
    v12 = [(UITableView *)self cellForRowAtIndexPath:v11];

    [v10 setSeparatorStyle:v8];
    [v12 setSeparatorStyle:v8];
  }
}

- (id)indexPathForRowPreceedingIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 row] >= 1)
  {
    v5 = [v4 row] - 1;
    v6 = [v4 section];
LABEL_3:
    v7 = [NSIndexPath indexPathForRow:v5 inSection:v6];
    goto LABEL_8;
  }

  if ([v4 section] >= 1)
  {
    v8 = -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v4 section] - 1);
    if (v8)
    {
      v5 = (v8 - 1);
      v6 = [v4 section] - 1;
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (double)preferredContentHeightWithMax:(double)a3
{
  v5 = [(UITableView *)self dataSource];
  v6 = [(UITableView *)self delegate];
  v7 = [v5 numberOfSectionsInTableView:self];
  v8 = a3 > 0.0;
  v9 = 0.0;
  if (v7 && a3 > 0.0)
  {
    v10 = v7;
    v11 = 0;
    do
    {
      [v6 tableView:self heightForHeaderInSection:v11];
      v9 = v9 + v12;
      v13 = [v5 tableView:self numberOfRowsInSection:v11];
      if (v13 && v9 < a3)
      {
        v14 = v13;
        v15 = 1;
        do
        {
          v16 = [NSIndexPath indexPathForRow:v15 - 1 inSection:v11];
          [(UITableView *)self rectForRowAtIndexPath:v16];
          v18 = v17;
          if (v17 < 0.0)
          {
            v19 = objc_opt_respondsToSelector();
            v20 = -1.0;
            if (v19)
            {
              [v6 tableView:self estimatedHeightForRowAtIndexPath:{v16, -1.0}];
            }

            if (v18 < v20)
            {
              v18 = v20;
            }
          }

          v9 = v9 + v18;

          if (v15 >= v14)
          {
            break;
          }

          ++v15;
        }

        while (v9 < a3);
      }

      ++v11;
      v8 = v9 < a3;
    }

    while (v11 < v10 && v9 < a3);
  }

  if (v8)
  {
    a3 = v9;
  }

  return a3;
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UITableView *)&v3 setShowsHorizontalScrollIndicator:a3];
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UITableView *)&v3 setShowsVerticalScrollIndicator:a3];
}

@end