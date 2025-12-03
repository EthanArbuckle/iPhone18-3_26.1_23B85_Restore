@interface THModelContentLoadOperation
- (THModelContentLoadOperation)initWithDelegate:(id)delegate contentNode:(id)node documentRoot:(id)root applePubURL:(id)l documentEntryURI:(id)i;
- (id)newNodeBodyWithContext:(id)context isFlow:(BOOL)flow;
- (void)appendMainThreadCompletionBlock:(id)block;
- (void)dealloc;
- (void)loadContentNode;
- (void)loadEpubContentNode;
- (void)loadNavigationPageContentNode;
- (void)main;
- (void)p_fixPageCharacterRangeAfterStorageTruncationWithContentState:(id)state;
- (void)p_populateParagraphStyle:(id)style;
- (void)p_processHintsWithContentState:(id)state;
- (void)processHintsInOrientation:(id)orientation contentState:(id)state;
@end

@implementation THModelContentLoadOperation

- (THModelContentLoadOperation)initWithDelegate:(id)delegate contentNode:(id)node documentRoot:(id)root applePubURL:(id)l documentEntryURI:(id)i
{
  v18.receiver = self;
  v18.super_class = THModelContentLoadOperation;
  v12 = [(THModelContentLoadOperation *)&v18 init];
  if (!v12)
  {
    return v12;
  }

  if (root)
  {
    if (l)
    {
      goto LABEL_4;
    }

LABEL_13:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (i)
    {
      goto LABEL_5;
    }

LABEL_14:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_5;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!l)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!i)
  {
    goto LABEL_14;
  }

LABEL_5:
  v12->_epub = [@"epub" isEqualToString:{objc_msgSend(objc_msgSend(l, "pathExtension"), "lowercaseString")}];
  v12->_contentNode = node;
  v12->mDelegate = delegate;
  v12->mDocumentRoot = root;
  v12->mApplePubURL = [l copy];
  v13 = [i copy];
  v12->mDocumentEntryURI = v13;
  if (v12->mApplePubURL)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || (v15 = [[PFXArchive alloc] initWithPath:[(NSURL *)v12->mApplePubURL path]], v16 = [(PFXArchive *)v15 decryptEntryWithName:v12->mDocumentEntryURI error:0], v15, !v16))
  {

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THModelContentLoadOperation;
  [(THModelContentLoadOperation *)&v3 dealloc];
}

- (void)appendMainThreadCompletionBlock:(id)block
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (block)
  {
    mMainThreadCompletionBlocks = self->mMainThreadCompletionBlocks;
    if (!mMainThreadCompletionBlocks)
    {
      self->mMainThreadCompletionBlocks = objc_alloc_init(NSMutableArray);
      if ([(THModelContentLoadOperation *)self completionBlock])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v6 = self->mMainThreadCompletionBlocks;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1DC600;
      v7[3] = &unk_45AE58;
      v7[4] = self;
      v7[5] = v6;
      [(THModelContentLoadOperation *)self setCompletionBlock:v7];
      mMainThreadCompletionBlocks = self->mMainThreadCompletionBlocks;
    }

    -[NSMutableArray addObject:](mMainThreadCompletionBlocks, "addObject:", [block copy]);
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)loadContentNode
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [[PFXArchive alloc] initWithPath:[(NSURL *)self->mApplePubURL path]];
  [(PFXArchive *)v4 setAsset:[(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] asset]];
  if (![(PFXArchive *)v4 isValid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(PFXArchive *)v4 isValid])
  {
    v5 = [(THModelContentLoadOperation *)self newNodeBodyWithContext:[(THDocumentRoot *)self->mDocumentRoot context] isFlow:1];
    v6 = [(THModelContentLoadOperation *)self newNodeBodyWithContext:[(THDocumentRoot *)self->mDocumentRoot context] isFlow:0];
    v7 = [[PFAIContentState alloc] initWithDocumentRoot:self->mDocumentRoot contentNode:[(THModelContentLoadOperation *)self contentNode] flowNodeBody:v5 paginatedNodeBody:v6 archive:v4 documentEntryUri:self->mDocumentEntryURI];
    [(PFXHtmlReaderState *)v7 setNodeGUID:[(THModelNode *)[(THModelContentLoadOperation *)self contentNode] nodeGUID]];

    [(PFXHtmlReaderState *)v7 setPageContentWidth:600.0];
    if (![(PFXXmlStreamReaderState *)v7 streamAPI])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(PFXXmlStreamReaderState *)v7 streamAPI])
    {
      [(PFXHtmlReaderState *)v7 setLoadDelegate:self];
      v8 = [PFAIContentDocument readWithState:v7];
      [(PFXHtmlReaderState *)v7 setLoadDelegate:0];
    }

    else
    {
      v8 = 0;
    }

    [(THModelContentLoadOperation *)self p_processHintsWithContentState:v7];
    if (v8)
    {
      v9 = objc_alloc_init(TSUNoCopyDictionary);
      paginatedState = [(PFAIContentState *)v7 paginatedState];
      if ([(PFAIDocOrientationState *)paginatedState contentNodeBody]&& [(PFAIDocOrientationState *)paginatedState presentationType])
      {
        [v9 setObject:-[PFAIDocOrientationState contentNodeBody](paginatedState forUncopiedKey:{"contentNodeBody"), -[PFAIDocOrientationState presentationType](paginatedState, "presentationType")}];
      }

      flowState = [(PFAIContentState *)v7 flowState];
      if ([(PFAIDocOrientationState *)flowState contentNodeBody]&& [(PFAIDocOrientationState *)flowState presentationType])
      {
        [v9 setObject:-[PFAIDocOrientationState contentNodeBody](flowState forUncopiedKey:{"contentNodeBody"), -[PFAIDocOrientationState presentationType](flowState, "presentationType")}];
      }

      storageAnchorsForAnchorID = [(PFXHtmlReaderState *)v7 storageAnchorsForAnchorID];
      [v9 setObject:storageAnchorsForAnchorID forKey:kTHModelStorageAnchorsForAnchorID];
      storageAnchorsForCfiFrag = [(PFXHtmlReaderState *)v7 storageAnchorsForCfiFrag];
      [v9 setObject:storageAnchorsForCfiFrag forKey:kTHModelStorageAnchorsForCfiFrag];
      textChildOffsetStorageAnchorsForCfiFrag = [(PFXHtmlReaderState *)v7 textChildOffsetStorageAnchorsForCfiFrag];
      [v9 setObject:textChildOffsetStorageAnchorsForCfiFrag forKey:kTHModelTextChildOffsetStorageAnchorsForCfiFrag];
      anchorForCfiFrag = [(PFXHtmlReaderState *)v7 anchorForCfiFrag];
      [v9 setObject:anchorForCfiFrag forKey:kTHModelAnchorForCfiFrag];
      [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperation:self loadedContentBodies:v9];

      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
  }

  if (([(THModelContentLoadOperation *)self isCancelled]& 1) == 0)
  {
    [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperationFailed:self];
  }

LABEL_20:
}

- (void)loadNavigationPageContentNode
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [[PFXArchive alloc] initWithPath:[(NSURL *)self->mApplePubURL path]];
  [(PFXArchive *)v4 setAsset:[(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] asset]];
  if (![(PFXArchive *)v4 isValid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXArchive *)v4 isValid])
  {
    v12 = 0;
LABEL_23:
    [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperationFailed:self];
    goto LABEL_24;
  }

  v5 = [(THModelContentLoadOperation *)self newNodeBodyWithContext:[(THDocumentRoot *)self->mDocumentRoot context] isFlow:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tiles = [(THTOCModel *)[(THDocumentRoot *)self->mDocumentRoot tocModel] tiles];
  v7 = [(NSArray *)tiles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v16 = v3;
    v8 = *v18;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(tiles);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      browserPageNode = [v10 browserPageNode];
      if (browserPageNode == [(THModelContentLoadOperation *)self contentNode])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)tiles countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        v10 = 0;
        break;
      }
    }

    v3 = v16;
  }

  else
  {
    v10 = 0;
  }

  v12 = [[PFAITocConfigState alloc] initWithDocumentRoot:self->mDocumentRoot nodeBody:v5 tocTile:v10 archive:v4 documentEntryUri:self->mDocumentEntryURI];
  [(PFAITocConfigState *)v12 setNodeGUID:[(THModelNode *)[(THModelContentLoadOperation *)self contentNode] nodeGUID]];

  if (![(PFXXmlStreamReaderState *)v12 streamAPI])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXXmlStreamReaderState *)v12 streamAPI])
  {
    goto LABEL_23;
  }

  [(PFAITocConfigState *)v12 setLoadDelegate:self];
  v13 = [PFAITocConfig readWithState:v12];
  [(PFAITocConfigState *)v12 setLoadDelegate:0];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = objc_alloc_init(TSUNoCopyDictionary);
  thNodeBody = [(PFAITocConfigState *)v12 thNodeBody];
  if (thNodeBody)
  {
    [v14 setObject:thNodeBody forUncopiedKey:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", -[THDocumentRoot context](self->mDocumentRoot, "context"))}];
  }

  [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperation:self loadedContentBodies:v14];

LABEL_24:
}

- (void)loadEpubContentNode
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[PFXArchive alloc] initWithPath:[(NSURL *)self->mApplePubURL path]];
  [(PFXArchive *)v4 setAsset:[(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] asset]];
  if (![(PFXArchive *)v4 isValid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXArchive *)v4 isValid]|| ([(THModelContentLoadOperation *)self isCancelled]& 1) != 0)
  {
    v5 = 0;
    v6 = 0;
LABEL_12:
    [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperationFailed:self];
    goto LABEL_13;
  }

  v6 = [(THModelContentLoadOperation *)self newNodeBodyWithContext:[(THDocumentRoot *)self->mDocumentRoot context] isFlow:1];
  v5 = [[PFEIReaderState alloc] initWithDocumentRoot:self->mDocumentRoot contentNode:[(THModelContentLoadOperation *)self contentNode] flowNodeBody:v6 archive:v4 documentEntryUri:self->mDocumentEntryURI];
  [(PFXHtmlReaderState *)v5 setNodeGUID:[(THModelNode *)[(THModelContentLoadOperation *)self contentNode] nodeGUID]];
  [(PFXHtmlReaderState *)v5 setPageContentWidth:600.0];
  if (![(PFXXmlStreamReaderState *)v5 streamAPI])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(PFXXmlStreamReaderState *)v5 streamAPI])
  {
    goto LABEL_12;
  }

  if (([(THModelContentLoadOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_12;
  }

  [(PFXHtmlReaderState *)v5 setLoadDelegate:self];
  if (![PFEIContentDocument readWithState:v5]|| ([(THModelContentLoadOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = objc_alloc_init(TSUNoCopyDictionary);
  orientationState = [(PFEIReaderState *)v5 orientationState];
  if ([(PFAIDocOrientationState *)orientationState contentNodeBody]&& [(PFAIDocOrientationState *)orientationState presentationType])
  {
    [v7 setObject:-[PFAIDocOrientationState contentNodeBody](orientationState forUncopiedKey:{"contentNodeBody"), -[PFAIDocOrientationState presentationType](orientationState, "presentationType")}];
  }

  storageAnchorsForAnchorID = [(PFXHtmlReaderState *)v5 storageAnchorsForAnchorID];
  [v7 setObject:storageAnchorsForAnchorID forKey:kTHModelStorageAnchorsForAnchorID];
  storageAnchorsForCfiFrag = [(PFXHtmlReaderState *)v5 storageAnchorsForCfiFrag];
  [v7 setObject:storageAnchorsForCfiFrag forKey:kTHModelStorageAnchorsForCfiFrag];
  textChildOffsetStorageAnchorsForCfiFrag = [(PFXHtmlReaderState *)v5 textChildOffsetStorageAnchorsForCfiFrag];
  [v7 setObject:textChildOffsetStorageAnchorsForCfiFrag forKey:kTHModelTextChildOffsetStorageAnchorsForCfiFrag];
  anchorForCfiFrag = [(PFXHtmlReaderState *)v5 anchorForCfiFrag];
  [v7 setObject:anchorForCfiFrag forKey:kTHModelAnchorForCfiFrag];
  [(THModelContentLoadOperationDelegate *)self->mDelegate contentLoadOperation:self loadedContentBodies:v7];

LABEL_13:
  [(PFXHtmlReaderState *)v5 setLoadDelegate:0];

  objc_autoreleasePoolPop(v3);
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if (([(THModelContentLoadOperation *)self isCancelled]& 1) == 0)
  {
    if ([(THModelContentLoadOperation *)self isEpub])
    {
      [(THModelContentLoadOperation *)self loadEpubContentNode];
    }

    else if ([(THModelContentLoadOperationDelegate *)self->mDelegate navigationPageNode])
    {
      [(THModelContentLoadOperation *)self loadNavigationPageContentNode];
    }

    else
    {
      [(THModelContentLoadOperation *)self loadContentNode];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)processHintsInOrientation:(id)orientation contentState:(id)state
{
  if ([orientation hasHints])
  {
    contentNodeBody = [orientation contentNodeBody];
    context = [(THDocumentRoot *)self->mDocumentRoot context];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [contentNodeBody pages];
    v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v8 = 0;
      v9 = 0;
      v24 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v10;
          v11 = *(*(&v31 + 1) + 8 * v10);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          modelBodyInfos = [v11 modelBodyInfos];
          v13 = [modelBodyInfos countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(modelBodyInfos);
                }

                v17 = *(*(&v27 + 1) + 8 * i);
                if (![v17 lineHints])
                {
                  v18 = [[TSWPLineHintCollection alloc] initForEmptyShapeWithPreviousRange:v9 context:{v8, context}];
                  [v17 setLineHints:v18];
                }

                lineHints = [v17 lineHints];
                hints = [lineHints hints];
                if (hints)
                {
                  v21 = hints;
                  if ([lineHints hintsCount])
                  {
                    v22 = &v21[56 * [lineHints hintsCount]];
                    v9 = *(v22 - 3);
                    v8 = *(v22 - 2);
                  }
                }
              }

              v14 = [modelBodyInfos countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }

          v10 = v26 + 1;
        }

        while ((v26 + 1) != v25);
        v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }
  }
}

- (void)p_processHintsWithContentState:(id)state
{
  v5 = [objc_msgSend(objc_msgSend(state "paginatedState")];
  v6 = [v5 length];
  [state processHints];
  -[THModelContentLoadOperation processHintsInOrientation:contentState:](self, "processHintsInOrientation:contentState:", [state paginatedState], state);
  -[THModelContentLoadOperation processHintsInOrientation:contentState:](self, "processHintsInOrientation:contentState:", [state flowState], state);
  if (v6 != [v5 length])
  {
    if (v6 != [v5 length] + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (v6 == [v5 length] + 1)
    {

      [(THModelContentLoadOperation *)self p_fixPageCharacterRangeAfterStorageTruncationWithContentState:state];
    }
  }
}

- (void)p_fixPageCharacterRangeAfterStorageTruncationWithContentState:(id)state
{
  v3 = [objc_msgSend(state "paginatedState")];
  pages = [v3 pages];
  if ([pages count])
  {
    lastObject = [pages lastObject];
    v6 = [objc_msgSend(v3 "bodyStorage")];

    [lastObject setPageEndCharIndex:v6];
  }
}

- (id)newNodeBodyWithContext:(id)context isFlow:(BOOL)flow
{
  flowCopy = flow;
  v7 = [[THModelContentNodeBody alloc] initWithContext:context];
  v8 = [[TSSStylesheet alloc] initWithContext:context canCullStyles:0];
  [(THModelContentNodeBody *)v7 setStylesheet:v8];
  [v8 setParent:{-[THDocumentRoot stylesheet](self->mDocumentRoot, "stylesheet")}];

  v9 = [TSWPParagraphStyle defaultStyleWithContext:context];
  [(THModelContentLoadOperation *)self p_populateParagraphStyle:v9];
  [v8 addStyle:v9 withIdentifier:kTSWPDefaultContentParagraphStyleIdentifier];
  v10 = [TSWPListStyle defaultStyleWithContext:context];
  [v8 addStyle:v10 withIdentifier:TSWPDefaultListStyleIdentifier];
  v11 = [TSWPColumnStyle defaultStyleWithContext:context];
  [v8 addStyle:v11];
  v12 = [[THWPStorage alloc] initWithContext:context string:0 kind:0 stylesheet:v8 paragraphStyle:v9 listStyle:v10 section:0 columnStyle:v11];
  [(THWPStorage *)v12 setUsesApplicationFontScaling:flowCopy];
  [(THModelContentNodeBody *)v7 setBodyStorage:v12];

  return v7;
}

- (void)p_populateParagraphStyle:(id)style
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1DDDFC;
  v7[3] = &unk_45B500;
  v7[4] = style;
  [+[TSWPParagraphStyle paragraphProperties](TSWPParagraphStyle "paragraphProperties")];
  language = [(THBookDescription *)[(THDocumentRoot *)self->mDocumentRoot bookDescription] language];
  if (language)
  {
    v6 = language;
  }

  else
  {
    v6 = @"en";
  }

  [style setBoxedValue:v6 forProperty:39];
}

@end