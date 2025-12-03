@interface UITableView
- (double)preferredContentHeightWithMax:(double)max;
- (id)indexPathForRowPreceedingIndexPath:(id)path;
- (void)setSeparatorsHidden:(BOOL)hidden forCellAtIndexPath:(id)path;
- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
@end

@implementation UITableView

- (void)setSeparatorsHidden:(BOOL)hidden forCellAtIndexPath:(id)path
{
  pathCopy = path;
  v13 = pathCopy;
  if (hidden)
  {
    v7 = pathCopy;
    v8 = UITableViewCellSeparatorStyleNone;
  }

  else
  {
    separatorStyle = [(UITableView *)self separatorStyle];
    v7 = v13;
    v8 = separatorStyle;
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

- (id)indexPathForRowPreceedingIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] >= 1)
  {
    v5 = [pathCopy row] - 1;
    section = [pathCopy section];
LABEL_3:
    v7 = [NSIndexPath indexPathForRow:v5 inSection:section];
    goto LABEL_8;
  }

  if ([pathCopy section] >= 1)
  {
    v8 = -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [pathCopy section] - 1);
    if (v8)
    {
      v5 = (v8 - 1);
      section = [pathCopy section] - 1;
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (double)preferredContentHeightWithMax:(double)max
{
  dataSource = [(UITableView *)self dataSource];
  delegate = [(UITableView *)self delegate];
  v7 = [dataSource numberOfSectionsInTableView:self];
  v8 = max > 0.0;
  v9 = 0.0;
  if (v7 && max > 0.0)
  {
    v10 = v7;
    v11 = 0;
    do
    {
      [delegate tableView:self heightForHeaderInSection:v11];
      v9 = v9 + v12;
      v13 = [dataSource tableView:self numberOfRowsInSection:v11];
      if (v13 && v9 < max)
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
              [delegate tableView:self estimatedHeightForRowAtIndexPath:{v16, -1.0}];
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

        while (v9 < max);
      }

      ++v11;
      v8 = v9 < max;
    }

    while (v11 < v10 && v9 < max);
  }

  if (v8)
  {
    max = v9;
  }

  return max;
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UITableView *)&v3 setShowsHorizontalScrollIndicator:indicator];
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  v3.receiver = self;
  v3.super_class = UITableView;
  [(UITableView *)&v3 setShowsVerticalScrollIndicator:indicator];
}

@end