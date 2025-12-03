@interface BKPDFPageThumbnailDirectory
- (id)_noBookmarksView;
- (id)locationAtIndex:(unint64_t)index;
- (int64_t)indexForPageNumber:(unint64_t)number;
- (int64_t)leftPageNumberAtIndex:(unint64_t)index;
- (int64_t)numberOfCellsInGridView:(id)view;
- (int64_t)pageNumberForCellIndex:(unint64_t)index;
- (int64_t)rightPageNumberAtIndex:(unint64_t)index;
- (unint64_t)indexForLocation:(id)location;
- (void)calculatePageCount;
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
- (void)reloadData;
- (void)setPdfDocument:(id)document;
- (void)setShowBookmarksOnly:(BOOL)only;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKPDFPageThumbnailDirectory

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
  v5.receiver = self;
  v5.super_class = BKPDFPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = BKPDFPageThumbnailDirectory;
  [(BKContentViewController *)&v3 viewDidDisappear:disappear];
}

- (void)setPdfDocument:(id)document
{
  documentCopy = document;
  if (self->_pdfDocument != documentCopy)
  {
    v6 = documentCopy;
    objc_storeStrong(&self->_pdfDocument, document);
    [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
    documentCopy = v6;
  }
}

- (void)setShowBookmarksOnly:(BOOL)only
{
  if (self->_showBookmarksOnly != only)
  {
    self->_showBookmarksOnly = only;
    [(BKPDFPageThumbnailDirectory *)self calculatePageCount];
  }
}

- (void)calculatePageCount
{
  pdfDocument = [(BKPDFPageThumbnailDirectory *)self pdfDocument];

  if (pdfDocument)
  {
    pdfDocument2 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
    pageCount = [pdfDocument2 pageCount];

    if (pageCount && [(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
    {
      pdfDocument3 = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      bookmarkedPages = [pdfDocument3 bookmarkedPages];

      +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [bookmarkedPages count]);
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_C32A0;
      v12 = &unk_1E5220;
      v14 = v13 = self;
      v8 = v14;
      [bookmarkedPages enumerateIndexesUsingBlock:&v9];
      [(BKPDFPageThumbnailDirectory *)self setBookmarkedPages:v8, v9, v10, v11, v12, v13];
      pageCount = [v8 count];
    }
  }

  else
  {
    pageCount = 0;
  }

  if (self->_pageCount != pageCount)
  {
    self->_pageCount = pageCount;
    [(BKPDFPageThumbnailDirectory *)self reloadData];
  }
}

- (int64_t)numberOfCellsInGridView:(id)view
{
  showSpreads = [(BKThumbnailDirectory *)self showSpreads];
  result = [(BKPDFPageThumbnailDirectory *)self pageCount];
  if (showSpreads)
  {
    return vcvtps_s32_f32(vcvts_n_f32_u64(result + 1, 1uLL));
  }

  return result;
}

- (int64_t)leftPageNumberAtIndex:(unint64_t)index
{
  if ([(BKViewController *)self layoutDirection])
  {
    v5 = 2 * index;
    if (v5 < [(BKPDFPageThumbnailDirectory *)self pageCount])
    {
      return v5 + 1;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (index)
  {
    return 2 * index;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)rightPageNumberAtIndex:(unint64_t)index
{
  if ([(BKViewController *)self layoutDirection])
  {
    if (index)
    {
      return 2 * index;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 2 * index;
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

- (int64_t)pageNumberForCellIndex:(unint64_t)index
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    if ([(BKViewController *)self layoutDirection])
    {
      result = [(BKPDFPageThumbnailDirectory *)self rightPageNumberAtIndex:index];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {

        return [(BKPDFPageThumbnailDirectory *)self leftPageNumberAtIndex:index];
      }
    }

    else
    {
      result = [(BKPDFPageThumbnailDirectory *)self leftPageNumberAtIndex:index];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {

        return [(BKPDFPageThumbnailDirectory *)self rightPageNumberAtIndex:index];
      }
    }
  }

  else if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
  {
    bookmarkedPages = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
    v7 = [bookmarkedPages count];

    if (v7 <= index)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      bookmarkedPages2 = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
      v9 = [bookmarkedPages2 objectAtIndex:index];

      pdfDocument = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      v11 = [pdfDocument indexForPage:v9];

      v12 = [BKPDFModernBookViewController pageNumberForPageIndex:v11];
      return v12;
    }
  }

  else
  {

    return [BKPDFModernBookViewController pageNumberForPageIndex:index];
  }

  return result;
}

- (int64_t)indexForPageNumber:(unint64_t)number
{
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v5 = number >> 1;
  }

  else
  {
    v5 = number - 1;
  }

  if (v5 < 0 || v5 >= [(BKPDFPageThumbnailDirectory *)self numberOfCellsInGridView:self->super._gridView])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)locationAtIndex:(unint64_t)index
{
  v4 = [(BKPDFPageThumbnailDirectory *)self pageNumberForCellIndex:index];

  return [(BKDirectoryContent *)self locationForPageNumber:v4];
}

- (unint64_t)indexForLocation:(id)location
{
  locationCopy = location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
  {
    v5 = [BKPDFModernBookViewController pageIndexForPageNumber:[(BKDirectoryContent *)self pageNumberForLocation:locationCopy]];
    pdfDocument = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
    v7 = [pdfDocument pageAtIndex:v5];

    bookmarkedPages = [(BKPDFPageThumbnailDirectory *)self bookmarkedPages];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_C37BC;
    v12[3] = &unk_1E5248;
    v9 = v7;
    v13 = v9;
    v14 = &v15;
    [bookmarkedPages enumerateObjectsUsingBlock:v12];

    v10 = v16[3];
  }

  else
  {
    v10 = [(BKPDFPageThumbnailDirectory *)self indexForPageNumber:[(BKDirectoryContent *)self pageNumberForLocation:locationCopy]];
    v16[3] = v10;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = BKPDFPageThumbnailDirectory;
  [(BKThumbnailDirectory *)&v9 configureCell:cellCopy atIndex:index];
  if ([(BKPDFPageThumbnailDirectory *)self showBookmarks])
  {
    if ([(BKPDFPageThumbnailDirectory *)self showBookmarksOnly])
    {
      [cellCopy setHasRibbon:1];
    }

    else
    {
      pdfDocument = [(BKPDFPageThumbnailDirectory *)self pdfDocument];
      v8 = [pdfDocument pageAtIndex:index];

      if ([v8 isBookmarked])
      {
        [cellCopy setHasRibbon:1];
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
    titleLabel = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    [titleLabel setFont:v9];

    v11 = isPad();
    v12 = 13.0;
    if (v11)
    {
      v12 = 17.0;
    }

    v13 = [UIFont systemFontOfSize:v12];
    descriptionLabel = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [descriptionLabel setFont:v13];

    titleLabel2 = [(BKTOCBookmarksDescription *)self->_noBookmarksView titleLabel];
    v16 = AEBundle();
    v17 = [v16 localizedStringForKey:@"Adding Bookmarks…" value:&stru_1E7188 table:0];
    [titleLabel2 setText:v17];

    v18 = +[UIColor bc_booksLabelColor];
    [titleLabel2 setTextColor:v18];

    v19 = AEBundle();
    v20 = [v19 localizedStringForKey:@"When you’re reading a PDF value:\ntap the Bookmark button to\nmark the current page." table:{&stru_1E7188, 0}];

    descriptionLabel2 = [(BKTOCBookmarksDescription *)self->_noBookmarksView descriptionLabel];
    [descriptionLabel2 setText:v20];
    v22 = +[UIColor bc_booksLabelColor];
    [descriptionLabel2 setTextColor:v22];

    [descriptionLabel2 setNumberOfLines:0];
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
      view = [(BKPDFPageThumbnailDirectory *)self view];
      [view bounds];
      [noBookmarksView setFrame:?];

      view2 = [(BKPDFPageThumbnailDirectory *)self view];
      [view2 addSubview:noBookmarksView];
    }
  }
}

@end