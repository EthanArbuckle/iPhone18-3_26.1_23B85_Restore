@interface BKPdfSearchOperation
- (BKPdfSearchOperation)init;
- (BOOL)_doSearch;
- (BOOL)_doSearchWithString:(id)a3;
- (BOOL)_hasSearchableCharacters:(id)a3;
- (PDFDocument)pdfDocument;
- (void)_clearDocumentIfNeeded;
- (void)cancel;
- (void)dealloc;
- (void)didReceiveMemoryWarning:(id)a3;
@end

@implementation BKPdfSearchOperation

- (BKPdfSearchOperation)init
{
  v5.receiver = self;
  v5.super_class = BKPdfSearchOperation;
  v2 = [(BKSearchOperation *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKPdfSearchOperation;
  [(BKSearchOperation *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning:(id)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_dropDocument = 1;
  objc_sync_exit(obj);
}

- (PDFDocument)pdfDocument
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_pdfDocument)
  {
    v3 = +[AEPdfCache sharedInstance];
    v4 = [(BKSearchOperation *)v2 bookURL];
    v5 = [v3 copyCacheObjectForURL:v4];

    v6 = [v5 document];
    pdfDocument = v2->_pdfDocument;
    v2->_pdfDocument = v6;

    v2->_numberOfDocumentPages = [(PDFDocument *)v2->_pdfDocument pageCount];
  }

  objc_sync_exit(v2);

  v8 = v2->_pdfDocument;

  return v8;
}

- (void)cancel
{
  v3 = [(BKPdfSearchOperation *)self pdfDocument];
  [v3 cancelFindString];

  v4.receiver = self;
  v4.super_class = BKPdfSearchOperation;
  [(BKSearchOperation *)&v4 cancel];
}

- (void)_clearDocumentIfNeeded
{
  if (self->_dropDocument)
  {
    obj = self;
    objc_sync_enter(obj);
    if (self->_dropDocument)
    {
      pdfDocument = obj->_pdfDocument;
      obj->_pdfDocument = 0;

      self->_dropDocument = 0;
    }

    objc_sync_exit(obj);
  }
}

- (BOOL)_hasSearchableCharacters:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [@"\uFFFD" characterAtIndex:0];
  if (v4)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 0; i != v4; ++i)
    {
      v11 = [v3 characterAtIndex:i];
      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v9 + 1;
      }

      if (v11 == 32)
      {
        v12 = v9;
        v13 = v7 + 1;
      }

      else
      {
        v13 = v7;
      }

      if (v11 == v6)
      {
        ++v8;
      }

      else
      {
        v9 = v12;
      }

      if (v11 != v6)
      {
        v7 = v13;
      }
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  if (v8 + v9)
  {
    v14 = v8 + v9 + v7 >= v4;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;

  return v15;
}

- (BOOL)_doSearchWithString:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[BKPdfSearchOperation pdfDocument](self, "pdfDocument"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && self->_currentPageIndex < self->_numberOfDocumentPages)
  {
    v6 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7;
    if (self->_currentPageIndex)
    {
      v9 = [(BKSearchOperation *)self lastSavedSearchResult];

      if (v9)
      {
        objc_opt_class();
        v10 = [(BKSearchOperation *)self lastSavedSearchResult];
        v9 = BUDynamicCast();
      }
    }

    else
    {
      v9 = 0;
    }

    if (([(BKPdfSearchOperation *)self isCancelled]& 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        if (self->super._isDone)
        {
          goto LABEL_34;
        }

        [(BKSearchOperation *)self timeOut];
        if (v14 != 0.0)
        {
          [v6[191] timeIntervalSinceReferenceDate];
          v16 = v15 - v8;
          [(BKSearchOperation *)self timeOut];
          if (v16 > v17)
          {
            break;
          }
        }

        if (self->_foundResults >= 0x64)
        {
          self->super._isDone = 1;
          [(BKSearchOperation *)self setStartSearchFromIndex:self->_currentPageIndex];
          [(BKSearchOperation *)self setLastSavedSearchResult:v9];
          v38 = _AESearchLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [NSNumber numberWithUnsignedInteger:self->_currentPageIndex];
            *buf = 138412290;
            v43 = v39;
            v40 = "Search: Max results hit %@";
            goto LABEL_29;
          }

LABEL_30:

LABEL_34:
          v11 = 0;
          goto LABEL_35;
        }

        [v6[191] timeIntervalSinceReferenceDate];
        if (v18 - v8 > 0.4)
        {
          [(BKSearchOperation *)self setStartSearchFromIndex:self->_currentPageIndex];
          [(BKSearchOperation *)self setLastSavedSearchResult:v9];
          v38 = _AESearchLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [NSNumber numberWithUnsignedInteger:self->_currentPageIndex];
            *buf = 138412290;
            v43 = v39;
            v40 = "Search: update partial results %@";
LABEL_29:
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
          }

          goto LABEL_30;
        }

        v19 = [(BKPdfSearchOperation *)self pdfDocument];
        v20 = [v19 findString:v4 fromSelection:v9 withOptions:1];

        if (!v20)
        {
          v41 = _AESearchLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Search: end of document reached", buf, 2u);
          }

          self->super._isDone = 1;
          [(BKSearchOperation *)self setHavePartialResults:0];
          v9 = 0;
          goto LABEL_34;
        }

        v21 = v4;
        v22 = v13;
        v9 = v20;
        v23 = [v20 pages];
        v24 = [v23 lastObject];
        v25 = [(BKPdfSearchOperation *)self pdfDocument];
        v26 = [v25 indexForPage:v24];

        self->_currentPageIndex = v26;
        v27 = _AESearchLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [NSNumber numberWithInteger:[BKPDFModernBookViewController pageNumberForPageIndex:v26]];
          *buf = 138412290;
          v43 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Search: found result on page %@", buf, 0xCu);
        }

        v29 = [v9 string];
        v30 = [v9 copy];

        [v30 extendSelectionForLineBoundaries];
        v31 = objc_alloc_init(BKPDFSearchResult);
        v4 = v21;
        [(BKSearchResult *)v31 setSearchString:v21];
        [(BKSearchResult *)v31 setOrdinal:self->super._ordinal];
        [(BKPDFSearchResult *)v31 setSelection:v9];
        v32 = [v30 string];
        [(BKSearchResult *)v31 setText:v32];

        v33 = [(BKSearchResult *)v31 text];
        v34 = [v33 rangeOfString:v29];
        [(BKSearchResult *)v31 setSearchStringRange:v34, v35];

        [(BKSearchResult *)v31 setPageOffset:self->_currentPageIndex];
        v36 = [BKPDFLocation locationForSelection:v30 offset:[(BKSearchResult *)v31 pageOffset]];
        [(BKSearchResult *)v31 setLocation:v36];

        [(NSMutableArray *)self->super._results addObject:v31];
        ++self->_foundResults;
        v37 = _AESearchLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v31;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Search: result %@", buf, 0xCu);
        }

        [(BKSearchOperation *)self setHavePartialResults:1];
        v13 = v30;
        v6 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
        if ([(BKPdfSearchOperation *)self isCancelled])
        {
          v11 = 0;
          v13 = v30;
          goto LABEL_35;
        }
      }

      [(BKPdfSearchOperation *)self cancel];
      v11 = 1;
LABEL_35:
    }
  }

  else
  {
    v11 = 0;
    self->super._isDone = 1;
  }

  return v11;
}

- (BOOL)_doSearch
{
  v3 = [(BKSearchOperation *)self searchString];
  v4 = [NSMutableString stringWithString:v3];

  if ([(BKPdfSearchOperation *)self _hasSearchableCharacters:v4])
  {
    v5 = [NSCharacterSet characterSetWithCharactersInString:@"\uFFFD"];
    v6 = [(BKSearchOperation *)self searchString];
    v7 = [v6 rangeOfCharacterFromSet:v5 options:4];
    v9 = v8;

    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 deleteCharactersInRange:{v7, v9}];
      if (!v7)
      {
        break;
      }

      v10 = [(BKSearchOperation *)self searchString];
      v7 = [v10 rangeOfCharacterFromSet:v5 options:4 range:{0, v7}];
      v9 = v11;
    }

    v12 = [(BKPdfSearchOperation *)self _doSearchWithString:v4];
    [(BKPdfSearchOperation *)self _clearDocumentIfNeeded];
  }

  else
  {
    v12 = 0;
    self->super._isDone = 1;
  }

  return v12;
}

@end