@interface THDocumentRoot
+ (void)p_populateParagraphStyle:(id)a3;
- (BOOL)isPortraitOnlyBook;
- (BOOL)loadEquationFontsIfNeeded;
- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)a3;
- (EQKitEnvironment)equationEnvironment;
- (NSDictionary)bookMetadata;
- (NSString)docVersion;
- (NSString)storeItemID;
- (NSString)yearFromReleaseDate;
- (NSURL)modelURL;
- (THDocumentRoot)initWithContext:(id)a3;
- (_NSRange)storageRangeForAnnotation:(id)a3;
- (id)activityItemProvider;
- (id)activityItemProviderWithAnnotation:(id)a3;
- (id)activityItemProviderWithAnnotations:(id)a3;
- (id)anchorForCFIString:(id)a3 coarsenIfNeeded:(BOOL)a4;
- (id)anchorForNthInstance:(unint64_t)a3 ofSearchString:(id)a4 afterCFIString:(id)a5 coarsenIfNeeded:(BOOL)a6;
- (id)annotationsUpdatedForSharing:(id)a3;
- (id)contentNodeForCfi:(id)a3 error:(id *)a4;
- (id)firstLessonOfChapter:(id)a3;
- (id)kpfDocumentBaseResourcePath;
- (id)linkForNavigationUnitIndex:(unint64_t)a3;
- (id)modelStorageAnchorForAnnotation:(id)a3;
- (id)modelStorageAnchorForCfi:(id)a3 error:(id *)a4;
- (id)newTemporaryReviewDataMOC;
- (id)newTemporateReviewResponseMOC;
- (id)p_activityItemPropertySource;
- (id)p_fetchResponseForQuestionID:(id)a3 moc:(id)a4;
- (id)p_fetchReviewWidgetDataForWidgetID:(id)a3 moc:(id)a4;
- (id)p_responseEntityWithMOC:(id)a3;
- (id)p_reviewEntityWithMOC:(id)a3;
- (id)pageNumberStringForAnnotation:(id)a3;
- (id)pageNumberStringForLocation:(id)a3;
- (id)responseForQuestionID:(id)a3 temporaryMOC:(id)a4;
- (id)reviewWidgetDataForWidgetID:(id)a3 temporaryMOC:(id)a4;
- (id)sectionNumberStringForLocation:(id)a3;
- (id)sectionTitleStringForAnnotation:(id)a3;
- (id)sectionTitleStringForLocation:(id)a3;
- (id)storageForAnnotation:(id)a3;
- (id)storageForCFI:(id)a3;
- (id)storageWithHighlightTextForAnnotation:(id)a3;
- (id)viewController;
- (unint64_t)absolutePageIndexForAnnotation:(id)a3;
- (unint64_t)absolutePageIndexForCFI:(id)a3;
- (unint64_t)absolutePageIndexForLocation:(id)a3;
- (unint64_t)absolutePageIndexForStorageAnchor:(id)a3;
- (void)commitUserDataChanges;
- (void)dealloc;
- (void)documentDidLoad;
- (void)mutateResponse:(id)a3 block:(id)a4;
- (void)mutateReviewWidgetData:(id)a3 block:(id)a4;
- (void)p_setupAnnotationControllerForBook:(id)a3;
- (void)removeResponse:(id)a3;
- (void)removeResponseForQuestionID:(id)a3;
- (void)removeReviewWidgetData:(id)a3;
- (void)removeReviewWidgetDataForWidgetID:(id)a3;
- (void)setAnnotationSearchIndex:(id)a3;
- (void)setApplePubDocId:(id)a3;
- (void)setGlossary:(id)a3;
- (void)setProperties:(id)a3;
- (void)setRootNode:(id)a3;
- (void)setSearchIndex:(id)a3;
- (void)setSearchModel:(id)a3;
- (void)setTocModel:(id)a3;
- (void)setZipPackage:(id)a3;
- (void)teardown;
- (void)willClose;
@end

@implementation THDocumentRoot

- (void)setRootNode:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mRootNode = a3;
}

- (void)setProperties:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mProperties = a3;
}

- (void)setApplePubDocId:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = [a3 copy];

  self->mApplePubDocId = v5;
}

- (void)setTocModel:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mTOCModel = a3;
}

- (void)setSearchModel:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mSearchModel = a3;
}

- (void)setZipPackage:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mZipPackage = a3;
}

- (void)setGlossary:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mGlossary = a3;
}

- (void)setSearchIndex:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mSearchIndex = a3;
}

- (void)setAnnotationSearchIndex:(id)a3
{
  [(THDocumentRoot *)self willModify];
  v5 = a3;

  self->mAnnotationSearchIndex = a3;
}

+ (void)p_populateParagraphStyle:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_20170;
  v3[3] = &unk_45B500;
  v3[4] = a3;
  [+[TSWPParagraphStyle properties](TSWPParagraphStyle "properties")];
}

- (THDocumentRoot)initWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = THDocumentRoot;
  v3 = [(THDocumentRoot *)&v8 initWithContext:a3];
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
  v3 = [(THDocumentRoot *)self searchController];
  if (![(THSearchController *)v3 indexLoaded])
  {
    [(THSearchController *)v3 cancelLoadIndex];
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

- (unint64_t)absolutePageIndexForStorageAnchor:(id)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [a3 contentNode];
  if ([(THDocumentRoot *)self reflowablePaginationController])
  {
    v6 = [(THReflowablePaginationController *)[(THDocumentRoot *)self reflowablePaginationController] paginationResultForContentNode:v5];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v8 = v6;
      if ([v6 firstPageIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v8 relativePageIndexForStorageAnchor:a3];
        v10 = [v8 firstPageIndex];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9;
        }

        return v11 + v10;
      }
    }

    return v7;
  }

  v12 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
  objc_opt_class();
  [v5 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID"), v12}];
  v13 = [v5 relativePageIndexForCharacterIndex:objc_msgSend(a3 forInfo:{"range"), TSUDynamicCast()}];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v7;
  }

  return [v5 absolutePageIndexForRelativePageIndex:v13 forPresentationType:v12];
}

- (unint64_t)absolutePageIndexForLocation:(id)a3
{
  v5 = [a3 pageIndex];
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    return v5;
  }

  v6 = +[THModelStorageAnchor storageAnchorWithContentNode:pageLocation:](THModelStorageAnchor, "storageAnchorWithContentNode:pageLocation:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [a3 contentNodeGUID]), a3);

  return [(THDocumentRoot *)self absolutePageIndexForStorageAnchor:v6];
}

- (id)kpfDocumentBaseResourcePath
{
  v2 = [(THAsset *)[(THBookDescription *)[(THDocumentRoot *)self bookDescription] asset] url];

  return [(NSURL *)v2 path];
}

- (id)pageNumberStringForLocation:(id)a3
{
  v4 = [(THDocumentRoot *)self absolutePageIndexForLocation:a3];
  v5 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  v6 = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)v6 pageNumberStringForAbsolutePageIndex:v4 forPresentationType:v5];
}

- (id)sectionTitleStringForLocation:(id)a3
{
  v5 = [a3 pageIndex];
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    v5 = -[THDocumentRoot absolutePageIndexForStorageAnchor:](self, "absolutePageIndexForStorageAnchor:", +[THModelStorageAnchor storageAnchorWithContentNode:pageLocation:](THModelStorageAnchor, "storageAnchorWithContentNode:pageLocation:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [a3 contentNodeGUID]), a3));
  }

  v6 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  v7 = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)v7 minorSnippetForAbsolutePageIndex:v5 withDocumentRoot:self forPresentationType:v6];
}

- (id)sectionNumberStringForLocation:(id)a3
{
  result = -[THDocumentNavigationModel navigationUnitContainingContentNode:](-[THDocumentRoot navigationModel](self, "navigationModel"), "navigationUnitContainingContentNode:", -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](self, "navigationModel"), "contentNodeForGUID:", [a3 contentNodeGUID]));
  if (result)
  {
    v5 = result;
    v6 = [(THDocumentRoot *)self navigationModel];

    return [(THDocumentNavigationModel *)v6 sectionIdentifierForNavigationUnit:v5];
  }

  return result;
}

- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v5 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)self rootNode] context]];
  v6 = [(THDocumentNavigationModel *)[(THDocumentRoot *)self navigationModel] navigationUnitContainingContentNode:[(THModelNode *)[(THDocumentRoot *)self rootNode] contentNodeForRelativePageIndex:a3 forPresentationType:v5]];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 relativePageIndexForAbsolutePageIndex:a3 forPresentationType:v5];
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
  v2 = [(THDocumentRoot *)self bookDescription];
  if (![(THBookDescription *)v2 authoredVersion]|| ![(THBookDescription *)v2 timestamp])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THBookDescription *)v2 timestamp]&& [(NSString *)[(THBookDescription *)v2 timestamp] length])
  {
    if ([(THBookDescription *)v2 authoredVersion]&& [(NSString *)[(THBookDescription *)v2 authoredVersion] length])
    {
      return [(NSString *)[(THBookDescription *)v2 authoredVersion] stringByAppendingFormat:@"@%@", [(THBookDescription *)v2 timestamp]];
    }

    else
    {
      v4 = [(THBookDescription *)v2 timestamp];

      return [@"@" stringByAppendingString:v4];
    }
  }

  else if ([(THBookDescription *)v2 authoredVersion]&& [(NSString *)[(THBookDescription *)v2 authoredVersion] length])
  {

    return [(THBookDescription *)v2 authoredVersion];
  }

  else
  {
    return @"0";
  }
}

- (NSURL)modelURL
{
  v3 = [(THDocumentRoot *)self bookDescription];
  if (![(THBookDescription *)v3 isbn]|| ![(THBookDescription *)v3 uniquifier]|| ![(THBookDescription *)v3 authoredVersion]|| ![(THBookDescription *)v3 timestamp])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THBookDescription *)v3 isbn])
  {
    v4 = [(THBookDescription *)v3 isbn];
  }

  else
  {
    v4 = @"0";
  }

  if ([(THBookDescription *)v3 uniquifier])
  {
    v5 = [(THBookDescription *)v3 uniquifier];
  }

  else
  {
    v5 = @"0";
  }

  v6 = [NSString stringWithFormat:@"apub:///%@/%@/%@", v4, v5, [(THDocumentRoot *)self docVersion]];

  return [NSURL URLWithString:v6];
}

- (BOOL)isPortraitOnlyBook
{
  v2 = [(THDocumentProperties *)[(THDocumentRoot *)self properties] chapterBrowserPagePresentationType];
  [(THPresentationType *)v2 pageSize];
  v4 = v3;
  [(THPresentationType *)v2 pageSize];
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

  v3 = [(THDocumentRoot *)self equationEnvironment];

  return [(EQKitEnvironment *)v3 fontsLoaded];
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
  v3 = [(THAsset *)[(THBookDescription *)[(THDocumentRoot *)self bookDescription] asset] assetID];
  if (self->mBookUserDefaults)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mBookUserDefaults = [[THBookUserDefaults alloc] initWithBookID:v3];
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

  v5 = [(THUserDataManager *)self->mUserDataManager newManagedObjectContext];
  self->mMOC = v5;
  if (!v5)
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
  v6 = [(THBookDescription *)[(THDocumentRoot *)self bookDescription] drmContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_21B30;
  v7[3] = &unk_45B568;
  v7[4] = [(THBookDescription *)[(THDocumentRoot *)self bookDescription] bookBundleUrl];
  v7[5] = v6;
  [THWWebRep enumerateSubdomainsOfHost:[(THBookDescription *)[(THDocumentRoot *)self bookDescription] annotationID] usingBlock:v7];
  [+[BEDocumentExternalLoadApprovalCache sharedInstance](BEDocumentExternalLoadApprovalCache removeCachedDisapprovalForBookID:"removeCachedDisapprovalForBookID:", v3];
}

- (id)firstLessonOfChapter:(id)a3
{
  objc_opt_class();
  [a3 nodeAtIndex:0];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v4;
}

- (id)linkForNavigationUnitIndex:(unint64_t)a3
{
  v4 = [(THDocumentRoot *)self navigationModel];

  return [(THDocumentNavigationModel *)v4 linkForNavigationUnitIndex:a3];
}

- (void)p_setupAnnotationControllerForBook:(id)a3
{
  v5 = [objc_msgSend(a3 "asset")];
  v6 = [objc_msgSend(a3 "asset")];
  if (![(THDocumentRoot *)self properties])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [(THDocumentProperties *)[(THDocumentRoot *)self properties] bookVersion];
  v8 = +[THAnnotationSerializationManager annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:](THAnnotationSerializationManager, "annotationSerializationManagerWithAssetID:assetURL:bookVersionString:pathToAssetContextDirectory:isManagedBook:", v5, v6, -[THBookVersion versionString](v7, "versionString"), [a3 contextDirectoryPath], objc_msgSend(objc_msgSend(a3, "asset"), "isManagedBook"));
  if (![(THDocumentRoot *)self suppliedAnnotationProvider])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = [(THDocumentRoot *)self suppliedAnnotationProvider];
  v10 = [[THAnnotationController alloc] initWithAnnotationProvider:v9 documentNavigationModel:[(THDocumentRoot *)self navigationModel]];
  if ((-[THAnnotationSerializationManager isAssetOfflineWithAssetID:](v8, "isAssetOfflineWithAssetID:", v5) & 1) != 0 || (-[THAnnotationSerializationManager takeBookOfflineIfManagedWithAnnotationProvider:assetID:](v8, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", v9, v5) & 1) != 0 || -[THAnnotationSerializationManager wentOfflineAfterHandleAnnotationProvider:willEncounterAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:copyIfGoingOffline:](v8, "wentOfflineAfterHandleAnnotationProvider:willEncounterAnnotationAssetVersion:assetAssetVersion:assetID:assetURL:copyIfGoingOffline:", v9, -[THAnnotationController maxAnnotationAssetVersion](v10, "maxAnnotationAssetVersion"), v7, v5, [objc_msgSend(a3 "asset")], 0))
  {
    v11 = [[THAnnotationController alloc] initWithAnnotationProvider:[(THAnnotationSerializationManager *)v8 annotationProviderForOfflineDBWithAssetID:v5] documentNavigationModel:[(THDocumentRoot *)self navigationModel]];
    v12 = &dword_0 + 1;
    [(THAnnotationController *)v11 setAnnotationsReadEnabled:1];
    if (![(THDocumentProperties *)[(THDocumentRoot *)self properties] isPreview])
    {
      v12 = [objc_msgSend(a3 "asset")];
    }

    [(THAnnotationController *)v11 setAnnotationsWriteEnabled:v12];
    [(THAnnotationController *)v10 teardown];
  }

  else
  {
    v11 = v10;
  }

  [(THDocumentRoot *)self setAnnotationController:v11];
  v13 = [(THBookVersion *)v7 versionString];

  [(THAnnotationSerializationManager *)v8 removeOfflineDBFilesWithAssetID:v5 exceptBookVersionString:v13];
}

- (void)mutateReviewWidgetData:(id)a3 block:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a2);
  }

  [a3 setModificationDate:{+[NSDate date](NSDate, "date")}];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeReviewWidgetData:(id)a3
{
  [(NSManagedObjectContext *)[(THDocumentRoot *)self moc] deleteObject:a3];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeReviewWidgetDataForWidgetID:(id)a3
{
  v4 = [(THDocumentRoot *)self p_fetchReviewWidgetDataForWidgetID:a3 moc:[(THDocumentRoot *)self moc]];

  [(THDocumentRoot *)self removeReviewWidgetData:v4];
}

- (id)p_reviewEntityWithMOC:(id)a3
{
  if (a3)
  {
    v5 = kTSWReviewWidgetDataEntityName;

    return [NSEntityDescription entityForName:v5 inManagedObjectContext:a3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (id)reviewWidgetDataForWidgetID:(id)a3 temporaryMOC:(id)a4
{
  if (a4)
  {

    return [THDocumentRoot p_fetchReviewWidgetDataForWidgetID:"p_fetchReviewWidgetDataForWidgetID:moc:" moc:?];
  }

  else
  {
    v7 = [(THDocumentRoot *)self p_fetchReviewWidgetDataForWidgetID:a3 moc:[(THDocumentRoot *)self moc]];
    if (!v7)
    {
      v8 = [(THDocumentRoot *)self moc];
      v9 = [(THDocumentRoot *)self p_reviewEntityWithMOC:v8];
      if (v8 && v9)
      {
        v7 = [[TSWReviewWidgetData alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
        [(TSWReviewWidgetData *)v7 setUniqueID:a3];
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
  v2 = [(THDocumentRoot *)self userDataManager];

  return [(THUserDataManager *)v2 newManagedObjectContext];
}

- (id)p_fetchReviewWidgetDataForWidgetID:(id)a3 moc:(id)a4
{
  if (!a4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a3)
    {
      return 0;
    }

LABEL_10:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v7 = objc_alloc_init(NSFetchRequest);
  [v7 setEntity:{-[THDocumentRoot p_reviewEntityWithMOC:](self, "p_reviewEntityWithMOC:", a4)}];
  [v7 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"uniqueID LIKE %@", a3)}];
  v13 = 0;
  v8 = [a4 executeFetchRequest:v7 error:&v13];
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

- (void)mutateResponse:(id)a3 block:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a2);
  }

  [a3 setModificationDate:{+[NSDate date](NSDate, "date")}];
  [(THDocumentRoot *)self mutateReviewWidgetData:[(THDocumentRoot *)self p_reviewWidgetDataForResponse:a3] block:0];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeResponse:(id)a3
{
  [(NSManagedObjectContext *)[(THDocumentRoot *)self moc] deleteObject:a3];

  [(THDocumentRoot *)self commitUserDataChanges];
}

- (void)removeResponseForQuestionID:(id)a3
{
  v4 = [(THDocumentRoot *)self p_fetchResponseForQuestionID:a3 moc:[(THDocumentRoot *)self moc]];
  if (v4)
  {

    [(THDocumentRoot *)self removeResponse:v4];
  }
}

- (id)p_responseEntityWithMOC:(id)a3
{
  if (a3)
  {
    v5 = kTSWReviewResponseEntityName;

    return [NSEntityDescription entityForName:v5 inManagedObjectContext:a3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (id)p_fetchResponseForQuestionID:(id)a3 moc:(id)a4
{
  v7 = objc_alloc_init(NSFetchRequest);
  [v7 setEntity:{-[THDocumentRoot p_responseEntityWithMOC:](self, "p_responseEntityWithMOC:", a4)}];
  [v7 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"uniqueID LIKE %@", a3)}];
  v13 = 0;
  v8 = [a4 executeFetchRequest:v7 error:&v13];
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

- (id)responseForQuestionID:(id)a3 temporaryMOC:(id)a4
{
  if (a4)
  {

    return [THDocumentRoot p_fetchResponseForQuestionID:"p_fetchResponseForQuestionID:moc:" moc:?];
  }

  else
  {
    v7 = [(THDocumentRoot *)self p_fetchResponseForQuestionID:a3 moc:[(THDocumentRoot *)self moc]];
    if (!v7)
    {
      v8 = [(THDocumentRoot *)self moc];
      v9 = [(THDocumentRoot *)self p_responseEntityWithMOC:v8];
      if (v8 && v9)
      {
        v7 = [[TSWReviewResponse alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
        [(TSWReviewResponse *)v7 setUniqueID:a3];
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
  v2 = [(THDocumentRoot *)self userDataManager];

  return [(THUserDataManager *)v2 newManagedObjectContext];
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

- (id)modelStorageAnchorForAnnotation:(id)a3
{
  v4 = [a3 annotationLocation];

  return [(THDocumentRoot *)self modelStorageAnchorForCfi:v4 error:0];
}

- (unint64_t)absolutePageIndexForAnnotation:(id)a3
{
  v5 = TSUProtocolCast();
  if ([(THDocumentRoot *)self reflowablePaginationController])
  {
    v14 = 0;
    v6 = -[THDocumentRoot modelStorageAnchorForCfi:error:](self, "modelStorageAnchorForCfi:error:", [a3 annotationLocation], &v14);
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
    v11 = [v5 annotationAbsolutePhysicalPageIndex];
    if (v5)
    {
      v12 = v11 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if ([a3 annotationLocation])
      {
        v13 = [a3 annotationLocation];

        return [(THDocumentRoot *)self absolutePageIndexForCFI:v13];
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

- (id)pageNumberStringForAnnotation:(id)a3
{
  v4 = [(THDocumentRoot *)self absolutePageIndexForAnnotation:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = THBundle();

    return [v5 localizedStringForKey:@"-" value:&stru_471858 table:0];
  }

  else
  {
    v7 = v4;
    v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
    v9 = [(THDocumentRoot *)self navigationModel];

    return [(THDocumentNavigationModel *)v9 pageNumberStringForAbsolutePageIndex:v7 forPresentationType:v8];
  }
}

- (id)sectionTitleStringForAnnotation:(id)a3
{
  v3 = [objc_msgSend(-[THDocumentRoot modelStorageAnchorForAnnotation:](self modelStorageAnchorForAnnotation:{a3), "contentNode"), "title"}];
  v4 = +[NSCharacterSet whitespaceCharacterSet];

  return [v3 stringByTrimmingCharactersInSet:v4];
}

- (id)storageForAnnotation:(id)a3
{
  result = [a3 annotationLocation];
  if (result)
  {
    v6 = [a3 annotationLocation];

    return [(THDocumentRoot *)self storageForCFI:v6];
  }

  return result;
}

- (_NSRange)storageRangeForAnnotation:(id)a3
{
  v3 = TSUProtocolCast();
  if (v3)
  {

    v4 = [v3 annotationStorageRange];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (id)storageWithHighlightTextForAnnotation:(id)a3
{
  v5 = [(THDocumentRoot *)self storageForAnnotation:?];
  v6 = [(THDocumentRoot *)self storageRangeForAnnotation:a3];
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
  v15 = [(THDocumentRoot *)self context];
  if (!v5 || v9 > v13 || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = -[THWPStorage initTemporaryWithContext:string:](v14, "initTemporaryWithContext:string:", v15, [a3 annotationSelectedText]);
  }

  else
  {
    v16 = [(THWPStorage *)v14 initTemporaryWithContext:v15 storage:v5 range:v6, v8];
  }

  v17 = v16;
  [v17 replaceListLabelTypeNumberWithBullet];
  return v17;
}

- (id)annotationsUpdatedForSharing:(id)a3
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(a3);
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
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)activityItemProviderWithAnnotation:(id)a3
{
  v4 = [[AEAssetActivityItemProvider alloc] initWithAnnotation:a3 propertySource:{-[THDocumentRoot p_activityItemPropertySource](self, "p_activityItemPropertySource")}];
  [v4 setCitationsAllowed:{-[THBookDescription allowCopy](-[THDocumentRoot bookDescription](self, "bookDescription"), "allowCopy")}];
  return v4;
}

- (id)activityItemProviderWithAnnotations:(id)a3
{
  v4 = [[AEAssetActivityItemProvider alloc] initWithAnnotations:a3 propertySource:{-[THDocumentRoot p_activityItemPropertySource](self, "p_activityItemPropertySource")}];
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

- (id)modelStorageAnchorForCfi:(id)a3 error:(id *)a4
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {

    return [(THDocumentRoot *)self modelStorageAnchorForCfi:a3 shallow:0 error:a4];
  }

  return result;
}

- (id)contentNodeForCfi:(id)a3 error:(id *)a4
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {
    v8 = [(THDocumentRoot *)self modelStorageAnchorForCfi:a3 shallow:1 error:a4];

    return [v8 contentNode];
  }

  return result;
}

- (id)anchorForCFIString:(id)a3 coarsenIfNeeded:(BOOL)a4
{
  v4 = a4;
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub])
  {
    v7 = [(THDocumentRoot *)self reflowablePaginationController];
    result = 0;
    if (!a3 || !v7)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  result = [(THDocumentRoot *)self modelStorageAnchorForCfi:a3 error:0];
  if (!result && v4)
  {
    v9 = [THSimpleCFI pathStringFromFragment:a3];
    while (1)
    {
      result = [(__CFString *)v9 length];
      if (!result)
      {
        break;
      }

      v10 = [[THSimpleCFI simpleCFIWithString:?]];
      if (v10)
      {
        v9 = [v10 cfiString];
        result = [(THDocumentRoot *)self modelStorageAnchorForCfi:[THSimpleCFI error:"fragmentFromPathString:" fragmentFromPathString:v9], 0];
        if (result)
        {
          return result;
        }
      }

      else
      {
        v9 = &stru_471858;
      }
    }
  }

  return result;
}

- (id)anchorForNthInstance:(unint64_t)a3 ofSearchString:(id)a4 afterCFIString:(id)a5 coarsenIfNeeded:(BOOL)a6
{
  v6 = a6;
  objc_opt_class();
  [(THDocumentRoot *)self anchorForCFIString:a5 coarsenIfNeeded:v6];
  v11 = TSUDynamicCast();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if ([v11 contentNode])
  {
    [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
    v13 = [v12 contentNode];

    return [v13 storageAnchorAfterAnchor:v12 forNthInstance:a3 ofSearchString:a4 presentationType:?];
  }

  if (![v12 glossaryEntry])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v14 = [v12 glossaryEntry];

  return [v14 storageAnchorAfterAnchor:v12 forNthInstance:a3 ofSearchString:a4];
}

- (unint64_t)absolutePageIndexForCFI:(id)a3
{
  if ([(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]&& ![(THDocumentRoot *)self reflowablePaginationController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  v5 = [(THDocumentRoot *)self modelStorageAnchorForCfi:a3 error:&v10];
  if (!v5)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THDocumentRoot(CFI) absolutePageIndexForCFI:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THDocumentRoot_CFI.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:113 description:{@"failed to lookup anchor for CFI %@ with error: %@", a3, objc_msgSend(v10, "localizedDescription")}];
  }

  return [(THDocumentRoot *)self absolutePageIndexForStorageAnchor:v5];
}

- (id)storageForCFI:(id)a3
{
  if (![(THBookDescription *)[(THDocumentRoot *)self bookDescription] isEpub]|| (result = [(THDocumentRoot *)self reflowablePaginationController]) != 0)
  {
    v13 = 0;
    v6 = [(THDocumentRoot *)self modelStorageAnchorForCfi:a3 error:&v13];
    if (v6)
    {
      v7 = v6;
      v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)self context]];
      v9 = [v7 contentNode];
      objc_opt_class();
      [v9 infoForNodeUniqueID:objc_msgSend(v7 forPresentationType:{"storageUID"), v8}];
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