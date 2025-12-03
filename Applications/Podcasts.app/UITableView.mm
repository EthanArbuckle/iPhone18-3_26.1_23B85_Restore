@interface UITableView
- (BOOL)_hasRowAtIndexPath:(id)path focusable:(BOOL)focusable;
- (BOOL)canFocusRowAtIndexPath:(id)path;
- (BOOL)hasRowAtIndexPath:(id)path;
- (id)_indexPathForClosestRowToIndexPath:(id)path focusable:(BOOL)focusable;
- (id)_indexPathForRowAfterIndexPath:(id)path focusable:(BOOL)focusable;
- (id)_indexPathForRowBeforeIndexPath:(id)path focusable:(BOOL)focusable;
- (id)distanceFromIndexPath:(id)path toIndexPath:(id)indexPath;
- (id)indexPathForFirstFocusableRow;
- (id)indexPathForFirstRow;
- (id)indexPathForFirstRowInSection:(int64_t)section;
- (id)indexPathForFocusableRowAfterIndexPath:(id)path;
- (id)indexPathForFocusableRowBeforeIndexPath:(id)path;
- (id)indexPathForLastRow;
- (id)indexPathForLastRowInSection:(int64_t)section;
- (id)indexPathForRowAfterIndexPath:(id)path;
- (id)indexPathForRowBeforeIndexPath:(id)path;
- (unint64_t)numberOfRowsFromIndexPath:(id)path toFromIndexPath:(id)indexPath;
@end

@implementation UITableView

- (BOOL)hasRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  v8 = 0;
  if (pathCopy)
  {
    if (([pathCopy section] & 0x8000000000000000) == 0 && (objc_msgSend(v5, "row") & 0x8000000000000000) == 0)
    {
      section = [v5 section];
      if (section < [(UITableView *)self numberOfSections])
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

- (BOOL)canFocusRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(UITableView *)self hasRowAtIndexPath:pathCopy])
  {
    delegate = [(UITableView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(UITableView *)self delegate];
      v8 = [delegate2 tableView:self canFocusRowAtIndexPath:pathCopy];
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
  numberOfSections = [(UITableView *)self numberOfSections];
  if (numberOfSections < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v4 = numberOfSections;
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
  numberOfSections = [(UITableView *)self numberOfSections];
  if (numberOfSections)
  {
    v4 = numberOfSections;
    while (v4-- >= 1)
    {
      v6 = [(UITableView *)self numberOfRowsInSection:v4];
      if (v6 >= 1)
      {
        numberOfSections = [NSIndexPath indexPathForRow:v6 - 1 inSection:v4];
        goto LABEL_7;
      }
    }

    numberOfSections = 0;
  }

LABEL_7:

  return numberOfSections;
}

- (id)indexPathForFirstRowInSection:(int64_t)section
{
  v4 = [NSIndexPath indexPathForRow:0 inSection:section];
  if (![(UITableView *)self hasRowAtIndexPath:v4])
  {

    v4 = 0;
  }

  return v4;
}

- (id)indexPathForLastRowInSection:(int64_t)section
{
  if ([(UITableView *)self hasRowsInSectionAtIndex:?])
  {
    v5 = [NSIndexPath indexPathForRow:[(UITableView *)self numberOfRowsInSection:section]- 1 inSection:section];
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

- (id)indexPathForRowBeforeIndexPath:(id)path
{
  pathCopy = path;
  if ([(UITableView *)self numberOfSections])
  {
    if (pathCopy)
    {
      indexPathForFirstRow = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
      if (![(UITableView *)self hasRowAtIndexPath:indexPathForFirstRow])
      {
        v6 = [pathCopy section] + 1;
        while (--v6 >= 1)
        {
          v7 = -[UITableView indexPathForLastRowInSection:](self, "indexPathForLastRowInSection:", [pathCopy section]);

          indexPathForFirstRow = 0;
          if (v7)
          {
            indexPathForFirstRow = v7;
            break;
          }
        }
      }
    }

    else
    {
      indexPathForFirstRow = [(UITableView *)self indexPathForFirstRow];
    }
  }

  else
  {
    indexPathForFirstRow = 0;
  }

  return indexPathForFirstRow;
}

- (id)indexPathForFocusableRowBeforeIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy && -[UITableView numberOfSections](self, "numberOfSections") && (v5 = [pathCopy section], (v5 & 0x8000000000000000) == 0))
  {
    v6 = v5;
    while (v6 == [pathCopy section])
    {
      v7 = [pathCopy row];
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

- (id)indexPathForRowAfterIndexPath:(id)path
{
  pathCopy = path;
  if ([(UITableView *)self numberOfSections])
  {
    if (pathCopy)
    {
      indexPathForFirstRow = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] + 1, objc_msgSend(pathCopy, "section"));
      if (![(UITableView *)self hasRowAtIndexPath:indexPathForFirstRow])
      {
        v6 = [pathCopy section] + 1;
        while (v6 < [(UITableView *)self numberOfSections])
        {
          v7 = [(UITableView *)self indexPathForFirstRowInSection:v6];

          indexPathForFirstRow = 0;
          ++v6;
          if (v7)
          {
            indexPathForFirstRow = v7;
            break;
          }
        }
      }
    }

    else
    {
      indexPathForFirstRow = [(UITableView *)self indexPathForFirstRow];
    }
  }

  else
  {
    indexPathForFirstRow = 0;
  }

  return indexPathForFirstRow;
}

- (id)indexPathForFocusableRowAfterIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy && (v5 = -[UITableView numberOfSections](self, "numberOfSections"), [pathCopy section] < v5) && (v6 = objc_msgSend(pathCopy, "section"), v6 < v5))
  {
    v7 = v6;
    while (1)
    {
      v8 = [(UITableView *)self numberOfRowsInSection:v7];
      v9 = v7 == [pathCopy section] ? objc_msgSend(pathCopy, "row") + 1 : 0;
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

- (id)distanceFromIndexPath:(id)path toIndexPath:(id)indexPath
{
  v5 = 0;
  if (path && indexPath)
  {
    indexPathCopy = indexPath;
    pathCopy = path;
    section = [indexPathCopy section];
    section2 = [pathCopy section];
    if (section - section2 >= 0)
    {
      v11 = section - section2;
    }

    else
    {
      v11 = section2 - section;
    }

    v12 = [(UITableView *)self numberOfRowsFromIndexPath:pathCopy toFromIndexPath:indexPathCopy];

    v5 = [NSIndexPath indexPathForRow:v12 inSection:v11];
  }

  return v5;
}

- (unint64_t)numberOfRowsFromIndexPath:(id)path toFromIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = indexPathCopy;
  if (pathCopy && indexPathCopy)
  {
    v9 = [pathCopy compare:indexPathCopy];
    v10 = pathCopy;
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
      v11 = pathCopy;
    }

    v12 = v10;
    v13 = v11;
    section = [v12 section];
    if (section > [v13 section])
    {
      v15 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v15 = 0;
    while (1)
    {
      if ([(UITableView *)self hasRowsInSectionAtIndex:section])
      {
        section2 = [v13 section];
        section3 = [v12 section];
        v18 = section3;
        if (section == section2)
        {
          v19 = [v13 row];
          v20 = v19;
          if (section != v18)
          {
            v15 = &v15[v19];
            goto LABEL_21;
          }

          v21 = [v12 row];
          v22 = &v15[v20];
        }

        else
        {
          if (section != section3)
          {
            v15 = &v15[[(UITableView *)self numberOfRowsInSection:section]];
            goto LABEL_21;
          }

          v23 = -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v12 section]);
          v21 = [v12 row];
          v22 = &v15[v23];
        }

        v15 = (v22 - v21);
      }

LABEL_21:
      if (section++ >= [v13 section])
      {
        goto LABEL_24;
      }
    }
  }

  if (pathCopy)
  {
    indexPathCopy = pathCopy;
  }

  v15 = [indexPathCopy row];
LABEL_25:

  return v15;
}

- (id)_indexPathForClosestRowToIndexPath:(id)path focusable:(BOOL)focusable
{
  focusableCopy = focusable;
  pathCopy = path;
  if ([(UITableView *)self _hasRowAtIndexPath:pathCopy focusable:focusableCopy])
  {
    v7 = pathCopy;
    goto LABEL_21;
  }

  v8 = [(UITableView *)self _indexPathForRowBeforeIndexPath:pathCopy focusable:focusableCopy];
  v9 = [(UITableView *)self _indexPathForRowAfterIndexPath:pathCopy focusable:focusableCopy];
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
      section = [v9 section];
      v13 = section == [pathCopy section];
      if (v8)
      {
LABEL_9:
        section2 = [v8 section];
        v15 = section2 == [pathCopy section];
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
      indexPathsForVisibleRows = [(UITableView *)self indexPathsForVisibleRows];
      v17 = [indexPathsForVisibleRows containsObject:v10];

      indexPathsForVisibleRows2 = [(UITableView *)self indexPathsForVisibleRows];
      v19 = [indexPathsForVisibleRows2 containsObject:v8];

      if (v17 == v19)
      {
        v22 = [(UITableView *)self distanceFromIndexPath:pathCopy toIndexPath:v8];
        v23 = [(UITableView *)self distanceFromIndexPath:pathCopy toIndexPath:v10];
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

- (id)_indexPathForRowAfterIndexPath:(id)path focusable:(BOOL)focusable
{
  if (focusable)
  {
    [(UITableView *)self indexPathForFocusableRowAfterIndexPath:path];
  }

  else
  {
    [(UITableView *)self indexPathForRowAfterIndexPath:path];
  }
  v4 = ;

  return v4;
}

- (id)_indexPathForRowBeforeIndexPath:(id)path focusable:(BOOL)focusable
{
  if (focusable)
  {
    [(UITableView *)self indexPathForFocusableRowBeforeIndexPath:path];
  }

  else
  {
    [(UITableView *)self indexPathForRowBeforeIndexPath:path];
  }
  v4 = ;

  return v4;
}

- (BOOL)_hasRowAtIndexPath:(id)path focusable:(BOOL)focusable
{
  if (focusable)
  {
    return [(UITableView *)self canFocusRowAtIndexPath:path];
  }

  else
  {
    return [(UITableView *)self hasRowAtIndexPath:path];
  }
}

@end