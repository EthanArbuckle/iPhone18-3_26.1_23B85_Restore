@interface THDocumentRoot
+ (void)p_populateParagraphStyle:(id)style;
- (BOOL)isPortraitOnlyBook;
- (BOOL)loadEquationFontsIfNeeded;
- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)index;
- (EQKitEnvironment)equationEnvironment;
- (NSDictionary)bookMetadata;
- (NSString)docVersion;
- (NSString)storeItemID;
- (NSString)yearFromReleaseDate;
- (NSURL)modelURL;
- (THDocumentRoot)initWithContext:(id)context;
- (_NSRange)storageRangeForAnnotation:(id)annotation;
- (id)activityItemProvider;
- (id)activityItemProviderWithAnnotation:(id)annotation;
- (id)activityItemProviderWithAnnotations:(id)annotations;
- (id)anchorForCFIString:(id)string coarsenIfNeeded:(BOOL)needed;
- (id)anchorForNthInstance:(unint64_t)instance ofSearchString:(id)string afterCFIString:(id)iString coarsenIfNeeded:(BOOL)needed;
- (id)annotationsUpdatedForSharing:(id)sharing;
- (id)contentNodeForCfi:(id)cfi error:(id *)error;
- (id)firstLessonOfChapter:(id)chapter;
- (id)kpfDocumentBaseResourcePath;
- (id)linkForNavigationUnitIndex:(unint64_t)index;
- (id)modelStorageAnchorForAnnotation:(id)annotation;
- (id)modelStorageAnchorForCfi:(id)cfi error:(id *)error;
- (id)newTemporaryReviewDataMOC;
- (id)newTemporateReviewResponseMOC;
- (id)p_activityItemPropertySource;
- (id)p_fetchResponseForQuestionID:(id)d moc:(id)moc;
- (id)p_fetchReviewWidgetDataForWidgetID:(id)d moc:(id)moc;
- (id)p_responseEntityWithMOC:(id)c;
- (id)p_reviewEntityWithMOC:(id)c;
- (id)pageNumberStringForAnnotation:(id)annotation;
- (id)pageNumberStringForLocation:(id)location;
- (id)responseForQuestionID:(id)d temporaryMOC:(id)c;
- (id)reviewWidgetDataForWidgetID:(id)d temporaryMOC:(id)c;
- (id)sectionNumberStringForLocation:(id)location;
- (id)sectionTitleStringForAnnotation:(id)annotation;
- (id)sectionTitleStringForLocation:(id)location;
- (id)storageForAnnotation:(id)annotation;
- (id)storageForCFI:(id)i;
- (id)storageWithHighlightTextForAnnotation:(id)annotation;
- (id)viewController;
- (unint64_t)absolutePageIndexForAnnotation:(id)annotation;
- (unint64_t)absolutePageIndexForCFI:(id)i;
- (unint64_t)absolutePageIndexForLocation:(id)location;
- (unint64_t)absolutePageIndexForStorageAnchor:(id)anchor;
- (void)commitUserDataChanges;
- (void)dealloc;
- (void)documentDidLoad;
- (void)mutateResponse:(id)response block:(id)block;
- (void)mutateReviewWidgetData:(id)data block:(id)block;
- (void)p_setupAnnotationControllerForBook:(id)book;
- (void)removeResponse:(id)response;
- (void)removeResponseForQuestionID:(id)d;
- (void)removeReviewWidgetData:(id)data;
- (void)removeReviewWidgetDataForWidgetID:(id)d;
- (void)setAnnotationSearchIndex:(id)index;
- (void)setApplePubDocId:(id)id;
- (void)setGlossary:(id)glossary;
- (void)setProperties:(id)properties;
- (void)setRootNode:(id)node;
- (void)setSearchIndex:(id)index;
- (void)setSearchModel:(id)model;
- (void)setTocModel:(id)model;
- (void)setZipPackage:(id)package;
- (void)teardown;
- (void)willClose;
@end

@implementation THDocumentRoot

- (void)setRootNode:(id)node
{
  [(THDocumentRoot *)self willModify];
  nodeCopy = node;

  self->mRootNode = node;
}

- (void)setProperties:(id)properties
{
  [(THDocumentRoot *)self willModify];
  propertiesCopy = properties;

  self->mProperties = properties;
}

- (void)setApplePubDocId:(id)id
{
  [(THDocumentRoot *)self willModify];
  v5 = [id copy];

  self->mApplePubDocId = v5;
}

- (void)setTocModel:(id)model
{
  [(THDocumentRoot *)self willModify];
  modelCopy = model;

  self->mTOCModel = model;
}

- (void)setSearchModel:(id)model
{
  [(THDocumentRoot *)self willModify];
  modelCopy = model;

  self->mSearchModel = model;
}

- (void)setZipPackage:(id)package
{
  [(THDocumentRoot *)self willModify];
  packageCopy = package;

  self->mZipPackage = package;
}

- (void)setGlossary:(id)glossary
{
  [(THDocumentRoot *)self willModify];
  glossaryCopy = glossary;

  self->mGlossary = glossary;
}

- (void)setSearchIndex:(id)index
{
  [(THDocumentRoot *)self willModify];
  indexCopy = index;

  self->mSearchIndex = index;
}

- (void)setAnnotationSearchIndex:(id)index
{
  [(THDocumentRoot *)self willModify];
  indexCopy = index;

  self->mAnnotationSearchIndex = index;
}

+ (void)p_populateParagraphStyle:(id)style
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_20170;
  v3[3] = &unk_45B500;
  v3[4] = style;
  [+[TSWPParagraphStyle properties](TSWPParagraphStyle "properties")];
}

- (THDocumentRoot)initWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = THDocumentRoot;
  v3 = [(THDocumentRoot *)&v8 initWithContext:context];
  if (v3)
  {
    v3->mStylesheet = [[TSSStylesheet alloc] initWithContext:-[THDocumentRoot context](v3 canCullStyles:{"context"), 0}];
    v4 = [TSWPParagraphStyle defaultStyleWithContext:[(THDocumentRoot *)v3 context]];
    [objc_opt_class() p_populateParagraphStyle:v4];
    [(TSSStylesheet *)v3->mStylesheet addStyle:v4 withIdentifier:TSWPDefaultParagraphStyleIdentifier];
    v5 = [TSWPListStyle defaultStyleWithContext:[(THDocumentRoot *)v3 context]];
    [(TSSStylesheet *)v3->mStylesheet addStyle:v5 withIdentifier:TSWPDefaultListStyleIdentifier];
    v6 = [TSWPColumnStyle defaultStyleWithContext:[(THDocumentRoot *)v3 context]];
    [(TSSStylesheet *)v3->mStylesheet addStyle:v6 withIdentifier:TSWPDefaultColumnStyleIdentifier];
    [TSTTableStyleNetwork createStylesInStylesheet:v3->mStylesheet presetIndex:0 colors:0 alternate:0];
    v3->mProperties = [[THDocumentProperties alloc] initWithContext:[(THDocumentRoot *)v3 context]];
    v3->mTOCModel = [[THTOCModel alloc] initWithContext:[(THDocumentRoot *)v3 context]];
    v3->mSearchModel = [[THSearchModel alloc] initWithContext:[(THDocumentRoot *)v3 context]];
    v3->mApplePubDocId = @"0/0/0";
    v3->mLibraryDatabaseKey = &stru_471858;
    v3->mCancelled = 0;
    v3->mBackgroundReaderCount = 0;
    v3->mGlossary = [[THModelGlossary alloc] initWithContext:[(THDocumentRoot *)v3 context] documentRoot:v3];
    v3->mSearchIndex = [(THSearchIndex *)[THModelSearchIndex alloc] initWithContext:[(THDocumentRoot *)v3 context]];
    v3->mAnnotationSearchIndex = [(THSearchIndex *)[THAnnotationSearchIndex alloc] initWithContext:[(THDocumentRoot *)v3 context]];
    v3->mEquationEnvironment = 0;
    [(THDocumentRoot *)v3 p_initializeFields];
    v3->_pagespotHistory = objc_alloc_init(THPageSpotHistory);
  }

  return v3;
}

- (void)teardown
{
  [(THSearchController *)[(THDocumentRoot *)self searchController] documentWillDealloc];
  [(THDocumentRoot *)self setNavigationModel:0];
  [(THDocumentRoot *)self setTetheringConnection:0];
  [(THDocumentRoot *)self setAnnotationController:0];
  [(THPageSpotHistory *)self->_pagespotHistory setDelegate:0];

  self->_pagespotHistory = 0;
  self->_themeProvider = 0;

  self->mRootNode = 0;
  self->mProperties = 0;

  self->mStylesheet = 0;
  self->mTOCModel = 0;

  self->mSearchModel = 0;
  self->mLibraryDatabaseKey = 0;

  self->mStoreItemID = 0;
  self->mBackgroundReaderCountCondition = 0;

  self->mBookDescription = 0;
  self->mBookCoverDescription = 0;

  self->mZipPackage = 0;
  self->mGlossary = 0;

  self->mSearchIndex = 0;
  self->mAnnotationSearchIndex = 0;

  self->mEquationEnvironment = 0;
  self->mContentLoadOperationQueue = 0;

  self->mBookUserDefaults = 0;
  self->mSuppliedAnnotationProvider = 0;
  if ([(NSManagedObjectContext *)[(THDocumentRoot *)self moc] hasChanges])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mMOC = 0;
  self->mUserDataManager = 0;

  self->mGlossaryController = 0;
  self->mSearchController = 0;
  mOpfXmlDoc = self->mOpfXmlDoc;
  if (mOpfXmlDoc)
  {
    xmlFreeDoc(mOpfXmlDoc);
    self->mOpfXmlDoc = 0;
  }
}

- (void)dealloc
{
  [(THDocumentRoot *)self teardown];
  v3.receiver = self;
  v3.super_class = THDocumentRoot;
  [(THDocumentRoot *)&v3 dealloc];
}

- (void)willClose
{
  self->mClosing = 1;
  [(THAnnotationStorageController *)[(THDocumentRoot *)self annotationController] teardown];
  [(THDocumentRoot *)self setAnnotationController:0];
  searchController = [(THDocumentRoot *)self searchController];
  if (![(THSearchController *)searchController indexLoaded])
  {
    [(THSearchController *)searchController cancelLoadIndex];
  }

  [(NSOperationQueue *)self->mContentLoadOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->mContentLoadOperationQueue waitUntilAllOperationsAreFinished];
  [THWWebRep enumerateSubdomainsOfHost:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] annotationID] usingBlock:&stru_45B540];
  [PFDURLProtocol unregisterHost:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] annotationID]];
  [+[PFDContextManager sharedInstance](PFDContextManager removeContextForArchive:"removeContextForArchive:", [(NSURL *)[(THDocumentRoot *)self zipPackage] path]];
  v4.receiver = self;
  v4.super_class = THDocumentRoot;
  [(THDocumentRoot *)&v4 willClose];
}

- (unint64_t)absolutePageIndexForStorageAnchor:(id)anchor
{
  if (!anchor)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  contentNode = [anchor contentNode];
  if ([(THDocumentRoot *)self reflowablePaginationController])
  {
    v6 = [(THReflowablePaginationController *)[(THDocumentRoot *)self reflowablePaginationController] paginationResultForContentNode:contentNode];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v8 = v6;
      if ([v6 firstPageIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v8 relativePageIndexForStorageAnchor:anchor];
        firstPageIndex = [v8 firstPageIndex];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9;
        }

        return v11 + firstPageIndex;
      }
    }

    return v7;
  }

  v12 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
  objc_opt_class();
  [contentNode infoForNodeUniqueID:objc_msgSend(anchor forPresentationType:{"storageUID"), v12}];
  v13 = [contentNode relativePageIndexForCharacterIndex:objc_msgSend(anchor forInfo:{"range"), TSUDynamicCast()}];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v7;
  }

  return [contentNode absolutePageIndexForRelativePageIndex:v13 forPresentationType:v12];
}

- (unint64_t)absolutePageIndexForLocation:(id)location
{
  pageIndex = [location pageIndex];
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    return pageIndex;
  }

  v6 = +[THModelStorageAnchor storageAnchorWithContentNode:pageLocation:](THModelStorageAnchor, "storageAnchorWithContentNode:pageLocation:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [location contentNodeGUID]), location);

  return [(THDocumentRoot *)self absolutePageIndexForStorageAnchor:v6];
}

- (id)kpfDocumentBaseResourcePath
{
  v2 = [(THAsset *)[(THBookDescription *)[(THDocumentRoot *)self bookDescription] asset] url];

  return [(NSURL *)v2 path];
}

- (id)pageNumberStringForLocation:(id)location
{
  v4 = [(THDocumentRoot *)self absolutePageIndexForLocation:location];
  v5 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  navigationModel = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)navigationModel pageNumberStringForAbsolutePageIndex:v4 forPresentationType:v5];
}

- (id)sectionTitleStringForLocation:(id)location
{
  pageIndex = [location pageIndex];
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    pageIndex = -[THDocumentRoot absolutePageIndexForStorageAnchor:](self, "absolutePageIndexForStorageAnchor:", +[THModelStorageAnchor storageAnchorWithContentNode:pageLocation:](THModelStorageAnchor, "storageAnchorWithContentNode:pageLocation:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [location contentNodeGUID]), location));
  }

  v6 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  navigationModel = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)navigationModel minorSnippetForAbsolutePageIndex:pageIndex withDocumentRoot:self forPresentationType:v6];
}

- (id)sectionNumberStringForLocation:(id)location
{
  result = -[THDocumentNavigationModel navigationUnitContainingContentNode:](-[THDocumentRoot navigationModel](self, "navigationModel"), "navigationUnitContainingContentNode:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [location contentNodeGUID]));
  if (result)
  {
    v5 = result;
    navigationModel = [(THDocumentRoot *)self navigationModel];

    return [(THDocumentNavigationModel *)navigationModel sectionIdentifierForNavigationUnit:v5];
  }

  return result;
}

- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v5 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  v6 = [(THDocumentNavigationModel *)[(THDocumentRoot *)self navigationModel] navigationUnitContainingContentNode:[(THModelNode *)[(THDocumentRoot *)self rootNode] contentNodeForRelativePageIndex:index forPresentationType:v5]];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 relativePageIndexForAbsolutePageIndex:index forPresentationType:v5];
  v9 = [(NSArray *)[(THDocumentNavigationModel *)[(THDocumentRoot *)self navigationModel] navigationUnits] indexOfObject:v7];
  if (v9 >= [(NSArray *)[(THDocumentNavigationModel *)[(THDocumentRoot *)self navigationModel] navigationUnits] count])
  {
    return 0;
  }

  v10 = [objc_msgSend(-[NSArray objectAtIndex:](-[THTOCModel tiles](-[THDocumentRoot tocModel](self "tocModel")];

  return [TSDBitmapImageProvider temporaryCGImageForImageData:v10];
}

- (NSString)docVersion
{
  bookDescription = [(THDocumentRoot *)self bookDescription];
  if (![(THBookDescription *)bookDescription authoredVersion]|| ![(THBookDescription *)bookDescription timestamp])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THBookDescription *)bookDescription timestamp]&& [(NSString *)[(THBookDescription *)bookDescription timestamp] length])
  {
    if ([(THBookDescription *)bookDescription authoredVersion]&& [(NSString *)[(THBookDescription *)bookDescription authoredVersion] length])
    {
      return [(NSString *)[(THBookDescription *)bookDescription authoredVersion] stringByAppendingFormat:@"@%@", [(THBookDescription *)bookDescription timestamp]];
    }

    else
    {
      timestamp = [(THBookDescription *)bookDescription timestamp];

      return [@"@" stringByAppendingString:timestamp];
    }
  }

  else if ([(THBookDescription *)bookDescription authoredVersion]&& [(NSString *)[(THBookDescription *)bookDescription authoredVersion] length])
  {

    return [(THBookDescription *)bookDescription authoredVersion];
  }

  else
  {
    return @"0";
  }
}

- (NSURL)modelURL
{
  bookDescription = [(THDocumentRoot *)self bookDescription];
  if (![(THBookDescription *)bookDescription isbn]|| ![(THBookDescription *)bookDescription uniquifier]|| ![(THBookDescription *)bookDescription authoredVersion]|| ![(THBookDescription *)bookDescription timestamp])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THBookDescription *)bookDescription isbn])
  {
    isbn = [(THBookDescription *)bookDescription isbn];
  }

  else
  {
    isbn = @"0";
  }

  if ([(THBookDescription *)bookDescription uniquifier])
  {
    uniquifier = [(THBookDescription *)bookDescription uniquifier];
  }

  else
  {
    uniquifier = @"0";
  }

  v6 = [NSString stringWithFormat:@"apub:///%@/%@/%@", isbn, uniquifier, [(THDocumentRoot *)self docVersion]];

  return [NSURL URLWithString:v6];
}

- (BOOL)isPortraitOnlyBook
{
  chapterBrowserPagePresentationType = [(THDocumentProperties *)[(THDocumentRoot *)self properties] chapterBrowserPagePresentationType];
  [(THPresentationType *)chapterBrowserPagePresentationType pageSize];
  v4 = v3;
  [(THPresentationType *)chapterBrowserPagePresentationType pageSize];
  return v4 > v5;
}

- (NSString)storeItemID
{
  result = self->mStoreItemID;
  if (!result)
  {
    result = [-[NSDictionary objectForKey:](-[THDocumentRoot bookMetadata](self "bookMetadata")];
    self->mStoreItemID = result;
  }

  return result;
}

- (NSDictionary)bookMetadata
{
  v2 = [(NSURL *)[(THBookDescription *)[(THDocumentRoot *)self bookDescription] bookBundleUrl] URLByAppendingPathComponent:@"iTunesMetadata.plist"];

  return [NSDictionary dictionaryWithContentsOfURL:v2];
}

- (NSString)yearFromReleaseDate
{
  [(NSDictionary *)[(THDocumentRoot *)self bookMetadata] objectForKey:@"releaseDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = TSUDynamicCast();
    v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [v3 setTimeZone:TSUGetGMTTimeZone()];
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [objc_msgSend(v3 components:4 fromDate:{v2), "year"}]);

    return v4;
  }

  else
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if ([v6 length] < 4)
    {
      return 0;
    }

    else
    {

      return [v6 substringToIndex:4];
    }
  }
}

- (BOOL)loadEquationFontsIfNeeded
{
  if (!-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [-[THBookDescription urlForDocRelativePath:](-[THDocumentRoot bookDescription](self "bookDescription")]))
  {
    return 1;
  }

  equationEnvironment = [(THDocumentRoot *)self equationEnvironment];

  return [(EQKitEnvironment *)equationEnvironment fontsLoaded];
}

- (EQKitEnvironment)equationEnvironment
{
  objc_sync_enter(self);
  if (!self->mEquationEnvironment)
  {
    if (-[THDocumentProperties equationEnvironmentEntry](-[THDocumentRoot properties](self, "properties"), "equationEnvironmentEntry") && (v3 = [-[THBookDescription dataForDocRelativePath:context:](-[THDocumentRoot bookDescription](self "bookDescription")]) != 0 && (v4 = +[EQKitEnvironment environmentFromData:](EQKitEnvironment, "environmentFromData:", v3)) != 0)
    {
      v5 = v4;
      self->mEquationEnvironment = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    else if (!self->mEquationEnvironment)
    {
LABEL_8:
      self->mEquationEnvironment = +[EQKitEnvironment defaultEnvironment];
    }
  }

  objc_sync_exit(self);
  return self->mEquationEnvironment;
}

- (void)documentDidLoad
{
  v8.receiver = self;
  v8.super_class = THDocumentRoot;
  [(THDocumentRoot *)&v8 documentDidLoad];
  assetID = [(THAsset *)[(THBookDescription *)[(THDocumentRoot *)self bookDescription] asset] assetID];
  if (self->mBookUserDefaults)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mBookUserDefaults = [[THBookUserDefaults alloc] initWithBookID:assetID];
  if (self->mNavigationModel)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mNavigationModel = [[THDocumentNavigationModel alloc] initWithDocumentRoot:self navigationUnitsNodes:0];
  if (self->mGlossaryController)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mGlossaryController = [[THGlossaryController alloc] initWithModel:[(THDocumentRoot *)self glossary] documentRoot:self];
  if (self->mSearchController)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mSearchController = [[THSearchController alloc] initWithDocumentRoot:self];
  if (self->mUserDataManager)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = [[THUserDataManager alloc] initWithBookDescription:[(THDocumentRoot *)self bookDescription]];
  self->mUserDataManager = v4;
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mMOC)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  newManagedObjectContext = [(THUserDataManager *)self->mUserDataManager newManagedObjectContext];
  self->mMOC = newManagedObjectContext;
  if (!newManagedObjectContext)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THDocumentRoot *)self annotationController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THDocumentRoot *)self p_setupAnnotationControllerForBook:[(THDocumentRoot *)self bookDescription]];
  [(THAnnotationStorageController *)[(THDocumentRoot *)self annotationController] rescueDanglingAnnotationsWithDocumentRoot:self];
  [PFDURLProtocol registerHost:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] annotationID] bookRootURL:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] bookBundleUrl] withDRMContext:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] drmContext]];
  drmContext = [(THBookDescription *)[(THDocumentRoot *)self bookDescription] drmContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_21B30;
  v7[3] = &unk_45B568;
  v7[4] = [(THBookDescription *)[(THDocumentRoot *)self bookDescription] bookBundleUrl];
  v7[5] = drmContext;
  [THWWebRep enumerateSubdomainsOfHost:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] annotationID] usingBlock:v7];
  [+[BEDocumentExternalLoadApprovalCache sharedInstance](BEDocumentExternalLoadApprovalCache removeCachedDisapprovalForBookID:"removeCachedDisapprovalForBookID:", assetID];
}

- (id)firstLessonOfChapter:(id)chapter
{
  objc_opt_class();
  [chapter nodeAtIndex:0];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v4;
}

- (id)linkForNavigationUnitIndex:(unint64_t)index
{
  navigationModel = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)navigationModel linkForNavigationUnitIndex:index];
}

- (void)p_setupAnnotationControllerForBook:(id)book
{
  v5 = [objc_msgSend(book "asset")];
  v6 = [objc_msgSend(book "asset")];
  if (![(THDocumentRoot *)self properties])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  bookVersion = [(THDocumentProperties *)[(THDocumentRoot *)self properties] bookVersion];
  v8 = +[THAnnotationSerializationManager annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:](THAnnotationSerializationManager, "annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:", v5, v6, -[THBookVersion versionString](bookVersion, "versionString"), [book contextDirectoryPath], objc_msgSend(objc_msgSend(book, "asset"), "isManagedBook"));
  if (![(THDocumentRoot *)self suppliedAnnotationProvider])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  suppliedAnnotationProvider = [(THDocumentRoot *)self suppliedAnnotationProvider];
  v10 = [[THAnnotationController alloc] initWithAnnotationProvider:suppliedAnnotationProvider documentNavigationModel:[(THDocumentRoot *)self navigationModel]];
  if ((-[THAnnotationSerializationManager isAssetOfflineWithAssetID:](v8, "isAssetOfflineWithAssetID:", v5) & 1) != 0 || (-[THAnnotationSerializationManager takeBookOfflineIfManagedWithAnnotationProvider:assetID:](v8, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", suppliedAnnotationProvider, v5) & 1) != 0 || -[THAnnotationSerializationManager wentOfflineAfterHandleAnnotationProvider:willEncounterAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:copyIfGoingOffline:](v8, "wentOfflineAfterHandleAnnotationProvider:willEncounterAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:copyIfGoingOffline:", suppliedAnnotationProvider, -[THAnnotationController maxAnnotationAssetVersion](v10, "maxAnnotationAssetVersion"), bookVersion, v5, [objc_msgSend(book "asset")], 0))
  {
    v11 = [[THAnnotationController alloc] initWithAnnotationProvider:[(THAnnotationSerializationManager *)v8 annotationProviderForOfflineDBWithAssetID:v5] documentNavigationModel:[(THDocumentRoot *)self navigationModel]];
    v12 = &dword_0 + 1;
    [(THAnnotationController *)v11 setAnnotationsReadEnabled:1];
    if (![(THDocumentProperties *)[(THDocumentRoot *)self properties] isPreview])
    {
      v12 = [objc_msgSend(book "asset")];
    }

    [(THAnnotationController *)v11 setAnnotationsWriteEnabled:v12];
    [(THAnnotationController *)v10 teardown];
  }

  else
  {
    v11 = v10;
  }

  [(THDocumentRoot *)self setAnnotationController:v11];
  versionString = [(THBookVersion *)bookVersion versionString];

  [(THAnnotationSerializationManager *)v8 removeOfflineDBFilesWithAssetID:v5 exceptBookVersionString:versionString];
}

- (void)mutateReviewWidgetData:(id)data block:(id)block
{
  if (block)
  {
    (*(block + 2))(block, a2);
  }

  [data setModificationDate:{+[NSDate date](NSDate, "date")}];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeReviewWidgetData:(id)data
{
  [(NSManagedObjectContext *)[(THDocumentRoot *)self moc] deleteObject:data];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeReviewWidgetDataForWidgetID:(id)d
{
  v4 = [(THDocumentRoot *)self p_fetchReviewWidgetDataForWidgetID:d moc:[(THDocumentRoot *)self moc]];

  [(THDocumentRoot *)self removeReviewWidgetData:v4];
}

- (id)p_reviewEntityWithMOC:(id)c
{
  if (c)
  {
    v5 = kTSWReviewWidgetDataEntityName;

    return [NSEntityDescription entityForName:v5 inManagedObjectContext:c];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (id)reviewWidgetDataForWidgetID:(id)d temporaryMOC:(id)c
{
  if (c)
  {

    return [THDocumentRoot p_fetchReviewWidgetDataForWidgetID:"p_fetchReviewWidgetDataForWidgetID:moc:" moc:?];
  }

  else
  {
    v7 = [(THDocumentRoot *)self p_fetchReviewWidgetDataForWidgetID:d moc:[(THDocumentRoot *)self moc]];
    if (!v7)
    {
      v8 = [(THDocumentRoot *)self moc];
      v9 = [(THDocumentRoot *)self p_reviewEntityWithMOC:v8];
      if (v8 && v9)
      {
        v7 = [[TSWReviewWidgetData alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
        [(TSWReviewWidgetData *)v7 setUniqueID:d];
        v10 = +[NSDate date];
        [(TSWReviewWidgetData *)v7 setCreationDate:v10];
        [(TSWReviewWidgetData *)v7 setModificationDate:v10];
        [(THDocumentRoot *)self commitUserDataChanges];
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        return 0;
      }
    }

    return v7;
  }
}

- (id)newTemporaryReviewDataMOC
{
  userDataManager = [(THDocumentRoot *)self userDataManager];

  return [(THUserDataManager *)userDataManager newManagedObjectContext];
}

- (id)p_fetchReviewWidgetDataForWidgetID:(id)d moc:(id)moc
{
  if (!moc)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (d)
    {
      return 0;
    }

LABEL_10:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  if (!d)
  {
    goto LABEL_10;
  }

  v7 = objc_alloc_init(NSFetchRequest);
  [v7 setEntity:{-[THDocumentRoot p_reviewEntityWithMOC:](self, "p_reviewEntityWithMOC:", moc)}];
  [v7 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"uniqueID LIKE %@", d)}];
  v13 = 0;
  v8 = [moc executeFetchRequest:v7 error:&v13];
  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THDocumentRoot(TSWReviewWidgetDataController) p_fetchReviewWidgetDataForWidgetID:moc:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Review/TSWReviewWidgetDataController.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:111 description:{@"Error fetching results: %@ Error: %@", v7, v13}];
  }

  result = [v8 count];
  if (result)
  {
    if ([v8 count] != &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    objc_opt_class();
    [v8 objectAtIndex:0];
    return TSUDynamicCast();
  }

  return result;
}

- (void)mutateResponse:(id)response block:(id)block
{
  if (block)
  {
    (*(block + 2))(block, a2);
  }

  [response setModificationDate:{+[NSDate date](NSDate, "date")}];
  [(THDocumentRoot *)self mutateReviewWidgetData:[(THDocumentRoot *)self p_reviewWidgetDataForResponse:response] block:0];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeResponse:(id)response
{
  [(NSManagedObjectContext *)[(THDocumentRoot *)self moc] deleteObject:response];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeResponseForQuestionID:(id)d
{
  v4 = [(THDocumentRoot *)self p_fetchResponseForQuestionID:d moc:[(THDocumentRoot *)self moc]];
  if (v4)
  {

    [(THDocumentRoot *)self removeResponse:v4];
  }
}

- (id)p_responseEntityWithMOC:(id)c
{
  if (c)
  {
    v5 = kTSWReviewResponseEntityName;

    return [NSEntityDescription entityForName:v5 inManagedObjectContext:c];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (id)p_fetchResponseForQuestionID:(id)d moc:(id)moc
{
  v7 = objc_alloc_init(NSFetchRequest);
  [v7 setEntity:{-[THDocumentRoot p_responseEntityWithMOC:](self, "p_responseEntityWithMOC:", moc)}];
  [v7 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"uniqueID LIKE %@", d)}];
  v13 = 0;
  v8 = [moc executeFetchRequest:v7 error:&v13];
  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THDocumentRoot(TSWReviewResponseController) p_fetchResponseForQuestionID:moc:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Review/TSWReviewResponseController.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:85 description:{@"Error fetching results: %@ Error: %@", v7, v13}];
  }

  result = [v8 count];
  if (result)
  {
    if ([v8 count] != &dword_0 + 1)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    objc_opt_class();
    [v8 objectAtIndex:0];
    return TSUDynamicCast();
  }

  return result;
}

- (id)responseForQuestionID:(id)d temporaryMOC:(id)c
{
  if (c)
  {

    return [THDocumentRoot p_fetchResponseForQuestionID:"p_fetchResponseForQuestionID:moc:" moc:?];
  }

  else
  {
    v7 = [(THDocumentRoot *)self p_fetchResponseForQuestionID:d moc:[(THDocumentRoot *)self moc]];
    if (!v7)
    {
      v8 = [(THDocumentRoot *)self moc];
      v9 = [(THDocumentRoot *)self p_responseEntityWithMOC:v8];
      if (v8 && v9)
      {
        v7 = [[TSWReviewResponse alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
        [(TSWReviewResponse *)v7 setUniqueID:d];
        v10 = +[NSDate date];
        [(TSWReviewResponse *)v7 setCreationDate:v10];
        [(TSWReviewResponse *)v7 setModificationDate:v10];
        [(THDocumentRoot *)self commitUserDataChanges];
      }

      else
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        return 0;
      }
    }

    return v7;
  }
}

- (id)newTemporateReviewResponseMOC
{
  userDataManager = [(THDocumentRoot *)self userDataManager];

  return [(THUserDataManager *)userDataManager newManagedObjectContext];
}

- (void)commitUserDataChanges
{
  v5 = 0;
  [(NSManagedObjectContext *)[(THDocumentRoot *)self moc] save:&v5];
  if (v5)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"[THDocumentRoot(THUserDataControllerCommon) commitUserDataChanges]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_UserDataAdditions.m"];
    [v2 handleFailureInFunction:v3 file:v4 lineNumber:23 description:{@"Error saving user data:%@", v5}];
  }
}

- (id)viewController
{
  v3 = [objc_msgSend(+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
  v4 = v3;
  if (v3 && [v3 documentRoot] != self)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([v4 documentRoot] == self)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)modelStorageAnchorForAnnotation:(id)annotation
{
  annotationLocation = [annotation annotationLocation];

  return [(THDocumentRoot *)self modelStorageAnchorForCfi:annotationLocation error:0];
}

- (unint64_t)absolutePageIndexForAnnotation:(id)annotation
{
  v5 = TSUProtocolCast();
  if ([(THDocumentRoot *)self reflowablePaginationController])
  {
    v14 = 0;
    v6 = -[THDocumentRoot modelStorageAnchorForCfi:error:](self, "modelStorageAnchorForCfi:error:", [annotation annotationLocation], &v14);
    if (!v6)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[THDocumentRoot(Annotations) absolutePageIndexForAnnotation:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_Annotations.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:55 description:{@"failed to lookup anchor for CFI with error: %@", objc_msgSend(v14, "localizedDescription")}];
    }

    return [(THDocumentRoot *)self absolutePageIndexForStorageAnchor:v6];
  }

  else
  {
    annotationAbsolutePhysicalPageIndex = [v5 annotationAbsolutePhysicalPageIndex];
    if (v5)
    {
      v12 = annotationAbsolutePhysicalPageIndex == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if ([annotation annotationLocation])
      {
        annotationLocation = [annotation annotationLocation];

        return [(THDocumentRoot *)self absolutePageIndexForCFI:annotationLocation];
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {

      return [v5 annotationAbsolutePhysicalPageIndex];
    }
  }
}

- (id)pageNumberStringForAnnotation:(id)annotation
{
  v4 = [(THDocumentRoot *)self absolutePageIndexForAnnotation:annotation];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = THBundle();

    return [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];
  }

  else
  {
    v7 = v4;
    v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
    navigationModel = [(THDocumentRoot *)self navigationModel];

    return [(THDocumentNavigationModel *)navigationModel pageNumberStringForAbsolutePageIndex:v7 forPresentationType:v8];
  }
}

- (id)sectionTitleStringForAnnotation:(id)annotation
{
  v3 = [objc_msgSend(-[THDocumentRoot modelStorageAnchorForAnnotation:](self modelStorageAnchorForAnnotation:{annotation), "contentNode"), "title"}];
  v4 = +[NSCharacterSet whitespaceCharacterSet];

  return [v3 stringByTrimmingCharactersInSet:v4];
}

- (id)storageForAnnotation:(id)annotation
{
  result = [annotation annotationLocation];
  if (result)
  {
    annotationLocation = [annotation annotationLocation];

    return [(THDocumentRoot *)self storageForCFI:annotationLocation];
  }

  return result;
}

- (_NSRange)storageRangeForAnnotation:(id)annotation
{
  v3 = TSUProtocolCast();
  if (v3)
  {

    annotationStorageRange = [v3 annotationStorageRange];
  }

  else
  {
    annotationStorageRange = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0;
  }

  result.length = v5;
  result.location = annotationStorageRange;
  return result;
}

- (id)storageWithHighlightTextForAnnotation:(id)annotation
{
  v5 = [(THDocumentRoot *)self storageForAnnotation:?];
  v6 = [(THDocumentRoot *)self storageRangeForAnnotation:annotation];
  v8 = v7;
  v9 = &v6[v7];
  if (&v6[v7] > [v5 length])
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THDocumentRoot(Annotations) storageWithHighlightTextForAnnotation:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_Annotations.m"];
    v19.location = v6;
    v19.length = v8;
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:135 description:{@"sourceRange %@ not within storage length = %lu", NSStringFromRange(v19), objc_msgSend(v5, "length")}];
  }

  v13 = [v5 length];
  v14 = [THWPStorage alloc];
  context = [(THDocumentRoot *)self context];
  if (!v5 || v9 > v13 || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = -[THWPStorage initTemporaryWithContext:string:](v14, "initTemporaryWithContext:string:", context, [annotation annotationSelectedText]);
  }

  else
  {
    v16 = [(THWPStorage *)v14 initTemporaryWithContext:context storage:v5 range:v6, v8];
  }

  v17 = v16;
  [v17 replaceListLabelTypeNumberWithBullet];
  return v17;
}

- (id)annotationsUpdatedForSharing:(id)sharing
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [sharing countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sharing);
        }

        v10 = TSUCheckedProtocolCast();
        if (v10)
        {
          v11 = [(THAnnotationStorageController *)[(THDocumentRoot *)self annotationController] modifiedAnnotation:v10 withChapterTitle:[(THDocumentRoot *)self sectionTitleStringForAnnotation:v10] physicalPageNumber:[(THDocumentRoot *)self pageNumberStringForAnnotation:v10]];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [sharing countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)activityItemProvider
{
  v3 = [[AEAssetActivityItemProvider alloc] initWithPropertySource:{-[THDocumentRoot p_activityItemPropertySource](self, "p_activityItemPropertySource")}];
  [v3 setCitationsAllowed:{-[THBookDescription allowCopy](-[THDocumentRoot bookDescription](self, "bookDescription"), "allowCopy")}];
  return v3;
}

- (id)activityItemProviderWithAnnotation:(id)annotation
{
  v4 = [[AEAssetActivityItemProvider alloc] initWithAnnotation:annotation propertySource:{-[THDocumentRoot p_activityItemPropertySource](self, "p_activityItemPropertySource")}];
  [v4 setCitationsAllowed:{-[THBookDescription allowCopy](-[THDocumentRoot bookDescription](self, "bookDescription"), "allowCopy")}];
  return v4;
}

- (id)activityItemProviderWithAnnotations:(id)annotations
{
  v4 = [[AEAssetActivityItemProvider alloc] initWithAnnotations:annotations propertySource:{-[THDocumentRoot p_activityItemPropertySource](self, "p_activityItemPropertySource")}];
  [v4 setCitationsAllowed:{-[THBookDescription allowCopy](-[THDocumentRoot bookDescription](self, "bookDescription"), "allowCopy")}];
  return v4;
}

- (id)p_activityItemPropertySource
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1C3F00;
  v3[3] = &unk_45EE50;
  v3[4] = self;
  return [v3 copy];
}

- (id)modelStorageAnchorForCfi:(id)cfi error:(id *)error
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {

    return [(THDocumentRoot *)self modelStorageAnchorForCfi:cfi shallow:0 error:error];
  }

  return result;
}

- (id)contentNodeForCfi:(id)cfi error:(id *)error
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {
    v8 = [(THDocumentRoot *)self modelStorageAnchorForCfi:cfi shallow:1 error:error];

    return [v8 contentNode];
  }

  return result;
}

- (id)anchorForCFIString:(id)string coarsenIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    reflowablePaginationController = [(THDocumentRoot *)self reflowablePaginationController];
    result = 0;
    if (!string || !reflowablePaginationController)
    {
      return result;
    }
  }

  else if (!string)
  {
    return 0;
  }

  result = [(THDocumentRoot *)self modelStorageAnchorForCfi:string error:0];
  if (!result && neededCopy)
  {
    cfiString = [THSimpleCFI pathStringFromFragment:string];
    while (1)
    {
      result = [(__CFString *)cfiString length];
      if (!result)
      {
        break;
      }

      v10 = [[THSimpleCFI simpleCFIWithString:?]];
      if (v10)
      {
        cfiString = [v10 cfiString];
        result = [(THDocumentRoot *)self modelStorageAnchorForCfi:[THSimpleCFI error:"fragmentFromPathString:" fragmentFromPathString:cfiString], 0];
        if (result)
        {
          return result;
        }
      }

      else
      {
        cfiString = &stru_471858;
      }
    }
  }

  return result;
}

- (id)anchorForNthInstance:(unint64_t)instance ofSearchString:(id)string afterCFIString:(id)iString coarsenIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  objc_opt_class();
  [(THDocumentRoot *)self anchorForCFIString:iString coarsenIfNeeded:neededCopy];
  v11 = TSUDynamicCast();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if ([v11 contentNode])
  {
    [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
    contentNode = [v12 contentNode];

    return [contentNode storageAnchorAfterAnchor:v12 forNthInstance:instance ofSearchString:string presentationType:?];
  }

  if (![v12 glossaryEntry])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  glossaryEntry = [v12 glossaryEntry];

  return [glossaryEntry storageAnchorAfterAnchor:v12 forNthInstance:instance ofSearchString:string];
}

- (unint64_t)absolutePageIndexForCFI:(id)i
{
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]&& ![(THDocumentRoot *)self reflowablePaginationController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  v5 = [(THDocumentRoot *)self modelStorageAnchorForCfi:i error:&v10];
  if (!v5)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THDocumentRoot(CFI) absolutePageIndexForCFI:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_CFI.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:113 description:{@"failed to lookup anchor for CFI %@ with error: %@", i, objc_msgSend(v10, "localizedDescription")}];
  }

  return [(THDocumentRoot *)self absolutePageIndexForStorageAnchor:v5];
}

- (id)storageForCFI:(id)i
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {
    v13 = 0;
    v6 = [(THDocumentRoot *)self modelStorageAnchorForCfi:i error:&v13];
    if (v6)
    {
      v7 = v6;
      v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
      contentNode = [v7 contentNode];
      objc_opt_class();
      [contentNode infoForNodeUniqueID:objc_msgSend(v7 forPresentationType:{"storageUID"), v8}];
      return TSUDynamicCast();
    }

    else
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"[THDocumentRoot(CFI) storageForCFI:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_CFI.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:137 description:{@"failed to lookup anchor for CFI with error: %@", objc_msgSend(v13, "localizedDescription")}];
      return 0;
    }
  }

  return result;
}

@end