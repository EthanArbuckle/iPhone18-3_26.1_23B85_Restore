@interface UITableView
- (BOOL)_hasRowAtIndexPath:(id)a3 focusable:(BOOL)a4;
- (BOOL)canFocusRowAtIndexPath:(id)a3;
- (BOOL)hasRowAtIndexPath:(id)a3;
- (id)_indexPathForClosestRowToIndexPath:(id)a3 focusable:(BOOL)a4;
- (id)_indexPathForRowAfterIndexPath:(id)a3 focusable:(BOOL)a4;
- (id)_indexPathForRowBeforeIndexPath:(id)a3 focusable:(BOOL)a4;
- (id)distanceFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (id)indexPathForFirstFocusableRow;
- (id)indexPathForFirstRow;
- (id)indexPathForFirstRowInSection:(int64_t)a3;
- (id)indexPathForFocusableRowAfterIndexPath:(id)a3;
- (id)indexPathForFocusableRowBeforeIndexPath:(id)a3;
- (id)indexPathForLastRow;
- (id)indexPathForLastRowInSection:(int64_t)a3;
- (id)indexPathForRowAfterIndexPath:(id)a3;
- (id)indexPathForRowBeforeIndexPath:(id)a3;
- (unint64_t)numberOfRowsFromIndexPath:(id)a3 toFromIndexPath:(id)a4;
@end

@implementation UITableView

- (BOOL)hasRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = 0;
  if (v4)
  {
    if (([v4 section] & 0x8000000000000000) == 0 && (objc_msgSend(v5, "row") & 0x8000000000000000) == 0)
    {
      v6 = [v5 section];
      if (v6 < [(UITableView *)self numberOfSections])
      {
        v7 = [v5 row];
        if (v7 < -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v5 section]))
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (BOOL)canFocusRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(UITableView *)self hasRowAtIndexPath:v4])
  {
    v5 = [(UITableView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(UITableView *)self delegate];
      v8 = [v7 tableView:self canFocusRowAtIndexPath:v4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)indexPathForFirstRow
{
  v3 = [(UITableView *)self numberOfSections];
  if (v3 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while ([(UITableView *)self numberOfRowsInSection:v5]< 1)
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
  }

  return v6;
}

- (id)indexPathForLastRow
{
  v3 = [(UITableView *)self numberOfSections];
  if (v3)
  {
    v4 = v3;
    while (v4-- >= 1)
    {
      v6 = [(UITableView *)self numberOfRowsInSection:v4];
      if (v6 >= 1)
      {
        v3 = [NSIndexPath indexPathForRow:v6 - 1 inSection:v4];
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (id)indexPathForFirstRowInSection:(int64_t)a3
{
  v4 = [NSIndexPath indexPathForRow:0 inSection:a3];
  if (![(UITableView *)self hasRowAtIndexPath:v4])
  {

    v4 = 0;
  }

  return v4;
}

- (id)indexPathForLastRowInSection:(int64_t)a3
{
  if ([(UITableView *)self hasRowsInSectionAtIndex:?])
  {
    v5 = [NSIndexPath indexPathForRow:[(UITableView *)self numberOfRowsInSection:a3]- 1 inSection:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForFirstFocusableRow
{
  if ([(UITableView *)self numberOfSections]< 1)
  {
LABEL_10:
    v5 = 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      if ([(UITableView *)self numberOfRowsInSection:v3]>= 1)
      {
        v4 = 0;
        while (1)
        {
          v5 = [NSIndexPath indexPathForRow:v4 inSection:v3];
          if ([(UITableView *)self canFocusRowAtIndexPath:v5])
          {
            break;
          }

          if (++v4 >= [(UITableView *)self numberOfRowsInSection:v3])
          {
            goto LABEL_9;
          }
        }

        if (v5)
        {
          break;
        }
      }

LABEL_9:
      if (++v3 >= [(UITableView *)self numberOfSections])
      {
        goto LABEL_10;
      }
    }
  }

  return v5;
}

- (id)indexPathForRowBeforeIndexPath:(id)a3
{
  v4 = a3;
  if ([(UITableView *)self numberOfSections])
  {
    if (v4)
    {
      v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 row] - 1, objc_msgSend(v4, "section"));
      if (![(UITableView *)self hasRowAtIndexPath:v5])
      {
        v6 = [v4 section] + 1;
        while (--v6 >= 1)
        {
          v7 = -[UITableView indexPathForLastRowInSection:](self, "indexPathForLastRowInSection:", [v4 section]);

          v5 = 0;
          if (v7)
          {
            v5 = v7;
            break;
          }
        }
      }
    }

    else
    {
      v5 = [(UITableView *)self indexPathForFirstRow];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForFocusableRowBeforeIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && -[UITableView numberOfSections](self, "numberOfSections") && (v5 = [v4 section], (v5 & 0x8000000000000000) == 0))
  {
    v6 = v5;
    while (v6 == [v4 section])
    {
      v7 = [v4 row];
      v8 = v7 - 1;
      if (v7 >= 1)
      {
        goto LABEL_9;
      }

LABEL_12:
      v9 = 0;
      v10 = v6-- <= 0;
      if (v10)
      {
        goto LABEL_16;
      }
    }

    v8 = 0;
LABEL_9:
    while (1)
    {
      v9 = [NSIndexPath indexPathForRow:v8 inSection:v6];
      if ([(UITableView *)self canFocusRowAtIndexPath:v9])
      {
        break;
      }

      v10 = v8-- <= 0;
      if (v10)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (id)indexPathForRowAfterIndexPath:(id)a3
{
  v4 = a3;
  if ([(UITableView *)self numberOfSections])
  {
    if (v4)
    {
      v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 row] + 1, objc_msgSend(v4, "section"));
      if (![(UITableView *)self hasRowAtIndexPath:v5])
      {
        v6 = [v4 section] + 1;
        while (v6 < [(UITableView *)self numberOfSections])
        {
          v7 = [(UITableView *)self indexPathForFirstRowInSection:v6];

          v5 = 0;
          ++v6;
          if (v7)
          {
            v5 = v7;
            break;
          }
        }
      }
    }

    else
    {
      v5 = [(UITableView *)self indexPathForFirstRow];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForFocusableRowAfterIndexPath:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[UITableView numberOfSections](self, "numberOfSections"), [v4 section] < v5) && (v6 = objc_msgSend(v4, "section"), v6 < v5))
  {
    v7 = v6;
    while (1)
    {
      v8 = [(UITableView *)self numberOfRowsInSection:v7];
      v9 = v7 == [v4 section] ? objc_msgSend(v4, "row") + 1 : 0;
      if (v9 < v8)
      {
        break;
      }

LABEL_11:
      v10 = 0;
      if (++v7 == v5)
      {
        goto LABEL_14;
      }
    }

    while (1)
    {
      v10 = [NSIndexPath indexPathForRow:v9 inSection:v7];
      if ([(UITableView *)self canFocusRowAtIndexPath:v10])
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)distanceFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [v7 section];
    v10 = [v8 section];
    if (v9 - v10 >= 0)
    {
      v11 = v9 - v10;
    }

    else
    {
      v11 = v10 - v9;
    }

    v12 = [(UITableView *)self numberOfRowsFromIndexPath:v8 toFromIndexPath:v7];

    v5 = [NSIndexPath indexPathForRow:v12 inSection:v11];
  }

  return v5;
}

- (unint64_t)numberOfRowsFromIndexPath:(id)a3 toFromIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    v10 = v6;
    v11 = v8;
    if (v9 != -1)
    {
      if (v9 != 1)
      {
        v15 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_24;
      }

      v10 = v8;
      v11 = v6;
    }

    v12 = v10;
    v13 = v11;
    v14 = [v12 section];
    if (v14 > [v13 section])
    {
      v15 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v15 = 0;
    while (1)
    {
      if ([(UITableView *)self hasRowsInSectionAtIndex:v14])
      {
        v16 = [v13 section];
        v17 = [v12 section];
        v18 = v17;
        if (v14 == v16)
        {
          v19 = [v13 row];
          v20 = v19;
          if (v14 != v18)
          {
            v15 = &v15[v19];
            goto LABEL_21;
          }

          v21 = [v12 row];
          v22 = &v15[v20];
        }

        else
        {
          if (v14 != v17)
          {
            v15 = &v15[[(UITableView *)self numberOfRowsInSection:v14]];
            goto LABEL_21;
          }

          v23 = -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v12 section]);
          v21 = [v12 row];
          v22 = &v15[v23];
        }

        v15 = (v22 - v21);
      }

LABEL_21:
      if (v14++ >= [v13 section])
      {
        goto LABEL_24;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
  }

  v15 = [v7 row];
LABEL_25:

  return v15;
}

- (id)_indexPathForClosestRowToIndexPath:(id)a3 focusable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UITableView *)self _hasRowAtIndexPath:v6 focusable:v4])
  {
    v7 = v6;
    goto LABEL_21;
  }

  v8 = [(UITableView *)self _indexPathForRowBeforeIndexPath:v6 focusable:v4];
  v9 = [(UITableView *)self _indexPathForRowAfterIndexPath:v6 focusable:v4];
  v10 = v9;
  if (v9 | v8)
  {
    if ((v8 != 0) != (v9 != 0))
    {
      v11 = v9 == 0;
LABEL_16:
      if (v11)
      {
        v20 = v8;
      }

      else
      {
        v20 = v10;
      }

      v7 = v20;
      goto LABEL_20;
    }

    if (v9)
    {
      v12 = [v9 section];
      v13 = v12 == [v6 section];
      if (v8)
      {
LABEL_9:
        v14 = [v8 section];
        v15 = v14 == [v6 section];
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
LABEL_12:
    if (v15 == v13)
    {
      v16 = [(UITableView *)self indexPathsForVisibleRows];
      v17 = [v16 containsObject:v10];

      v18 = [(UITableView *)self indexPathsForVisibleRows];
      v19 = [v18 containsObject:v8];

      if (v17 == v19)
      {
        v22 = [(UITableView *)self distanceFromIndexPath:v6 toIndexPath:v8];
        v23 = [(UITableView *)self distanceFromIndexPath:v6 toIndexPath:v10];
        v24 = [v23 row];
        if (v24 >= [v22 row])
        {
          v25 = v8;
        }

        else
        {
          v25 = v10;
        }

        v7 = v25;

        goto LABEL_20;
      }

      v11 = v17 == 0;
    }

    else
    {
      v11 = v13 == 0;
    }

    goto LABEL_16;
  }

  v7 = 0;
LABEL_20:

LABEL_21:

  return v7;
}

- (id)_indexPathForRowAfterIndexPath:(id)a3 focusable:(BOOL)a4
{
  if (a4)
  {
    [(UITableView *)self indexPathForFocusableRowAfterIndexPath:a3];
  }

  else
  {
    [(UITableView *)self indexPathForRowAfterIndexPath:a3];
  }
  v4 = ;

  return v4;
}

- (id)_indexPathForRowBeforeIndexPath:(id)a3 focusable:(BOOL)a4
{
  if (a4)
  {
    [(UITableView *)self indexPathForFocusableRowBeforeIndexPath:a3];
  }

  else
  {
    [(UITableView *)self indexPathForRowBeforeIndexPath:a3];
  }
  v4 = ;

  return v4;
}

- (BOOL)_hasRowAtIndexPath:(id)a3 focusable:(BOOL)a4
{
  if (a4)
  {
    return [(UITableView *)self canFocusRowAtIndexPath:a3];
  }

  else
  {
    return [(UITableView *)self hasRowAtIndexPath:a3];
  }
}

@end