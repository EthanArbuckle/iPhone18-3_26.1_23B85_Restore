@interface THAnnotationTextLocator
- (BOOL)locateAnnotationText:(id)a3 leftContext:(id)a4 rightContext:(id)a5 contentNodeID:(id *)a6 storageID:(id *)a7;
- (THAnnotationTextLocator)initWithDocumentRoot:(id)a3;
- (void)dealloc;
@end

@implementation THAnnotationTextLocator

- (THAnnotationTextLocator)initWithDocumentRoot:(id)a3
{
  v10.receiver = self;
  v10.super_class = THAnnotationTextLocator;
  v4 = [(THAnnotationTextLocator *)&v10 init];
  if (v4)
  {
    v5 = a3;
    v4->_documentRoot = v5;
    v6 = [(THDocumentRoot *)v5 searchIndex];
    v4->_searchIndex = v6;
    if (![(THSearchIndex *)v6 loaded])
    {
      v7 = [[THSearchIndexLoadOperation alloc] initWithDelegate:0 documentRoot:v4->_documentRoot];
      v8 = objc_alloc_init(NSOperationQueue);
      [v8 addOperation:v7];
      [v8 waitUntilAllOperationsAreFinished];
      [(THSearchIndex *)v4->_searchIndex finishLoading];

      if (![(THSearchIndex *)v4->_searchIndex loaded])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    if (![(THSearchIndex *)v4->_searchIndex loaded])
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationTextLocator;
  [(THAnnotationTextLocator *)&v3 dealloc];
}

- (BOOL)locateAnnotationText:(id)a3 leftContext:(id)a4 rightContext:(id)a5 contentNodeID:(id *)a6 storageID:(id *)a7
{
  v7 = self;
  LOBYTE(self) = 0;
  if (a6 && a7 && (a4 && a5 && (self = [(THSearchIndex *)v7->_searchIndex unambiguousCFIForString:[NSString stringWithFormat:@"%@%@%@", a4, a3, a5]]) != 0 || (self = [(THSearchIndex *)v7->_searchIndex unambiguousCFIForString:a3]) != 0))
  {
    v11 = self;
    v12 = [(THDocumentRoot *)v7->_documentRoot contentNodeForCfi:self error:0];
    if (v12)
    {
      v13 = [v12 nodeGUID];
      v14 = [+[THCFISplitter sharedInstance](THCFISplitter storageIDFromCFI:"storageIDFromCFI:", v11];
      if (![v14 length])
      {
        v14 = v13;
      }

      if (v13)
      {
        if (v14)
        {
          *a6 = v13;
          *a7 = v14;
          LOBYTE(self) = 1;
          return self;
        }

        goto LABEL_15;
      }

      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (!v14)
      {
LABEL_15:
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    LOBYTE(self) = 0;
  }

  return self;
}

@end