@interface BKPdfSearchOperation
- (BKPdfSearchOperation)init;
- (BOOL)_doSearch;
- (BOOL)_doSearchWithString:(id)string;
- (BOOL)_hasSearchableCharacters:(id)characters;
- (PDFDocument)pdfDocument;
- (void)_clearDocumentIfNeeded;
- (void)cancel;
- (void)dealloc;
- (void)didReceiveMemoryWarning:(id)warning;
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

- (void)didReceiveMemoryWarning:(id)warning
{
  obj = self;
  objc_sync_enter(obj);
  obj->_dropDocument = 1;
  objc_sync_exit(obj);
}

- (PDFDocument)pdfDocument
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_pdfDocument)
  {
    v3 = +[AEPdfCache sharedInstance];
    bookURL = [(BKSearchOperation *)selfCopy bookURL];
    v5 = [v3 copyCacheObjectForURL:bookURL];

    document = [v5 document];
    pdfDocument = selfCopy->_pdfDocument;
    selfCopy->_pdfDocument = document;

    selfCopy->_numberOfDocumentPages = [(PDFDocument *)selfCopy->_pdfDocument pageCount];
  }

  objc_sync_exit(selfCopy);

  v8 = selfCopy->_pdfDocument;

  return v8;
}

- (void)cancel
{
  pdfDocument = [(BKPdfSearchOperation *)self pdfDocument];
  [pdfDocument cancelFindString];

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

- (BOOL)_hasSearchableCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [charactersCopy length];
  v5 = [@"\uFFFD" characterAtIndex:0];
  if (v4)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 0; i != v4; ++i)
    {
      v11 = [charactersCopy characterAtIndex:i];
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

- (BOOL)_doSearchWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && (-[BKPdfSearchOperation pdfDocument](self, "pdfDocument"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && self->_currentPageIndex < self->_numberOfDocumentPages)
  {
    v6 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7;
    if (self->_currentPageIndex)
    {
      lastSavedSearchResult = [(BKSearchOperation *)self lastSavedSearchResult];

      if (lastSavedSearchResult)
      {
        objc_opt_class();
        lastSavedSearchResult2 = [(BKSearchOperation *)self lastSavedSearchResult];
        lastSavedSearchResult = BUDynamicCast();
      }
    }

    else
    {
      lastSavedSearchResult = 0;
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
          [(BKSearchOperation *)self setLastSavedSearchResult:lastSavedSearchResult];
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
          [(BKSearchOperation *)self setLastSavedSearchResult:lastSavedSearchResult];
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

        pdfDocument = [(BKPdfSearchOperation *)self pdfDocument];
        v20 = [pdfDocument findString:stringCopy fromSelection:lastSavedSearchResult withOptions:1];

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
          lastSavedSearchResult = 0;
          goto LABEL_34;
        }

        v21 = stringCopy;
        v22 = v13;
        lastSavedSearchResult = v20;
        pages = [v20 pages];
        lastObject = [pages lastObject];
        pdfDocument2 = [(BKPdfSearchOperation *)self pdfDocument];
        v26 = [pdfDocument2 indexForPage:lastObject];

        self->_currentPageIndex = v26;
        v27 = _AESearchLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [NSNumber numberWithInteger:[BKPDFModernBookViewController pageNumberForPageIndex:v26]];
          *buf = 138412290;
          v43 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Search: found result on page %@", buf, 0xCu);
        }

        string = [lastSavedSearchResult string];
        v30 = [lastSavedSearchResult copy];

        [v30 extendSelectionForLineBoundaries];
        v31 = objc_alloc_init(BKPDFSearchResult);
        stringCopy = v21;
        [(BKSearchResult *)v31 setSearchString:v21];
        [(BKSearchResult *)v31 setOrdinal:self->super._ordinal];
        [(BKPDFSearchResult *)v31 setSelection:lastSavedSearchResult];
        string2 = [v30 string];
        [(BKSearchResult *)v31 setText:string2];

        text = [(BKSearchResult *)v31 text];
        v34 = [text rangeOfString:string];
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
  searchString = [(BKSearchOperation *)self searchString];
  v4 = [NSMutableString stringWithString:searchString];

  if ([(BKPdfSearchOperation *)self _hasSearchableCharacters:v4])
  {
    v5 = [NSCharacterSet characterSetWithCharactersInString:@"\uFFFD"];
    searchString2 = [(BKSearchOperation *)self searchString];
    v7 = [searchString2 rangeOfCharacterFromSet:v5 options:4];
    v9 = v8;

    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 deleteCharactersInRange:{v7, v9}];
      if (!v7)
      {
        break;
      }

      searchString3 = [(BKSearchOperation *)self searchString];
      v7 = [searchString3 rangeOfCharacterFromSet:v5 options:4 range:{0, v7}];
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