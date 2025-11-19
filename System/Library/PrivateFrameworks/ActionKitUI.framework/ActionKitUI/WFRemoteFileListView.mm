@interface WFRemoteFileListView
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGRect)frameOfCellAtPoint:(CGPoint)a3;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (WFRemoteFileListView)initWithFrame:(CGRect)a3 collation:(id)a4;
- (WFRemoteFileListViewDelegate)delegate;
- (id)cellAtPoint:(CGPoint)a3;
- (id)fileAtPoint:(CGPoint)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)setFiles:(id)a3;
- (void)setFilesBySection:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCheckmarkForFile:(id)a3;
@end

@implementation WFRemoteFileListView

- (WFRemoteFileListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFRemoteFileListView *)self filesBySection];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "section")}];
  v10 = [v8 objectForKeyedSubscript:v9];
  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v11 = [(WFRemoteFileListView *)self delegate];
  [v11 fileListView:self didSelectFile:v12];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFRemoteFileListView *)self filesBySection];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "section")}];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v5 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [(WFRemoteFileListView *)self delegate];
  LOBYTE(self) = [v11 fileListView:self shouldSelectFile:v10];

  return self;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  if (!a5)
  {
    v7 = a3;
    v8 = [v7 tableHeaderView];
    [v8 frame];
    [v7 scrollRectToVisible:0 animated:?];
  }

  v9 = [(WFRemoteFileListView *)self collation:a3];
  v10 = [v9 sectionForSectionIndexTitleAtIndex:a5] - 1;

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v3 = [(WFRemoteFileListView *)self collation];
  v4 = [v3 sectionTitles];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(WFRemoteFileListView *)self filesBySection];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(WFRemoteFileListView *)self collation];
    v11 = [v10 sectionTitles];
    v12 = [v11 objectAtIndex:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFRemoteFileListView *)self filesBySection];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFRemoteFileListView *)self filesBySection];
  v4 = [v3 allKeys];
  v5 = [v4 valueForKeyPath:@"@max.self"];
  v6 = [v5 integerValue];

  return v6 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WFRemoteFileCellReuseIdentifier" forIndexPath:v6];
  v8 = [(WFRemoteFileListView *)self filesBySection];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "section")}];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [(WFRemoteFileListView *)self delegate];
  v14 = [v13 fileListView:self shouldDisplayCheckmarkForFile:v12];

  v15 = [(WFRemoteFileListView *)self dateFormatter];
  [v7 setFile:v12 checked:v14 dateFormatter:v15];

  return v7;
}

- (void)setFilesBySection:(id)a3
{
  filesBySection = self->_filesBySection;
  v5 = a3;
  LOBYTE(filesBySection) = [(NSDictionary *)filesBySection isEqualToDictionary:v5];
  v6 = [v5 copy];

  v7 = self->_filesBySection;
  self->_filesBySection = v6;

  if ((filesBySection & 1) == 0)
  {
    v8 = [(WFRemoteFileListView *)self tableView];
    [v8 reloadData];
  }
}

- (id)fileAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WFRemoteFileListView *)self tableView];
  [v6 convertPoint:self fromView:{x, y}];
  v7 = [v6 indexPathForRowAtPoint:?];
  if (v7)
  {
    v8 = [(WFRemoteFileListView *)self filesBySection];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "section")}];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WFRemoteFileListView *)self tableView];
  [v6 convertPoint:self fromView:{x, y}];
  v7 = [v6 indexPathForRowAtPoint:?];
  v8 = [v6 cellForRowAtIndexPath:v7];

  return v8;
}

- (CGRect)frameOfCellAtPoint:(CGPoint)a3
{
  v4 = [(WFRemoteFileListView *)self cellAtPoint:a3.x, a3.y];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(WFRemoteFileListView *)self tableView];
  [(WFRemoteFileListView *)self convertRect:v13 fromView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)updateCheckmarkForFile:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(WFRemoteFileListView *)self tableView];
  v6 = [v5 indexPathsForVisibleRows];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(WFRemoteFileListView *)self filesBySection];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "section")}];
        v14 = [v12 objectForKeyedSubscript:v13];
        v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];

        if ([v4 isEqual:v15])
        {
          v16 = [(WFRemoteFileListView *)self tableView];
          v17 = [v16 cellForRowAtIndexPath:v11];

          v18 = [(WFRemoteFileListView *)self delegate];
          v19 = [v18 fileListView:self shouldDisplayCheckmarkForFile:v15];

          v20 = [(WFRemoteFileListView *)self dateFormatter];
          [v17 setFile:v15 checked:v19 dateFormatter:v20];

          goto LABEL_11;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setFiles:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFRemoteFileListView *)self collation];
  if (v5)
  {
    v27 = self;
    v6 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v5 sectionForObject:v11 collationStringSelector:sel_wfName];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          v14 = [v6 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v14 = objc_opt_new();
            v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
            [v6 setObject:v14 forKeyedSubscript:v15];
          }

          [v14 addObject:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    v16 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = [v17 objectForKeyedSubscript:v22];
          v24 = [v5 sortedArrayFromArray:v23 collationStringSelector:sel_wfName];
          [v16 setObject:v24 forKeyedSubscript:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    [(WFRemoteFileListView *)v27 setFilesBySection:v16];
    v4 = v28;
  }

  else if (v4)
  {
    v40 = &unk_2850AB3C0;
    v41[0] = v4;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [(WFRemoteFileListView *)self setFilesBySection:v25];
  }

  else
  {
    [(WFRemoteFileListView *)self setFilesBySection:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  [(UITableView *)self->_tableView verticalScrollIndicatorInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)contentInset
{
  [(UITableView *)self->_tableView contentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (WFRemoteFileListView)initWithFrame:(CGRect)a3 collation:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = WFRemoteFileListView;
  v11 = [(WFRemoteFileListView *)&v21 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D75B40]);
    [(WFRemoteFileListView *)v11 bounds];
    v13 = [v12 initWithFrame:0 style:?];
    tableView = v11->_tableView;
    v11->_tableView = v13;

    [(UITableView *)v11->_tableView setAutoresizingMask:18];
    [(UITableView *)v11->_tableView setDelegate:v11];
    [(UITableView *)v11->_tableView setDataSource:v11];
    [(UITableView *)v11->_tableView setRowHeight:*MEMORY[0x277D76F30]];
    [(UITableView *)v11->_tableView setEstimatedRowHeight:44.0];
    [(WFRemoteFileListView *)v11 addSubview:v11->_tableView];
    [(UITableView *)v11->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFRemoteFileCellReuseIdentifier"];
    objc_storeStrong(&v11->_collation, a4);
    v15 = objc_opt_new();
    filesBySection = v11->_filesBySection;
    v11->_filesBySection = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v11->_dateFormatter;
    v11->_dateFormatter = v17;

    [(NSDateFormatter *)v11->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v11->_dateFormatter setTimeStyle:1];
    [(NSDateFormatter *)v11->_dateFormatter setDoesRelativeDateFormatting:1];
    v19 = v11;
  }

  return v11;
}

@end