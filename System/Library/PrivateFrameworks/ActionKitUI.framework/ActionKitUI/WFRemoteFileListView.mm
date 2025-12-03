@interface WFRemoteFileListView
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGRect)frameOfCellAtPoint:(CGPoint)point;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (WFRemoteFileListView)initWithFrame:(CGRect)frame collation:(id)collation;
- (WFRemoteFileListViewDelegate)delegate;
- (id)cellAtPoint:(CGPoint)point;
- (id)fileAtPoint:(CGPoint)point;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)setFiles:(id)files;
- (void)setFilesBySection:(id)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCheckmarkForFile:(id)file;
@end

@implementation WFRemoteFileListView

- (WFRemoteFileListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v10 = [filesBySection objectForKeyedSubscript:v9];
  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  delegate = [(WFRemoteFileListView *)self delegate];
  [delegate fileListView:self didSelectFile:v12];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v8 = [filesBySection objectForKeyedSubscript:v7];
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  delegate = [(WFRemoteFileListView *)self delegate];
  LOBYTE(self) = [delegate fileListView:self shouldSelectFile:v10];

  return self;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  if (!index)
  {
    viewCopy = view;
    tableHeaderView = [viewCopy tableHeaderView];
    [tableHeaderView frame];
    [viewCopy scrollRectToVisible:0 animated:?];
  }

  v9 = [(WFRemoteFileListView *)self collation:view];
  v10 = [v9 sectionForSectionIndexTitleAtIndex:index] - 1;

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  collation = [(WFRemoteFileListView *)self collation];
  sectionTitles = [collation sectionTitles];

  return sectionTitles;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v8 = [filesBySection objectForKeyedSubscript:v7];
  v9 = [v8 count];

  if (v9)
  {
    collation = [(WFRemoteFileListView *)self collation];
    sectionTitles = [collation sectionTitles];
    v12 = [sectionTitles objectAtIndex:section];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v7 = [filesBySection objectForKeyedSubscript:v6];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  allKeys = [filesBySection allKeys];
  v5 = [allKeys valueForKeyPath:@"@max.self"];
  integerValue = [v5 integerValue];

  return integerValue + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WFRemoteFileCellReuseIdentifier" forIndexPath:pathCopy];
  filesBySection = [(WFRemoteFileListView *)self filesBySection];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v10 = [filesBySection objectForKeyedSubscript:v9];
  v11 = [pathCopy row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  delegate = [(WFRemoteFileListView *)self delegate];
  v14 = [delegate fileListView:self shouldDisplayCheckmarkForFile:v12];

  dateFormatter = [(WFRemoteFileListView *)self dateFormatter];
  [v7 setFile:v12 checked:v14 dateFormatter:dateFormatter];

  return v7;
}

- (void)setFilesBySection:(id)section
{
  filesBySection = self->_filesBySection;
  sectionCopy = section;
  LOBYTE(filesBySection) = [(NSDictionary *)filesBySection isEqualToDictionary:sectionCopy];
  v6 = [sectionCopy copy];

  v7 = self->_filesBySection;
  self->_filesBySection = v6;

  if ((filesBySection & 1) == 0)
  {
    tableView = [(WFRemoteFileListView *)self tableView];
    [tableView reloadData];
  }
}

- (id)fileAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(WFRemoteFileListView *)self tableView];
  [tableView convertPoint:self fromView:{x, y}];
  v7 = [tableView indexPathForRowAtPoint:?];
  if (v7)
  {
    filesBySection = [(WFRemoteFileListView *)self filesBySection];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "section")}];
    v10 = [filesBySection objectForKeyedSubscript:v9];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tableView = [(WFRemoteFileListView *)self tableView];
  [tableView convertPoint:self fromView:{x, y}];
  v7 = [tableView indexPathForRowAtPoint:?];
  v8 = [tableView cellForRowAtIndexPath:v7];

  return v8;
}

- (CGRect)frameOfCellAtPoint:(CGPoint)point
{
  v4 = [(WFRemoteFileListView *)self cellAtPoint:point.x, point.y];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  tableView = [(WFRemoteFileListView *)self tableView];
  [(WFRemoteFileListView *)self convertRect:tableView fromView:v6, v8, v10, v12];
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

- (void)updateCheckmarkForFile:(id)file
{
  v28 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  tableView = [(WFRemoteFileListView *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  obj = indexPathsForVisibleRows;
  v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        filesBySection = [(WFRemoteFileListView *)self filesBySection];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "section")}];
        v14 = [filesBySection objectForKeyedSubscript:v13];
        v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];

        if ([fileCopy isEqual:v15])
        {
          tableView2 = [(WFRemoteFileListView *)self tableView];
          v17 = [tableView2 cellForRowAtIndexPath:v11];

          delegate = [(WFRemoteFileListView *)self delegate];
          v19 = [delegate fileListView:self shouldDisplayCheckmarkForFile:v15];

          dateFormatter = [(WFRemoteFileListView *)self dateFormatter];
          [v17 setFile:v15 checked:v19 dateFormatter:dateFormatter];

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

- (void)setFiles:(id)files
{
  v41[1] = *MEMORY[0x277D85DE8];
  filesCopy = files;
  collation = [(WFRemoteFileListView *)self collation];
  if (collation)
  {
    selfCopy = self;
    v6 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = filesCopy;
    obj = filesCopy;
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
          v12 = [collation sectionForObject:v11 collationStringSelector:sel_wfName];
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
          v24 = [collation sortedArrayFromArray:v23 collationStringSelector:sel_wfName];
          [v16 setObject:v24 forKeyedSubscript:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    [(WFRemoteFileListView *)selfCopy setFilesBySection:v16];
    filesCopy = v28;
  }

  else if (filesCopy)
  {
    v40 = &unk_2850AB3C0;
    v41[0] = filesCopy;
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

- (WFRemoteFileListView)initWithFrame:(CGRect)frame collation:(id)collation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  collationCopy = collation;
  v21.receiver = self;
  v21.super_class = WFRemoteFileListView;
  height = [(WFRemoteFileListView *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc(MEMORY[0x277D75B40]);
    [(WFRemoteFileListView *)height bounds];
    v13 = [v12 initWithFrame:0 style:?];
    tableView = height->_tableView;
    height->_tableView = v13;

    [(UITableView *)height->_tableView setAutoresizingMask:18];
    [(UITableView *)height->_tableView setDelegate:height];
    [(UITableView *)height->_tableView setDataSource:height];
    [(UITableView *)height->_tableView setRowHeight:*MEMORY[0x277D76F30]];
    [(UITableView *)height->_tableView setEstimatedRowHeight:44.0];
    [(WFRemoteFileListView *)height addSubview:height->_tableView];
    [(UITableView *)height->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFRemoteFileCellReuseIdentifier"];
    objc_storeStrong(&height->_collation, collation);
    v15 = objc_opt_new();
    filesBySection = height->_filesBySection;
    height->_filesBySection = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = height->_dateFormatter;
    height->_dateFormatter = v17;

    [(NSDateFormatter *)height->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)height->_dateFormatter setTimeStyle:1];
    [(NSDateFormatter *)height->_dateFormatter setDoesRelativeDateFormatting:1];
    v19 = height;
  }

  return height;
}

@end