@interface BKPDFPageThumbnailDirectory
- (id)_noBookmarksView;
- (id)locationAtIndex:(unint64_t)a3;
- (int64_t)indexForPageNumber:(unint64_t)a3;
- (int64_t)leftPageNumberAtIndex:(unint64_t)a3;
- (int64_t)numberOfCellsInGridView:(id)a3;
- (int64_t)pageNumberForCellIndex:(unint64_t)a3;
- (int64_t)rightPageNumberAtIndex:(unint64_t)a3;
- (unint64_t)indexForLocation:(id)a3;
- (void)calculatePageCount;
- (void)configureCell:(id)a3 atIndex:(unint64_t)a4;
- (void)reloadData;
- (void)setPdfDocument:(id)a3;
- (void)setShowBookmarksOnly:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKPDFPageThumbnailDirectory

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
  v5.receiver = self;
  v5.super_class = BKPDFPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v5 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BKPDFPageThumbnailDirectory;
  [(BKContentViewController *)&v3 viewDidDisappear:a3];
}

- (void)setPdfDocument:(id)a3
{
  v5 = a3;
  if (self->_pdfDocument != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pdfDocument, a3);
    [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
    v5 = v6;
  }
}

- (void)setShowBookmarksOnly:(BOOL)a3
{
  if (self->_showBookmarksOnly != a3)
  {
    self->_showBookmarksOnly = a3;
    [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
  }
}

- (void)calculatePageCount
{
  v3 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];

  if (v3)
  {
    v4 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
    v5 = [v4 pageCount];

    if (v5 && [(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
    {
      v6 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      v7 = [v6 bookmarkedPages];

      +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_C32A0;
      v12 = &unk_1E5220;
      v14 = v13 = self;
      v8 = v14;
      [v7 enumerateIndexesUsingBlock:&v9];
      [(BKPDFPageThumbnailDirectory *)self setBookmarkedPages:v8, v9, v10, v11, v12, v13];
      v5 = [v8 count];
    }
  }

  else
  {
    v5 = 0;
  }

  if (self->_pageCount != v5)
  {
    self->_pageCount = v5;
    [(BKPDFPageThumbnailDirectory *)self reloadData];
  }
}

- (int64_t)numberOfCellsInGridView:(id)a3
{
  v4 = [(BKThumbnailDirectory *)self showSpreads];
  result = [(BKPDFPageThumbnailDirectory *)self pageCount];
  if (v4)
  {
    return vcvtps_s32_f32(vcvts_n_f32_u64(result + 1, 1uLL));
  }

  return result;
}

- (int64_t)leftPageNumberAtIndex:(unint64_t)a3
{
  if ([(BKViewController *)self layoutDirection])
  {
    v5 = 2 * a3;
    if (v5 < [(BKPDFPageThumbnailDirectory *)self pageCount])
    {
      return v5 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (a3)
  {
    return 2 * a3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)rightPageNumberAtIndex:(unint64_t)a3
{
  if ([(BKViewController *)self layoutDirection])
  {
    if (a3)
    {
      return 2 * a3;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 2 * a3;
    if (v6 < [(BKPDFPageThumbnailDirectory *)self pageCount])
    {
      return v6 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (int64_t)pageNumberForCellIndex:(unint64_t)a3
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    if ([(BKViewController *)self layoutDirection])
    {
      result = [(BKPDFPageThumbnailDirectory *)self rightPageNumberAtIndex:a3];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {

        return [(BKPDFPageThumbnailDirectory *)self leftPageNumberAtIndex:a3];
      }
    }

    else
    {
      result = [(BKPDFPageThumbnailDirectory *)self leftPageNumberAtIndex:a3];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {

        return [(BKPDFPageThumbnailDirectory *)self rightPageNumberAtIndex:a3];
      }
    }
  }

  else if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
  {
    v6 = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
    v7 = [v6 count];

    if (v7 <= a3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
      v9 = [v8 objectAtIndex:a3];

      v10 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      v11 = [v10 indexForPage:v9];

      v12 = [BKPDFModernBookViewController pageNumberForPageIndex:v11];
      return v12;
    }
  }

  else
  {

    return [BKPDFModernBookViewController pageNumberForPageIndex:a3];
  }

  return result;
}

- (int64_t)indexForPageNumber:(unint64_t)a3
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v5 = a3 >> 1;
  }

  else
  {
    v5 = a3 - 1;
  }

  if (v5 < 0 || v5 >= [(BKPDFPageThumbnailDirectory *)self numberOfCellsInGridView:self->super._gridView])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)locationAtIndex:(unint64_t)a3
{
  v4 = [(BKPDFPageThumbnailDirectory *)self pageNumberForCellIndex:a3];

  return [(BKDirectoryContent *)self locationForPageNumber:v4];
}

- (unint64_t)indexForLocation:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
  {
    v5 = [BKPDFModernBookViewController pageIndexForPageNumber:[(BKDirectoryContent *)self pageNumberForLocation:v4]];
    v6 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
    v7 = [v6 pageAtIndex:v5];

    v8 = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_C37BC;
    v12[3] = &unk_1E5248;
    v9 = v7;
    v13 = v9;
    v14 = &v15;
    [v8 enumerateObjectsUsingBlock:v12];

    v10 = v16[3];
  }

  else
  {
    v10 = [(BKPDFPageThumbnailDirectory *)self indexForPageNumber:[(BKDirectoryContent *)self pageNumberForLocation:v4]];
    v16[3] = v10;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)configureCell:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = BKPDFPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v9 configureCell:v6 atIndex:a4];
  if ([(BKPDFPageThumbnailDirectory *)self showBookmarks])
  {
    if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
    {
      [v6 setHasRibbon:1];
    }

    else
    {
      v7 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      v8 = [v7 pageAtIndex:a4];

      if ([v8 isBookmarked])
      {
        [v6 setHasRibbon:1];
      }
    }
  }
}

- (id)_noBookmarksView
{
  noBookmarksView = self->_noBookmarksView;
  if (!noBookmarksView)
  {
    v4 = [[BKTOCBookmarksDescription alloc] initWithFrame:0.0, 0.0, 320.0, 480.0];
    v5 = self->_noBookmarksView;
    self->_noBookmarksView = v4;

    v6 = +[UIColor clearColor];
    [(BKTOCBookmarksDescription *)self->_noBookmarksView setBackgroundColor:v6];

    [(BKTOCBookmarksDescription *)self->_noBookmarksView setAutoresizingMask:18];
    v7 = isPad();
    v8 = 27.0;
    if (!v7)
    {
      v8 = 17.0;
    }

    v9 = [UIFont systemFontOfSize:v8];
    v10 = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    [v10 setFont:v9];

    v11 = isPad();
    v12 = 13.0;
    if (v11)
    {
      v12 = 17.0;
    }

    v13 = [UIFont systemFontOfSize:v12];
    v14 = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [v14 setFont:v13];

    v15 = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    v16 = AEBundle();
    v17 = [v16 localizedStringForKey:@"Adding Bookmarks…" value:&stru_1E7188 table:0];
    [v15 setText:v17];

    v18 = +[UIColor bc_booksLabelColor];
    [v15 setTextColor:v18];

    v19 = AEBundle();
    v20 = [v19 localizedStringForKey:@"When you’re reading a PDF value:\ntap the Bookmark button to\nmark the current page." table:{&stru_1E7188, 0}];

    v21 = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [v21 setText:v20];
    v22 = +[UIColor bc_booksLabelColor];
    [v21 setTextColor:v22];

    [v21 setNumberOfLines:0];
    noBookmarksView = self->_noBookmarksView;
  }

  return noBookmarksView;
}

- (void)reloadData
{
  v10.receiver = self;
  v10.super_class = BKPDFPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v10 reloadData];
  if ([(BKPDFPageThumbnailDirectory *)self isViewLoaded])
  {
    if (!-[BKPDFPageThumbnailDirectory showBookmarksOnly](self, "showBookmarksOnly") || (-[BKPDFPageThumbnailDirectory bookmarkedPages](self, "bookmarkedPages"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[BKPDFPageThumbnailDirectory bookmarkedPages](self, "bookmarkedPages"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
    {
      [(BKTOCBookmarksDescription *)self->_noBookmarksView removeFromSuperview];
      noBookmarksView = self->_noBookmarksView;
      self->_noBookmarksView = 0;
    }

    else
    {
      noBookmarksView = [(BKPDFPageThumbnailDirectory *)self _noBookmarksView];
      v8 = [(BKPDFPageThumbnailDirectory *)self view];
      [v8 bounds];
      [noBookmarksView setFrame:?];

      v9 = [(BKPDFPageThumbnailDirectory *)self view];
      [v9 addSubview:noBookmarksView];
    }
  }
}

@end