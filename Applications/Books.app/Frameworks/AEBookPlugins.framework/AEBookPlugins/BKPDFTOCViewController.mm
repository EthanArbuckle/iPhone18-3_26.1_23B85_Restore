@interface BKPDFTOCViewController
- (BKPDFTOCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)calculateFontSize;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)chapterForIndexPath:(id)path;
- (id)fontFamily;
- (id)fontForChapter:(id)chapter;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)countRowsOfChildren:(id)children;
- (int64_t)findOutlineForRow:(int64_t)row fromRowCount:(int64_t)count fromOutline:(id)outline;
- (int64_t)indentationLevelForChapter:(id)chapter;
- (int64_t)pageNumberFromChapter:(id)chapter;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)pageIndexFromChapter:(id)chapter;
- (void)_updateColors;
- (void)_updateContentInsets;
- (void)dealloc;
- (void)loadView;
- (void)releaseViews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBook:(id)book;
- (void)setNeedsRestyle;
- (void)setPdfDocument:(id)document;
- (void)setTheme:(id)theme;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKPDFTOCViewController

- (BKPDFTOCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = BKPDFTOCViewController;
  v4 = [(BKTOCViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKPDFTOCViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)releaseViews
{
  [(PDFOutline *)self->_currentOutline setDelegate:0];
  [(PDFOutline *)self->_currentOutline setDataSource:0];
  currentOutline = self->_currentOutline;
  self->_currentOutline = 0;

  [(BKPDFTOCViewController *)self setRecenteredIndexPath:0];
  v4.receiver = self;
  v4.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v4 releaseViews];
}

- (void)dealloc
{
  [(BKPDFTOCViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v3 dealloc];
}

- (void)setPdfDocument:(id)document
{
  documentCopy = document;
  if (*&self->_preferredFontSize != documentCopy)
  {
    v7 = documentCopy;
    objc_storeStrong(&self->_preferredFontSize, document);
    outlineRoot = [v7 outlineRoot];
    [(BKPDFTOCViewController *)self setPdfOutlineRoot:outlineRoot];

    documentCopy = v7;
  }
}

- (void)loadView
{
  v45.receiver = self;
  v45.super_class = BKPDFTOCViewController;
  [(BKPDFTOCViewController *)&v45 loadView];
  view = [(BKPDFTOCViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  isVertical = [(BKTOCViewController *)self isVertical];
  if (isVertical)
  {
    CGAffineTransformMakeRotation(&v44, -1.57079633);
    v43 = v44;
    [view setTransform:&v43];
  }

  v13 = [[UITableView alloc] initWithFrame:0 style:{v5, v7, v9, v11}];
  currentOutline = self->_currentOutline;
  self->_currentOutline = v13;

  [(PDFOutline *)self->_currentOutline setClipsToBounds:isVertical];
  [(PDFOutline *)self->_currentOutline setDelegate:self];
  [(PDFOutline *)self->_currentOutline setDataSource:self];
  [(PDFOutline *)self->_currentOutline setSeparatorStyle:1];
  [(PDFOutline *)self->_currentOutline setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = [[UIView alloc] initWithFrame:{v5, v7, v9, 0.0}];
  [(PDFOutline *)self->_currentOutline setTableFooterView:?];
  if ([(BKTOCViewController *)self isVertical])
  {
    [(BKTOCViewController *)self verticalCenteringInsets];
    v16 = v15;
    [(BKTOCViewController *)self verticalCenteringInsets];
    [(PDFOutline *)self->_currentOutline setContentInset:v16, 0.0, v17, 0.0];
    [(BKTOCViewController *)self centeringInsets];
    v19 = -v18;
    v20 = self->_currentOutline;
    v21 = 0.0;
  }

  else
  {
    [(BKTOCViewController *)self centeringInsets];
    v23 = v22;
    [(BKTOCViewController *)self centeringInsets];
    [(PDFOutline *)self->_currentOutline setContentInset:v23, 0.0];
    [(BKTOCViewController *)self centeringInsets];
    v21 = -v24;
    v20 = self->_currentOutline;
    v19 = 0.0;
  }

  [(PDFOutline *)v20 setContentOffset:v19, v21];
  [view addSubview:self->_currentOutline];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor = [(PDFOutline *)self->_currentOutline leadingAnchor];
  v41 = safeAreaLayoutGuide;
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v37;
  trailingAnchor = [(PDFOutline *)self->_currentOutline trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[1] = v27;
  topAnchor = [(PDFOutline *)self->_currentOutline topAnchor];
  v38 = view;
  topAnchor2 = [view topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[2] = v30;
  bottomAnchor = [(PDFOutline *)self->_currentOutline bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[3] = v33;
  v34 = [NSArray arrayWithObjects:v46 count:4];
  [NSLayoutConstraint activateConstraints:v34];

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKPDFTOCViewController *)self _updateColors];
}

- (void)_updateContentInsets
{
  layoutDelegate = [(BKContentViewController *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate2 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    layoutDelegate3 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate3 separatorInsetsForContentViewController:self];
    [(BKContentViewController *)self setSeparatorInsets:?];
  }
}

- (void)updateView
{
  if ([(BKPDFTOCViewController *)self isViewLoaded]&& [(BKPDFTOCViewController *)self isVisible])
  {
    [(BKPDFTOCViewController *)self _updateContentInsets];
    [(PDFOutline *)self->_currentOutline contentInset];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [(BKContentViewController *)self contentInsets];
    v10 = v9;
    if ([(BKTOCViewController *)self isVertical])
    {
      [(BKContentViewController *)self contentInsets];
      v12 = v11;
      [(BKContentViewController *)self contentInsets];
      v14 = v13;
      view = [(BKPDFTOCViewController *)self view];
      [view bounds];
      v17 = v16;
      v19 = v12 + v18;
      v21 = v20 + 0.0;
      v23 = v22 - (v12 + v14);

      [(PDFOutline *)self->_currentOutline contentSize];
      if (v24 > 0.0)
      {
        [(PDFOutline *)self->_currentOutline contentSize];
        v26 = v25;
        v40.origin.x = v19;
        v40.origin.y = v21;
        v40.size.width = v23;
        v40.size.height = v17;
        if (v26 < CGRectGetHeight(v40))
        {
          v41.origin.x = v19;
          v41.origin.y = v21;
          v41.size.width = v23;
          v41.size.height = v17;
          Height = CGRectGetHeight(v41);
          [(PDFOutline *)self->_currentOutline contentSize];
          [(PDFOutline *)self->_currentOutline setContentInset:round(Height - v28), 0.0, 0.0, 0.0];
        }
      }

      [(PDFOutline *)self->_currentOutline setFrame:v19, v21, v23, v17];
    }

    else
    {
      [(PDFOutline *)self->_currentOutline setContentInset:v10, v4, v6, v8];
    }

    [(BKContentViewController *)self separatorInsets];
    [(PDFOutline *)self->_currentOutline setSeparatorInset:?];
    view2 = [(BKPDFTOCViewController *)self view];
    v38 = [view2 viewWithTag:9999];

    [v38 removeFromSuperview];
    [(PDFOutline *)self->_currentOutline setAlpha:1.0];
    tableFooterView = [(PDFOutline *)self->_currentOutline tableFooterView];
    [tableFooterView frame];
    v32 = v31;
    v34 = v33;

    [(PDFOutline *)self->_currentOutline frame];
    v36 = v35;
    tableFooterView2 = [(PDFOutline *)self->_currentOutline tableFooterView];
    [tableFooterView2 setFrame:{v32, v34, v36, 0.0}];
  }
}

- (void)_updateColors
{
  themePage = [(BKPDFTOCViewController *)self themePage];
  v3 = [themePage backgroundColorForTraitEnvironment:self];
  viewIfLoaded = [(BKPDFTOCViewController *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:v3];

  tableFooterView = [(PDFOutline *)self->_currentOutline tableFooterView];
  [tableFooterView setBackgroundColor:v3];

  [(PDFOutline *)self->_currentOutline setBackgroundColor:v3];
  tableFooterView2 = [(PDFOutline *)self->_currentOutline tableFooterView];
  [tableFooterView2 setBackgroundColor:v3];

  tableViewSeparatorColor = [themePage tableViewSeparatorColor];
  [(PDFOutline *)self->_currentOutline setSeparatorColor:tableViewSeparatorColor];

  [(PDFOutline *)self->_currentOutline reloadData];
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v4 setTheme:theme];
  [(BKPDFTOCViewController *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v4 viewWillAppear:appear];
  [(BKPDFTOCViewController *)self updateView];
  [(BKTOCViewController *)self reload];
}

- (void)scrollViewDidScroll:(id)scroll
{
  if ([(BKTOCViewController *)self isVertical])
  {
    visibleCells = [(PDFOutline *)self->_currentOutline visibleCells];
    indexPathsForVisibleRows = [(PDFOutline *)self->_currentOutline indexPathsForVisibleRows];
    lastObject = [indexPathsForVisibleRows lastObject];
    [(BKPDFTOCViewController *)self setRecenteredIndexPath:lastObject];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKPDFTOCViewController;
  coordinatorCopy = coordinator;
  [(BKTOCViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A42DC;
  v8[3] = &unk_1E2A60;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  [(BKPDFTOCViewController *)self updateView];
  isVertical = [(BKTOCViewController *)self isVertical];
  currentOutline = self->_currentOutline;
  if (currentOutline)
  {
    if (isVertical)
    {
      [(PDFOutline *)currentOutline frame];
      v5 = CGRectGetWidth(v13) + -8.0;
      v6 = self->_currentOutline;
      v7 = 0.0;
    }

    else
    {
      [(PDFOutline *)currentOutline contentInset];
      v6 = self->_currentOutline;
      v5 = 0.0;
    }

    [(PDFOutline *)v6 setScrollIndicatorInsets:v7, 0.0, 0.0, v5];
  }

  if (BYTE5(self->super._verticalCenteringInsets.right) == 1)
  {
    [(PDFOutline *)self->_currentOutline flashScrollIndicators];
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  BYTE5(self->super._verticalCenteringInsets.right) = v8;
  if ((BYTE4(self->super._verticalCenteringInsets.right) & 1) == 0)
  {
    if (isVertical)
    {
      v9 = [(PDFOutline *)self->_currentOutline numberOfRowsInSection:0];
      if (v9)
      {
        v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = [NSIndexPath indexPathForRow:v9 - 1 inSection:0];
        [(PDFOutline *)self->_currentOutline scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:0];
      }
    }

    BYTE4(self->super._verticalCenteringInsets.right) = 1;
  }

  v12.receiver = self;
  v12.super_class = BKPDFTOCViewController;
  [(BKPDFTOCViewController *)&v12 viewDidLayoutSubviews];
}

- (unint64_t)pageIndexFromChapter:(id)chapter
{
  destination = [chapter destination];
  page = [destination page];
  pdfDocument = [(BKPDFTOCViewController *)self pdfDocument];
  v7 = [pdfDocument indexForPage:page];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (int64_t)pageNumberFromChapter:(id)chapter
{
  v3 = [(BKPDFTOCViewController *)self pageIndexFromChapter:chapter];

  return [BKPDFModernBookViewController pageNumberForPageIndex:v3];
}

- (id)fontFamily
{
  v2 = [UIFont systemFontOfSize:17.0];
  familyName = [v2 familyName];

  return familyName;
}

- (double)calculateFontSize
{
  [(BKPDFTOCViewController *)self preferredFontSize];
  if (v3 == 0.0)
  {
    v5.receiver = self;
    v5.super_class = BKPDFTOCViewController;
    [(BKTOCViewController *)&v5 calculateFontSize];
  }

  else
  {

    [(BKPDFTOCViewController *)self preferredFontSize];
  }

  return result;
}

- (int64_t)indentationLevelForChapter:(id)chapter
{
  chapterCopy = chapter;
  parent = [chapterCopy parent];
  if (parent)
  {
    parent3 = parent;
    v7 = 0;
    v8 = chapterCopy;
    while (1)
    {
      parent2 = [v8 parent];
      pdfOutlineRoot = [(BKPDFTOCViewController *)self pdfOutlineRoot];

      if (parent2 == pdfOutlineRoot)
      {
        break;
      }

      ++v7;
      chapterCopy = [v8 parent];

      parent3 = [chapterCopy parent];
      v8 = chapterCopy;
      if (!parent3)
      {
        goto LABEL_8;
      }
    }

    chapterCopy = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (id)fontForChapter:(id)chapter
{
  chapterCopy = chapter;
  [(BKTOCViewController *)self establishChapterFonts];
  v5 = [(BKPDFTOCViewController *)self indentationLevelForChapter:chapterCopy];

  if (v5 < 2)
  {
    [(BKTOCViewController *)self chapterTopLevelFont];
  }

  else
  {
    [(BKTOCViewController *)self chapterSubLevelFont];
  }
  v6 = ;

  return v6;
}

- (id)chapterForIndexPath:(id)path
{
  v4 = [path row];
  pdfOutlineRoot = [(BKPDFTOCViewController *)self pdfOutlineRoot];
  [(BKPDFTOCViewController *)self findOutlineForRow:v4 fromRowCount:0 fromOutline:pdfOutlineRoot];

  return [(BKPDFTOCViewController *)self currentOutline];
}

- (int64_t)countRowsOfChildren:(id)children
{
  childrenCopy = children;
  v5 = 0;
  if ([childrenCopy numberOfChildren])
  {
    v6 = 0;
    do
    {
      v7 = [childrenCopy childAtIndex:v6];
      [v7 setIsOpen:1];
      if ([v7 numberOfChildren])
      {
        v8 = [(BKPDFTOCViewController *)self countRowsOfChildren:v7]+ 1;
      }

      else
      {
        v8 = 1;
      }

      v5 += v8;

      ++v6;
    }

    while (v6 < [childrenCopy numberOfChildren]);
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(BKPDFTOCViewController *)self pdfOutlineRoot:view];
  numberOfChildren = [v5 numberOfChildren];

  v7 = 0;
  if (numberOfChildren)
  {
    v8 = 0;
    do
    {
      pdfOutlineRoot = [(BKPDFTOCViewController *)self pdfOutlineRoot];
      v10 = [pdfOutlineRoot childAtIndex:v8];

      [v10 setIsOpen:1];
      if ([v10 numberOfChildren])
      {
        v11 = [(BKPDFTOCViewController *)self countRowsOfChildren:v10]+ 1;
      }

      else
      {
        v11 = 1;
      }

      v7 += v11;

      ++v8;
      pdfOutlineRoot2 = [(BKPDFTOCViewController *)self pdfOutlineRoot];
      numberOfChildren2 = [pdfOutlineRoot2 numberOfChildren];
    }

    while (v8 < numberOfChildren2);
  }

  return v7;
}

- (int64_t)findOutlineForRow:(int64_t)row fromRowCount:(int64_t)count fromOutline:(id)outline
{
  outlineCopy = outline;
  if ([outlineCopy numberOfChildren])
  {
    v9 = 0;
    while (1)
    {
      v10 = [outlineCopy childAtIndex:v9];
      v11 = v10;
      if (count == row)
      {
        break;
      }

      ++count;
      if ([v10 numberOfChildren])
      {
        if ([v11 isOpen])
        {
          count = [(BKPDFTOCViewController *)self findOutlineForRow:row fromRowCount:count fromOutline:v11];
          if (count < 0)
          {
            goto LABEL_10;
          }
        }
      }

      if (++v9 >= [outlineCopy numberOfChildren])
      {
        goto LABEL_11;
      }
    }

    [(BKPDFTOCViewController *)self setCurrentOutline:v10];
LABEL_10:

    count = -1;
  }

LABEL_11:

  return count;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  reuseIdentifier = [(BKPDFTOCViewController *)self reuseIdentifier];
  objc_opt_class();
  v57 = viewCopy;
  v9 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier];
  v10 = BUDynamicCast();

  if (!v10)
  {
    v10 = [(BKTOCTableViewCell *)[BKPDFTOCTableViewCell alloc] initWithStyle:0 reuseIdentifier:reuseIdentifier];
  }

  v56 = pathCopy;
  v11 = [pathCopy row];
  pdfOutlineRoot = [(BKPDFTOCViewController *)self pdfOutlineRoot];
  [(BKPDFTOCViewController *)self findOutlineForRow:v11 fromRowCount:0 fromOutline:pdfOutlineRoot];

  currentOutline = [(BKPDFTOCViewController *)self currentOutline];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  contentView = [(BKPDFTOCTableViewCell *)v10 contentView];
  subviews = [contentView subviews];

  v16 = [subviews countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(subviews);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v20 removeFromSuperview];
        }
      }

      v17 = [subviews countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v17);
  }

  [currentOutline setIsOpen:1];
  [(BKTOCTableViewCell *)v10 setVertical:[(BKTOCViewController *)self isVertical]];
  [(BKPDFTOCTableViewCell *)v10 setPdfChapter:currentOutline];
  if ([(BKTOCViewController *)self isVertical])
  {
    CGAffineTransformMakeRotation(&v60, 1.57079633);
    textLabel = [(BKPDFTOCTableViewCell *)v10 textLabel];
    v59 = v60;
    [textLabel setTransform:&v59];

    CGAffineTransformMakeRotation(&v58, 1.57079633);
    pageLabel = [(BKTOCTableViewCell *)v10 pageLabel];
    v59 = v58;
    [pageLabel setTransform:&v59];

    [(BKPDFTOCTableViewCell *)v10 setSelectionStyle:2];
  }

  label = [currentOutline label];
  v24 = label;
  v25 = @" ";
  if (label)
  {
    v25 = label;
  }

  v26 = v25;

  v27 = [NSNumber numberWithInteger:[(BKPDFTOCViewController *)self pageNumberFromChapter:currentOutline]];
  v28 = [NSString stringWithFormat:@"%@", v27];

  [(BKTOCTableViewCell *)v10 setupSelectedBackgroundNil];
  [(BKContentViewController *)self contentInsets];
  v30 = v29;
  [(BKContentViewController *)self contentInsets];
  [(BKTOCTableViewCell *)v10 setContentInsets:0.0, v30, 0.0];
  textLabel2 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel2 setText:v26];

  v32 = [(BKPDFTOCViewController *)self fontForChapter:currentOutline];
  textLabel3 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel3 setFont:v32];

  textLabel4 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel4 setLineBreakMode:0];

  textLabel5 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel5 setAlpha:1.0];

  textLabel6 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel6 setNumberOfLines:0];

  [(BKPDFTOCTableViewCell *)v10 setIndentationLevel:[(BKPDFTOCViewController *)self indentationLevelForChapter:currentOutline]];
  [(BKPDFTOCTableViewCell *)v10 setIndentationWidth:16.0];
  effectiveUserInterfaceLayoutDirection = [(BKPDFTOCTableViewCell *)v10 effectiveUserInterfaceLayoutDirection];
  [(BKContentViewController *)self separatorInsets];
  v39 = v38;
  indentationLevel = [(BKPDFTOCTableViewCell *)v10 indentationLevel];
  [(BKPDFTOCTableViewCell *)v10 indentationWidth];
  v42 = v39 + indentationLevel * v41;
  [(BKContentViewController *)self separatorInsets];
  v44 = v43;
  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1 || [(BKTOCViewController *)self isVertical])
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
    v44 = v42;
  }

  [(BKPDFTOCTableViewCell *)v10 setSeparatorInset:0.0, v44, 0.0, v45];
  pageLabel2 = [(BKTOCTableViewCell *)v10 pageLabel];
  v47 = pageLabel2;
  if (v28)
  {
    [pageLabel2 setText:v28];
    pageLabelFont = [(BKTOCViewController *)self pageLabelFont];
    [v47 setFont:pageLabelFont];
  }

  [v47 setHidden:v28 == 0];
  [(BKPDFTOCTableViewCell *)v10 setNeedsLayout];
  themePage = [(BKPDFTOCViewController *)self themePage];
  [(BKTOCTableViewCell *)v10 configureSelectedBackgroundView];
  backgroundColor = [(PDFOutline *)self->_currentOutline backgroundColor];
  [(BKPDFTOCTableViewCell *)v10 setBackgroundColor:backgroundColor];

  primaryTextColor = [themePage primaryTextColor];
  textLabel7 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [textLabel7 setTextColor:primaryTextColor];

  tocPageNumberTextColor = [themePage tocPageNumberTextColor];
  pageLabel3 = [(BKTOCTableViewCell *)v10 pageLabel];
  [pageLabel3 setTextColor:tocPageNumberTextColor];

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(PDFOutline *)self->_currentOutline bounds];
  Width = CGRectGetWidth(v30);
  [(BKContentViewController *)self contentInsets];
  v9 = Width - (v7 + v8);
  if (v9 <= 0.0)
  {
    height = CGSizeZero.height;
  }

  else
  {
    v10 = [(BKPDFTOCViewController *)self chapterForIndexPath:pathCopy];
    v11 = [(BKPDFTOCViewController *)self fontForChapter:v10];
    pageLabelFont = [(BKTOCViewController *)self pageLabelFont];
    if ([(BKTOCViewController *)self isVertical])
    {
      v28 = NSFontAttributeName;
      v29 = pageLabelFont;
      v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [@"8888" boundingRectWithSize:0 options:v13 attributes:0 context:{1.79769313e308, 1.79769313e308}];
      height = v14 + 15.0;
    }

    else
    {
      v16 = [NSNumber numberWithInteger:[(BKPDFTOCViewController *)self pageNumberFromChapter:v10]];
      v17 = [NSString stringWithFormat:@"%@", v16];

      label = [v10 label];
      v19 = [label copy];
      v20 = v19;
      v21 = @" ";
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      v23 = +[NSCharacterSet newlineCharacterSet];
      v24 = [(__CFString *)v22 stringByTrimmingCharactersInSet:v23];

      [BKTOCTableViewCell pageLabelFrameForString:v17 font:pageLabelFont bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, CGRectZero.origin.y, v9, 52.0];
      [BKTOCTableViewCell cellHeightForCellWidth:v24 pageLabelWidth:[(BKPDFTOCViewController *)self indentationLevelForChapter:v10] text:v11 indentationLevel:0 indentationWidth:v9 font:v25 usesPopoverStyle:16.0];
      height = v26;
    }
  }

  return fmax(ceil(height), 52.0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:?];
  if (BYTE4(self->super._fetchedResultsController))
  {
    v7 = [(BKPDFTOCViewController *)self chapterForIndexPath:pathCopy];
    v8 = [[BKPageLocation alloc] initWithOrdinal:[(BKPDFTOCViewController *)self ordinal] andOffset:[(BKPDFTOCViewController *)self pageIndexFromChapter:v7]];
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate directoryContent:self didSelectLocation:v8];

    [v6 setSelected:0 animated:0];
    [v6 setSelectionStyle:0];
  }
}

- (void)setNeedsRestyle
{
  v7.receiver = self;
  v7.super_class = BKPDFTOCViewController;
  [(BKContentViewController *)&v7 setNeedsRestyle];
  if ([(BKTOCViewController *)self isVertical])
  {
    visibleCells = [(PDFOutline *)self->_currentOutline visibleCells];
    indexPathsForVisibleRows = [(PDFOutline *)self->_currentOutline indexPathsForVisibleRows];
    v5 = [indexPathsForVisibleRows sortedArrayUsingSelector:"compare:"];
    lastObject = [v5 lastObject];
    [(BKPDFTOCViewController *)self setRecenteredIndexPath:lastObject];
  }

  [(BKTOCViewController *)self reload];
}

- (void)setBook:(id)book
{
  v3.receiver = self;
  v3.super_class = BKPDFTOCViewController;
  [(BKContentViewController *)&v3 setBook:book];
}

@end