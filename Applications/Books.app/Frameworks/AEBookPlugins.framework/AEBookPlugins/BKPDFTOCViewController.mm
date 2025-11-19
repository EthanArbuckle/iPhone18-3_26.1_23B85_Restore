@interface BKPDFTOCViewController
- (BKPDFTOCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)calculateFontSize;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)chapterForIndexPath:(id)a3;
- (id)fontFamily;
- (id)fontForChapter:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)countRowsOfChildren:(id)a3;
- (int64_t)findOutlineForRow:(int64_t)a3 fromRowCount:(int64_t)a4 fromOutline:(id)a5;
- (int64_t)indentationLevelForChapter:(id)a3;
- (int64_t)pageNumberFromChapter:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)pageIndexFromChapter:(id)a3;
- (void)_updateColors;
- (void)_updateContentInsets;
- (void)dealloc;
- (void)loadView;
- (void)releaseViews;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBook:(id)a3;
- (void)setNeedsRestyle;
- (void)setPdfDocument:(id)a3;
- (void)setTheme:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateView;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKPDFTOCViewController

- (BKPDFTOCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKPDFTOCViewController;
  v4 = [(BKTOCViewController *)&v8 initWithNibName:a3 bundle:a4];
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

- (void)setPdfDocument:(id)a3
{
  v5 = a3;
  if (*&self->_preferredFontSize != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_preferredFontSize, a3);
    v6 = [v7 outlineRoot];
    [(BKPDFTOCViewController *)self setPdfOutlineRoot:v6];

    v5 = v7;
  }
}

- (void)loadView
{
  v45.receiver = self;
  v45.super_class = BKPDFTOCViewController;
  [(BKPDFTOCViewController *)&v45 loadView];
  v3 = [(BKPDFTOCViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BKTOCViewController *)self isVertical];
  if (v12)
  {
    CGAffineTransformMakeRotation(&v44, -1.57079633);
    v43 = v44;
    [v3 setTransform:&v43];
  }

  v13 = [[UITableView alloc] initWithFrame:0 style:{v5, v7, v9, v11}];
  currentOutline = self->_currentOutline;
  self->_currentOutline = v13;

  [(PDFOutline *)self->_currentOutline setClipsToBounds:v12];
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
  [v3 addSubview:self->_currentOutline];
  v25 = [v3 safeAreaLayoutGuide];
  v40 = [(PDFOutline *)self->_currentOutline leadingAnchor];
  v41 = v25;
  v39 = [v25 leadingAnchor];
  v37 = [v40 constraintEqualToAnchor:v39];
  v46[0] = v37;
  v36 = [(PDFOutline *)self->_currentOutline trailingAnchor];
  v26 = [v25 trailingAnchor];
  v27 = [v36 constraintEqualToAnchor:v26];
  v46[1] = v27;
  v28 = [(PDFOutline *)self->_currentOutline topAnchor];
  v38 = v3;
  v29 = [v3 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v46[2] = v30;
  v31 = [(PDFOutline *)self->_currentOutline bottomAnchor];
  v32 = [v3 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v46[3] = v33;
  v34 = [NSArray arrayWithObjects:v46 count:4];
  [NSLayoutConstraint activateConstraints:v34];

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKPDFTOCViewController *)self _updateColors];
}

- (void)_updateContentInsets
{
  v3 = [(BKContentViewController *)self layoutDelegate];

  if (v3)
  {
    v4 = [(BKContentViewController *)self layoutDelegate];
    [v4 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    v5 = [(BKContentViewController *)self layoutDelegate];
    [v5 separatorInsetsForContentViewController:self];
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
      v15 = [(BKPDFTOCViewController *)self view];
      [v15 bounds];
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
    v29 = [(BKPDFTOCViewController *)self view];
    v38 = [v29 viewWithTag:9999];

    [v38 removeFromSuperview];
    [(PDFOutline *)self->_currentOutline setAlpha:1.0];
    v30 = [(PDFOutline *)self->_currentOutline tableFooterView];
    [v30 frame];
    v32 = v31;
    v34 = v33;

    [(PDFOutline *)self->_currentOutline frame];
    v36 = v35;
    v37 = [(PDFOutline *)self->_currentOutline tableFooterView];
    [v37 setFrame:{v32, v34, v36, 0.0}];
  }
}

- (void)_updateColors
{
  v8 = [(BKPDFTOCViewController *)self themePage];
  v3 = [v8 backgroundColorForTraitEnvironment:self];
  v4 = [(BKPDFTOCViewController *)self viewIfLoaded];
  [v4 setBackgroundColor:v3];

  v5 = [(PDFOutline *)self->_currentOutline tableFooterView];
  [v5 setBackgroundColor:v3];

  [(PDFOutline *)self->_currentOutline setBackgroundColor:v3];
  v6 = [(PDFOutline *)self->_currentOutline tableFooterView];
  [v6 setBackgroundColor:v3];

  v7 = [v8 tableViewSeparatorColor];
  [(PDFOutline *)self->_currentOutline setSeparatorColor:v7];

  [(PDFOutline *)self->_currentOutline reloadData];
}

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v4 setTheme:a3];
  [(BKPDFTOCViewController *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPDFTOCViewController;
  [(BKTOCViewController *)&v4 viewWillAppear:a3];
  [(BKPDFTOCViewController *)self updateView];
  [(BKTOCViewController *)self reload];
}

- (void)scrollViewDidScroll:(id)a3
{
  if ([(BKTOCViewController *)self isVertical])
  {
    v4 = [(PDFOutline *)self->_currentOutline visibleCells];
    v6 = [(PDFOutline *)self->_currentOutline indexPathsForVisibleRows];
    v5 = [v6 lastObject];
    [(BKPDFTOCViewController *)self setRecenteredIndexPath:v5];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKPDFTOCViewController;
  v7 = a4;
  [(BKTOCViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A42DC;
  v8[3] = &unk_1E2A60;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  [(BKPDFTOCViewController *)self updateView];
  v3 = [(BKTOCViewController *)self isVertical];
  currentOutline = self->_currentOutline;
  if (currentOutline)
  {
    if (v3)
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
    if (v3)
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

- (unint64_t)pageIndexFromChapter:(id)a3
{
  v4 = [a3 destination];
  v5 = [v4 page];
  v6 = [(BKPDFTOCViewController *)self pdfDocument];
  v7 = [v6 indexForPage:v5];

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

- (int64_t)pageNumberFromChapter:(id)a3
{
  v3 = [(BKPDFTOCViewController *)self pageIndexFromChapter:a3];

  return [BKPDFModernBookViewController pageNumberForPageIndex:v3];
}

- (id)fontFamily
{
  v2 = [UIFont systemFontOfSize:17.0];
  v3 = [v2 familyName];

  return v3;
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

- (int64_t)indentationLevelForChapter:(id)a3
{
  v4 = a3;
  v5 = [v4 parent];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4;
    while (1)
    {
      v9 = [v8 parent];
      v10 = [(BKPDFTOCViewController *)self pdfOutlineRoot];

      if (v9 == v10)
      {
        break;
      }

      ++v7;
      v4 = [v8 parent];

      v6 = [v4 parent];
      v8 = v4;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v4 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (id)fontForChapter:(id)a3
{
  v4 = a3;
  [(BKTOCViewController *)self establishChapterFonts];
  v5 = [(BKPDFTOCViewController *)self indentationLevelForChapter:v4];

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

- (id)chapterForIndexPath:(id)a3
{
  v4 = [a3 row];
  v5 = [(BKPDFTOCViewController *)self pdfOutlineRoot];
  [(BKPDFTOCViewController *)self findOutlineForRow:v4 fromRowCount:0 fromOutline:v5];

  return [(BKPDFTOCViewController *)self currentOutline];
}

- (int64_t)countRowsOfChildren:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([v4 numberOfChildren])
  {
    v6 = 0;
    do
    {
      v7 = [v4 childAtIndex:v6];
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

    while (v6 < [v4 numberOfChildren]);
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(BKPDFTOCViewController *)self pdfOutlineRoot:a3];
  v6 = [v5 numberOfChildren];

  v7 = 0;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [(BKPDFTOCViewController *)self pdfOutlineRoot];
      v10 = [v9 childAtIndex:v8];

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
      v12 = [(BKPDFTOCViewController *)self pdfOutlineRoot];
      v13 = [v12 numberOfChildren];
    }

    while (v8 < v13);
  }

  return v7;
}

- (int64_t)findOutlineForRow:(int64_t)a3 fromRowCount:(int64_t)a4 fromOutline:(id)a5
{
  v8 = a5;
  if ([v8 numberOfChildren])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v8 childAtIndex:v9];
      v11 = v10;
      if (a4 == a3)
      {
        break;
      }

      ++a4;
      if ([v10 numberOfChildren])
      {
        if ([v11 isOpen])
        {
          a4 = [(BKPDFTOCViewController *)self findOutlineForRow:a3 fromRowCount:a4 fromOutline:v11];
          if (a4 < 0)
          {
            goto LABEL_10;
          }
        }
      }

      if (++v9 >= [v8 numberOfChildren])
      {
        goto LABEL_11;
      }
    }

    [(BKPDFTOCViewController *)self setCurrentOutline:v10];
LABEL_10:

    a4 = -1;
  }

LABEL_11:

  return a4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKPDFTOCViewController *)self reuseIdentifier];
  objc_opt_class();
  v57 = v6;
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];
  v10 = BUDynamicCast();

  if (!v10)
  {
    v10 = [(BKTOCTableViewCell *)[BKPDFTOCTableViewCell alloc] initWithStyle:0 reuseIdentifier:v8];
  }

  v56 = v7;
  v11 = [v7 row];
  v12 = [(BKPDFTOCViewController *)self pdfOutlineRoot];
  [(BKPDFTOCViewController *)self findOutlineForRow:v11 fromRowCount:0 fromOutline:v12];

  v13 = [(BKPDFTOCViewController *)self currentOutline];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = [(BKPDFTOCTableViewCell *)v10 contentView];
  v15 = [v14 subviews];

  v16 = [v15 countByEnumeratingWithState:&v61 objects:v65 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v20 removeFromSuperview];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v17);
  }

  [v13 setIsOpen:1];
  [(BKTOCTableViewCell *)v10 setVertical:[(BKTOCViewController *)self isVertical]];
  [(BKPDFTOCTableViewCell *)v10 setPdfChapter:v13];
  if ([(BKTOCViewController *)self isVertical])
  {
    CGAffineTransformMakeRotation(&v60, 1.57079633);
    v21 = [(BKPDFTOCTableViewCell *)v10 textLabel];
    v59 = v60;
    [v21 setTransform:&v59];

    CGAffineTransformMakeRotation(&v58, 1.57079633);
    v22 = [(BKTOCTableViewCell *)v10 pageLabel];
    v59 = v58;
    [v22 setTransform:&v59];

    [(BKPDFTOCTableViewCell *)v10 setSelectionStyle:2];
  }

  v23 = [v13 label];
  v24 = v23;
  v25 = @" ";
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v27 = [NSNumber numberWithInteger:[(BKPDFTOCViewController *)self pageNumberFromChapter:v13]];
  v28 = [NSString stringWithFormat:@"%@", v27];

  [(BKTOCTableViewCell *)v10 setupSelectedBackgroundNil];
  [(BKContentViewController *)self contentInsets];
  v30 = v29;
  [(BKContentViewController *)self contentInsets];
  [(BKTOCTableViewCell *)v10 setContentInsets:0.0, v30, 0.0];
  v31 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v31 setText:v26];

  v32 = [(BKPDFTOCViewController *)self fontForChapter:v13];
  v33 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v33 setFont:v32];

  v34 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v34 setLineBreakMode:0];

  v35 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v35 setAlpha:1.0];

  v36 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v36 setNumberOfLines:0];

  [(BKPDFTOCTableViewCell *)v10 setIndentationLevel:[(BKPDFTOCViewController *)self indentationLevelForChapter:v13]];
  [(BKPDFTOCTableViewCell *)v10 setIndentationWidth:16.0];
  v37 = [(BKPDFTOCTableViewCell *)v10 effectiveUserInterfaceLayoutDirection];
  [(BKContentViewController *)self separatorInsets];
  v39 = v38;
  v40 = [(BKPDFTOCTableViewCell *)v10 indentationLevel];
  [(BKPDFTOCTableViewCell *)v10 indentationWidth];
  v42 = v39 + v40 * v41;
  [(BKContentViewController *)self separatorInsets];
  v44 = v43;
  if (v37 == &dword_0 + 1 || [(BKTOCViewController *)self isVertical])
  {
    v45 = v42;
  }

  else
  {
    v45 = v44;
    v44 = v42;
  }

  [(BKPDFTOCTableViewCell *)v10 setSeparatorInset:0.0, v44, 0.0, v45];
  v46 = [(BKTOCTableViewCell *)v10 pageLabel];
  v47 = v46;
  if (v28)
  {
    [v46 setText:v28];
    v48 = [(BKTOCViewController *)self pageLabelFont];
    [v47 setFont:v48];
  }

  [v47 setHidden:v28 == 0];
  [(BKPDFTOCTableViewCell *)v10 setNeedsLayout];
  v49 = [(BKPDFTOCViewController *)self themePage];
  [(BKTOCTableViewCell *)v10 configureSelectedBackgroundView];
  v50 = [(PDFOutline *)self->_currentOutline backgroundColor];
  [(BKPDFTOCTableViewCell *)v10 setBackgroundColor:v50];

  v51 = [v49 primaryTextColor];
  v52 = [(BKPDFTOCTableViewCell *)v10 textLabel];
  [v52 setTextColor:v51];

  v53 = [v49 tocPageNumberTextColor];
  v54 = [(BKTOCTableViewCell *)v10 pageLabel];
  [v54 setTextColor:v53];

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
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
    v10 = [(BKPDFTOCViewController *)self chapterForIndexPath:v5];
    v11 = [(BKPDFTOCViewController *)self fontForChapter:v10];
    v12 = [(BKTOCViewController *)self pageLabelFont];
    if ([(BKTOCViewController *)self isVertical])
    {
      v28 = NSFontAttributeName;
      v29 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [@"8888" boundingRectWithSize:0 options:v13 attributes:0 context:{1.79769313e308, 1.79769313e308}];
      height = v14 + 15.0;
    }

    else
    {
      v16 = [NSNumber numberWithInteger:[(BKPDFTOCViewController *)self pageNumberFromChapter:v10]];
      v17 = [NSString stringWithFormat:@"%@", v16];

      v18 = [v10 label];
      v19 = [v18 copy];
      v20 = v19;
      v21 = @" ";
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      v23 = +[NSCharacterSet newlineCharacterSet];
      v24 = [(__CFString *)v22 stringByTrimmingCharactersInSet:v23];

      [BKTOCTableViewCell pageLabelFrameForString:v17 font:v12 bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, CGRectZero.origin.y, v9, 52.0];
      [BKTOCTableViewCell cellHeightForCellWidth:v24 pageLabelWidth:[(BKPDFTOCViewController *)self indentationLevelForChapter:v10] text:v11 indentationLevel:0 indentationWidth:v9 font:v25 usesPopoverStyle:16.0];
      height = v26;
    }
  }

  return fmax(ceil(height), 52.0);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v6 = [a3 cellForRowAtIndexPath:?];
  if (BYTE4(self->super._fetchedResultsController))
  {
    v7 = [(BKPDFTOCViewController *)self chapterForIndexPath:v10];
    v8 = [[BKPageLocation alloc] initWithOrdinal:[(BKPDFTOCViewController *)self ordinal] andOffset:[(BKPDFTOCViewController *)self pageIndexFromChapter:v7]];
    v9 = [(BKDirectoryContent *)self directoryDelegate];
    [v9 directoryContent:self didSelectLocation:v8];

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
    v3 = [(PDFOutline *)self->_currentOutline visibleCells];
    v4 = [(PDFOutline *)self->_currentOutline indexPathsForVisibleRows];
    v5 = [v4 sortedArrayUsingSelector:"compare:"];
    v6 = [v5 lastObject];
    [(BKPDFTOCViewController *)self setRecenteredIndexPath:v6];
  }

  [(BKTOCViewController *)self reload];
}

- (void)setBook:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKPDFTOCViewController;
  [(BKContentViewController *)&v3 setBook:a3];
}

@end