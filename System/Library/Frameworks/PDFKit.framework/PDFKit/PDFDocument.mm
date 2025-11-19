@interface PDFDocument
+ (BOOL)pdfDocumentAppendModeActiveForThisThread;
+ (id)_getDocumentID:(CGPDFDocument *)a3;
+ (void)setPDFDocumentAppendModeActiveForThisThread:(BOOL)a3;
- (BOOL)_isCommonlyMappedToNothing:(id)a3;
- (BOOL)_isNonAsciiSpace:(id)a3;
- (BOOL)_writeAppendMode:(CGDataConsumer *)a3;
- (BOOL)bookmarksChanged;
- (BOOL)callDelegateHandleTabFrom:(id)a3 direction:(unint64_t)a4;
- (BOOL)callShouldReadAKInkAnnotations;
- (BOOL)canSaveWithAppendModeUsingOptions:(id)a3;
- (BOOL)canSaveWithTextFromOCR;
- (BOOL)documentChanged;
- (BOOL)findOnPage;
- (BOOL)hasHighLatencyDataProvider;
- (BOOL)isLinearized;
- (BOOL)unlockWithPassword:(NSString *)password;
- (BOOL)validateRedo:(id)a3;
- (BOOL)validateUndo:(id)a3;
- (BOOL)viewPreferenceRightToLeft;
- (BOOL)writeToConsumer:(CGDataConsumer *)a3 withOptions:(id)a4;
- (BOOL)writeToFile:(NSString *)path withOptions:(NSDictionary *)options;
- (BOOL)writeToURL:(NSURL *)url withOptions:(NSDictionary *)options;
- (CGPDFAnnotation)_createCGPDFAnnotationForAnnotation:(id)a3;
- (CGPDFName)_convertCFStringToCGPDFName:(void *)a3 forKey:(__CFString *)a4;
- (CGRect)normalizedBoundsForBox:(int64_t)a3 ofPageAtIndex:(unint64_t)a4;
- (Class)annotationSubclassForType:(id)a3;
- (NSArray)findString:(NSString *)string withOptions:(NSStringCompareOptions)options;
- (NSData)dataRepresentation;
- (NSData)dataRepresentationWithOptions:(NSDictionary *)options;
- (NSDictionary)documentAttributes;
- (NSString)string;
- (NSUInteger)indexForPage:(PDFPage *)page;
- (PDFDocument)init;
- (PDFDocument)initWithData:(NSData *)data;
- (PDFDocument)initWithProvider:(CGDataProvider *)a3;
- (PDFDocument)initWithURL:(NSURL *)url;
- (PDFOutline)outlineItemForSelection:(PDFSelection *)selection;
- (PDFOutline)outlineRoot;
- (PDFPage)pageAtIndex:(NSUInteger)index;
- (PDFSelection)findString:(NSString *)string fromSelection:(PDFSelection *)selection withOptions:(NSStringCompareOptions)options;
- (PDFSelection)selectionForEntireDocument;
- (PDFSelection)selectionFromPage:(PDFPage *)startPage atCharacterIndex:(NSUInteger)startCharacter toPage:(PDFPage *)endPage atCharacterIndex:(NSUInteger)endCharacter;
- (__CFData)newXMPFromData:(id)a3 preserveExistingXMPMetadata:(BOOL)a4;
- (__CFDictionary)_createInfoDictionary;
- (id)PDFAKControllerDelegate;
- (id)_SASLSanitize:(id)a3;
- (id)_addEncryptionFromOptions:(id)a3;
- (id)_bookmarksCatalog;
- (id)_convertWriteOptions:(id)a3;
- (id)_dataFromXMP:(__CFData *)a3 withRootPath:(id)a4 keys:(id)a5;
- (id)_documentCatalogMetadataForRootPath:(id)a3 withKeys:(id)a4;
- (id)_findString:(id)a3 fromSelection:(id)a4 withOptions:(unint64_t)a5;
- (id)_getNearestOutline:(id)a3 forDestination:(id)a4;
- (id)_namedDestination:(id)a3 forNameDictionary:(CGPDFDictionary *)a4;
- (id)_rawPageAtIndex:(unint64_t)a3;
- (id)akDocumentAdaptor;
- (id)annotationsForFieldName:(id)a3;
- (id)bookmarkedPages;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delegate;
- (id)findPageWithCGPDFDictionaryPageRef:(CGPDFDictionary *)a3;
- (id)findStringPerPage:(id)a3 fromSelection:(id)a4 withOptions:(unint64_t)a5;
- (id)findStrings:(id)a3 withinSelection:(id)a4 withOptions:(unint64_t)a5;
- (id)formData;
- (id)formFillingQueue;
- (id)linearizedRangesForPage:(id)a3;
- (id)namedDestination:(id)a3;
- (id)pageAfter:(id)a3;
- (id)pageAnnotationChanges;
- (id)pageBefore:(id)a3;
- (id)passwordUsedForUnlocking;
- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 type:(int)a7;
- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 type:(int)a7 withClampedRange:(id)a8 withCellRect:(CGRect)a9;
- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 withGranularity:(unint64_t)a7;
- (id)textExtractionQueue;
- (id)textPositionFromPage:(id)a3 atCharacterIndex:(unint64_t)a4 offset:(int64_t)a5;
- (void)_commonInit;
- (void)_createDocumentWithDataProvider:(CGDataProvider *)a3;
- (void)_notifyAKAdaptorPagePlaceholder:(id)a3 wasReplacedWithPage:(id)a4 atIndex:(unint64_t)a5;
- (void)_sanitizeAnnotationArray:(__CFArray *)a3;
- (void)_sanitizeAnnotationDictionary:(__CFDictionary *)a3;
- (void)_setDocumentCatalogMetadata:(id)a3 withNSpace:(id)a4 prefix:(id)a5 rootPath:(id)a6;
- (void)asyncFindString:(id)a3 withDelegate:(id)a4 onQueue:(id)a5;
- (void)asyncFindStrings:(id)a3 withOptions:(unint64_t)a4 withDelegate:(id)a5 onQueue:(id)a6;
- (void)beginFindString:(NSString *)string withOptions:(NSStringCompareOptions)options;
- (void)beginFindStrings:(NSArray *)strings withOptions:(NSStringCompareOptions)options;
- (void)callDelegateDidReceiveAnalysis:(id)a3 forPage:(id)a4;
- (void)cancelFindString;
- (void)cleanupFind;
- (void)coreFindString:(id)a3;
- (void)coreFindStrings:(id)a3;
- (void)dealloc;
- (void)decrementRedactionCount;
- (void)didMatchString:(id)a3;
- (void)enableDocumentMRUMode:(BOOL)a3;
- (void)endBatchPageChanges;
- (void)exchangePageAtIndex:(NSUInteger)indexA withPageAtIndex:(NSUInteger)indexB;
- (void)incrementRedactionCount;
- (void)insertPage:(PDFPage *)page atIndex:(NSUInteger)index;
- (void)preloadDataOfPagesInRange:(_NSRange)a3 onQueue:(id)a4 completion:(id)a5;
- (void)redo:(id)a3;
- (void)removePageAtIndex:(NSUInteger)index;
- (void)requirePasswordsIfNeededUsingPresentingViewController:(id)a3 completion:(id)a4;
- (void)resetFormFields:(id)a3;
- (void)resetPageAnnotationChanges;
- (void)revert;
- (void)scheduledFindOnPage:(id)a3;
- (void)setBookmarked:(BOOL)a3 atPageIndex:(unint64_t)a4;
- (void)setDelegate:(id)delegate;
- (void)setDocument:(CGPDFDocument *)a3;
- (void)setDocumentAttributes:(NSDictionary *)documentAttributes;
- (void)setHasHighLatencyDataProvider:(BOOL)a3;
- (void)setOutlineRoot:(PDFOutline *)outlineRoot;
- (void)setPDFAKControllerDelegate:(id)a3;
- (void)setupAKDocumentAdaptorIfNecessaryWithView:(id)a3;
- (void)undo:(id)a3;
- (void)updateBookmarksInPDFDocument;
@end

@implementation PDFDocument

- (void)_commonInit
{
  self->_pageCount = CGPDFDocumentGetNumberOfPages(self->_document);
  document = self->_document;
  if (document)
  {
    self->_isEncrypted = CGPDFDocumentIsEncrypted(document);
    self->_isUnlocked = CGPDFDocumentIsUnlocked(self->_document);
    AccessPermissions = CGPDFDocumentGetAccessPermissions(self->_document);
    self->_accessPermissions = AccessPermissions;
    self->_allowsPrinting = (AccessPermissions & 3) != 0;
    self->_allowsCopying = (AccessPermissions & 0x10) != 0;
    v5 = *&vshl_u16((*&vdup_n_s16(AccessPermissions) & 0xFF00FF00FF00FFLL), 0xFFFAFFFBFFFDFFFELL) & 0xFF01FF01FF01FF01;
    v6 = (AccessPermissions >> 7) & 1;
    document = self->_document;
  }

  else
  {
    *&self->_isEncrypted = 256;
    *&self->_allowsPrinting = 257;
    self->_accessPermissions = 255;
    v5 = 0x1000100010001;
    LOBYTE(v6) = 1;
  }

  *&self->_allowsDocumentChanges = vuzp1_s8(v5, v5).u32[0];
  self->_allowsFormFieldEntry = v6;
  *minorVersion = 0;
  CGPDFDocumentGetVersion(document, &minorVersion[1], minorVersion);
  v7 = minorVersion[0];
  self->_majorVersion = minorVersion[1];
  self->_minorVersion = v7;
  ownerPassword = self->_ownerPassword;
  self->_ownerPassword = 0;

  userPassword = self->_userPassword;
  self->_userPassword = 0;

  attributes = self->_attributes;
  self->_attributes = 0;

  outline = self->_outline;
  self->_outline = 0;

  textExtractionQueue = self->_textExtractionQueue;
  self->_textExtractionQueue = 0;

  formData = self->_formData;
  self->_formData = 0;

  self->_formDataLoaded = 0;
  self->_finding = 0;
  self->_findModel = 0;
  findStrings = self->_findStrings;
  self->_findStrings = 0;

  findInstance = self->_findInstance;
  self->_findInstance = 0;

  self->_findOptions = 0;
  self->_findPageIndex = 0;
  *&self->_findCharIndex = xmmword_1C1D79EC0;
  self->_lastFindCharIndex = -1;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  findResults = self->_findResults;
  self->_findResults = v16;

  *&self->_documentChanged = 0;
  self->_documentRedactionCount = 0;
  *(&self->_documentRedactionCount + 5) = 0;
  v18 = objc_alloc_init(MEMORY[0x1E696AC90]);
  initialBookmarkedPageIndices = self->_initialBookmarkedPageIndices;
  self->_initialBookmarkedPageIndices = v18;

  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  bookmarkedPages = self->_bookmarkedPages;
  self->_bookmarkedPages = v20;

  [(PDFDocument *)self setDelegate:0];
  v22 = [PDFDocument instanceMethodForSelector:sel_pageAtIndex_];
  self->_subclassOverridesPageAtIndex = v22 != [(PDFDocument *)self methodForSelector:sel_pageAtIndex_];
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_pageCount];
  pages = self->_pages;
  self->_pages = v23;

  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_pageCount];
  pageIndices = self->_pageIndices;
  self->_pageIndices = v25;

  if (self->_pageCount)
  {
    v27 = 0;
    do
    {
      v28 = v27 + 1;
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v27 + 1];
      [(NSMutableArray *)self->_pages addObject:v29];
      v30 = self->_pageIndices;
      v31 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v32 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [(NSMutableDictionary *)v30 setObject:v31 forKey:v32];

      v27 = v28;
    }

    while (self->_pageCount > v28);
  }

  v33 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
  pagesOrderedSet = self->_pagesOrderedSet;
  self->_pagesOrderedSet = v33;

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pageDictionaryIndices = self->_pageDictionaryIndices;
  self->_pageDictionaryIndices = v35;

  v37 = objc_opt_new();
  preloadingPageIndexes = self->_preloadingPageIndexes;
  self->_preloadingPageIndexes = v37;

  if (self->_isEncrypted)
  {
    if (!self->_isUnlocked)
    {
      self->_permission = 0;
      goto LABEL_13;
    }

    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  self->_permission = v39;
LABEL_13:
  documentCatalogMetadata = self->_documentCatalogMetadata;
  self->_documentCatalogMetadata = 0;

  xmpNameSpace = self->_xmpNameSpace;
  self->_xmpNameSpace = 0;

  xmpPrefix = self->_xmpPrefix;
  self->_xmpPrefix = 0;

  xmpRootPath = self->_xmpRootPath;
  self->_xmpRootPath = 0;

  if (![(PDFDocument *)self isLinearized]|| ![(PDFDocument *)self hasHighLatencyDataProvider])
  {
    v44 = [(PDFDocument *)self _documentCatalogMetadataForRootPath:@"apple-preview:Bookmarks" withKeys:&unk_1F4183F58];
  }

  self->_limitedSearch = 0;
  v45 = objc_alloc_init(PDFRenderingProperties);
  renderingProperties = self->_renderingProperties;
  self->_renderingProperties = v45;

  asyncSearchQueue = self->_asyncSearchQueue;
  self->_asyncSearchQueue = 0;

  formFillingQueue = self->_formFillingQueue;
  self->_formFillingQueue = 0;

  self->_dataDetectorsEnabled = 1;
  accessibilityPageElements = self->_accessibilityPageElements;
  self->_accessibilityPageElements = 0;

  objc_storeWeak(&self->_accessibilityPageElementsParent, 0);
}

- (void)setupAKDocumentAdaptorIfNecessaryWithView:(id)a3
{
  v16 = a3;
  if (self->_akDocumentAdaptor)
  {
    v4 = [(PDFDocument *)self akDocumentAdaptor];
    [v4 setPdfView:v16];

    [v16 setPageOverlayViewProvider:self->_akPageOverlayViewProvider];
  }

  else
  {
    v5 = [[PDFAKDocumentAdaptor alloc] initWithPDFDocument:self andView:v16];
    akDocumentAdaptor = self->_akDocumentAdaptor;
    self->_akDocumentAdaptor = v5;

    v7 = [PDFAKPageOverlayViewProvider alloc];
    v8 = [(PDFAKDocumentAdaptor *)v5 akMainController];
    v9 = [(PDFAKPageOverlayViewProvider *)v7 initWithPDFDocument:self pdfView:v16 andAKController:v8];
    akPageOverlayViewProvider = self->_akPageOverlayViewProvider;
    self->_akPageOverlayViewProvider = v9;

    [v16 setPageOverlayViewProvider:self->_akPageOverlayViewProvider];
    WeakRetained = objc_loadWeakRetained(&self->_pdfAKControllerDelegateForDeferredSetup);
    if (WeakRetained)
    {
      [(PDFAKDocumentAdaptor *)v5 setPDFAKControllerDelegate:WeakRetained];
      objc_storeWeak(&self->_pdfAKControllerDelegateForDeferredSetup, 0);
    }

    v12 = self->_pages;
    objc_sync_enter(v12);
    v13 = [(PDFDocument *)self pageCount];
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = [(PDFDocument *)self _rawPageAtIndex:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 setupAKPageAdaptorIfNecessary];
          [(PDFAKDocumentAdaptor *)v5 pdfDocument:self didInsertPage:v15 atIndex:i];
        }
      }
    }

    objc_sync_exit(v12);
  }
}

- (BOOL)_isCommonlyMappedToNothing:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"­"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"­") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"᠆") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"᠋") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"᠌") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"᠍") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"​") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"‌") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"‍") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"⁠") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︀") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︁") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︂") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︃") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︄") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︅") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︆") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︇") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︈") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︉") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︊") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︋") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︌") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︍") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"︎") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"️"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"﻿"];
  }

  return v4;
}

- (BOOL)_isNonAsciiSpace:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@" "] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"​") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @" "))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"　"];
  }

  return v4;
}

- (id)_SASLSanitize:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = 0;
    v6 = &stru_1F416DF70;
    do
    {
      v7 = [v4 rangeOfComposedCharacterSequenceAtIndex:v5];
      if (!v8)
      {
        break;
      }

      v9 = [v4 substringWithRange:{v7, v8}];
      if (![(PDFDocument *)self _isCommonlyMappedToNothing:v9])
      {
        if ([(PDFDocument *)self _isNonAsciiSpace:v9])
        {
          v10 = v6;
          v11 = @" ";
        }

        else
        {
          v10 = v6;
          v11 = v9;
        }

        v12 = [(__CFString *)v10 stringByAppendingString:v11];

        v6 = v12;
      }

      ++v5;
    }

    while ([v4 length] > v5);
  }

  else
  {
    v6 = &stru_1F416DF70;
  }

  v13 = [(__CFString *)v6 decomposedStringWithCompatibilityMapping];

  return v13;
}

- (id)_getNearestOutline:(id)a3 forDestination:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    v23 = v7;
    goto LABEL_15;
  }

  v26 = v6;
  v9 = [v6 page];
  v10 = [v9 document];
  v25 = v9;
  v11 = [v10 indexForPage:v9];

  v12 = [v8 numberOfChildren];
  v13 = v8;
  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = v12;
  v15 = 0;
  v13 = v8;
  while (1)
  {
    v16 = [v8 childAtIndex:v15];
    if (v16)
    {
      break;
    }

LABEL_10:
    if (v14 == ++v15)
    {
      goto LABEL_14;
    }
  }

  v17 = v16;
  v18 = [v16 destination];
  if (!v18)
  {
    v19 = v17;
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 page];
  v21 = [v20 document];
  v22 = [v21 indexForPage:v20];

  if (v22 <= v11)
  {

    v13 = v17;
LABEL_9:

    goto LABEL_10;
  }

LABEL_14:
  v23 = v13;

  v6 = v26;
LABEL_15:

  return v23;
}

- (id)_dataFromXMP:(__CFData *)a3 withRootPath:(id)a4 keys:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = CGImageMetadataCreateFromXMPData(a3);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = [MEMORY[0x1E695DF70] array];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PDFDocument__dataFromXMP_withRootPath_keys___block_invoke;
    block[3] = &unk_1E8151E78;
    v28 = v11;
    v24 = v9;
    v25 = self;
    v14 = v12;
    v26 = v14;
    v15 = v13;
    v27 = v15;
    CGImageMetadataEnumerateTagsUsingBlock(v11, v8, 0, block);
    v16 = [(NSMutableIndexSet *)v14 copy];
    initialBookmarkedPageIndices = self->_initialBookmarkedPageIndices;
    self->_initialBookmarkedPageIndices = v16;

    bookmarkedPages = self->_bookmarkedPages;
    self->_bookmarkedPages = v14;
    v19 = v14;

    CFRelease(v11);
    v20 = v27;
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __46__PDFDocument__dataFromXMP_withRootPath_keys___block_invoke(uint64_t a1, uint64_t a2, CGImageMetadataTag *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = CGImageMetadataCopyStringValueWithPath(*(a1 + 64), a3, v11);
        if (v12)
        {
          v13 = v12;
          [v5 setObject:v12 forKey:{v11, v17}];
          if ([(__CFString *)v11 isEqualToString:@"PageIndex"])
          {
            v14 = [(__CFString *)v13 integerValue];
            if ((v14 & 0x80000000) == 0)
            {
              v15 = v14 & 0x7FFFFFFF;
              if (v15 < [*(a1 + 40) pageCount])
              {
                [*(a1 + 48) addIndex:v15];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [*(a1 + 56) addObject:v5];
  return 1;
}

+ (id)_getDocumentID:(CGPDFDocument *)a3
{
  if (a3)
  {
    v4 = objc_opt_new();
    ID = CGPDFDocumentGetID(a3);
    if (CGPDFArrayGetCount(ID) == 2)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        value = 0;
        if (CGPDFArrayGetString(ID, v6, &value))
        {
          Length = CGPDFStringGetLength(value);
          BytePtr = CGPDFStringGetBytePtr(value);
          if (Length && BytePtr != 0)
          {
            v12 = [MEMORY[0x1E695DEF0] dataWithBytes:BytePtr length:Length];
            [v4 addObject:v12];
          }
        }

        v7 = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_addEncryptionFromOptions:(id)a3
{
  v4 = a3;
  if (![(PDFDocument *)self isEncrypted])
  {
    goto LABEL_6;
  }

  v5 = [v4 objectForKey:*MEMORY[0x1E695F3C8]];
  if (v5 || ([v4 objectForKey:*MEMORY[0x1E695F398]], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "objectForKey:", @"PDFDocumentUserPasswordOption"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    v6 = v4;
    goto LABEL_7;
  }

  v8 = [v4 objectForKey:@"PDFDocumentOwnerPasswordOption"];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  if (CGPDFDocumentGetEncryptionVersion() > 4)
  {
    ownerPassword = self->_ownerPassword;
    if (ownerPassword)
    {
      [v9 setObject:ownerPassword forKey:@"PDFDocumentOwnerPasswordOption"];
    }

    userPassword = self->_userPassword;
    if (userPassword)
    {
      [v9 setObject:userPassword forKey:@"PDFDocumentUserPasswordOption"];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_accessPermissions];
      [v9 setObject:v22 forKey:@"PDFDocumentAccessPermissionsOption"];
    }

    else
    {
      v23 = self->_ownerPassword;
      if (v23)
      {
        [v9 setObject:v23 forKey:@"PDFDocumentUserPasswordOption"];
      }
    }

    goto LABEL_37;
  }

  v10 = CGPDFDocumentCopyHashedOwnerPassword();
  v11 = CGPDFDocumentCopyHashedUserPassword();
  v12 = CGPDFDocumentCopyEncryptionKey();
  EncryptMetadata = CGPDFDocumentGetEncryptMetadata();
  if (!v10 || !v11 || !v12)
  {
LABEL_36:

LABEL_37:
    v6 = v9;
    goto LABEL_38;
  }

  v14 = EncryptMetadata;
  v15 = [objc_opt_class() _getDocumentID:self->_document];
  if ([v15 count] != 2)
  {
LABEL_35:

    goto LABEL_36;
  }

  [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695F328]];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695F358]];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695F360]];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E695F368]];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  [v9 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695F330]];

  EncryptionVersion = CGPDFDocumentGetEncryptionVersion();
  if (EncryptionVersion > 3)
  {
    if (EncryptionVersion == 4)
    {
      v24 = MEMORY[0x1E695F340];
    }

    else
    {
      if (EncryptionVersion != 5)
      {
        goto LABEL_29;
      }

      v24 = MEMORY[0x1E695F348];
    }

    v19 = *v24;
    v18 = *MEMORY[0x1E695F338];
LABEL_33:
    [v9 setObject:v19 forKeyedSubscript:v18];
    RawPermissions = CGPDFDocumentGetRawPermissions();
    if (RawPermissions)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:RawPermissions];
      [v9 setObject:v26 forKeyedSubscript:*MEMORY[0x1E695F378]];
    }

    goto LABEL_35;
  }

  if (EncryptionVersion == 1)
  {
    [v9 setObject:*MEMORY[0x1E695F350] forKeyedSubscript:*MEMORY[0x1E695F338]];
    v18 = *MEMORY[0x1E695F370];
    v19 = &unk_1F4184270;
    goto LABEL_33;
  }

  if (EncryptionVersion == 2)
  {
    [v9 setObject:*MEMORY[0x1E695F350] forKeyedSubscript:*MEMORY[0x1E695F338]];
    v18 = *MEMORY[0x1E695F370];
    v19 = &unk_1F4184288;
    goto LABEL_33;
  }

LABEL_29:

  v6 = 0;
LABEL_38:

LABEL_7:

  return v6;
}

- (id)_convertWriteOptions:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v3 keyEnumerator];
  v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v28 = *MEMORY[0x1E695F480];
    v29 = *MEMORY[0x1E695F3A8];
    v30 = *MEMORY[0x1E695F3B0];
    v31 = *MEMORY[0x1E695F2F8];
    v32 = *MEMORY[0x1E695F3C8];
    v33 = *MEMORY[0x1E695F398];
    v34 = *MEMORY[0x1E695F388];
    v35 = *MEMORY[0x1E695F3F0];
    v36 = *MEMORY[0x1E695F3D8];
    v37 = *MEMORY[0x1E695F3F8];
    v38 = *MEMORY[0x1E695F318];
    v39 = *MEMORY[0x1E695F3B8];
    v8 = *MEMORY[0x1E695F300];
    v9 = *MEMORY[0x1E695F3C0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [v3 objectForKey:v11];
        v13 = [v11 isEqual:@"Title"];
        v14 = v9;
        if ((v13 & 1) == 0)
        {
          v15 = [v11 isEqual:{@"Author", v9}];
          v14 = v8;
          if ((v15 & 1) == 0)
          {
            v16 = [v11 isEqual:{@"Subject", v8}];
            v14 = v39;
            if ((v16 & 1) == 0)
            {
              v17 = [v11 isEqual:{@"Creator", v39}];
              v14 = v38;
              if ((v17 & 1) == 0)
              {
                v18 = [v11 isEqual:{@"Producer", v38}];
                v14 = v37;
                if ((v18 & 1) == 0)
                {
                  v19 = [v11 isEqual:{@"CreationDate", v37}];
                  v14 = v36;
                  if ((v19 & 1) == 0)
                  {
                    v20 = [v11 isEqual:{@"ModDate", v36}];
                    v14 = v35;
                    if ((v20 & 1) == 0)
                    {
                      v21 = [v11 isEqual:{@"Keywords", v35}];
                      v14 = v34;
                      if ((v21 & 1) == 0)
                      {
                        v22 = [v11 isEqual:{@"PDFDocumentOwnerPasswordOption", v34}];
                        v14 = v33;
                        if ((v22 & 1) == 0)
                        {
                          v23 = [v11 isEqual:{@"PDFDocumentUserPasswordOption", v33}];
                          v14 = v32;
                          if ((v23 & 1) == 0)
                          {
                            v24 = [v11 isEqual:{@"PDFDocumentAccessPermissionsOption", v32}];
                            v14 = v31;
                            if ((v24 & 1) == 0)
                            {
                              v25 = [v11 isEqual:{@"PDFDocumentSaveImagesAsJPEGOption", v31}];
                              v14 = v30;
                              if ((v25 & 1) == 0)
                              {
                                v26 = [v11 isEqual:{@"PDFDocumentOptimizeImagesForScreenOption", v30}];
                                v14 = v29;
                                if ((v26 & 1) == 0)
                                {
                                  if ([v11 isEqual:{@"PDFDocumentCreateAIGeneratedContentDictionary", v29}])
                                  {
                                    v14 = v28;
                                  }

                                  else
                                  {
                                    v14 = v11;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        [v4 setObject:v12 forKey:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)writeToConsumer:(CGDataConsumer *)a3 withOptions:(id)a4
{
  v117 = *MEMORY[0x1E69E9840];
  v79 = a4;
  if (![(PDFDocument *)self isLocked])
  {
    akDocumentAdaptor = self->_akDocumentAdaptor;
    v86 = self;
    if (akDocumentAdaptor)
    {
      v7 = [(PDFAKDocumentAdaptor *)akDocumentAdaptor akMainController];
      [v7 commitEditing];

      self = v86;
    }

    v76 = [(PDFDocument *)self _addEncryptionFromOptions:v79];
    v78 = [(PDFDocument *)v86 _convertWriteOptions:v76];
    v8 = v78;
    if ([(PDFDocument *)v86 canSaveWithAppendModeUsingOptions:v78])
    {
      if ([(PDFDocument *)v86 _writeAppendMode:a3])
      {
        v77 = 1;
LABEL_88:

        goto LABEL_89;
      }

      NSLog(&cfstr_FailedToExecut.isa);
      v8 = v78;
    }

    v9 = [v8 objectForKey:@"PDFDocumentBurnInAnnotationsOption"];
    v90 = [v9 BOOLValue];
    v10 = objc_opt_new();
    v11 = v86;
    v12 = [(PDFDocument *)v86 _createInfoDictionary];
    if (v12)
    {
      v13 = v12;
      [v10 addEntriesFromDictionary:v12];
    }

    [v10 addEntriesFromDictionary:v78];
    v72 = v10;
    v14 = CGPDFContextCreate(a3, 0, v10);
    v77 = v14 != 0;
    context = v14;
    if (v14)
    {
      v83 = [(PDFDocument *)v86 pageCount];
      if (v83)
      {
        for (i = 0; i != v83; ++i)
        {
          v16 = [(PDFDocument *)v11 pageAtIndex:i];
          v17 = [v16 annotations];

          if (v17)
          {
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v18 = v17;
            v19 = [v18 countByEnumeratingWithState:&v109 objects:v116 count:16];
            if (v19)
            {
              v20 = *v110;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v110 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v109 + 1) + 8 * j);
                  [v22 setDictionaryRef:0];
                  [v22 setShouldHideInteractiveBackgroundColor:1];
                }

                v19 = [v18 countByEnumeratingWithState:&v109 objects:v116 count:16];
              }

              while (v19);
            }
          }

          v11 = v86;
        }
      }

      v73 = [(PDFDocument *)v11 formData];
      if (v73)
      {
        v23 = [v73 createDictionaryRef];
        if (v23)
        {
          CGPDFContextAddCatalogEntry();
          CFRelease(v23);
        }
      }

      v75 = [(PDFDocument *)v86 outlineRoot];
      if (v75)
      {
        [v75 invalidateDictionaryRef];
        v24 = [v75 createDictionaryRef];
        if (v24)
        {
          CGPDFContextAddCatalogEntry();
          CFRelease(v24);
        }
      }

      if ([(PDFDocument *)v86 bookmarksChanged]&& [(PDFDocument *)v86 allowsDocumentAssembly])
      {
        [(PDFDocument *)v86 updateBookmarksInPDFDocument];
        v25 = [(PDFDocument *)v86 bookmarkedPages];
        v26 = [v25 copy];
        initialBookmarkedPageIndices = v86->_initialBookmarkedPageIndices;
        v86->_initialBookmarkedPageIndices = v26;
      }

      v28 = [(PDFDocument *)v86 newXMPFromData:v86->_documentCatalogMetadata preserveExistingXMPMetadata:1];
      if (v28)
      {
        CGPDFContextAddDocumentMetadata(context, v28);
        CFRelease(v28);
      }

      Catalog = CGPDFDocumentGetCatalog(v86->_document);
      if (Catalog)
      {
        value = 0;
        CGPDFDictionaryGetDictionary(Catalog, "StructTreeRoot", &value);
        if (value)
        {
          *&valuePtr = 0.0;
          if (CGPDFDictionaryGetDictionary(value, "ParentTree", &valuePtr))
          {
            CGPDFContextSetParentTree();
          }

          v107 = 0;
          if (CGPDFDictionaryGetDictionary(value, "IDTree", &v107))
          {
            CGPDFContextSetIDTree();
          }
        }
      }

      v30 = [MEMORY[0x1E696AD88] defaultCenter];
      [v30 postNotificationName:@"PDFDidBeginDocumentWrite" object:v86];

      v71 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
      [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
      v74 = [v78 objectForKeyedSubscript:@"PDFDocumentSaveTextFromOCROption"];

      if (v74)
      {
        v82 = [v74 BOOLValue];
      }

      else
      {
        v82 = 0;
      }

      v81 = GetDefaultsWriteUsePageAnalyzerV2();
      if (v83)
      {
        v31 = 0;
        key = *MEMORY[0x1E695F3A0];
        do
        {
          v84 = v31;
          v88 = [(PDFDocument *)v86 pageAtIndex:?];
          theDict = [v88 gcCreateBoxDictionary];
          *&valuePtr = [v88 rotation];
          v32 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
          if (v32)
          {
            CFDictionaryAddValue(theDict, @"Rotate", v32);
            CFRelease(v32);
          }

          value = 0;
          p_value = &value;
          v103 = 0x3032000000;
          v104 = __Block_byref_object_copy__4;
          v105 = __Block_byref_object_dispose__4;
          v106 = 0;
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = __43__PDFDocument_writeToConsumer_withOptions___block_invoke;
          v100[3] = &unk_1E8151EA0;
          v100[4] = &value;
          [v88 enumerateApplicationDataUsingBlock:v100];
          v33 = p_value[5];
          if (v33)
          {
            CFDictionaryAddValue(theDict, key, v33);
          }

          Dictionary = CGPDFPageGetDictionary([v88 pageRef]);
          v107 = 0;
          if (CGPDFDictionaryGetInteger(Dictionary, "StructParents", &v107))
          {
            v35 = CFNumberCreate(0, kCFNumberLongType, &v107);
            CFDictionaryAddValue(theDict, @"StructParents", v35);
            CFRelease(v35);
          }

          CGPDFContextBeginPage(context, theDict);
          path = [v88 createRedactionPath];
          CGPDFContextSetRedactionPath();
          v36 = [MEMORY[0x1E696AD88] defaultCenter];
          v37 = MEMORY[0x1E695DF20];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v84];
          v39 = [v37 dictionaryWithObject:v38 forKey:@"PDFDocumentPageIndex"];
          [v36 postNotificationName:@"PDFDidBeginPageWrite" object:v86 userInfo:v39];

          v40 = +[PDFPage shouldHideAnnotationsForThisThread];
          [PDFPage setShouldHideAnnotationsForThisThread:1];
          if ((v82 & 1) != 0 || [v88 requestedOCR])
          {
            if (v81)
            {
              if (([v88 isTextFromOCR] & 1) == 0)
              {
                v41 = 1;
                [PDFPageAnalyzerV2 analyzePage:v88 withBox:1 requestTypes:1];
                goto LABEL_63;
              }
            }

            else if (([v88 isTextFromOCR] & 1) == 0 && +[PDFPageEvaluator isPageCandidateForOCR:](PDFPageEvaluator, "isPageCandidateForOCR:", v88))
            {
              v42 = dispatch_semaphore_create(0);
              v43 = +[PDFPageAnalyzer sharedInstance];
              v98[0] = MEMORY[0x1E69E9820];
              v98[1] = 3221225472;
              v98[2] = __43__PDFDocument_writeToConsumer_withOptions___block_invoke_2;
              v98[3] = &unk_1E8151EC8;
              v44 = v42;
              v99 = v44;
              [v43 analyzePage:v88 analysisTypes:1 completionQueue:0 completionBlock:v98];

              dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
            }

            v41 = 1;
          }

          else
          {
            v41 = 0;
          }

LABEL_63:
          v45 = objc_opt_self();
          v46 = objc_opt_class();
          if (PDFSubclassOverridesSelector(v45, v46, sel_drawWithBox_toContext_))
          {
          }

          else
          {
            v47 = objc_opt_self();
            v48 = objc_opt_class();
            v49 = PDFSubclassOverridesSelector(v47, v48, sel_drawWithBox_);

            if (!v49)
            {
              v114 = @"PDFPageDrawWithBoxOption_RenderExtraContentStream";
              v50 = [MEMORY[0x1E696AD98] numberWithBool:v41];
              v115 = v50;
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
              [v88 drawWithBox:0 inContext:context withOptions:v51];

              goto LABEL_68;
            }
          }

          [v88 drawWithBox:0 toContext:context];
LABEL_68:
          [PDFPage setShouldHideAnnotationsForThisThread:v40];
          CGPDFContextSetRedactionPath();
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __43__PDFDocument_writeToConsumer_withOptions___block_invoke_3;
          v96[3] = &__block_descriptor_33_e23_B16__0__PDFAnnotation_8l;
          v97 = v90;
          [v88 drawAnnotationsWithBox:0 inContext:context passingTest:v96];
          CGPDFContextSetRedactionPath();
          v52 = [v88 annotations];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v53 = v52;
          v54 = [v53 countByEnumeratingWithState:&v92 objects:v113 count:16];
          if (v54)
          {
            v55 = *v93;
            do
            {
              for (k = 0; k != v54; ++k)
              {
                if (*v93 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v92 + 1) + 8 * k);
                v58 = [v57 valueForAnnotationKey:@"/Parent"];
                if ((v90 & 1) == 0 && ([v57 shouldBurnIn] & 1) == 0 && (objc_msgSend(v57, "intersectsWithRedactionPath") & 1) == 0 && (objc_msgSend(v58, "intersectsWithRedactionPath") & 1) == 0)
                {
                  v59 = [v57 valueForAnnotationKey:@"/AAPL:SFF"];
                  if (!v59 || ([v57 contents], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "length") == 0, v60, v59, !v61))
                  {
                    [v57 setShouldHideInteractiveBackgroundColor:1];
                    v62 = [v57 dictionaryRef];
                    [v57 setShouldHideInteractiveBackgroundColor:0];
                    if (v62)
                    {
                      [v57 sourceDictionary];
                      ObjectReference = CGPDFDictionaryGetObjectReference();
                      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v62);
                      v64 = CFNumberCreate(0, kCFNumberLongType, &ObjectReference);
                      CFDictionaryAddValue(MutableCopy, @"ObjectNumber", v64);
                      CFRelease(v64);
                      CGPDFContextAddAnnotation();
                      CFRelease(MutableCopy);
                    }
                  }
                }
              }

              v54 = [v53 countByEnumeratingWithState:&v92 objects:v113 count:16];
            }

            while (v54);
          }

          CGPDFContextEndPage(context);
          v65 = [MEMORY[0x1E696AD88] defaultCenter];
          v66 = MEMORY[0x1E695DF20];
          v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v84];
          v68 = [v66 dictionaryWithObject:v67 forKey:@"PDFDocumentPageIndex"];
          [v65 postNotificationName:@"PDFDidEndPageWrite" object:v86 userInfo:v68];

          CGPDFContextSetRedactionPath();
          CGPathRelease(path);
          if (theDict)
          {
            CFRelease(theDict);
          }

          _Block_object_dispose(&value, 8);
          v31 = v84 + 1;
        }

        while (v84 + 1 != v83);
      }

      [PDFPage setNativeRotationDrawingEnabledForThisThread:v71];
      CGPDFContextClose(context);
      CGContextRelease(context);
      v69 = [MEMORY[0x1E696AD88] defaultCenter];
      [v69 postNotificationName:@"PDFDidEndDocumentWrite" object:v86];
    }

    else
    {
      v74 = v9;
    }

    v8 = v78;
    goto LABEL_88;
  }

  v77 = 0;
LABEL_89:

  return v77;
}

void __43__PDFDocument_writeToConsumer_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 setObject:v5 forKeyedSubscript:v10];
}

uint64_t __43__PDFDocument_writeToConsumer_withOptions___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return [a2 shouldBurnIn];
  }
}

- (BOOL)canSaveWithAppendModeUsingOptions:(id)a3
{
  v4 = a3;
  if (GetDefaultsWriteUseAppendMode() && ![(PDFDocument *)self isEncrypted]&& [(PDFDocument *)self allowsPrinting])
  {
    v5 = [v4 objectForKey:@"PDFDocumentWriteOption_UseAppendMode"];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_16;
    }

    if (![v5 BOOLValue])
    {
      goto LABEL_16;
    }

    v7 = [v4 objectForKey:@"QuartzFilter"];

    if (v7)
    {
      goto LABEL_16;
    }

    v8 = [v4 objectForKey:*MEMORY[0x1E695F3C8]];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v12 = [v4 objectForKey:*MEMORY[0x1E695F398]];
      v9 = v12 != 0;
    }

    if (((v8, [(PDFDocument *)self isEncrypted]) || !v9) && v9 | ![(PDFDocument *)self isEncrypted]&& !self->_documentHasBurnInAnnotations)
    {
      v13 = [v4 objectForKey:@"PDFDocumentBurnInAnnotationsOption"];
      if (([v13 BOOLValue] & 1) != 0 || self->_documentHasPageWithApplicationData || self->_documentRedactionCount || self->_pagesChanged.pagesRemoved || self->_pagesChanged.pagesExchanged || self->_pagesChanged.blankPagesAdded)
      {
        v10 = 0;
      }

      else
      {
        v14 = [v4 objectForKey:*MEMORY[0x1E695F310]];
        v15 = v14;
        if (v14 && ([v14 BOOLValue] & 1) != 0)
        {
          v10 = 0;
        }

        else
        {
          v16 = [v4 objectForKey:*MEMORY[0x1E695F308]];
          v17 = v16;
          if (v16 && ([v16 BOOLValue] & 1) != 0)
          {
            v10 = 0;
          }

          else
          {
            v18 = [v4 objectForKey:@"PDFDocumentSaveTextFromOCROption"];
            v19 = v18;
            if (v18 && ([v18 BOOLValue] & 1) != 0 || (-[PDFDocument formData](self, "formData"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
            {
              v10 = 0;
            }

            else
            {
              v21 = [v4 objectForKeyedSubscript:@"PDFDocumentCreateAIGeneratedContentDictionary"];
              v10 = !v21 || (objc_opt_respondsToSelector() & 1) == 0 || ([v21 BOOLValue] & 1) == 0;
            }
          }
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canSaveWithTextFromOCR
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_pages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v16 + 1) + 8 * v7) isTextFromOCR])
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_pages;
  v8 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v3);
      }

      if ([PDFPageEvaluator isPageCandidateForOCR:*(*(&v12 + 1) + 8 * v10), v12])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v8) = 1;
  }

LABEL_19:

  return v8;
}

- (BOOL)_writeAppendMode:(CGDataConsumer *)a3
{
  v3 = self;
  v129 = *MEMORY[0x1E69E9840];
  v4 = [(PDFDocument *)self pageCount];
  v5 = objc_opt_new();
  v103 = v4;
  if (!v4)
  {
LABEL_5:
    v100 = +[PDFDocument pdfDocumentAppendModeActiveForThisThread];
    [PDFDocument setPDFDocumentAppendModeActiveForThisThread:1];
    v99 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
    [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
    v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v102 = v5;
    if (!v103)
    {
      goto LABEL_78;
    }

    v10 = 0;
    allocator = *MEMORY[0x1E695E480];
    v108 = v3;
    while (1)
    {
      v11 = [(PDFDocument *)v3 pageAtIndex:v10];
      v12 = [v11 pageRef];
      [v11 rotation];
      page = v12;
      CGPDFPageSetRotationAngle();
      for (i = 0; i != 5; ++i)
      {
        v14 = PDFRectToCGRect([v11 boundsForBox:i]);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        BoxRect = CGPDFPageGetBoxRect(page, i);
        if (v18 > 0.0 && v20 > 0.0)
        {
          v138 = BoxRect;
          v131.origin.x = v14;
          v131.origin.y = v16;
          v131.size.width = v18;
          v131.size.height = v20;
          if (!CGRectEqualToRect(v131, v138))
          {
            CGPDFPageSetBoxRect();
          }
        }
      }

      v104 = v10;
      v105 = v11;
      v21 = [v5 objectAtIndex:v10];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v121 objects:v128 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v122;
        while (1)
        {
          v26 = 0;
          do
          {
            if (*v122 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v121 + 1) + 8 * v26);
            v28 = [v27 annotation];
            [v28 setShouldHideInteractiveBackgroundColor:1];
            if (![v27 changeType])
            {
              v30 = [v28 valueForAnnotationKey:@"/AAPL:SFF"];
              if (v30)
              {
                v31 = v30;
                v32 = [v28 contents];
                v33 = [v32 length];

                if (!v33)
                {
                  goto LABEL_32;
                }
              }

              goto LABEL_30;
            }

            if ([v27 changeType] == 1 || objc_msgSend(v27, "changeType") == 4)
            {
              if ([v28 CGPDFAnnotation] || (objc_msgSend(v28, "valueForAnnotationKey:", @"/AAPL:SFF"), v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
              {
                if ([v27 changeType] == 1)
                {
                  [v28 setDictionaryRef:0];
                }

                -[PDFDocument _sanitizeAnnotationDictionary:](v108, "_sanitizeAnnotationDictionary:", [v28 dictionaryRefExcludingParentOrPopup]);
                CGPDFPageSubstituteAnnotationDictionary();
                v29 = [v27 changeType] == 4;
                goto LABEL_25;
              }

LABEL_30:
              v35 = [(PDFDocument *)v108 _createCGPDFAnnotationForAnnotation:v28];
              if (v35)
              {
                v36 = v35;
                CGPDFPageAddAnnotation();
                CFRelease(v36);
                v24 = 1;
              }

              goto LABEL_32;
            }

            if ([v27 changeType] == 2)
            {
              v37 = [v28 CGPDFAnnotation];
              if (v37)
              {
                v38 = v37;
                CFRetain(v37);
                CGPDFPageRemoveAnnotation();
                [v28 setCGPDFAnnotation:0];
                CFRelease(v38);
              }
            }

            else if ([v27 changeType] == 3)
            {
              v29 = [v28 CGPDFAnnotation] != 0;
LABEL_25:
              v24 |= v29;
            }

LABEL_32:
            [v28 setShouldHideInteractiveBackgroundColor:0];

            ++v26;
          }

          while (v23 != v26);
          v39 = [v21 countByEnumeratingWithState:&v121 objects:v128 count:16];
          v23 = v39;
          if (!v39)
          {
            v5 = v102;
            if (v24)
            {
              Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              v41 = [v105 annotations];
              v117 = 0u;
              v118 = 0u;
              v119 = 0u;
              v120 = 0u;
              v42 = [v41 countByEnumeratingWithState:&v117 objects:v127 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v118;
                do
                {
                  for (j = 0; j != v43; ++j)
                  {
                    if (*v118 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v46 = *(*(&v117 + 1) + 8 * j);
                    v47 = [v46 CGPDFAnnotation];
                    if (v47)
                    {
                      v48 = v47;
                      if (([v46 shouldBurnIn] & 1) == 0)
                      {
                        CFArrayAppendValue(Mutable, v48);
                      }
                    }
                  }

                  v43 = [v41 countByEnumeratingWithState:&v117 objects:v127 count:16];
                }

                while (v43);
              }

              if ([v105 pageRef] && CFArrayGetCount(Mutable) >= 1)
              {
                CGPDFPageSortAnnotations();
              }

              CFRelease(Mutable);
            }

            break;
          }
        }
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v49 = v21;
      v50 = [v49 countByEnumeratingWithState:&v113 objects:v126 count:16];
      if (!v50)
      {
        goto LABEL_69;
      }

      v51 = v50;
      v52 = *v114;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v114 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v113 + 1) + 8 * k) annotation];
          if ([v54 CGPDFAnnotation])
          {
            v55 = [v54 popup];

            if (v55)
            {
              v56 = [v54 popup];
            }

            else
            {
              v57 = [v54 parent];

              if (!v57)
              {
                goto LABEL_67;
              }

              v56 = [v54 parent];
            }

            v58 = [v56 CGPDFAnnotation];

            if (v58)
            {
              CGPDFAnnotationSetAnnotationForKey();
              [v106 addObject:v54];
            }
          }

LABEL_67:
        }

        v51 = [v49 countByEnumeratingWithState:&v113 objects:v126 count:16];
      }

      while (v51);
LABEL_69:

      v59 = [v105 akPageAdaptor];
      v60 = v59;
      if (v59)
      {
        v61 = [v59 akPageModelController];
        v62 = [v61 cropAnnotation];
        v63 = v62;
        if (v62)
        {
          if ([v62 cropApplied])
          {
            v132 = CGPDFPageGetBoxRect(page, kCGPDFCropBox);
            v133 = CGRectIntegral(v132);
            x = v133.origin.x;
            y = v133.origin.y;
            width = v133.size.width;
            height = v133.size.height;
            [v63 rectangle];
            v69 = v68;
            v71 = v70;
            v73 = v72;
            v75 = v74;
            v139 = CGPDFPageGetBoxRect(page, kCGPDFMediaBox);
            v134.origin.x = v69;
            v134.origin.y = v71;
            v134.size.width = v73;
            v134.size.height = v75;
            v135 = CGRectIntersection(v134, v139);
            v136 = CGRectIntegral(v135);
            if (v136.size.width > 0.0)
            {
              v76 = v136.size.height;
              if (v136.size.height > 0.0)
              {
                v77 = v136.origin.x;
                v78 = v136.origin.y;
                v79 = v136.size.width;
                v137.origin.x = x;
                v137.origin.y = y;
                v137.size.width = width;
                v137.size.height = height;
                v140.origin.x = v77;
                v140.origin.y = v78;
                v140.size.width = v79;
                v140.size.height = v76;
                if (!CGRectEqualToRect(v137, v140))
                {
                  CGPDFPageSetBoxRect();
                }
              }
            }
          }
        }
      }

      [v105 clearAnnotationChanges];
      v10 = v104 + 1;
      v3 = v108;
      if (v104 + 1 == v103)
      {
LABEL_78:
        if ([(PDFDocument *)v3 bookmarksChanged]&& [(PDFDocument *)v3 allowsDocumentAssembly])
        {
          [(PDFDocument *)v3 updateBookmarksInPDFDocument];
          v80 = [(PDFDocument *)v3 newXMPFromData:v3->_documentCatalogMetadata preserveExistingXMPMetadata:1];
          if (v80)
          {
            v81 = v80;
            CGPDFDocumentAppendMetadata();
            CFRelease(v81);
          }

          v82 = [(PDFDocument *)v3 bookmarkedPages];
          v83 = [v82 copy];
          initialBookmarkedPageIndices = v3->_initialBookmarkedPageIndices;
          v3->_initialBookmarkedPageIndices = v83;
        }

        if (v3->_attributes && (!v3->_appendedAttributes || ![(NSDictionary *)v3->_attributes isEqualToDictionary:?]))
        {
          CGPDFDocumentAppendDocumentInfo();
          v85 = [(NSDictionary *)v3->_attributes copy];
          appendedAttributes = v3->_appendedAttributes;
          v3->_appendedAttributes = v85;
        }

        [PDFPage setNativeRotationDrawingEnabledForThisThread:v99];
        [PDFDocument setPDFDocumentAppendModeActiveForThisThread:v100];
        v87 = CGPDFDocumentCopyToConsumerWithChanges();
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v88 = v106;
        v89 = [v88 countByEnumeratingWithState:&v109 objects:v125 count:16];
        if (!v89)
        {
LABEL_100:

          v5 = v102;
          goto LABEL_102;
        }

        v90 = v89;
        v91 = *v110;
        while (2)
        {
          v92 = 0;
LABEL_90:
          if (*v110 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v109 + 1) + 8 * v92);
          v94 = [v93 CGPDFAnnotation];
          v95 = [v93 popup];

          if (v95)
          {
            v96 = 0;
            if (!v94)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v97 = [v93 parent];

            v96 = v97 == 0;
            if (!v94)
            {
              goto LABEL_98;
            }
          }

          if (!v96)
          {
            CGPDFAnnotationSetAnnotationForKey();
          }

LABEL_98:
          if (v90 == ++v92)
          {
            v90 = [v88 countByEnumeratingWithState:&v109 objects:v125 count:16];
            if (!v90)
            {
              goto LABEL_100;
            }

            continue;
          }

          goto LABEL_90;
        }
      }
    }
  }

  v6 = 0;
  while (1)
  {
    v7 = [(PDFDocument *)v3 pageAtIndex:v6];
    v8 = [v7 annotationChanges];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    [v5 insertObject:v8 atIndex:v6];

    if (v103 == ++v6)
    {
      goto LABEL_5;
    }
  }

  v87 = 0;
LABEL_102:

  return v87;
}

- (CGPDFAnnotation)_createCGPDFAnnotationForAnnotation:(id)a3
{
  v4 = a3;
  -[PDFDocument _sanitizeAnnotationDictionary:](self, "_sanitizeAnnotationDictionary:", [v4 dictionaryRefExcludingParentOrPopup]);
  v5 = CGPDFAnnotationCreate();
  if (v5)
  {
    if ([v4 shouldBurnIn])
    {
      CGPDFAnnotationSetBurnIn();
    }

    [v4 setCGPDFAnnotation:v5];
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_1.isa);
  }

  return v5;
}

- (CGPDFName)_convertCFStringToCGPDFName:(void *)a3 forKey:(__CFString *)a4
{
  v6 = CFGetTypeID(a3);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  if (a4)
  {
    v7 = +[PDFAnnotation PDFAnnotationKeysWithStringValues];
    v8 = [v7 containsObject:a4];

    if (v8)
    {
      return 0;
    }
  }

  if (!CFStringHasPrefix(a3, @"/"))
  {
    return 0;
  }

  Length = CFStringGetLength(a3);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (CFStringGetCString(a3, v11, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v13 = CGPDFNameCreate();
  }

  else
  {
    v13 = 0;
  }

  free(v12);
  return v13;
}

- (void)_sanitizeAnnotationDictionary:(__CFDictionary *)a3
{
  Count = CFDictionaryGetCount(a3);
  v6 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v7 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v21 = v6;
  CFDictionaryGetKeysAndValues(a3, v6, v7);
  if (Count)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = v6;
    v10 = v7;
    while (1)
    {
      v11 = *v9;
      v12 = *v10;
      v13 = [(PDFDocument *)self _convertCFStringToCGPDFName:*v9 forKey:0];
      if (v13)
      {
        v14 = v13;
        CFRetain(v12);
        CFDictionaryRemoveValue(a3, v11);
        CFDictionarySetValue(a3, v14, v12);
        CFRelease(v12);
        CFRelease(v14);
        v11 = v14;
      }

      v15 = [(PDFDocument *)self _convertCFStringToCGPDFName:v12 forKey:*v9];
      if (v15)
      {
        break;
      }

      v18 = CFGetTypeID(v12);
      if (v18 == CFArrayGetTypeID())
      {
        MutableCopy = CFArrayCreateMutableCopy(v8, 0, v12);
        [(PDFDocument *)self _sanitizeAnnotationArray:MutableCopy];
        goto LABEL_11;
      }

      v20 = CFGetTypeID(v12);
      if (v20 == CFDictionaryGetTypeID())
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v12);
        [(PDFDocument *)self _sanitizeAnnotationDictionary:MutableCopy];
LABEL_11:
        CFDictionarySetValue(a3, v11, MutableCopy);
        v17 = MutableCopy;
LABEL_12:
        CFRelease(v17);
      }

      ++v10;
      ++v9;
      if (!--Count)
      {
        goto LABEL_14;
      }
    }

    v16 = v15;
    CFDictionarySetValue(a3, v11, v15);
    v17 = v16;
    goto LABEL_12;
  }

LABEL_14:
  free(v21);

  free(v7);
}

- (void)_sanitizeAnnotationArray:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    v8 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
      v10 = [(PDFDocument *)self _convertCFStringToCGPDFName:ValueAtIndex forKey:0];
      if (v10)
      {
        break;
      }

      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == CFArrayGetTypeID())
      {
        MutableCopy = CFArrayCreateMutableCopy(v8, 0, ValueAtIndex);
        [(PDFDocument *)self _sanitizeAnnotationArray:MutableCopy];
        goto LABEL_9;
      }

      v15 = CFGetTypeID(ValueAtIndex);
      if (v15 == CFDictionaryGetTypeID())
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, ValueAtIndex);
        [(PDFDocument *)self _sanitizeAnnotationDictionary:MutableCopy];
LABEL_9:
        CFArraySetValueAtIndex(a3, v7, MutableCopy);
        v12 = MutableCopy;
LABEL_10:
        CFRelease(v12);
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    v11 = v10;
    CFArraySetValueAtIndex(a3, v7, v10);
    v12 = v11;
    goto LABEL_10;
  }
}

- (id)_documentCatalogMetadataForRootPath:(id)a3 withKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isUnlocked)
  {
    documentCatalogMetadata = self->_documentCatalogMetadata;
    if (documentCatalogMetadata)
    {
LABEL_8:
      v14 = documentCatalogMetadata;
      goto LABEL_10;
    }

    Catalog = CGPDFDocumentGetCatalog(self->_document);
    if (Catalog)
    {
      value = 0;
      if (CGPDFDictionaryGetStream(Catalog, "Metadata", &value))
      {
        format = CGPDFDataFormatRaw;
        v10 = CGPDFStreamCopyData(value, &format);
        if (v10)
        {
          v11 = v10;
          v12 = [(PDFDocument *)self _dataFromXMP:v10 withRootPath:v6 keys:v7];
          v13 = self->_documentCatalogMetadata;
          self->_documentCatalogMetadata = v12;

          CFRelease(v11);
        }
      }

      documentCatalogMetadata = self->_documentCatalogMetadata;
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)_setDocumentCatalogMetadata:(id)a3 withNSpace:(id)a4 prefix:(id)a5 rootPath:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self;
  objc_sync_enter(v13);
  if (v13->_xmpNameSpace != v10)
  {
    v14 = [(NSString *)v10 copy];
    xmpNameSpace = v13->_xmpNameSpace;
    v13->_xmpNameSpace = v14;
  }

  if (v13->_xmpPrefix != v11)
  {
    v16 = [(NSString *)v11 copy];
    xmpPrefix = v13->_xmpPrefix;
    v13->_xmpPrefix = v16;
  }

  if (v13->_xmpRootPath != v12)
  {
    v18 = [(NSString *)v12 copy];
    xmpRootPath = v13->_xmpRootPath;
    v13->_xmpRootPath = v18;
  }

  if (v13->_documentCatalogMetadata != v22)
  {
    v20 = [(NSArray *)v22 copy];
    documentCatalogMetadata = v13->_documentCatalogMetadata;
    v13->_documentCatalogMetadata = v20;
  }

  objc_sync_exit(v13);
}

- (__CFData)newXMPFromData:(id)a3 preserveExistingXMPMetadata:(BOOL)a4
{
  v4 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  Catalog = CGPDFDocumentGetCatalog(self->_document);
  value = 0;
  if (!CGPDFDictionaryGetStream(Catalog, "Metadata", &value))
  {
    goto LABEL_8;
  }

  format = CGPDFDataFormatRaw;
  v8 = CGPDFStreamCopyData(value, &format);
  if (!v8)
  {
    goto LABEL_8;
  }

  XMPData = v8;
  if (!v6)
  {
    goto LABEL_34;
  }

  v10 = CGImageMetadataCreateFromXMPData(v8);
  CFRelease(XMPData);
  if (v10)
  {
    MutableCopy = CGImageMetadataCreateMutableCopy(v10);
    if (!MutableCopy)
    {
      XMPData = 0;
LABEL_32:
      CFRelease(v10);
      goto LABEL_34;
    }

    v12 = MutableCopy;
    v13 = 0;
  }

  else
  {
LABEL_8:
    Mutable = CGImageMetadataCreateMutable();
    v10 = 0;
    if (!Mutable)
    {
      XMPData = 0;
      goto LABEL_34;
    }

    v12 = Mutable;
    v13 = 1;
  }

  xmpNameSpace = self->_xmpNameSpace;
  if (xmpNameSpace)
  {
    xmpPrefix = self->_xmpPrefix;
    if (xmpPrefix)
    {
      if (v6 && self->_xmpRootPath)
      {
        CGImageMetadataRegisterNamespaceForPrefix(v12, xmpNameSpace, xmpPrefix, 0);
        v30 = v13;
        if ((v13 & 1) == 0)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __58__PDFDocument_newXMPFromData_preserveExistingXMPMetadata___block_invoke;
          block[3] = &unk_1E8151F10;
          block[4] = self;
          block[5] = v12;
          CGImageMetadataEnumerateTagsUsingBlock(v10, 0, 0, block);
        }

        v31 = v10;
        v32 = v6;
        v17 = self;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = v6;
        v35 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v35)
        {
          v18 = 0;
          v34 = *v42;
          do
          {
            v19 = 0;
            do
            {
              if (*v42 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = v19;
              v20 = *(*(&v41 + 1) + 8 * v19);
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v21 = v20;
              v22 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v38;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v38 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v37 + 1) + 8 * i);
                    v27 = [v21 valueForKey:v26];
                    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d].%@", v17->_xmpRootPath, v18, v26];
                    CGImageMetadataSetValueWithPath(v12, 0, v28, v27);
                  }

                  v23 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
                }

                while (v23);
              }

              v18 = (v18 + 1);
              v19 = v36 + 1;
            }

            while (v36 + 1 != v35);
            v35 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v35);
        }

        v10 = v31;
        v6 = v32;
        v13 = v30;
      }
    }
  }

  XMPData = CGImageMetadataCreateXMPData(v12, 0);
  CFRelease(v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:

  return XMPData;
}

uint64_t __58__PDFDocument_newXMPFromData_preserveExistingXMPMetadata___block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v5 = CGImageMetadataTagCopyPrefix(tag);
  if (CFStringCompare(v5, *(*(a1 + 32) + 320), 0) == kCFCompareEqualTo)
  {
    CGImageMetadataRemoveTagWithPath(*(a1 + 40), 0, a2);
  }

  CFRelease(v5);
  return 1;
}

- (id)akDocumentAdaptor
{
  if (GetDefaultsWriteAKEnabled() && !self->_akDocumentAdaptor)
  {
    _PDFLog(OS_LOG_TYPE_DEFAULT, "PDFDocument", "%s: Called when the document adaptor wasn't set up yet.", v3, v4, v5, v6, v7, "[PDFDocument akDocumentAdaptor]");
  }

  akDocumentAdaptor = self->_akDocumentAdaptor;

  return akDocumentAdaptor;
}

- (void)setPDFAKControllerDelegate:(id)a3
{
  akDocumentAdaptor = self->_akDocumentAdaptor;
  if (akDocumentAdaptor)
  {
    [(PDFAKDocumentAdaptor *)akDocumentAdaptor setPDFAKControllerDelegate:a3];
    a3 = 0;
  }

  objc_storeWeak(&self->_pdfAKControllerDelegateForDeferredSetup, a3);
}

- (id)PDFAKControllerDelegate
{
  akDocumentAdaptor = self->_akDocumentAdaptor;
  if (akDocumentAdaptor)
  {
    akDocumentAdaptor = [akDocumentAdaptor PDFAKControllerDelegate];
    v2 = vars8;
  }

  return akDocumentAdaptor;
}

- (void)_notifyAKAdaptorPagePlaceholder:(id)a3 wasReplacedWithPage:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_akDocumentAdaptor)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [v9 setupAKPageAdaptorIfNecessary];
      [(PDFAKDocumentAdaptor *)self->_akDocumentAdaptor pdfDocument:self didReplacePagePlaceholder:v8 atIndex:a5 withPage:v9];
      [v9 setAKDidSetupRealPageModelController:1];
    }

    else
    {
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x3042000000;
      v17[3] = __Block_byref_object_copy__364;
      v17[4] = __Block_byref_object_dispose__365;
      objc_initWeak(&v18, self);
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3042000000;
      v15[3] = __Block_byref_object_copy__364;
      v15[4] = __Block_byref_object_dispose__365;
      objc_initWeak(&v16, v9);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__PDFDocument__notifyAKAdaptorPagePlaceholder_wasReplacedWithPage_atIndex___block_invoke;
      v10[3] = &unk_1E8151F38;
      v13 = v17;
      v14 = v15;
      v11 = v8;
      v12 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], v10);

      _Block_object_dispose(v15, 8);
      objc_destroyWeak(&v16);
      _Block_object_dispose(v17, 8);
      objc_destroyWeak(&v18);
    }
  }
}

void __75__PDFDocument__notifyAKAdaptorPagePlaceholder_wasReplacedWithPage_atIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v2 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  if (v2)
  {
    v3 = WeakRetained == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && WeakRetained[49])
  {
    v4 = WeakRetained[4];
    objc_sync_enter(v4);
    v5 = [WeakRetained[4] indexOfObjectIdenticalTo:v2];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v2 setupAKPageAdaptorIfNecessary];
      [WeakRetained[49] pdfDocument:WeakRetained didReplacePagePlaceholder:*(a1 + 32) atIndex:v5 withPage:v2];
      [*(a1 + 40) setAKDidSetupRealPageModelController:1];
    }

    objc_sync_exit(v4);
  }
}

- (void)enableDocumentMRUMode:(BOOL)a3
{
  if (self->_document)
  {
    MEMORY[0x1EEDBA578]();
  }
}

- (BOOL)isLinearized
{
  document = self->_document;
  if (document)
  {
    LOBYTE(document) = MEMORY[0x1EEDBA618](document, a2);
  }

  return document;
}

- (BOOL)hasHighLatencyDataProvider
{
  document = self->_document;
  if (document)
  {
    document = CGPDFDocumentGetDataProvider();
    if (document)
    {
      document = CGDataProviderGetProperty();
      if (document)
      {
        v3 = document;
        v4 = CFGetTypeID(document);
        LOBYTE(document) = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      }
    }
  }

  return document;
}

- (void)setHasHighLatencyDataProvider:(BOOL)a3
{
  if ([(PDFDocument *)self hasHighLatencyDataProvider]!= a3)
  {
    CGPDFDocumentGetDataProvider();
    CGDataProviderSetProperty();
    if (!a3)
    {
      objc_initWeak(&location, self);
      v5 = [(PDFDocument *)self textExtractionQueue];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__PDFDocument_setHasHighLatencyDataProvider___block_invoke;
      v6[3] = &unk_1E8151400;
      objc_copyWeak(&v7, &location);
      dispatch_async(v5, v6);

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __45__PDFDocument_setHasHighLatencyDataProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__PDFDocument_setHasHighLatencyDataProvider___block_invoke_2;
    v4[3] = &unk_1E8151F60;
    v5 = WeakRetained;
    [v3 enumerateObjectsUsingBlock:v4];
  }
}

void __45__PDFDocument_setHasHighLatencyDataProvider___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 pageRef])
  {
    v5 = *(*(a1 + 32) + 48);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = [v5 objectForKey:v6];
    v8 = [v7 integerValue];

    Page = CGPDFDocumentGetPage(*(*(a1 + 32) + 8), v8 + 1);
    if (Page)
    {
      [v10 setPageRef:Page];
    }
  }
}

- (void)preloadDataOfPagesInRange:(_NSRange)a3 onQueue:(id)a4 completion:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  if ([(PDFDocument *)self isLinearized])
  {
    if ([(PDFDocument *)self hasHighLatencyDataProvider])
    {
      v46.length = [(PDFDocument *)self pageCount];
      v45.location = location;
      v45.length = length;
      v46.location = 0;
      v11 = NSIntersectionRange(v45, v46);
      if (v11.length)
      {
        v12 = v11.location;
        v28 = objc_opt_new();
        v13 = objc_opt_new();
        obj = self->_preloadingPageIndexes;
        objc_sync_enter(obj);
        if (v12 < v12 + v11.length)
        {
          do
          {
            pageIndices = self->_pageIndices;
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v12, obj}];
            v16 = [(NSMutableDictionary *)pageIndices objectForKey:v15];
            [v16 integerValue];

            if (([(NSMutableIndexSet *)self->_preloadingPageIndexes containsIndex:v12]& 1) == 0 && !CGPDFDocumentGetPageNoCreate())
            {
              [(NSMutableIndexSet *)self->_preloadingPageIndexes addIndex:v12];
              [v28 addIndex:v12];
              v44[0] = 0;
              v44[4] = 0;
              if (CGPDFDocumentCreateLinearizedRangesForPage())
              {
                free(v44[0]);
              }
            }

            ++v12;
          }

          while (v12 != v11.location + v11.length);
        }

        objc_sync_exit(obj);

        DataProvider = CGPDFDocumentGetDataProvider();
        v18 = [v13 rangeCount];
        v19 = malloc_type_malloc(16 * v18, 0x1000040451B5BE8uLL);
        v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
        v44[0] = 0;
        v44[1] = v44;
        v44[2] = 0x2020000000;
        v44[3] = 0;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke;
        v40[3] = &unk_1E8151F88;
        v42 = v44;
        v43 = v19;
        v21 = v20;
        v41 = v21;
        [v13 enumerateRangesUsingBlock:v40];
        v22 = dispatch_group_create();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_2;
        block[3] = &unk_1E8151FB0;
        v37 = DataProvider;
        v23 = v21;
        v36 = v23;
        v38 = v19;
        v39 = v18;
        dispatch_group_async(v22, v9, block);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_3;
        v32[3] = &unk_1E8152000;
        v32[4] = self;
        v24 = v22;
        v33 = v24;
        v25 = v9;
        v34 = v25;
        [v28 enumerateIndexesUsingBlock:v32];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_5;
        v29[3] = &unk_1E8151048;
        v30 = v28;
        v31 = v10;
        v26 = v28;
        dispatch_group_notify(v24, v25, v29);

        _Block_object_dispose(v44, 8);
      }
    }
  }
}

void __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  *(v4 + 16 * *(*(*(a1 + 40) + 8) + 24)) = a2;
  *(v4 + 16 * *(*(*(a1 + 40) + 8) + 24) + 8) = a3;
  v5 = [MEMORY[0x1E695DFB0] null];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_2(uint64_t a1)
{
  CGDataProviderGetBytesInRanges();
  v2 = *(a1 + 48);

  free(v2);
}

void __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 48);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];
  v7 = ([v6 integerValue] + 1);

  if (!CGPDFDocumentGetPageNoCreate())
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_4;
    block[3] = &unk_1E8151FD8;
    objc_copyWeak(v12, &location);
    v10 = *(a1 + 32);
    v12[1] = v7;
    v12[2] = a2;
    block[4] = v10;
    dispatch_group_async(v8, v9, block);
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  Page = CGPDFDocumentGetPage(WeakRetained[1], *(a1 + 48));
  if (Page)
  {
    v3 = Page;
    v4 = [*(a1 + 32) pageAtIndex:*(a1 + 56)];
    [v4 setPageRef:v3];
    if (*(a1 + 48) == 1)
    {
      [v4 ensureDisplayList];
    }
  }
}

uint64_t __60__PDFDocument_preloadDataOfPagesInRange_onQueue_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)linearizedRangesForPage:(id)a3
{
  if (a3 && self->_document)
  {
    [a3 pageNumber];
    CGPDFDocumentCreateLinearizedRangesForPage();
  }

  return 0;
}

- (PDFDocument)init
{
  v7.receiver = self;
  v7.super_class = PDFDocument;
  v2 = [(PDFDocument *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_document = 0;
    [(PDFDocument *)v2 _commonInit];
    v4 = [[PDFForm alloc] initWithDocument:v3];
    formData = v3->_formData;
    v3->_formData = v4;
  }

  return v3;
}

- (PDFDocument)initWithURL:(NSURL *)url
{
  v5 = url;
  v11.receiver = self;
  v11.super_class = PDFDocument;
  v6 = [(PDFDocument *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentURL, url);
    v8 = CGPDFDocumentCreateWithURL(v5);
    [(PDFDocument *)v7 setDocument:v8];
    CGPDFDocumentRelease(v8);
    if (!v7->_document)
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(PDFDocument *)v7 _commonInit];
  }

  v9 = v7;
LABEL_6:

  return v9;
}

- (PDFDocument)initWithData:(NSData *)data
{
  v4 = data;
  v9.receiver = self;
  v9.super_class = PDFDocument;
  v5 = [(PDFDocument *)&v9 init];
  if (v5)
  {
    v6 = CGDataProviderCreateWithCFData(v4);
    [(PDFDocument *)v5 _createDocumentWithDataProvider:v6];
    CGDataProviderRelease(v6);
    if (!v5->_document)
    {
      v7 = 0;
      goto LABEL_6;
    }

    [(PDFDocument *)v5 _commonInit];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (PDFDocument)initWithProvider:(CGDataProvider *)a3
{
  v3 = a3;
  v4 = self;
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = PDFDocument;
    v5 = [(PDFDocument *)&v7 init];
    v4 = v5;
    if (v5)
    {
      [(PDFDocument *)v5 _createDocumentWithDataProvider:v3];
      if (!v4->_document)
      {
        v3 = 0;
        goto LABEL_7;
      }

      [(PDFDocument *)v4 _commonInit];
    }

    v4 = v4;
    v3 = v4;
  }

LABEL_7:

  return v3;
}

- (void)_createDocumentWithDataProvider:(CGDataProvider *)a3
{
  v4 = CGPDFDocumentCreateWithProvider(a3);
  [(PDFDocument *)self setDocument:v4];
  CGPDFDocumentRelease(v4);
  self->_createdWithHighLatencyDataProvider = [(PDFDocument *)self hasHighLatencyDataProvider];
}

- (void)setDocument:(CGPDFDocument *)a3
{
  document = self->_document;
  if (document == a3)
  {
    return;
  }

  if (document)
  {
    CGPDFDocumentRelease(document);
    self->_document = 0;
  }

  IsEncrypted = CGPDFDocumentIsEncrypted(a3);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(a3);
  CGPDFDocumentGetDataProvider();
  SizeOfData = CGDataProviderGetSizeOfData();
  v9 = SizeOfData + 15;
  if (SizeOfData >= 0)
  {
    v9 = SizeOfData;
  }

  if (NumberOfPages && NumberOfPages > v9 >> 4)
  {
    NSLog(&cfstr_ErrorGivenCgpd.isa);
    return;
  }

  if (IsEncrypted)
  {
    if (NumberOfPages || (v12 = CGDataProviderCreateWithURL(self->_documentURL)) == 0)
    {
      v10 = CGPDFDocumentRetain(a3);
      self->_document = v10;
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v13 = v12;
      self->_document = CGPDFDocumentCreateWithProvider(v12);
      CGDataProviderRelease(v13);
      v10 = self->_document;
      if (!v10)
      {
        return;
      }
    }

    if (!CGPDFDocumentIsUnlocked(v10))
    {
      self->_permission = 0;
      goto LABEL_22;
    }

    v11 = 1;
  }

  else
  {
    if (!NumberOfPages)
    {
      return;
    }

    self->_document = CGPDFDocumentRetain(a3);
    v11 = 2;
  }

  self->_permission = v11;
LABEL_22:
  formData = self->_formData;
  self->_formData = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    DataProvider = CGPDFDocumentGetDataProvider();
    if (DataProvider)
    {
      v7 = DataProvider;
      v8 = [(NSURL *)self->_documentURL copyWithZone:a3];
      v9 = *(v5 + 16);
      *(v5 + 16) = v8;

      [v5 _createDocumentWithDataProvider:v7];
    }

    else
    {
      v10 = *(v5 + 16);
      *(v5 + 16) = 0;

      *(v5 + 8) = 0;
    }

    v11 = [(NSString *)self->_ownerPassword copyWithZone:a3];
    v12 = *(v5 + 160);
    *(v5 + 160) = v11;

    v13 = [(NSString *)self->_userPassword copyWithZone:a3];
    v14 = *(v5 + 168);
    *(v5 + 168) = v13;

    if (self->_permission)
    {
      v15 = [(PDFDocument *)self passwordUsedForUnlocking];
      [v5 unlockWithPassword:v15];
    }

    *(v5 + 120) = self->_pageCount;
    *(v5 + 128) = self->_majorVersion;
    *(v5 + 132) = self->_minorVersion;
    *(v5 + 136) = self->_isEncrypted;
    *(v5 + 137) = self->_isUnlocked;
    *(v5 + 140) = self->_accessPermissions;
    *(v5 + 144) = self->_allowsPrinting;
    *(v5 + 145) = self->_allowsCopying;
    *(v5 + 146) = self->_allowsDocumentChanges;
    *(v5 + 147) = self->_allowsDocumentAssembly;
    *(v5 + 148) = self->_allowsContentAccessibility;
    *(v5 + 149) = self->_allowsCommenting;
    *(v5 + 150) = self->_allowsFormFieldEntry;
    *(v5 + 152) = self->_permission;
    v16 = [(NSDictionary *)self->_attributes copyWithZone:a3];
    v17 = *(v5 + 176);
    *(v5 + 176) = v16;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak((v5 + 96), WeakRetained);

    *(v5 + 104) = self->_respondsToDidUnlock;
    *(v5 + 105) = self->_respondsToDidFindMatch;
    *(v5 + 106) = self->_respondsToDidBeginDocumentFind;
    *(v5 + 107) = self->_respondsToDidEndDocumentFind;
    *(v5 + 108) = self->_respondsToDidBeginPageFind;
    *(v5 + 109) = self->_respondsToDidEndPageFind;
    *(v5 + 110) = self->_respondsToDidMatchString;
    *(v5 + 111) = self->_respondsToPrintJobTitle;
    *(v5 + 112) = self->_respondsToClassForPage;
    *(v5 + 113) = self->_respondsToClassForAnnotationType;
    *(v5 + 114) = self->_respondsToClassForAnnotationClass;
    *(v5 + 115) = self->_respondsToShouldReadAKInkAnnotations;
    v19 = *(v5 + 192);
    *(v5 + 192) = 0;

    v20 = *(v5 + 200);
    *(v5 + 200) = 0;

    self->_finding = 0;
    self->_findModel = 0;
    findStrings = self->_findStrings;
    self->_findStrings = 0;

    findInstance = self->_findInstance;
    self->_findInstance = 0;

    self->_findOptions = 0;
    self->_findPageIndex = 0;
    *&self->_findCharIndex = xmmword_1C1D79EC0;
    self->_lastFindCharIndex = -1;
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    findResults = self->_findResults;
    self->_findResults = v23;

    v25 = [(NSArray *)self->_documentCatalogMetadata copyWithZone:a3];
    v26 = *(v5 + 304);
    *(v5 + 304) = v25;

    v27 = [(NSString *)self->_xmpNameSpace copyWithZone:a3];
    v28 = *(v5 + 312);
    *(v5 + 312) = v27;

    v29 = [(NSString *)self->_xmpPrefix copyWithZone:a3];
    v30 = *(v5 + 320);
    *(v5 + 320) = v29;

    v31 = [(NSString *)self->_xmpRootPath copyWithZone:a3];
    v32 = *(v5 + 328);
    *(v5 + 328) = v31;

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_pageCount];
    v34 = *(v5 + 32);
    *(v5 + 32) = v33;

    v35 = objc_alloc(MEMORY[0x1E695DF90]);
    v36 = [(NSMutableDictionary *)self->_pageIndices copyWithZone:a3];
    v37 = [v35 initWithDictionary:v36];
    v38 = *(v5 + 48);
    *(v5 + 48) = v37;

    *(v5 + 344) = self->_documentChanged;
    *(v5 + 345) = self->_documentHasBurnInAnnotations;
    *(v5 + 360) = self->_documentHasPageWithApplicationData;
    *(v5 + 352) = self->_documentRedactionCount;
    *(v5 + 361) = self->_pagesChanged;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v39 = self->_pages;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v55;
      do
      {
        v43 = 0;
        do
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v54 + 1) + 8 * v43) copyWithZone:{a3, v54}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v44 setDocument:v5];
          }

          [*(v5 + 32) addObject:v44];

          ++v43;
        }

        while (v41 != v43);
        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v41);
    }

    v45 = [MEMORY[0x1E695DFB8] orderedSetWithArray:*(v5 + 32)];
    v46 = *(v5 + 40);
    *(v5 + 40) = v45;

    formData = self->_formData;
    if (formData)
    {
      v48 = [(PDFForm *)formData fieldNames];
      v49 = [v48 count];

      if (v49)
      {
        v50 = *(v5 + 288);
        *(v5 + 288) = 0;

        v51 = [(PDFForm *)self->_formData copyWithZone:a3];
        v52 = *(v5 + 288);
        *(v5 + 288) = v51;

        *(v5 + 296) = 1;
        [*(v5 + 288) setDocument:v5];
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  [(PDFAKDocumentAdaptor *)self->_akDocumentAdaptor teardown];
  akDocumentAdaptor = self->_akDocumentAdaptor;
  self->_akDocumentAdaptor = 0;

  CGPDFDocumentRelease(self->_document);
  self->_document = 0;
  v4.receiver = self;
  v4.super_class = PDFDocument;
  [(PDFDocument *)&v4 dealloc];
}

- (NSDictionary)documentAttributes
{
  v34[9] = *MEMORY[0x1E69E9840];
  if (!self->_isUnlocked)
  {
    v4 = 0;
    goto LABEL_33;
  }

  attributes = self->_attributes;
  if (attributes)
  {
    v4 = attributes;
    goto LABEL_33;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34[0] = @"Title";
  v34[1] = @"Author";
  v34[2] = @"Subject";
  v34[3] = @"Creator";
  v34[4] = @"Producer";
  v34[5] = @"CreationDate";
  v34[6] = @"ModDate";
  v34[7] = @"Keywords";
  v34[8] = @"AIGC";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:9];
  v24 = self;
  Info = CGPDFDocumentGetInfo(self->_document);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = v8;
  v10 = *v30;
  do
  {
    v11 = 0;
    do
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      v13 = [v12 isEqualToString:@"Keywords"];
      if ([v12 isEqualToString:@"CreationDate"])
      {
        v14 = 1;
      }

      else
      {
        v14 = [v12 isEqualToString:@"ModDate"];
      }

      value = 0;
      if (CGPDFDictionaryGetObject(Info, [v12 cStringUsingEncoding:1], &value))
      {
        Type = CGPDFObjectGetType(value);
        v26 = 0;
        string = 0;
        if (Type == kCGPDFObjectTypeDictionary)
        {
          if (!CGPDFObjectGetValue(value, kCGPDFObjectTypeDictionary, &v26))
          {
            goto LABEL_25;
          }

          v16 = CGPDFDictionaryCreateNSDictionary(v26);
LABEL_22:
          v17 = v16;
          goto LABEL_23;
        }

        if (Type == kCGPDFObjectTypeString && CGPDFObjectGetValue(value, kCGPDFObjectTypeString, &string))
        {
          if (v14)
          {
            v16 = CGPDFStringCopyDate(string);
            if (v16)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v18 = CGPDFStringCopyTextString(string);
            if (v18)
            {
              v17 = v18;
              if (CFStringGetLength(v18) >= 1)
              {
                if (v13)
                {
                  v19 = [v17 componentsSeparatedByString:{@", "}];

                  [v25 setObject:v19 forKey:v12];
                  v17 = v19;
                  goto LABEL_24;
                }

LABEL_23:
                [v25 setObject:v17 forKey:v12];
LABEL_24:
              }
            }
          }
        }
      }

LABEL_25:
      ++v11;
    }

    while (v9 != v11);
    v20 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v9 = v20;
  }

  while (v20);
LABEL_32:

  v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v25];
  v22 = v24->_attributes;
  v24->_attributes = v21;

  v4 = v24->_attributes;
LABEL_33:

  return v4;
}

- (void)setDocumentAttributes:(NSDictionary *)documentAttributes
{
  v8 = documentAttributes;
  if ([(PDFDocument *)self allowsDocumentChanges])
  {
    v4 = [(NSDictionary *)v8 copy];
    attributes = self->_attributes;
    self->_attributes = v4;
  }

  else
  {
    v6 = [(PDFDocument *)self permissionsStatus];
    v7 = @"user";
    if (v6 == kPDFDocumentPermissionsOwner)
    {
      v7 = @"owner";
    }

    NSLog(&cfstr_PdfdocumentSSe.isa, v7);
  }
}

- (BOOL)unlockWithPassword:(NSString *)password
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = password;
  if (self->_permission != 2)
  {
    v6 = [(PDFDocument *)self _SASLSanitize:v4];
    v7 = v6;
    if (self->_permission == 2)
    {
LABEL_4:
      [v7 UTF8String];
      if (CGPDFDocumentAuthenticateUserPassword())
      {
        [(PDFDocument *)self willChangeValueForKey:@"permissionsStatus"];
        self->_permission = 1;
        v8 = [(NSString *)v4 copy];
        userPassword = self->_userPassword;
        self->_userPassword = v8;

        [(PDFDocument *)self didChangeValueForKey:@"permissionsStatus"];
      }

      goto LABEL_14;
    }

    [v6 UTF8String];
    if (!CGPDFDocumentAuthenticateOwnerPassword())
    {
      if (self->_permission == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_4;
    }

    [(PDFDocument *)self willChangeValueForKey:@"permissionsStatus"];
    self->_permission = 2;
    v10 = [(NSString *)v4 copy];
    ownerPassword = self->_ownerPassword;
    self->_ownerPassword = v10;

    [(PDFDocument *)self didChangeValueForKey:@"permissionsStatus"];
    [v7 UTF8String];
    if (CGPDFDocumentAuthenticateUserPassword())
    {
      v12 = v4;
    }

    else
    {
      [&stru_1F416DF70 UTF8String];
      if (!CGPDFDocumentAuthenticateUserPassword())
      {
LABEL_14:
        if (!CGPDFDocumentUnlockWithPassword(self->_document, [v7 UTF8String]))
        {
          v5 = 0;
          goto LABEL_48;
        }

        AccessPermissions = CGPDFDocumentGetAccessPermissions(self->_document);
        self->_accessPermissions = AccessPermissions;
        if (self->_permission == 2)
        {
          v16 = 255;
        }

        else
        {
          v16 = AccessPermissions;
        }

        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = [&unk_1F4183F70 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v50;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v50 != v19)
              {
                objc_enumerationMutation(&unk_1F4183F70);
              }

              [(PDFDocument *)self willChangeValueForKey:*(*(&v49 + 1) + 8 * i)];
            }

            v18 = [&unk_1F4183F70 countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v18);
        }

        self->_allowsPrinting = (v16 & 3) != 0;
        v21 = *&vshl_u16((*&vdup_n_s16(v16) & 0xFF00FF00FF00FFLL), 0xFFFBFFFDFFFEFFFCLL) & 0xFF01FF01FF01FF01;
        *&self->_allowsCopying = vuzp1_s8(v21, v21).u32[0];
        self->_allowsCommenting = (v16 & 0x40) != 0;
        self->_allowsFormFieldEntry = (v16 & 0x80) != 0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v22 = [&unk_1F4183F70 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v46;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v46 != v24)
              {
                objc_enumerationMutation(&unk_1F4183F70);
              }

              [(PDFDocument *)self didChangeValueForKey:*(*(&v45 + 1) + 8 * j)];
            }

            v23 = [&unk_1F4183F70 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v23);
        }

        if (!self->_isUnlocked)
        {
          self->_isUnlocked = CGPDFDocumentIsUnlocked(self->_document);
          self->_pageCount = CGPDFDocumentGetNumberOfPages(self->_document);
          akDocumentAdaptor = self->_akDocumentAdaptor;
          if (akDocumentAdaptor)
          {
            [(PDFAKDocumentAdaptor *)akDocumentAdaptor pdfDocumentDidRemoveAllPagesOrPlaceholders:self];
          }

          v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_pageCount];
          pages = self->_pages;
          self->_pages = v27;

          if (self->_pageCount)
          {
            v29 = 0;
            do
            {
              v30 = v29 + 1;
              v31 = [MEMORY[0x1E696AD98] numberWithInt:v29 + 1];
              [(NSMutableArray *)self->_pages addObject:v31];
              pageIndices = self->_pageIndices;
              v33 = [MEMORY[0x1E696AD98] numberWithInt:v29];
              v34 = [MEMORY[0x1E696AD98] numberWithInt:v29];
              [(NSMutableDictionary *)pageIndices setObject:v33 forKey:v34];

              v29 = v30;
            }

            while (self->_pageCount > v30);
          }

          v35 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
          pagesOrderedSet = self->_pagesOrderedSet;
          self->_pagesOrderedSet = v35;

          if (self->_pageCount)
          {
            v37 = 0;
            do
            {
              v38 = [(NSMutableArray *)self->_pages objectAtIndex:v37];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                document = self->_document;
                ++v37;
                v40 = v38;
                [v40 setPageRef:{CGPDFDocumentGetPage(document, v37)}];
              }

              else
              {
                ++v37;
              }
            }

            while (v37 < self->_pageCount);
          }
        }

        v41 = [MEMORY[0x1E696AD88] defaultCenter];
        [v41 postNotificationName:@"PDFDocumentDidUnlock" object:self];

        if (self->_respondsToDidUnlock)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v43 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFDocumentDidUnlock" object:self];
          [WeakRetained documentDidUnlock:v43];
        }

LABEL_46:
        v5 = 1;
LABEL_48:

        goto LABEL_49;
      }

      v12 = &stru_1F416DF70;
    }

    v13 = [(__CFString *)v12 copy];
    v14 = self->_userPassword;
    self->_userPassword = v13;

    goto LABEL_14;
  }

  v5 = 1;
LABEL_49:

  return v5;
}

- (id)passwordUsedForUnlocking
{
  permission = self->_permission;
  if (permission == 2)
  {
    v4 = 160;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (permission == 1)
  {
    v4 = 168;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)requirePasswordsIfNeededUsingPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  permission = self->_permission;
  if (permission == 1)
  {
    v10 = @"Owner password";
    v11 = @"Enter the owner password to unlock saving.";
    v12 = @"Without the owner password, you do not have permission to save this document.";
    goto LABEL_9;
  }

  if (permission == 2 && !self->_userPassword && self->_accessPermissions < 0xFF)
  {
    v10 = @"User password";
    v11 = @"Enter the user password to preserve those permissions.";
    v12 = @"This document has custom access permissions for the user password";
LABEL_9:
    v13 = PDFKitLocalizedString(v12);
    v14 = PDFKitLocalizedString(v11);
    v15 = PDFKitLocalizedString(v10);
    v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v14 preferredStyle:1];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke;
    v33[3] = &unk_1E8152028;
    v17 = v15;
    v34 = v17;
    [v16 addTextFieldWithConfigurationHandler:v33];
    objc_initWeak(&location, v16);
    v18 = PDFKitLocalizedString(@"Unlock Document");
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_2;
    v30[3] = &unk_1E8151048;
    v19 = v8;
    v30[4] = self;
    v31 = v19;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_3;
    v28[3] = &unk_1E8152050;
    objc_copyWeak(&v29, &location);
    v28[4] = self;
    [v16 _addActionWithTitle:v18 style:0 handler:v30 shouldDismissHandler:v28];

    v20 = MEMORY[0x1E69DC648];
    v21 = PDFKitLocalizedString(@"Cancel");
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_4;
    v26 = &unk_1E8152078;
    v27 = v19;
    v22 = [v20 actionWithTitle:v21 style:1 handler:&v23];

    [v16 addAction:{v22, v23, v24, v25, v26}];
    [v6 presentViewController:v16 animated:1 completion:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    goto LABEL_10;
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 2);
  }

LABEL_10:
}

void __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPlaceholder:v2];
  [v3 setSecureTextEntry:1];
}

uint64_t __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    result = [*(result + 32) _canSaveWithEncryption];
    if (result)
    {
      v2 = *(*(v1 + 40) + 16);

      return v2();
    }
  }

  return result;
}

uint64_t __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_3(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained textFields];
    v5 = [v4 firstObject];
    v6 = [v5 text];

    v7 = *(a1 + 32);
    if (v7[19] == 2)
    {
      v8 = [v7 _SASLSanitize:v6];
      [v8 UTF8String];
      if (CGPDFDocumentAuthenticateUserPassword())
      {
        v9 = [v6 copy];
        v10 = *(a1 + 32);
        v11 = *(v10 + 168);
        *(v10 + 168) = v9;
      }
    }

    else
    {
      [v7 unlockWithPassword:v6];
    }

    v12 = [*(a1 + 32) _canSaveWithEncryption];
    if ((v12 & 1) == 0)
    {
      v13 = [v3 textFields];
      v14 = [v13 firstObject];
      [v14 setText:0];

      v15 = objc_alloc(MEMORY[0x1E696AAB0]);
      v16 = PDFKitLocalizedString(@"Invalid Password");
      v23[0] = *MEMORY[0x1E69DB650];
      v17 = [MEMORY[0x1E69DC888] systemRedColor];
      v24[0] = v17;
      v23[1] = *MEMORY[0x1E69DB648];
      v18 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] smallSystemFontSize];
      v19 = [v18 systemFontOfSize:?];
      v24[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v21 = [v15 initWithString:v16 attributes:v20];
      [v3 _setAttributedMessage:v21];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __80__PDFDocument_requirePasswordsIfNeededUsingPresentingViewController_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (NSString)string
{
  if (self->_isUnlocked)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (self->_pageCount)
    {
      v4 = 0;
      do
      {
        v5 = [(PDFDocument *)self pageAtIndex:v4];
        v6 = [v5 string];

        if (v6)
        {
          [v3 appendString:v6];
          if (self->_pageCount - 1 > v4)
          {
            [v3 appendString:@"\n"];
          }
        }

        ++v4;
      }

      while (self->_pageCount > v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v5 = delegate;
  objc_storeWeak(&self->_delegate, v5);
  if (v5)
  {
    self->_respondsToDidUnlock = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidFindMatch = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidBeginDocumentFind = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidEndDocumentFind = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidBeginPageFind = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidEndPageFind = objc_opt_respondsToSelector() & 1;
    self->_respondsToDidMatchString = objc_opt_respondsToSelector() & 1;
    self->_respondsToClassForPage = objc_opt_respondsToSelector() & 1;
    self->_respondsToClassForAnnotationType = objc_opt_respondsToSelector() & 1;
    self->_respondsToClassForAnnotationClass = 0;
    self->_respondsToShouldReadAKInkAnnotations = objc_opt_respondsToSelector() & 1;
    self->_respondsToHandleTabFrom = objc_opt_respondsToSelector() & 1;
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
    *&self->_respondsToDidEndDocumentFind = 0;
    *&self->_respondsToDidUnlock = 0;
    *&self->_respondsToClassForPage = 0;
    self->_respondsToHandleTabFrom = 0;
  }

  self->_respondsToDidReceiveAnalysis = v4 & 1;

  MEMORY[0x1EEE66BE0]();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSData)dataRepresentation
{
  v3 = [MEMORY[0x1E695DF20] dictionary];
  v4 = [(PDFDocument *)self dataRepresentationWithOptions:v3];

  return v4;
}

- (NSData)dataRepresentationWithOptions:(NSDictionary *)options
{
  v4 = *MEMORY[0x1E695E480];
  v5 = options;
  Mutable = CFDataCreateMutable(v4, 0);
  v7 = CGDataConsumerCreateWithCFData(Mutable);
  v8 = [(PDFDocument *)self writeToConsumer:v7 withOptions:v5];

  if (v7)
  {
    CGDataConsumerRelease(v7);
  }

  if (!v8 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  return Mutable;
}

- (BOOL)writeToFile:(NSString *)path withOptions:(NSDictionary *)options
{
  v6 = MEMORY[0x1E695DFF8];
  v7 = options;
  v8 = [v6 fileURLWithPath:path];
  LOBYTE(self) = [(PDFDocument *)self writeToURL:v8 withOptions:v7];

  return self;
}

- (BOOL)writeToURL:(NSURL *)url withOptions:(NSDictionary *)options
{
  v6 = url;
  v7 = MEMORY[0x1E696AC08];
  v8 = options;
  v9 = [v7 defaultManager];
  v10 = [(NSURL *)v6 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = MEMORY[0x1E695DFF8];
    v13 = NSTemporaryDirectory();
    v14 = [v12 fileURLWithPath:v13];

    v15 = MEMORY[0x1E696AEC0];
    v16 = [(NSURL *)v6 lastPathComponent];
    v17 = [v15 stringWithFormat:@".%@", v16];
    v18 = [v14 URLByAppendingPathComponent:v17];
  }

  else
  {
    v18 = v6;
  }

  v19 = CGDataConsumerCreateWithURL(v18);
  v20 = [(PDFDocument *)self writeToConsumer:v19 withOptions:v8];

  if ((v11 & v20) == 1)
  {
    v32 = 0;
    v21 = *MEMORY[0x1E695DDE8];
    [(NSURL *)v6 getResourceValue:&v32 forKey:*MEMORY[0x1E695DDE8] error:0];
    v22 = v32;
    v31 = 0;
    [(__CFURL *)v18 getResourceValue:&v31 forKey:v21 error:0];
    v23 = v31;
    v24 = v23;
    if (v22 && v23 && ([v22 isEqualToString:v23] & 1) == 0)
    {
      v30 = 0;
      [v9 removeItemAtURL:v6 error:&v30];
      v26 = v30;
      v29 = v26;
      LOBYTE(v20) = [v9 copyItemAtURL:v18 toURL:v6 error:&v29];
      v25 = v29;
    }

    else
    {
      v28 = 0;
      LOBYTE(v20) = [v9 replaceItemAtURL:v6 withItemAtURL:v18 backupItemName:0 options:0 resultingItemURL:0 error:&v28];
      v25 = v28;
    }
  }

  if (v19)
  {
    CGDataConsumerRelease(v19);
  }

  return v20 & 1;
}

- (PDFOutline)outlineRoot
{
  v2 = self;
  objc_sync_enter(v2);
  outline = v2->_outline;
  if (outline)
  {
LABEL_2:
    v4 = outline;
    goto LABEL_11;
  }

  document = v2->_document;
  if (document && v2->_isUnlocked)
  {
    Catalog = CGPDFDocumentGetCatalog(document);
    if (Catalog)
    {
      value = 0;
      if (CGPDFDictionaryGetDictionary(Catalog, "Outlines", &value))
      {
        v7 = [PDFOutline alloc];
        v8 = [(PDFOutline *)v7 initWithDictionary:value forDocument:v2 parent:0];
        v9 = v2->_outline;
        v2->_outline = v8;

        if (![(PDFOutline *)v2->_outline numberOfChildren])
        {
          v10 = v2->_outline;
          v2->_outline = 0;
        }
      }
    }

    outline = v2->_outline;
    goto LABEL_2;
  }

  v4 = 0;
LABEL_11:
  objc_sync_exit(v2);

  return v4;
}

- (void)setOutlineRoot:(PDFOutline *)outlineRoot
{
  v4 = outlineRoot;
  obj = self;
  objc_sync_enter(obj);
  outline = obj->_outline;
  obj->_outline = v4;

  objc_sync_exit(obj);
}

- (PDFOutline)outlineItemForSelection:(PDFSelection *)selection
{
  if (selection)
  {
    v4 = [(PDFSelection *)selection asDestination];
    if (v4)
    {
      v5 = [(PDFDocument *)self outlineRoot];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        v8 = 0;
        do
        {
          v9 = v8;
          v8 = v7;

          v7 = [(PDFDocument *)self _getNearestOutline:v8 forDestination:v4];
        }

        while (v7 != v8);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PDFPage)pageAtIndex:(NSUInteger)index
{
  v5 = self->_pages;
  objc_sync_enter(v5);
  if (self->_pageCount <= index)
  {
    v18 = 0;
    goto LABEL_26;
  }

  v6 = [(NSMutableArray *)self->_pages objectAtIndex:index];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = v6;
    if (([v18 akDidSetupRealPageModelController] & 1) == 0)
    {
      [(PDFDocument *)self _notifyAKAdaptorPagePlaceholder:0 wasReplacedWithPage:v18 atIndex:index];
    }

    goto LABEL_25;
  }

  pageIndices = self->_pageIndices;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [(NSMutableDictionary *)pageIndices objectForKey:v8];

  v10 = [(PDFDocument *)self isLinearized];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (!v10 || ![(PDFDocument *)self hasHighLatencyDataProvider])
  {
    Page = CGPDFDocumentGetPage(self->_document, ([v9 intValue] + 1));
    goto LABEL_12;
  }

  [v9 intValue];
  Page = CGPDFDocumentGetPageNoCreate();
  if (Page)
  {
LABEL_12:
    RotationAngle = 0;
    goto LABEL_13;
  }

  v16 = CGPDFDocumentGetPage(self->_document, 1uLL);
  RotationAngle = v16;
  if (v16)
  {
    BoxRect = CGPDFPageGetBoxRect(v16, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    Page = 0;
    RotationAngle = CGPDFPageGetRotationAngle(RotationAngle);
  }

  else
  {
    Page = 0;
  }

LABEL_13:
  if (self->_respondsToClassForPage)
  {
    v19 = [(PDFDocument *)self delegate];
    v20 = [v19 classForPage];

    if (!Page)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = [(PDFDocument *)self pageClass];
    if (!Page)
    {
LABEL_15:
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      if (CGRectIsNull(v27))
      {
        v21 = objc_alloc_init(v20);
      }

      else
      {
        v21 = [[v20 alloc] initWithPageNumber:(objc_msgSend(v9 pageRect:"intValue") + 1) rotation:{RotationAngle, x, y, width, height}];
      }

      goto LABEL_20;
    }
  }

  v21 = [[v20 alloc] initWithPageRef:Page];
LABEL_20:
  v18 = v21;
  [v21 setDocument:self];
  [(NSMutableArray *)self->_pages replaceObjectAtIndex:index withObject:v18];
  if (self->_pagesOrderedSet)
  {
    v22 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
    pagesOrderedSet = self->_pagesOrderedSet;
    self->_pagesOrderedSet = v22;
  }

  [(PDFDocument *)self _notifyAKAdaptorPagePlaceholder:v6 wasReplacedWithPage:v18 atIndex:index];
  if (-[NSMutableIndexSet containsIndex:](self->_bookmarkedPages, "containsIndex:", [v9 intValue]))
  {
    [v18 setBookmarked:1 updateBookmarks:0];
  }

LABEL_25:
LABEL_26:
  objc_sync_exit(v5);

  return v18;
}

- (CGRect)normalizedBoundsForBox:(int64_t)a3 ofPageAtIndex:(unint64_t)a4
{
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  if (self->_pageCount <= a4)
  {
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    goto LABEL_19;
  }

  v9 = [(NSMutableArray *)self->_pages objectAtIndex:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = v9;
    [v12 boundsForBox:a3];
    width = v18;
    height = v19;
    v20 = [v12 rotation];
LABEL_14:
    v23 = v20;
    goto LABEL_15;
  }

  pageIndices = self->_pageIndices;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)pageIndices objectForKey:v11];

  if ((a3 - 1) >= 4)
  {
    LODWORD(a3) = 0;
  }

  if ([(PDFDocument *)self isLinearized]&& [(PDFDocument *)self hasHighLatencyDataProvider])
  {
    [v12 intValue];
    Page = CGPDFDocumentGetPageNoCreate();
    if (Page)
    {
LABEL_13:
      BoxRect = CGPDFPageGetBoxRect(Page, a3);
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(Page);
      v20 = PDFNormalizeRotation(RotationAngle);
      goto LABEL_14;
    }

    document = self->_document;
    v15 = 1;
  }

  else
  {
    v21 = self->_document;
    v15 = ([v12 intValue] + 1);
    document = v21;
  }

  Page = CGPDFDocumentGetPage(document, v15);
  if (Page)
  {
    goto LABEL_13;
  }

  v23 = 0;
LABEL_15:

  if (v23 == 270 || v23 == 90)
  {
    v24 = width;
    width = height;
    height = v24;
  }

  v16 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);

LABEL_19:
  v25 = v16;
  v26 = v17;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)_rawPageAtIndex:(unint64_t)a3
{
  if (self->_subclassOverridesPageAtIndex)
  {
    if ([(PDFDocument *)self pageCount]> a3)
    {
      v5 = [(PDFDocument *)self pageAtIndex:a3];
      goto LABEL_7;
    }
  }

  else if (self->_pageCount > a3)
  {
    v6 = self->_pages;
    objc_sync_enter(v6);
    v5 = [(NSMutableArray *)self->_pages objectAtIndex:a3];
    objc_sync_exit(v6);

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSUInteger)indexForPage:(PDFPage *)page
{
  v4 = page;
  v5 = self->_pages;
  objc_sync_enter(v5);
  v6 = [(NSOrderedSet *)self->_pagesOrderedSet indexOfObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)insertPage:(PDFPage *)page atIndex:(NSUInteger)index
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = page;
  if (v6)
  {
    if ([(PDFDocument *)self allowsDocumentAssembly])
    {
      if ([(PDFDocument *)self isFinding])
      {
        [(PDFDocument *)self cancelFindString];
      }

      WeakRetained = objc_loadWeakRetained(&self->_pageChangeDelegate);
      obj = self->_pages;
      objc_sync_enter(obj);
      v7 = objc_opt_class();
      v30 = [v7 _getDocumentID:{CGPDFPageGetDocument(-[PDFPage pageRef](v6, "pageRef"))}];
      v8 = [objc_opt_class() _getDocumentID:{-[PDFDocument documentRef](self, "documentRef")}];
      v9 = v8;
      if (v30 && v8 && ([v30 isEqual:v8] & 1) == 0)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = [(PDFPage *)v6 annotations];
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          v12 = *v33;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v33 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v32 + 1) + 8 * i) clearFormData];
            }

            v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v11);
        }
      }

      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained willInsertPage:v6 atIndex:index];
      }

      [(NSMutableArray *)self->_pages insertObject:v6 atIndex:index];
      v14 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
      pagesOrderedSet = self->_pagesOrderedSet;
      self->_pagesOrderedSet = v14;

      [(PDFPage *)v6 setDocument:self];
      v16 = v9;
      pageCount = self->_pageCount;
      if (pageCount && pageCount > index)
      {
        do
        {
          v18 = pageCount - 1;
          pageIndices = self->_pageIndices;
          v20 = [MEMORY[0x1E696AD98] numberWithInt:(pageCount - 1)];
          v21 = [(NSMutableDictionary *)pageIndices objectForKey:v20];

          if (v21)
          {
            v22 = self->_pageIndices;
            v23 = [MEMORY[0x1E696AD98] numberWithInt:(pageCount - 1)];
            [(NSMutableDictionary *)v22 removeObjectForKey:v23];

            v24 = self->_pageIndices;
            v25 = [MEMORY[0x1E696AD98] numberWithInt:pageCount];
            [(NSMutableDictionary *)v24 setObject:v21 forKey:v25];
          }

          pageCount = (pageCount - 1);
        }

        while (v18 > index);
        pageCount = self->_pageCount;
        v16 = v9;
      }

      self->_pageCount = pageCount + 1;
      if (self->_akDocumentAdaptor)
      {
        [(PDFPage *)v6 setupAKPageAdaptorIfNecessary];
        [(PDFAKDocumentAdaptor *)self->_akDocumentAdaptor pdfDocument:self didInsertPage:v6 atIndex:index];
      }

      if (self->_document)
      {
        if ([(PDFPage *)v6 pageRef])
        {
          CGPDFDocumentInsertPageAtIndex();
        }

        else
        {
          self->_pagesChanged.blankPagesAdded = 1;
        }
      }

      objc_sync_exit(obj);
      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained didInsertPage:v6 atIndex:index];
      }

      v28 = [MEMORY[0x1E696AD88] defaultCenter];
      [v28 postNotificationName:@"PDFDocumentDidMutate" object:self];

      self->_documentChanged = 1;
      self->_pagesChanged.pagesAdded = 1;
    }

    else
    {
      v26 = [(PDFDocument *)self permissionsStatus];
      v27 = @"user";
      if (v26 == kPDFDocumentPermissionsOwner)
      {
        v27 = @"owner";
      }

      NSLog(&cfstr_PdfdocumentSIn.isa, v27);
    }
  }
}

- (void)removePageAtIndex:(NSUInteger)index
{
  if ([(PDFDocument *)self allowsDocumentAssembly])
  {
    if (self->_pageCount > index)
    {
      if ([(PDFDocument *)self isFinding])
      {
        [(PDFDocument *)self cancelFindString];
      }

      WeakRetained = objc_loadWeakRetained(&self->_pageChangeDelegate);
      v6 = self->_pages;
      objc_sync_enter(v6);
      v26 = [(PDFDocument *)self pageAtIndex:index];
      if (v26)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [WeakRetained willRemovePage:v26 atIndex:index];
        }

        [(NSMutableArray *)self->_pages removeObjectAtIndex:index];
        v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
        pagesOrderedSet = self->_pagesOrderedSet;
        self->_pagesOrderedSet = v7;

        [v26 setDocument:0];
        pageIndices = self->_pageIndices;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        [(NSMutableDictionary *)pageIndices removeObjectForKey:v10];

        pageCount = self->_pageCount;
        if (index + 1 < pageCount)
        {
          v12 = index;
          do
          {
            v13 = self->_pageIndices;
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 + 1];
            v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

            if (v15)
            {
              v16 = self->_pageIndices;
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12 + 1];
              [(NSMutableDictionary *)v16 removeObjectForKey:v17];

              v18 = self->_pageIndices;
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
              [(NSMutableDictionary *)v18 setObject:v15 forKey:v19];
            }

            pageCount = self->_pageCount;
            v20 = v12 + 2;
            ++v12;
          }

          while (v20 < pageCount);
        }

        self->_pageCount = pageCount - 1;
        akDocumentAdaptor = self->_akDocumentAdaptor;
        if (akDocumentAdaptor)
        {
          [(PDFAKDocumentAdaptor *)akDocumentAdaptor pdfDocument:self didRemovePage:v26 atIndex:index];
        }

        if (self->_document)
        {
          if ([v26 pageRef])
          {
            document = self->_document;
            if (document == CGPDFPageGetDocument([v26 pageRef]))
            {
              CGPDFDocumentRemovePageAtIndex();
            }
          }
        }

        objc_sync_exit(v6);

        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [WeakRetained didRemovePage:v26 atIndex:index];
        }

        v23 = [MEMORY[0x1E696AD88] defaultCenter];
        [v23 postNotificationName:@"PDFDocumentDidMutate" object:self];

        self->_documentChanged = 1;
        self->_pagesChanged.pagesRemoved = 1;
      }

      else
      {
        objc_sync_exit(v6);
      }
    }
  }

  else
  {
    v24 = [(PDFDocument *)self permissionsStatus];
    v25 = @"user";
    if (v24 == kPDFDocumentPermissionsOwner)
    {
      v25 = @"owner";
    }

    NSLog(&cfstr_PdfdocumentSRe.isa, v25);
  }
}

- (void)exchangePageAtIndex:(NSUInteger)indexA withPageAtIndex:(NSUInteger)indexB
{
  if ([(PDFDocument *)self allowsDocumentAssembly])
  {
    if (indexA != indexB)
    {
      pageCount = self->_pageCount;
      if (pageCount > indexA && pageCount > indexB)
      {
        if ([(PDFDocument *)self isFinding])
        {
          [(PDFDocument *)self cancelFindString];
        }

        WeakRetained = objc_loadWeakRetained(&self->_pageChangeDelegate);
        obj = self->_pages;
        objc_sync_enter(obj);
        pageIndices = self->_pageIndices;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexA];
        v12 = [(NSMutableDictionary *)pageIndices objectForKey:v11];

        v13 = self->_pageIndices;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexB];
        v15 = [(NSMutableDictionary *)v13 objectForKey:v14];

        v27 = [(NSMutableArray *)self->_pages objectAtIndex:indexA];
        v16 = [(NSMutableArray *)self->_pages objectAtIndex:indexB];
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [WeakRetained willSwapPage:v27 atIndex:indexA forPage:v16 atIndex:indexB];
        }

        v17 = self->_pageIndices;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexB];
        [(NSMutableDictionary *)v17 setObject:v12 forKey:v18];

        v19 = self->_pageIndices;
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexA];
        [(NSMutableDictionary *)v19 setObject:v15 forKey:v20];

        [(NSMutableArray *)self->_pages exchangeObjectAtIndex:indexA withObjectAtIndex:indexB];
        v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_pages];
        pagesOrderedSet = self->_pagesOrderedSet;
        self->_pagesOrderedSet = v21;

        if (self->_akDocumentAdaptor)
        {
          [v16 setupAKPageAdaptorIfNecessary];
          [(PDFAKDocumentAdaptor *)self->_akDocumentAdaptor pdfDocument:self didExchangePage:v27 atIndex:indexA withPage:v16 atIndex:indexB];
        }

        if (self->_document)
        {
          CGPDFDocumentExchangePagesAtIndices();
        }

        objc_sync_exit(obj);
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [WeakRetained didSwapPage:v27 atIndex:indexA forPage:v16 atIndex:indexB];
        }

        v23 = [MEMORY[0x1E696AD88] defaultCenter];
        [v23 postNotificationName:@"PDFDocumentDidMutate" object:self];

        self->_documentChanged = 1;
        self->_pagesChanged.pagesExchanged = 1;
      }
    }
  }

  else
  {
    v24 = [(PDFDocument *)self permissionsStatus];
    v25 = @"user";
    if (v24 == kPDFDocumentPermissionsOwner)
    {
      v25 = @"owner";
    }

    NSLog(&cfstr_PdfdocumentSEx.isa, v25);
  }
}

- (NSArray)findString:(NSString *)string withOptions:(NSStringCompareOptions)options
{
  v6 = string;
  v7 = v6;
  if (v6 && [(NSString *)v6 length])
  {
    self->_findModel = 0;
    if ([(PDFDocument *)self isFinding])
    {
      [(PDFDocument *)self cancelFindString];
    }

    [(PDFDocument *)self normalizeFindOptions:options];
    if ((self->_findOptions & 4) != 0)
    {
      v10 = [(PDFDocument *)self pageCount];
      v8 = 0;
      self->_findPageIndex = v10 - 1;
    }

    else
    {
      self->_findPageIndex = 0;
      v8 = [(PDFDocument *)self pageCount]- 1;
    }

    self->_findCharIndex = -1;
    self->_lastFindPageIndex = v8;
    self->_lastFindCharIndex = -1;
    [(PDFDocument *)self coreFindString:v7];
    v9 = self->_findResults;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)beginFindString:(NSString *)string withOptions:(NSStringCompareOptions)options
{
  v6 = string;
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v6 = [(NSString *)v6 length];
    v7 = v9;
    if (v6)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
      [(PDFDocument *)self beginFindStrings:v8 withOptions:options];

      v7 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)beginFindStrings:(NSArray *)strings withOptions:(NSStringCompareOptions)options
{
  v6 = strings;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v6 = [(NSArray *)v6 count];
    v7 = v10;
    if (v6)
    {
      self->_findModel = 1;
      [(PDFDocument *)self normalizeFindOptions:options];
      if ((self->_findOptions & 4) != 0)
      {
        v9 = [(PDFDocument *)self pageCount];
        v8 = 0;
        self->_findPageIndex = v9 - 1;
      }

      else
      {
        self->_findPageIndex = 0;
        v8 = [(PDFDocument *)self pageCount]- 1;
      }

      self->_findCharIndex = -1;
      self->_lastFindPageIndex = v8;
      self->_lastFindCharIndex = -1;
      v6 = [(PDFDocument *)self coreFindStrings:v10];
      v7 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (PDFSelection)findString:(NSString *)string fromSelection:(PDFSelection *)selection withOptions:(NSStringCompareOptions)options
{
  v8 = string;
  v9 = selection;
  if (v8 && [(NSString *)v8 length])
  {
    self->_findModel = 2;
    v10 = [(PDFDocument *)self _findString:v8 fromSelection:v9 withOptions:options];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)findStringPerPage:(id)a3 fromSelection:(id)a4 withOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 length])
  {
    self->_findModel = 3;
    v10 = [(PDFDocument *)self _findString:v8 fromSelection:v9 withOptions:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_findString:(id)a3 fromSelection:(id)a4 withOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(PDFDocument *)self normalizeFindOptions:a5];
  if ((self->_findOptions & 4) != 0)
  {
    v11 = [(PDFDocument *)self pageCount];
    v10 = 0;
    self->_findPageIndex = v11 - 1;
  }

  else
  {
    self->_findPageIndex = 0;
    v10 = [(PDFDocument *)self pageCount]- 1;
  }

  self->_findCharIndex = -1;
  self->_lastFindPageIndex = v10;
  self->_lastFindCharIndex = -1;
  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = [v9 isEmpty];
  findModel = self->_findModel;
  if (v12)
  {
    if (findModel != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (findModel == 3)
  {
LABEL_9:
    v14 = [v9 pages];
    v15 = [v14 lastObject];

    goto LABEL_14;
  }

  if ((self->_findOptions & 4) != 0)
  {
    [v9 firstPage];
  }

  else
  {
    [v9 lastPage];
  }
  v15 = ;
LABEL_14:
  v16 = [v15 document];

  if (v16 != self)
  {
    goto LABEL_15;
  }

  self->_findPageIndex = [(PDFDocument *)self indexForPage:v15];
  if (![v15 numberOfCharacters])
  {
    goto LABEL_15;
  }

  if ((self->_findOptions & 4) != 0)
  {
    v23 = [v9 pdfKitIndexOfFirstCharacterOnPage:v15];
    self->_findCharIndex = v23 - 1;
    if (v23 - 1 < 0)
    {
      while (1)
      {
        findPageIndex = self->_findPageIndex;
        if (!findPageIndex)
        {
          goto LABEL_31;
        }

        self->_findPageIndex = findPageIndex - 1;
        v22 = [(PDFDocument *)self pageAtIndex:?];
        if ([v22 numberOfCharacters])
        {
          v25 = [v22 numberOfCharacters] - 1;
LABEL_34:
          self->_findCharIndex = v25;

          break;
        }
      }
    }

LABEL_15:

LABEL_16:
    findInstance = self->_findInstance;
    self->_findInstance = 0;

    [(PDFDocument *)self coreFindString:v8];
    v18 = self->_findInstance;
    goto LABEL_17;
  }

  v20 = [v9 pdfKitIndexOfLastCharacterOnPage:v15] + 1;
  self->_findCharIndex = v20;
  if (v20 < [v15 numberOfCharacters])
  {
    goto LABEL_15;
  }

  while (1)
  {
    v21 = self->_findPageIndex + 1;
    if (v21 >= [(PDFDocument *)self pageCount])
    {
      break;
    }

    ++self->_findPageIndex;
    v22 = [(PDFDocument *)self pageAtIndex:?];
    if ([v22 numberOfCharacters])
    {
      v25 = 0;
      goto LABEL_34;
    }
  }

LABEL_31:

  v18 = 0;
LABEL_17:

  return v18;
}

- (void)didMatchString:(id)a3
{
  v10 = a3;
  [(NSMutableArray *)self->_findResults addObject:?];
  if (self->_respondsToDidFindMatch)
  {
    v4 = [(PDFDocument *)self delegate];
    v5 = MEMORY[0x1E696AD80];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:@"PDFDocumentFoundSelection"];
    v7 = [v5 notificationWithName:@"PDFDidFindMatch" object:self userInfo:v6];
    [v4 documentDidFindMatch:v7];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:@"PDFDocumentFoundSelection"];
  [v8 postNotificationName:@"PDFDidFindMatch" object:self userInfo:v9];
}

- (void)cancelFindString
{
  v3 = [MEMORY[0x1E696AD90] defaultQueue];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"pdfDocumentFindNext" object:self];
  [v3 dequeueNotificationsMatching:v4 coalesceMask:0];

  [(PDFDocument *)self cleanupFind];
}

- (void)asyncFindStrings:(id)a3 withOptions:(unint64_t)a4 withDelegate:(id)a5 onQueue:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!self->_asyncSearchQueue)
  {
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("PDFDocument.asyncFindString", v13);
    asyncSearchQueue = self->_asyncSearchQueue;
    self->_asyncSearchQueue = v14;
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = [(PDFDocument *)self pageCount];
  v16 = v12;
  v17 = v16;
  if (!v16)
  {
    v17 = MEMORY[0x1E69E96A0];
    v18 = MEMORY[0x1E69E96A0];
  }

  IsOCREnabled = PDFKitIsOCREnabled();
  v20 = GetDefaultsWriteUsePageAnalyzerV2();
  v21 = objc_opt_respondsToSelector();
  v22 = objc_opt_respondsToSelector();
  v30 = v20;
  v31 = IsOCREnabled;
  v23 = objc_opt_respondsToSelector();
  v29 = v16;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v24 = objc_opt_new();
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2810000000;
  v45[3] = &unk_1C1D88347;
  v46 = 0;
  v25 = self->_asyncSearchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke;
  block[3] = &unk_1E8152138;
  v36 = v49;
  objc_copyWeak(&v38, &from);
  v40 = v21 & 1;
  objc_copyWeak(v39, &location);
  v41 = v31;
  v42 = v30;
  v39[1] = a4;
  v43 = v22 & 1;
  v33 = v10;
  v34 = v17;
  v37 = v45;
  v35 = v24;
  v44 = v23 & 1;
  v26 = v24;
  v27 = v17;
  v28 = v10;
  dispatch_async(v25, block);

  objc_destroyWeak(v39);
  objc_destroyWeak(&v38);
  _Block_object_dispose(v45, 8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v49, 8);
}

void __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_2;
  block[3] = &unk_1E8152110;
  objc_copyWeak(&v15, (a1 + 72));
  v17 = *(a1 + 96);
  objc_copyWeak(v16, (a1 + 80));
  v18 = *(a1 + 97);
  v3 = *(a1 + 32);
  v4 = *(a1 + 88);
  v10 = v3;
  v16[1] = v4;
  v19 = *(a1 + 99);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v11 = v5;
  v13 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v12 = v7;
  v14 = v8;
  v20 = *(a1 + 100);
  dispatch_apply(v2, 0, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&v15);
}

void __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained && (*(a1 + 96) != 1 || ([WeakRetained cancelFind] & 1) == 0))
  {
    v6 = objc_loadWeakRetained((a1 + 80));
    v7 = v6;
    if (v6)
    {
      v8 = [v6 pageAtIndex:a2];
      v9 = v8;
      if (*(a1 + 97) == 1 && ([v8 isTextFromOCR] & 1) == 0)
      {
        if (*(a1 + 98) == 1)
        {
          [PDFPageAnalyzerV2 analyzePage:v9 withBox:1 requestTypes:1];
        }

        else if ([PDFPageEvaluator isPageCandidateForOCR:v9])
        {
          v10 = dispatch_semaphore_create(0);
          v11 = +[PDFPageAnalyzer sharedInstance];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_3;
          v48[3] = &unk_1E8151EC8;
          v49 = v10;
          v12 = v10;
          [v11 analyzePage:v9 analysisTypes:1 completionQueue:0 completionBlock:v48];

          v13 = dispatch_time(0, 3000000000);
          dispatch_semaphore_wait(v12, v13);
        }
      }

      v14 = [v9 string];
      v15 = v14;
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__4;
      v46 = __Block_byref_object_dispose__4;
      v47 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      if (v14)
      {
        v16 = *(a1 + 32);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_4;
        v32[3] = &unk_1E81520A0;
        v17 = v14;
        v18 = *(a1 + 88);
        v33 = v17;
        v35 = &v38;
        v36 = &v42;
        v37 = v18;
        v34 = v9;
        [v16 enumerateObjectsUsingBlock:v32];
        v19 = *(v39 + 6);
        if ([*(a1 + 32) count] > v19)
        {
          v20 = v43[5];
          v43[5] = 0;
        }

        if (v43[5] && [*(a1 + 32) count] >= 2)
        {
          [v43[5] sortUsingComparator:&__block_literal_global_15];
        }
      }

      if (*(a1 + 99) == 1)
      {
        v21 = *(a1 + 40);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_6;
        block[3] = &unk_1E81520C8;
        v29 = v5;
        v31 = &v42;
        v30 = v9;
        dispatch_async(v21, block);
      }

      os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
      if (v43[5])
      {
        [*(a1 + 48) addObjectsFromArray:?];
      }

      v22 = --*(*(*(a1 + 64) + 8) + 24);
      os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
      if (*(a1 + 100) == 1 && !v22)
      {
        [*(a1 + 48) sortWithOptions:16 usingComparator:&__block_literal_global_533];
        v23 = *(a1 + 40);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_8;
        v24[3] = &unk_1E8151480;
        v25 = v5;
        v26 = *(a1 + 48);
        v27 = v7;
        dispatch_async(v23, v24);
      }

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
    }
  }
}

void __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v19 = a2;
  v6 = [*(a1 + 32) rangeOfString:v19 options:*(a1 + 64) range:{0, objc_msgSend(*(a1 + 32), "length")}];
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = 1;
    v11 = v7;
    do
    {
      if (v10)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = *(*(a1 + 56) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;
      }

      v15 = [*(a1 + 40) selectionForRange:{v9, v11}];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v15];
      v16 = v9 + v11;
      v17 = [*(a1 + 32) length] - v16;

      v9 = [*(a1 + 32) rangeOfString:v19 options:*(a1 + 64) range:{v16, v17}];
      v11 = v18;
      v10 = 0;
    }

    while (v18);
  }

  *a4 = v8 == 0;
}

void *__65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_6(void *a1)
{
  result = a1[4];
  if (result)
  {
    return [result foundResults:*(*(a1[6] + 8) + 40) forPage:a1[5]];
  }

  return result;
}

uint64_t __65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pages];
  v6 = [v5 firstObject];

  v7 = [v6 document];
  v8 = [v7 indexForPage:v6];

  v9 = [v4 pages];

  v10 = [v9 firstObject];

  v11 = [v10 document];
  v12 = [v11 indexForPage:v10];

  v13 = 1;
  if (v8 <= v12)
  {
    v13 = -1;
  }

  if (v8 < v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

void *__65__PDFDocument_asyncFindStrings_withOptions_withDelegate_onQueue___block_invoke_8(void *a1)
{
  result = a1[4];
  if (result)
  {
    return [result foundResults:a1[5] forDocument:a1[6]];
  }

  return result;
}

- (void)asyncFindString:(id)a3 withDelegate:(id)a4 onQueue:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v13 count:1];

  [(PDFDocument *)self asyncFindStrings:v12 withOptions:1 withDelegate:v10 onQueue:v9, v13, v14];
}

- (PDFSelection)selectionForEntireDocument
{
  v3 = [(PDFDocument *)self pageCount];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(PDFDocument *)self pageAtIndex:v5];
      v8 = [v7 selectionForAll];
      v9 = v8;
      if (v6)
      {
        [v6 addSelectionNoNormalize:v8];
      }

      else
      {
        v6 = v8;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 withGranularity:(unint64_t)a7
{
  if (a7 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a7 == 1;
  }

  return [(PDFDocument *)self selectionFromPage:a3 atPoint:a5 toPage:v7 atPoint:a4.x type:a4.y, a6.x, a6.y];
}

- (PDFSelection)selectionFromPage:(PDFPage *)startPage atCharacterIndex:(NSUInteger)startCharacter toPage:(PDFPage *)endPage atCharacterIndex:(NSUInteger)endCharacter
{
  v10 = startPage;
  v11 = endPage;
  v12 = [(PDFPage *)v10 document];
  v13 = [(PDFPage *)v11 document];
  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v12 != self || v13 != self)
  {
LABEL_19:
    v36 = v17;

    goto LABEL_20;
  }

  if (v10 != v11)
  {
    v18 = endCharacter;
    v19 = [(PDFDocument *)v12 indexForPage:v10];
    v39 = v14;
    v20 = [(PDFDocument *)v14 indexForPage:v11];
    if (v19 >= v20)
    {
      v21 = v11;
    }

    else
    {
      v21 = v10;
    }

    if (v19 >= v20)
    {
      v22 = v10;
    }

    else
    {
      v22 = v11;
    }

    v38 = v18;
    if (v19 >= v20)
    {
      v23 = v18;
    }

    else
    {
      v23 = startCharacter;
    }

    v16 = v21;
    v15 = v22;
    v17 = [(PDFPage *)v16 selectionForRange:v23, [(PDFPage *)v16 numberOfCharacters]- v23];
    v24 = [(PDFPage *)v16 document];
    v25 = [v24 indexForPage:v16];

    v26 = v25 + 1;
    v27 = [(PDFPage *)v15 document];
    v28 = [v27 indexForPage:v15];

    if (v26 < v28)
    {
      v29 = v26;
      do
      {
        v30 = [(PDFDocument *)self pageAtIndex:v29, v38];
        v31 = v30;
        if (v30)
        {
          v32 = [v30 selectionForAll];
          [v17 addSelection:v32];
        }

        ++v29;
        v33 = [(PDFPage *)v15 document];
        v34 = [v33 indexForPage:v15];
      }

      while (v29 < v34);
    }

    v35 = [(PDFPage *)v15 selectionForRange:0, v38 + 1, v38];
    [v17 addSelection:v35];

    v14 = v39;
    goto LABEL_19;
  }

  v36 = [(PDFPage *)v10 selectionForRange:startCharacter, endCharacter - startCharacter + 1];
LABEL_20:

  return v36;
}

- (id)pageAfter:(id)a3
{
  v4 = a3;
  if (!v4 || (v5 = [(PDFDocument *)self indexForPage:v4], v5 == 0x7FFFFFFFFFFFFFFFLL) || v5 + 1 >= [(PDFDocument *)self pageCount])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(PDFDocument *)self pageAtIndex:?];
  }

  return v6;
}

- (id)pageBefore:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDFDocument *)self indexForPage:v4];
    v6 = 0;
    if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(PDFDocument *)self pageAtIndex:v5 - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)textPositionFromPage:(id)a3 atCharacterIndex:(unint64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v9 = [v8 document];

  if (v9 != self)
  {
    NSLog(&cfstr_ErrorStartPage.isa);
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if ([v8 numberOfCharacters] <= a4)
  {
    NSLog(&cfstr_ErrorStartChar.isa);
    goto LABEL_16;
  }

  if (a5)
  {
    v10 = v8;
    while (1)
    {
      while (a5 >= 1)
      {
        v11 = [v10 numberOfCharacters] - a4;
        v12 = a5 - v11;
        if (a5 <= v11)
        {
          goto LABEL_21;
        }

        v13 = [(PDFDocument *)self pageAfter:v10];
        if (!v13)
        {
          v10 = v10;
          a5 = [v10 numberOfCharacters] - 1;
          v18 = v10;
          goto LABEL_24;
        }

        v14 = v13;

        a4 = 0;
        v10 = v14;
        a5 = v12;
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      if (a4 + 1 >= -a5)
      {
LABEL_21:
        v10 = v10;
        a5 += a4;
        v18 = v10;
        goto LABEL_24;
      }

      v15 = [(PDFDocument *)self pageBefore:v10];
      if (!v15)
      {
        break;
      }

      a5 += a4 + 1;
      v16 = v15;

      v17 = [v16 numberOfCharacters];
      a4 = v17 - 1;
      v10 = v16;
      if (!a5)
      {
LABEL_14:
        v18 = 0;
        goto LABEL_24;
      }
    }

    v18 = [(PDFDocument *)self pageAtIndex:0];
    a5 = 0;
LABEL_24:
    v19 = [[PDFTextLogicalPosition alloc] initWithPage:v18 offset:a5];
  }

  else
  {
    v19 = [[PDFTextLogicalPosition alloc] initWithPage:v8 offset:a4];
  }

LABEL_17:

  return v19;
}

- (void)resetFormFields:(id)a3
{
  v8 = a3;
  v4 = [v8 fields];
  v5 = [(PDFDocument *)self formData];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    if ([v8 fieldsIncludedAreCleared])
    {
      [v6 resetFormForFields:v4];
      goto LABEL_9;
    }

    v5 = v6;
    v7 = v4;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  [v5 resetFormExcludingFields:v7];
LABEL_9:
}

- (void)setBookmarked:(BOOL)a3 atPageIndex:(unint64_t)a4
{
  v5 = a3;
  if ([(PDFDocument *)self pageCount]> a4)
  {
    v7 = [(NSMutableIndexSet *)self->_bookmarkedPages containsIndex:a4];
    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        bookmarkedPages = self->_bookmarkedPages;

        [(NSMutableIndexSet *)bookmarkedPages addIndex:a4];
      }
    }

    else if (v7)
    {
      v9 = self->_bookmarkedPages;

      [(NSMutableIndexSet *)v9 removeIndex:a4];
    }
  }
}

- (id)bookmarkedPages
{
  v2 = [(NSMutableIndexSet *)self->_bookmarkedPages copy];

  return v2;
}

- (id)_bookmarksCatalog
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = self->_pages;
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_pages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isBookmarked])
        {
          v19[0] = @"PageIndex";
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[PDFDocument indexForPage:](self, "indexForPage:", v7)];
          v19[1] = @"UUID";
          v20[0] = v8;
          v9 = [MEMORY[0x1E696AFB0] UUID];
          v10 = [v9 UUIDString];
          v20[1] = v10;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

          [v14 addObject:v11];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);

  return v14;
}

- (void)updateBookmarksInPDFDocument
{
  v3 = [(PDFDocument *)self _bookmarksCatalog];
  [(PDFDocument *)self _setDocumentCatalogMetadata:v3 withNSpace:@"http://ns.apple.com/Preview/1.0/" prefix:@"apple-preview" rootPath:@"apple-preview:Bookmarks"];
}

- (BOOL)bookmarksChanged
{
  initialBookmarkedPageIndices = self->_initialBookmarkedPageIndices;
  v3 = [(PDFDocument *)self bookmarkedPages];
  LOBYTE(initialBookmarkedPageIndices) = [(NSIndexSet *)initialBookmarkedPageIndices isEqual:v3];

  return initialBookmarkedPageIndices ^ 1;
}

+ (void)setPDFDocumentAppendModeActiveForThisThread:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v4 threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v6 setObject:v5 forKeyedSubscript:@"PDFKitDocumentAppendModeActiveKey"];
}

+ (BOOL)pdfDocumentAppendModeActiveForThisThread
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"PDFKitDocumentAppendModeActiveKey"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)namedDestination:(id)a3
{
  v4 = a3;
  Catalog = CGPDFDocumentGetCatalog(self->_document);
  if (Catalog)
  {
    v6 = Catalog;
    value = 0;
    if (CGPDFDictionaryGetDictionary(Catalog, "Dests", &value))
    {
      dict = 0;
      if (CGPDFDictionaryGetDictionary(value, [v4 UTF8String], &dict))
      {
        v7 = [PDFDestination alloc];
        v8 = [(PDFDestination *)v7 initWithDictionary:dict forDocument:self];
LABEL_9:
        v9 = v8;
        goto LABEL_11;
      }
    }

    dict = 0;
    if (CGPDFDictionaryGetDictionary(v6, "Names", &dict))
    {
      CGPDFDictionaryGetDictionary(dict, "Dests", &value);
    }

    if (value)
    {
      v8 = [(PDFDocument *)self _namedDestination:v4 forNameDictionary:?];
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_namedDestination:(id)a3 forNameDictionary:(CGPDFDictionary *)a4
{
  v6 = a3;
  value = 0;
  if (!CGPDFDictionaryGetArray(a4, "Limits", &value))
  {
    goto LABEL_21;
  }

  if (CGPDFArrayGetCount(value) != 2)
  {
    goto LABEL_21;
  }

  string = 0;
  if (!CGPDFArrayGetString(value, 0, &string))
  {
    goto LABEL_21;
  }

  v7 = CGPDFStringCopyTextString(string);
  v8 = [v6 compare:v7];
  CFRelease(v7);
  if (v8 == -1)
  {
    goto LABEL_21;
  }

  if (!CGPDFArrayGetString(value, 1uLL, &string))
  {
    goto LABEL_21;
  }

  v9 = CGPDFStringCopyTextString(string);
  v10 = [v6 compare:v9];
  CFRelease(v9);
  if (v10 == 1)
  {
    goto LABEL_21;
  }

  array = 0;
  if (CGPDFDictionaryGetArray(a4, "Kids", &array))
  {
    Count = CGPDFArrayGetCount(array);
    if (Count)
    {
      v12 = Count;
      v13 = 0;
      do
      {
        v25 = 0;
        if (CGPDFArrayGetDictionary(array, v13, &v25))
        {
          v14 = [(PDFDocument *)self _namedDestination:v6 forNameDictionary:v25];
          if (v14)
          {
            goto LABEL_25;
          }
        }
      }

      while (v12 != ++v13);
    }
  }

  v25 = 0;
  if (!CGPDFDictionaryGetArray(a4, "Names", &v25) || (v15 = CGPDFArrayGetCount(v25)) == 0)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v16 = v15;
  v17 = 0;
  while (1)
  {
    v24 = 0;
    if (CGPDFArrayGetString(v25, v17, &v24))
    {
      v18 = CGPDFStringCopyTextString(v24);
      v19 = [v6 compare:v18];
      CFRelease(v18);
      if (!v19)
      {
        v23 = 0;
        if (CGPDFArrayGetDictionary(v25, v17 + 1, &v23))
        {
          v20 = [PDFDestination alloc];
          v14 = [(PDFDestination *)v20 initWithDictionary:v23 forDocument:self];
          if (v14)
          {
            break;
          }
        }
      }
    }

    v17 += 2;
    if (v17 >= v16)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v21 = v14;
LABEL_22:

  return v21;
}

- (void)undo:(id)a3
{
  v4 = a3;
  v5 = [(PDFDocument *)self akController];
  [v5 undo:v4];
}

- (BOOL)validateUndo:(id)a3
{
  v4 = a3;
  v5 = [(PDFDocument *)self akController];
  v6 = [v5 validateUndo:v4];

  return v6;
}

- (void)redo:(id)a3
{
  v4 = a3;
  v5 = [(PDFDocument *)self akController];
  [v5 redo:v4];
}

- (BOOL)validateRedo:(id)a3
{
  v4 = a3;
  v5 = [(PDFDocument *)self akController];
  v6 = [v5 validateRedo:v4];

  return v6;
}

- (void)revert
{
  if ([(PDFDocument *)self validateUndo:0])
  {
    do
    {
      [(PDFDocument *)self undo:0];
    }

    while ([(PDFDocument *)self validateUndo:0]);
  }
}

- (BOOL)documentChanged
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_documentChanged)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v4 = self->_pages;
    objc_sync_enter(v4);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_pages;
    v2 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v2)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            v10 = [v9 annotationChanges];
            v11 = [v10 count] == 0;

            if (!v11)
            {
              LOBYTE(v2) = 1;
              goto LABEL_14;
            }
          }
        }

        v2 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v4);
  }

  return v2;
}

- (id)pageAnnotationChanges
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_pages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 changedAnnotations];
          v12 = [v11 count];

          if (v12)
          {
            [v3 addObject:v10];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)resetPageAnnotationChanges
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_pages;
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_pages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          [v9 resetChangedAnnotations];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)endBatchPageChanges
{
  if (self->_pages)
  {
    v3 = [MEMORY[0x1E695DFB8] orderedSetWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  pagesOrderedSet = self->_pagesOrderedSet;
  self->_pagesOrderedSet = v3;

  MEMORY[0x1EEE66BB8](v3, pagesOrderedSet);
}

- (BOOL)viewPreferenceRightToLeft
{
  document = self->_document;
  if (document)
  {
    document = CGPDFDocumentGetCatalog(document);
    if (document)
    {
      value = 0;
      LOBYTE(document) = CGPDFDictionaryGetDictionary(document, "ViewerPreferences", &value) && (v4 = 0, CGPDFDictionaryGetName(value, "Direction", &v4)) && *v4 == 82 && v4[1] == 50 && v4[2] == 76;
    }
  }

  return document;
}

- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 type:(int)a7
{
  v7 = *&a7;
  y = a6.y;
  x = a6.x;
  v11 = a4.y;
  v12 = a4.x;
  v14 = a3;
  v15 = a5;
  v16 = [v14 document];
  v17 = [v15 document];
  v18 = v17;
  v19 = 0;
  if (v16 == self && v17 == self)
  {
    if (v14 == v15)
    {
      v19 = [v14 selectionFromPoint:v7 toPoint:v12 type:{v11, x, y}];
    }

    else
    {
      v20 = [(PDFDocument *)v16 indexForPage:v14];
      v21 = [(PDFDocument *)v18 indexForPage:v15];
      if (v20 >= v21)
      {
        v22 = v15;
      }

      else
      {
        v22 = v14;
      }

      if (v20 >= v21)
      {
        v23 = v14;
      }

      else
      {
        v23 = v15;
      }

      if (v20 >= v21)
      {
        v24 = v11;
      }

      else
      {
        v24 = y;
      }

      if (v20 >= v21)
      {
        v25 = v12;
      }

      else
      {
        v25 = x;
      }

      if (v20 < v21)
      {
        x = v12;
        y = v11;
      }

      v26 = v22;
      v27 = v23;
      v39 = v7;
      v28 = [v26 selectionFromPointToBottom:v7 type:{x, y}];
      v29 = [v26 document];
      v38 = v26;
      v30 = [v29 indexForPage:v26];

      for (i = v30 + 1; ; ++i)
      {
        v32 = [v27 document];
        v33 = [v32 indexForPage:v27];

        if (i >= v33)
        {
          break;
        }

        v34 = [(PDFDocument *)self pageAtIndex:i];
        v35 = [v34 selectionForAll];
        [v28 addSelectionCore:v35 normalize:0];
      }

      v36 = [v27 selectionFromTopToPoint:v39 type:{v25, v24}];
      [v28 addSelection:v36];

      v19 = v28;
    }
  }

  return v19;
}

- (id)selectionFromPage:(id)a3 atPoint:(CGPoint)a4 toPage:(id)a5 atPoint:(CGPoint)a6 type:(int)a7 withClampedRange:(id)a8 withCellRect:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  var1 = a8.var1;
  var0 = a8.var0;
  v15 = *&a7;
  v16 = a6.y;
  v17 = a6.x;
  v19 = a4.y;
  v20 = a4.x;
  v22 = a3;
  v23 = a5;
  v24 = [v22 document];
  v25 = [v23 document];
  v26 = v25;
  v27 = 0;
  if (v24 == self && v25 == self)
  {
    if (v22 == v23)
    {
      v27 = [v22 selectionFromPoint:v15 toPoint:var0 type:var1 withClampedRange:v20 withCellRect:{v19, v17, v16, x, y, width, height}];
    }

    else
    {
      v28 = [(PDFDocument *)v24 indexForPage:v22];
      v29 = [(PDFDocument *)v26 indexForPage:v23];
      if (v28 >= v29)
      {
        v30 = v23;
      }

      else
      {
        v30 = v22;
      }

      if (v28 >= v29)
      {
        v31 = v22;
      }

      else
      {
        v31 = v23;
      }

      v32 = v30;
      v33 = v31;
      v34 = v33;
      if (var1)
      {
        if (v32 == v22)
        {
          [v22 selectionFromPointToBottom:v15 type:{v20, v19}];
        }

        else
        {
          [v22 selectionFromTopToPoint:v15 type:{v20, v19}];
        }
        v27 = ;
      }

      else
      {

        v27 = 0;
      }
    }
  }

  return v27;
}

- (id)textExtractionQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_textExtractionQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("PDFKit.PDFDocument.textExtractionQueue", v4);
    textExtractionQueue = v2->_textExtractionQueue;
    v2->_textExtractionQueue = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_textExtractionQueue;

  return v7;
}

- (id)formFillingQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_formFillingQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("PDFKit.PDFDocument.formFillingQueue", v4);
    formFillingQueue = v2->_formFillingQueue;
    v2->_formFillingQueue = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_formFillingQueue;

  return v7;
}

- (id)findStrings:(id)a3 withinSelection:(id)a4 withOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 infoDictionary];
  v12 = [v11 objectForKey:@"CFBundleName"];

  if (!v8)
  {
    goto LABEL_5;
  }

  v13 = [v8 count];
  v14 = 0;
  if (v9 && v13)
  {
    if ([v9 isEmpty])
    {
LABEL_5:
      v14 = 0;
      goto LABEL_44;
    }

    self->_findModel = 0;
    if ([(PDFDocument *)self isFinding])
    {
      [(PDFDocument *)self cancelFindString];
    }

    [(PDFDocument *)self normalizeFindOptions:a5];
    if ((self->_findOptions & 4) != 0)
    {
      v16 = [(PDFDocument *)self pageCount];
      v15 = 0;
      self->_findPageIndex = v16 - 1;
    }

    else
    {
      self->_findPageIndex = 0;
      v15 = [(PDFDocument *)self pageCount]- 1;
    }

    self->_findCharIndex = -1;
    self->_lastFindPageIndex = v15;
    self->_lastFindCharIndex = -1;
    if ((self->_findOptions & 4) != 0)
    {
      [v9 lastPage];
    }

    else
    {
      [v9 firstPage];
    }
    v17 = ;
    v18 = [v17 document];
    if (v18 != self)
    {
      v19 = v17;
      goto LABEL_43;
    }

    self->_findPageIndex = [(PDFDocument *)self indexForPage:v17];
    if ([v17 numberOfCharacters])
    {
      findOptions = self->_findOptions;
      v21 = [v12 isEqualToString:@"Preview"];
      if ((findOptions & 4) != 0)
      {
        if (v21)
        {
          v23 = [v9 indexOfLastCharacterOnPage:v17];
        }

        else
        {
          v23 = [v9 pdfKitIndexOfLastCharacterOnPage:v17];
        }

        self->_findCharIndex = v23;
        if (v23 < [v17 numberOfCharacters])
        {
          goto LABEL_28;
        }

        v24 = [v17 numberOfCharacters] - 1;
      }

      else
      {
        if (v21)
        {
          v22 = [v9 indexOfFirstCharacterOnPage:v17];
        }

        else
        {
          v22 = [v9 pdfKitIndexOfFirstCharacterOnPage:v17];
        }

        v24 = v22 & ~(v22 >> 63);
      }

      self->_findCharIndex = v24;
    }

LABEL_28:
    if ((self->_findOptions & 4) != 0)
    {
      [v9 firstPage];
    }

    else
    {
      [v9 lastPage];
    }
    v19 = ;

    self->_lastFindPageIndex = [(PDFDocument *)self indexForPage:v19];
    if (![v19 numberOfCharacters])
    {
      goto LABEL_43;
    }

    v25 = self->_findOptions;
    v26 = [v12 isEqualToString:@"Preview"];
    if ((v25 & 4) != 0)
    {
      if (v26)
      {
        v28 = [v9 indexOfFirstCharacterOnPage:v19];
      }

      else
      {
        v28 = [v9 pdfKitIndexOfFirstCharacterOnPage:v19];
      }

      v29 = v28 & ~(v28 >> 63);
    }

    else
    {
      if (v26)
      {
        v27 = [v9 indexOfLastCharacterOnPage:v19];
      }

      else
      {
        v27 = [v9 pdfKitIndexOfLastCharacterOnPage:v19];
      }

      self->_lastFindCharIndex = v27;
      if (v27 < [v19 numberOfCharacters])
      {
        goto LABEL_43;
      }

      v29 = [v19 numberOfCharacters] - 1;
    }

    self->_lastFindCharIndex = v29;
LABEL_43:
    [(PDFDocument *)self coreFindStrings:v8];
    v14 = self->_findResults;
  }

LABEL_44:

  return v14;
}

- (void)coreFindString:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  [(PDFDocument *)self coreFindStrings:v4];
}

- (void)coreFindStrings:(id)a3
{
  v22 = a3;
  if (![(PDFDocument *)self isFinding])
  {
    v5 = self->_findResults;
    objc_sync_enter(v5);
    self->_finding = 1;
    objc_storeStrong(&self->_findStrings, a3);
    [(NSMutableArray *)self->_findResults removeAllObjects];
    if (self->_respondsToDidBeginDocumentFind)
    {
      v6 = [(PDFDocument *)self delegate];
      v7 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFDidBeginDocumentFind" object:self];
      [v6 documentDidBeginDocumentFind:v7];
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"PDFDidBeginDocumentFind" object:self];

    findModel = self->_findModel;
    if (findModel > 3 || findModel == 1)
    {
      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 addObserver:self selector:sel_scheduledFindOnPage_ name:@"pdfDocumentFindNext" object:self];

      v20 = [MEMORY[0x1E696AD90] defaultQueue];
      v21 = [MEMORY[0x1E696AD80] notificationWithName:@"pdfDocumentFindNext" object:self];
      [v20 enqueueNotification:v21 postingStyle:1];
    }

    else
    {
      v10 = 0;
      while (1)
      {
        v11 = [(PDFDocument *)self findOnPage];
        self->_findCharIndex = -1;
        if (v11 && (self->_findModel & 0xFFFFFFFE) == 2)
        {
          break;
        }

        findPageIndex = self->_findPageIndex;
        lastFindPageIndex = self->_lastFindPageIndex;
        if (findPageIndex == lastFindPageIndex)
        {
          v14 = self->_findPageIndex;
        }

        else
        {
          if ((self->_findOptions & 4) != 0)
          {
            v14 = findPageIndex - 1;
          }

          else
          {
            v14 = findPageIndex + 1;
          }

          self->_findPageIndex = v14;
          ++v10;
        }

        if (self->_findModel == 3)
        {
          v16 = [(PDFDocument *)self pageAtIndex:v14];
          v17 = [[PDFSelection alloc] initWithPage:v16];
          findInstance = self->_findInstance;
          self->_findInstance = v17;

          break;
        }

        if (self->_limitedSearch)
        {
          v15 = [(NSMutableArray *)self->_findResults count];
          if (findPageIndex == lastFindPageIndex || v15 > 0x3E7 || v10 >= 0x65)
          {
            break;
          }
        }

        else if (findPageIndex == lastFindPageIndex)
        {
          break;
        }
      }

      [(PDFDocument *)self cleanupFind];
    }

    objc_sync_exit(v5);
  }
}

- (BOOL)findOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_respondsToDidBeginPageFind)
  {
    v4 = MEMORY[0x1E696AD80];
    v5 = MEMORY[0x1E695DF20];
    v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_findPageIndex];
    v7 = [v5 dictionaryWithObject:v6 forKey:@"PDFDocumentPageIndex"];
    v8 = [v4 notificationWithName:@"PDFDidBeginPageFind" object:self userInfo:v7];
    [(PDFDocument *)WeakRetained documentDidBeginPageFind:v8];
  }

  result.location = 0;
  result.length = 0;
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = MEMORY[0x1E695DF20];
  v11 = [MEMORY[0x1E696AD98] numberWithLong:self->_findPageIndex];
  v12 = [v10 dictionaryWithObject:v11 forKey:@"PDFDocumentPageIndex"];
  [v9 postNotificationName:@"PDFDidBeginPageFind" object:self userInfo:v12];

  v13 = [(PDFDocument *)self pageAtIndex:self->_findPageIndex];
  v14 = v13;
  if (!v13 || (v15 = [v13 string]) == 0)
  {
    LOBYTE(v23) = 0;
    goto LABEL_52;
  }

  v16 = v15;
  CFRetain(v15);
  v17 = [v14 numberOfCharacters];
  v50 = WeakRetained;
  if (!v17 || (v18 = v17, (v48 = [(NSArray *)self->_findStrings count]) == 0))
  {
    LOBYTE(v23) = 0;
    goto LABEL_48;
  }

  v19 = 0;
  v20 = 0;
  v49 = 0;
  while (2)
  {
    v21 = [(NSArray *)self->_findStrings objectAtIndex:v19, v47];
    findCharIndex = self->_findCharIndex;
    if ((self->_findOptions & 4) != 0)
    {
      if (findCharIndex == -1)
      {
        result.location = v18;
      }

      else
      {
        result.location = self->_findCharIndex;
      }
    }

    else if (findCharIndex == -1)
    {
      v20 = 0;
    }

    else
    {
      v20 = self->_findCharIndex;
    }

    v23 = v49;
    v47 = v20;
    while (1)
    {
      lastFindPageIndex = self->_lastFindPageIndex;
      findPageIndex = self->_findPageIndex;
      if ((self->_findOptions & 4) != 0)
      {
        break;
      }

      if (lastFindPageIndex != findPageIndex || (lastFindCharIndex = self->_lastFindCharIndex, lastFindCharIndex == -1))
      {
        v27 = v18 - v20;
      }

      else
      {
        v27 = lastFindCharIndex - v20 + 1;
      }

      v28 = v20;
      if (!v21)
      {
        goto LABEL_43;
      }

LABEL_27:
      Length = CFStringGetLength(v16);
      v30.location = v28 & ~(v28 >> 63);
      v31 = v28 + v27;
      if (v28 + v27 >= Length)
      {
        v31 = Length;
      }

      if (v31 <= v30.location)
      {
        goto LABEL_44;
      }

      v30.length = v31 - v30.location;
      if (!CFStringFindWithOptions(v16, v21, v30, self->_findOptions, &result))
      {
        goto LABEL_44;
      }

      v32 = [v14 selectionForRange:{result.location, result.length}];
      findModel = self->_findModel;
      if (!findModel)
      {
        [(PDFDocument *)self didMatchString:v32];
        findModel = self->_findModel;
      }

      if ((findModel & 0xFFFFFFFE) == 2)
      {
        v34 = [v14 selectionForRange:{result.location, result.length}];
        findInstance = self->_findInstance;
        self->_findInstance = v34;

        goto LABEL_40;
      }

      if (self->_respondsToDidMatchString)
      {
        v36 = v50;
      }

      else
      {
        if (findModel != 1)
        {
          goto LABEL_40;
        }

        v36 = self;
      }

      [(PDFDocument *)v36 didMatchString:v32, v47];
LABEL_40:
      if (!self->_finding)
      {
        LOBYTE(v23) = 1;
        WeakRetained = v50;
        goto LABEL_51;
      }

      v20 = result.length + result.location;
      v37 = self->_findModel & 0xFFFFFFFE;

      v23 = 1;
      if (v37 == 2)
      {
        goto LABEL_48;
      }
    }

    if (lastFindPageIndex != findPageIndex || (v28 = self->_lastFindCharIndex, v28 == -1))
    {
      v28 = 0;
    }

    v27 = result.location - v28 + 1;
    if (v21)
    {
      goto LABEL_27;
    }

LABEL_43:
    v23 = v49;
    v20 = v47;
LABEL_44:
    ++v19;
    v49 = v23;
    if (v19 != v48)
    {
      continue;
    }

    break;
  }

LABEL_48:
  WeakRetained = v50;
  if (self->_respondsToDidEndPageFind)
  {
    v38 = MEMORY[0x1E696AD80];
    v39 = MEMORY[0x1E695DF20];
    v40 = [MEMORY[0x1E696AD98] numberWithLong:self->_findPageIndex];
    v41 = [v39 dictionaryWithObject:v40 forKey:@"PDFDocumentPageIndex"];
    v42 = [v38 notificationWithName:@"PDFDidEndPageFind" object:self userInfo:v41];
    [(PDFDocument *)v50 documentDidEndPageFind:v42];
  }

  v32 = [MEMORY[0x1E696AD88] defaultCenter];
  v43 = MEMORY[0x1E695DF20];
  v44 = [MEMORY[0x1E696AD98] numberWithLong:self->_findPageIndex];
  v45 = [v43 dictionaryWithObject:v44 forKey:@"PDFDocumentPageIndex"];
  [v32 postNotificationName:@"PDFDidEndPageFind" object:self userInfo:v45];

LABEL_51:
  CFRelease(v16);
LABEL_52:

  return v23 & 1;
}

- (void)cleanupFind
{
  self->_finding = 0;
  if (self->_findStrings)
  {
    if (self->_respondsToDidEndDocumentFind)
    {
      v3 = [(PDFDocument *)self delegate];
      v4 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFDidEndDocumentFind" object:self];
      [v3 documentDidEndDocumentFind:v4];
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PDFDidEndDocumentFind" object:self];

    findStrings = self->_findStrings;
    self->_findStrings = 0;

    self->_findPageIndex = 0;
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:@"pdfDocumentFindNext" object:self];
}

- (void)scheduledFindOnPage:(id)a3
{
  if ([(PDFDocument *)self pageCount]&& ([(PDFDocument *)self findOnPage], findPageIndex = self->_findPageIndex, findPageIndex != self->_lastFindPageIndex))
  {
    if ((self->_findOptions & 4) != 0)
    {
      v5 = findPageIndex - 1;
    }

    else
    {
      v5 = findPageIndex + 1;
    }

    self->_findPageIndex = v5;
    v7 = [MEMORY[0x1E696AD90] defaultQueue];
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"pdfDocumentFindNext" object:self];
    [v7 enqueueNotification:v6 postingStyle:1];
  }

  else
  {

    [(PDFDocument *)self cleanupFind];
  }
}

- (id)formData
{
  if ([(PDFDocument *)self isLocked])
  {
    v3 = 0;
  }

  else
  {
    if (!self->_formDataLoaded)
    {
      v4 = [[PDFForm alloc] initWithDocument:self];
      formData = self->_formData;
      self->_formData = v4;
    }

    self->_formDataLoaded = 1;
    v3 = self->_formData;
  }

  return v3;
}

- (id)annotationsForFieldName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v6 = self->_pages;
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_pages;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 annotationsForFieldName:{v4, v15}];
          if (v13)
          {
            [v5 addObjectsFromArray:v13];
          }
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);

  return v5;
}

- (__CFDictionary)_createInfoDictionary
{
  v2 = [(PDFDocument *)self documentAttributes];
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = [v2 objectForKey:@"Title"];
      if (v4)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F3C0], v4);
      }

      v5 = [v2 objectForKey:@"Author"];

      if (v5)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F300], v5);
      }

      v6 = [v2 objectForKey:@"Creator"];

      if (v6)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F318], v6);
      }

      v7 = [v2 objectForKey:@"Subject"];

      if (v7)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F3B8], v7);
      }

      v8 = [v2 objectForKey:@"Keywords"];

      if (v8)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F388], v8);
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (id)findPageWithCGPDFDictionaryPageRef:(CGPDFDictionary *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = self->_pages;
  objc_sync_enter(v4);
  ObjectReference = CGPDFDictionaryGetObjectReference();
  pageDictionaryIndices = self->_pageDictionaryIndices;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ObjectReference];
  v8 = [(NSMutableDictionary *)pageDictionaryIndices objectForKey:v7];

  if (v8)
  {
    PageNumberForPageDictionary = [v8 unsignedLongValue];
  }

  else
  {
    PageNumberForPageDictionary = CGPDFDocumentGetPageNumberForPageDictionary();
    if (PageNumberForPageDictionary == -1)
    {
      v20 = 0;
      goto LABEL_18;
    }

    v10 = self->_pageDictionaryIndices;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:PageNumberForPageDictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ObjectReference];
    [(NSMutableDictionary *)v10 setObject:v11 forKey:v12];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_pageIndices;
  v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = *v23;
    v16 = PageNumberForPageDictionary - 1;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if (v18)
        {
          v19 = [(NSMutableDictionary *)self->_pageIndices objectForKey:*(*(&v22 + 1) + 8 * i), v22];
          if ([v19 unsignedIntegerValue] == v16)
          {
            v20 = -[PDFDocument pageAtIndex:](self, "pageAtIndex:", [v18 unsignedIntegerValue]);

            goto LABEL_17;
          }
        }
      }

      v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_17:

LABEL_18:
  objc_sync_exit(v4);

  return v20;
}

- (Class)annotationSubclassForType:(id)a3
{
  if (self->_respondsToClassForAnnotationType)
  {
    v4 = a3;
    v5 = [(PDFDocument *)self delegate];
    v6 = [v5 classForAnnotationType:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)callShouldReadAKInkAnnotations
{
  if (!self->_respondsToShouldReadAKInkAnnotations)
  {
    return 0;
  }

  v2 = [(PDFDocument *)self delegate];
  v3 = [v2 shouldReadAKInkAnnotations];

  return v3;
}

- (void)incrementRedactionCount
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_documentRedactionCount;
  objc_sync_exit(obj);
}

- (void)decrementRedactionCount
{
  obj = self;
  objc_sync_enter(obj);
  --obj->_documentRedactionCount;
  objc_sync_exit(obj);
}

- (BOOL)callDelegateHandleTabFrom:(id)a3 direction:(unint64_t)a4
{
  respondsToHandleTabFrom = self->_respondsToHandleTabFrom;
  if (respondsToHandleTabFrom)
  {
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pdfDocument:self handleTabFrom:v7 direction:a4];
  }

  return respondsToHandleTabFrom;
}

- (void)callDelegateDidReceiveAnalysis:(id)a3 forPage:(id)a4
{
  if (self->_respondsToDidReceiveAnalysis)
  {
    v7 = a4;
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pdfDocument:self didReceiveAnalysis:v8 forPage:v7];
  }
}

@end