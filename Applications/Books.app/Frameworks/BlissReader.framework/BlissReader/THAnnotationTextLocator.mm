@interface THAnnotationTextLocator
- (BOOL)locateAnnotationText:(id)text leftContext:(id)context rightContext:(id)rightContext contentNodeID:(id *)d storageID:(id *)iD;
- (THAnnotationTextLocator)initWithDocumentRoot:(id)root;
- (void)dealloc;
@end

@implementation THAnnotationTextLocator

- (THAnnotationTextLocator)initWithDocumentRoot:(id)root
{
  v10.receiver = self;
  v10.super_class = THAnnotationTextLocator;
  v4 = [(THAnnotationTextLocator *)&v10 init];
  if (v4)
  {
    rootCopy = root;
    v4->_documentRoot = rootCopy;
    searchIndex = [(THDocumentRoot *)rootCopy searchIndex];
    v4->_searchIndex = searchIndex;
    if (![(THSearchIndex *)searchIndex loaded])
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

- (BOOL)locateAnnotationText:(id)text leftContext:(id)context rightContext:(id)rightContext contentNodeID:(id *)d storageID:(id *)iD
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (d && iD && (context && rightContext && (self = [(THSearchIndex *)selfCopy->_searchIndex unambiguousCFIForString:[NSString stringWithFormat:@"%@%@%@", context, text, rightContext]]) != 0 || (self = [(THSearchIndex *)selfCopy->_searchIndex unambiguousCFIForString:text]) != 0))
  {
    selfCopy2 = self;
    v12 = [(THDocumentRoot *)selfCopy->_documentRoot contentNodeForCfi:self error:0];
    if (v12)
    {
      nodeGUID = [v12 nodeGUID];
      selfCopy2 = [+[THCFISplitter sharedInstance](THCFISplitter storageIDFromCFI:"storageIDFromCFI:", selfCopy2];
      if (![selfCopy2 length])
      {
        selfCopy2 = nodeGUID;
      }

      if (nodeGUID)
      {
        if (selfCopy2)
        {
          *d = nodeGUID;
          *iD = selfCopy2;
          LOBYTE(self) = 1;
          return self;
        }

        goto LABEL_15;
      }

      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (!selfCopy2)
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