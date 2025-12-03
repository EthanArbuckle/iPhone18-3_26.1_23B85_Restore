@interface CRLPasteboardController
+ (BOOL)p_isURLTypeExcludingFileURL:(id)l;
+ (BOOL)p_pasteboardHasIWorkNativeData:(id)data;
+ (BOOL)p_pasteboardHasPlainAndRichHyperlink:(id)hyperlink;
+ (NSURL)pasteboardCacheDirectory;
+ (id)additionalBoardItemsForCopyImaging:(id)imaging icc:(id)icc invertedObjectUUIDMap:(id)map;
+ (id)boardItemsForCopyByFixingUpBoardItems:(id)items boardItemFactory:(id)factory board:(id)board;
+ (id)contentLanguageBoardItemProvidersForPasteboard:(id)pasteboard itemIndex:(unint64_t)index boardItemFactory:(id)factory;
+ (id)descriptionsForBoardItemsOnPasteboardObject:(id)object;
+ (id)detectedImportableURLForPasteboardString:(id)string canTrimWhitespace:(BOOL)whitespace;
+ (id)jsonDataForTypeIdentifier:(id)identifier boardItems:(id)items boardDataStore:(id)store;
+ (id)jsonTypeIdentifiersForBoardItems:(id)items;
+ (id)pFilteredPasteboardTypesForPasteboard:(id)pasteboard types:(id)types;
+ (id)p_boardItemsForCopyByFixingUpBoardItems:(id)items boardItemFactory:(id)factory board:(id)board UUIDRemappingBlock:(id)block;
+ (id)p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:(id)types;
+ (id)p_movePublicURLBeforePlainTextIfNeededInTypes:(id)types;
+ (id)providersForBoardItemsAndTextWithBoardItemFactory:(id)factory keepHighlights:(BOOL)highlights fromPasteboardObject:(id)object descriptionsForBoardItems:(id)items validGeometries:(BOOL *)geometries;
+ (id)readPasteboardBoardItemsForTargetStorage:(id)storage fromPasteboardObject:(id)object descriptionsForBoardItems:(id)items;
+ (void)cacheWithBoardItems:(id)items;
+ (void)clearPasteboardCacheDirectory;
- (BOOL)canProduceBoardItemsFromPasteboard:(id)pasteboard;
- (BOOL)containsStylesRelevantTo:(id)to on:(id)on;
- (BOOL)hasImportableBoardItemsOnPasteboard:(id)pasteboard detectImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls;
- (BOOL)hasImportableImagesOnPasteboard:(id)pasteboard skipFileURLs:(BOOL)ls;
- (BOOL)hasImportablePlainTextOnPasteboard:(id)pasteboard;
- (BOOL)hasNativeBoardItemsContainingTextOnPasteboard:(id)pasteboard;
- (BOOL)hasNativeBoardItemsOnPasteboard:(id)pasteboard;
- (BOOL)hasNativeFreehandDrawingBoardItemsOnPasteboard:(id)pasteboard;
- (BOOL)hasNativeTextOnPasteboard:(id)pasteboard;
- (BOOL)hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:(id)pasteboard;
- (BOOL)hasOnlyNativeTextBoxBoardItemsOnPasteboard:(id)pasteboard;
- (BOOL)hasOnlyNativeTextBoxItemsOnPasteboard:(id)pasteboard;
- (BOOL)hasSingleNativeImageBoardItemOnPasteboard:(id)pasteboard;
- (BOOL)hasSingleNativeMovieBoardItemOnPasteboard:(id)pasteboard;
- (BOOL)hasTextStoragesOnPasteboard:(id)pasteboard;
- (BOOL)pImageForBoardItems:(id)items imageData:(id *)data dataType:(id *)type dataName:(id *)name;
- (CRLPasteboardController)init;
- (CRLPasteboardController)initWithDelegate:(id)delegate;
- (CRLPasteboardControllerDelegate)delegate;
- (id)asyncProvidersForBoardItemsFromPasteboard:(id)pasteboard;
- (id)commandsToPasteStyleTo:(id)to from:(id)from;
- (id)commandsToPasteTextStyleTo:(id)to in:(_NSRange)in from:(id)from;
- (id)descriptionForPasteboard:(id)pasteboard;
- (id)descriptionsForBoardItemsOnPasteboard:(id)pasteboard;
- (id)importedRichTextStringFromPasteboard:(id)pasteboard smartPaste:(BOOL *)paste;
- (id)importedTextStringFromPasteboard:(id)pasteboard smartPaste:(BOOL *)paste;
- (id)ingestibleItemSourceForPasteboard:(id)pasteboard;
- (id)newCopyAssistantWithPasteboard:(id)pasteboard;
- (id)newDragAssistant;
- (id)newReadAssistantWithPasteboard:(id)pasteboard;
- (id)p_board;
- (id)p_boardItemFactory;
- (id)p_detectedImportableURLOnPasteboard:(id)pasteboard type:(id)type fallbackBoardItemProvider:(id *)provider;
- (id)p_importableFileURLFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type;
- (id)p_importableURLFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type;
- (id)p_newImportableBoardItemProviderFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type;
- (id)p_newImportableBoardItemProvidersFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type;
- (id)p_providersForBoardItemsAndTextFromPasteboardReadAssistant:(id)assistant pasteboard:(id)pasteboard validGeometries:(BOOL *)geometries;
- (id)pasteboardObjectFromAssistant:(id)assistant boardItems:(id)items;
- (id)pasteboardObjectFromAssistant:(id)assistant textStorage:(id)storage smartCopy:(BOOL)copy;
- (id)pasteboardPromise:(id)promise propertyListForType:(id)type;
- (id)providersForBoardItemsForTargetStorage:(id)storage fromPasteboard:(id)pasteboard;
- (id)providersForBoardItemsFromImportedRichTextFromPasteboard:(id)pasteboard maximumStringLength:(unint64_t)length;
- (id)providersForBoardItemsFromImportedTextFromPasteboard:(id)pasteboard maximumStringLength:(unint64_t)length;
- (id)providersForBoardItemsImportedFromPasteboard:(id)pasteboard;
- (id)providersForNativeBoardItemsAndTextFromPasteboard:(id)pasteboard validGeometries:(BOOL *)geometries;
- (id)providersForNativeBoardItemsFromPasteboard:(id)pasteboard;
- (id)publicTypesForBoardItems:(id)items asPDF:(BOOL)f;
- (id)textStorageFromPasteboard:(id)pasteboard forTargetStorage:(id)storage smartPaste:(BOOL *)paste;
- (int64_t)p_integerFromPasteboardStateTypePrefix:(id)prefix pasteboard:(id)pasteboard;
- (unint64_t)boardItemStyleKindsOnPasteboard:(id)pasteboard;
- (unint64_t)preferredImportableDataTypeOnPasteboard:(id)pasteboard detectImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls;
- (void)copyBoardItems:(id)items toPasteboard:(id)pasteboard asPDF:(BOOL)f writeAssistant:(id)assistant nativeOnly:(BOOL)only icc:(id)icc;
- (void)copyStyleFromItem:(id)item to:(id)to;
- (void)copyTextStorage:(id)storage selection:(id)selection toPasteboard:(id)pasteboard smartCopy:(BOOL)copy writeAssistant:(id)assistant nativeOnly:(BOOL)only;
- (void)copyUninsertedFreehandDrawingItems:(id)items toPasteboard:(id)pasteboard;
- (void)distillPasteboardContentDescription:(id)description intoPasteboardStateTypes:(id)types;
- (void)pImageInfosWithReadLock:(id *)lock;
@end

@implementation CRLPasteboardController

- (CRLPasteboardController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRLPasteboardController;
  v5 = [(CRLPasteboardController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (CRLPasteboardController)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018445C8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLPasteboardController init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m";
    v18 = 1024;
    v19 = 90;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018445E8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLPasteboardController init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:90 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLPasteboardController init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)p_board
{
  delegate = [(CRLPasteboardController *)self delegate];
  v4 = [delegate boardForPasteboardController:self];

  return v4;
}

- (id)p_boardItemFactory
{
  delegate = [(CRLPasteboardController *)self delegate];
  v4 = [delegate boardItemFactoryForPasteboardController:self];

  return v4;
}

+ (NSURL)pasteboardCacheDirectory
{
  v2 = +[NSFileManager defaultManager];
  v17 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v17];
  v4 = v17;

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101329358();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329380();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101329408();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController pasteboardCacheDirectory]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:119 isFatal:0 description:"Unable to create cache directory: %@", v4];
    v10 = v3;
    goto LABEL_26;
  }

  p_cacheDirectoryName = [objc_opt_class() p_cacheDirectoryName];
  v10 = [v3 URLByAppendingPathComponent:p_cacheDirectoryName];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 crl_directoryExistsAt:v10];

  if ((v12 & 1) == 0)
  {
    v13 = +[NSFileManager defaultManager];
    v16 = 0;
    [v13 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v16];
    v4 = v16;

    if (v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329430();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329458();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013294E0();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController pasteboardCacheDirectory]");
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:115 isFatal:0 description:"Unable to create cache directory: %@", v4];
LABEL_26:
    }
  }

  return v10;
}

+ (void)clearPasteboardCacheDirectory
{
  v2 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v3 = +[NSFileManager defaultManager];
  v38 = 0;
  v4 = [v3 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v38];
  v5 = v38;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101329508();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329530();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013295B8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController clearPasteboardCacheDirectory]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:148 isFatal:0 description:"Unable to create cache directory: %@", v5];
    v11 = v4;
    goto LABEL_45;
  }

  p_cacheDirectoryName = [objc_opt_class() p_cacheDirectoryName];
  v11 = [v4 URLByAppendingPathComponent:p_cacheDirectoryName];

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 crl_directoryExistsAt:v11];

  if (v13)
  {
    v14 = +[NSFileManager defaultManager];
    v37 = 0;
    v8 = [v14 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:1 error:&v37];
    v5 = v37;

    if (v5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013295E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329608();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101329690();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController clearPasteboardCacheDirectory]");
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v16 lineNumber:144 isFatal:0 description:"Unable to get contents of copy cache directory: %@", v5];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = v8;
      v17 = [v9 countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v31 = v11;
        v5 = 0;
        v19 = *v34;
        do
        {
          v20 = 0;
          v21 = v5;
          do
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v9);
            }

            v22 = *(*(&v33 + 1) + 8 * v20);
            defaultManager = [v2[71] defaultManager];
            v32 = v21;
            [defaultManager removeItemAtURL:v22 error:&v32];
            v5 = v32;

            if (v5)
            {
              v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_1013296B8();
              }

              v25 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                v40 = v24;
                v41 = 2082;
                v42 = "+[CRLPasteboardController clearPasteboardCacheDirectory]";
                v43 = 2082;
                v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m";
                v45 = 1024;
                v46 = 140;
                v47 = 2112;
                v48 = v5;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to remove item in copy cache directory: %@", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013296E0();
              }

              v26 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v29 = v26;
                v30 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v40 = v24;
                v41 = 2114;
                v42 = v30;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController clearPasteboardCacheDirectory]");
              v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
              [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:140 isFatal:0 description:"Unable to remove item in copy cache directory: %@", v5];

              v2 = &_s10Foundation9IndexPathVSHAAMc_ptr;
            }

            v20 = v20 + 1;
            v21 = v5;
          }

          while (v18 != v20);
          v18 = [v9 countByEnumeratingWithState:&v33 objects:v49 count:16];
        }

        while (v18);
        v8 = v9;
        v11 = v31;
      }

      else
      {
        v5 = 0;
        v8 = v9;
      }
    }

LABEL_45:
  }
}

- (id)ingestibleItemSourceForPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  v5 = [[CRLPasteboardItemSource alloc] initWithPasteboard:pasteboardCopy pasteboardController:self];

  return v5;
}

- (id)newCopyAssistantWithPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  delegate = [(CRLPasteboardController *)self delegate];
  v6 = [delegate sourceContextForPasteboardController:self];

  v7 = [[CRLPasteboardCopyAssistant alloc] initWithPasteboard:pasteboardCopy sourceContext:v6];
  [(CRLPasteboardWriteAssistant *)v7 setDelegate:self];

  return v7;
}

- (id)newDragAssistant
{
  delegate = [(CRLPasteboardController *)self delegate];
  v4 = [delegate sourceContextForPasteboardController:self];

  v5 = [(CRLPasteboardWriteAssistant *)[CRLDraggingAssistant alloc] initWithContext:v4];
  [(CRLPasteboardWriteAssistant *)v5 setDelegate:self];

  return v5;
}

- (id)newReadAssistantWithPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  p_board = [(CRLPasteboardController *)self p_board];
  store = [p_board store];
  v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant alloc];
  crdtContext = [store crdtContext];
  v9 = [(CRLPasteboardObjectReadAssistant *)v7 initWithPasteboard:pasteboardCopy store:store context:crdtContext];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1001A99BC;
  v29 = sub_1001A99CC;
  v30 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001A99D4;
  v22 = &unk_101844750;
  v24 = &v25;
  v10 = dispatch_semaphore_create(0);
  v23 = v10;
  [(CRLPasteboardObjectReadAssistant *)v9 readPasteboardObjectWithCompletionHandler:&v19];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v26[5])
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101329708();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      domain = [v26[5] domain];
      code = [v26[5] code];
      v18 = v26[5];
      *buf = 138544130;
      v32 = v15;
      v33 = 2114;
      v34 = domain;
      v35 = 2048;
      v36 = code;
      v37 = 2112;
      v38 = v18;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to deserialize from pasteboard. error=errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  _Block_object_dispose(&v25, 8);
  return v12;
}

- (id)pasteboardObjectFromAssistant:(id)assistant boardItems:(id)items
{
  itemsCopy = items;
  pasteboardObject = [assistant pasteboardObject];
  v7 = pasteboardObject;
  if (pasteboardObject)
  {
    [pasteboardObject setBoardItems:itemsCopy];
  }

  return v7;
}

- (id)pasteboardObjectFromAssistant:(id)assistant textStorage:(id)storage smartCopy:(BOOL)copy
{
  copyCopy = copy;
  storageCopy = storage;
  pasteboardObject = [assistant pasteboardObject];
  v9 = pasteboardObject;
  if (pasteboardObject)
  {
    if (storageCopy)
    {
      [pasteboardObject copyTextFrom:storageCopy];
      [v9 setIsSmartCopyPaste:copyCopy];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329730();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329744();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013297E4();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLPasteboardController pasteboardObjectFromAssistant:textStorage:smartCopy:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:229 isFatal:0 description:"invalid nil value for '%{public}s'", "inWPStorage"];
    }
  }

  return v9;
}

- (id)publicTypesForBoardItems:(id)items asPDF:(BOOL)f
{
  fCopy = f;
  itemsCopy = items;
  v7 = +[NSMutableArray array];
  if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
    customPublicTypesToPromiseWhenCopyingSingleBoardItem = [firstObject customPublicTypesToPromiseWhenCopyingSingleBoardItem];
    if ([customPublicTypesToPromiseWhenCopyingSingleBoardItem count])
    {
      wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem = [firstObject wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem];
    }

    else
    {
      wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem = 1;
    }
  }

  else
  {
    customPublicTypesToPromiseWhenCopyingSingleBoardItem = 0;
    wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem = 1;
  }

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v11 = [objc_opt_class() jsonTypeIdentifiersForBoardItems:itemsCopy];
    [v7 addObjectsFromArray:v11];
  }

  [v7 crl_addObjectsFromNonNilArray:customPublicTypesToPromiseWhenCopyingSingleBoardItem];
  if (wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem)
  {
    if (fCopy)
    {
      identifier = [UTTypePDF identifier];
    }

    else
    {
      identifier = 0;
    }

    v17 = identifier;
    v13 = [(CRLPasteboardController *)self pImageForBoardItems:itemsCopy imageData:0 dataType:&v17 dataName:0];
    v14 = v17;

    if (v13)
    {
      [v7 addObject:v14];
    }
  }

  v15 = [v7 copy];

  return v15;
}

- (BOOL)hasNativeBoardItemsOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeBoardItems";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasSingleNativeImageBoardItemOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeImageBoardItem";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasSingleNativeMovieBoardItemOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeMovieBoardItem";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyFreehandDrawingBoardItems";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeFreehandDrawingBoardItemsOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasFreehandDrawingBoardItems";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasOnlyNativeTextBoxBoardItemsOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (unint64_t)boardItemStyleKindsOnPasteboard:(id)pasteboard
{
  result = [(CRLPasteboardController *)self p_integerFromPasteboardStateTypePrefix:@"com.apple.freeform.pasteboardState.styleClass-" pasteboard:pasteboard];
  if ((result & 0x8000000000000000) != 0)
  {
    sub_10132980C();
    return 0;
  }

  return result;
}

- (BOOL)hasOnlyNativeTextBoxItemsOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (id)providersForNativeBoardItemsAndTextFromPasteboard:(id)pasteboard validGeometries:(BOOL *)geometries
{
  pasteboardCopy = pasteboard;
  v7 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:pasteboardCopy];
  if (v7)
  {
    v8 = [(CRLPasteboardController *)self p_providersForBoardItemsAndTextFromPasteboardReadAssistant:v7 pasteboard:pasteboardCopy validGeometries:geometries];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)providersForNativeBoardItemsFromPasteboard:(id)pasteboard
{
  v4 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:pasteboard];
  v5 = v4;
  if (v4)
  {
    pasteboardObject = [v4 pasteboardObject];
    if (pasteboardObject)
    {
      v7 = [objc_opt_class() descriptionsForBoardItemsOnPasteboardObject:pasteboardObject];
      boardItems = [pasteboardObject boardItems];
      v9 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:boardItems descriptions:v7];

      if ([v9 count])
      {
        v10 = [CRLBoardItemProviderFactory alloc];
        p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
        v12 = [(CRLBoardItemProviderFactory *)v10 initWithBoardItemFactory:p_boardItemFactory];

        v13 = [(CRLBoardItemProviderFactory *)v12 styleMappingProvidersForPasteboardBoardItems:v9];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)providersForBoardItemsForTargetStorage:(id)storage fromPasteboard:(id)pasteboard
{
  storageCopy = storage;
  pasteboardCopy = pasteboard;
  v8 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:pasteboardCopy];
  v9 = v8;
  if (v8)
  {
    pasteboardObject = [v8 pasteboardObject];
    if (pasteboardObject)
    {
      v11 = [(CRLPasteboardController *)self descriptionsForBoardItemsOnPasteboard:pasteboardCopy];
      v12 = [objc_opt_class() readPasteboardBoardItemsForTargetStorage:storageCopy fromPasteboardObject:pasteboardObject descriptionsForBoardItems:v11];
      if ([v12 count])
      {
        v13 = [CRLBoardItemProviderFactory alloc];
        p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
        v15 = [(CRLBoardItemProviderFactory *)v13 initWithBoardItemFactory:p_boardItemFactory];

        v16 = [(CRLBoardItemProviderFactory *)v15 styleMappingProvidersForPasteboardBoardItems:v12];
      }

      else
      {
        v16 = &__NSArray0__struct;
      }
    }

    else
    {
      v16 = &__NSArray0__struct;
    }
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

+ (id)descriptionsForBoardItemsOnPasteboardObject:(id)object
{
  objectCopy = object;
  boardItems = [objectCopy boardItems];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [boardItems count]);

  boardItems2 = [objectCopy boardItems];
  v7 = [boardItems2 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      [v5 addObject:&__NSDictionary0__struct];
      ++v8;
      boardItems3 = [objectCopy boardItems];
      v10 = [boardItems3 count];
    }

    while (v8 < v10);
  }

  return v5;
}

+ (id)boardItemsForCopyByFixingUpBoardItems:(id)items boardItemFactory:(id)factory board:(id)board
{
  boardCopy = board;
  factoryCopy = factory;
  itemsCopy = items;
  v10 = [objc_opt_class() p_boardItemsForCopyByFixingUpBoardItems:itemsCopy boardItemFactory:factoryCopy board:boardCopy UUIDRemappingBlock:0];

  return v10;
}

+ (id)p_boardItemsForCopyByFixingUpBoardItems:(id)items boardItemFactory:(id)factory board:(id)board UUIDRemappingBlock:(id)block
{
  itemsCopy = items;
  boardCopy = board;
  v11 = [factory makeDuplicateOfBoardItems:itemsCopy UUIDRemappingBlock:block];
  v12 = [itemsCopy count];
  if ([v11 count] == v12)
  {
    v13 = v11;
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = objc_opt_class();
        v16 = [itemsCopy objectAtIndexedSubscript:i];
        v17 = sub_100014370(v15, v16);

        if (v17)
        {
          v18 = objc_opt_class();
          v19 = [v11 objectAtIndexedSubscript:i];
          v20 = sub_100013F00(v18, v19);

          if (v20)
          {
            [CRLConnectionLineAdjustmentHelper transferLaidOutInfoGeometryAndPathSourceFrom:v17 to:v20 withBoardItemOwner:boardCopy];
          }
        }
      }

      v13 = v11;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101329A18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329A2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101329ABC();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v21);
    }

    v22 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboardController p_boardItemsForCopyByFixingUpBoardItems:boardItemFactory:board:UUIDRemappingBlock:]");
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:410 isFatal:0 description:"Unable to duplicate items for fixing up."];

    v13 = itemsCopy;
  }

  v24 = v13;

  return v13;
}

+ (id)additionalBoardItemsForCopyImaging:(id)imaging icc:(id)icc invertedObjectUUIDMap:(id)map
{
  iccCopy = icc;
  mapCopy = map;
  if (iccCopy)
  {
    v9 = [imaging crl_arrayOfObjectsPassingTest:&stru_101844870];
    v10 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [iccCopy repForInfo:{v16, v25}];
          if (!v17)
          {
            v18 = [v16 id];
            v19 = [mapCopy objectForKeyedSubscript:v18];

            if (v19)
            {
              board = [iccCopy board];
              v21 = [board getBoardItemForUUID:v19];

              v17 = [iccCopy repForInfo:v21];
            }

            else
            {
              v17 = 0;
            }
          }

          createAdditionalBoardItemsForCopyImaging = [v17 createAdditionalBoardItemsForCopyImaging];
          v23 = createAdditionalBoardItemsForCopyImaging;
          if (createAdditionalBoardItemsForCopyImaging && [createAdditionalBoardItemsForCopyImaging count])
          {
            [v10 addObjectsFromArray:v23];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)p_providersForBoardItemsAndTextFromPasteboardReadAssistant:(id)assistant pasteboard:(id)pasteboard validGeometries:(BOOL *)geometries
{
  pasteboardObject = [assistant pasteboardObject];
  if (pasteboardObject)
  {
    p_shouldKeepHighlights = [(CRLPasteboardController *)self p_shouldKeepHighlights];
    v9 = [objc_opt_class() descriptionsForBoardItemsOnPasteboardObject:pasteboardObject];
    v10 = objc_opt_class();
    p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
    v12 = [v10 providersForBoardItemsAndTextWithBoardItemFactory:p_boardItemFactory keepHighlights:p_shouldKeepHighlights fromPasteboardObject:pasteboardObject descriptionsForBoardItems:v9 validGeometries:geometries];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)readPasteboardBoardItemsForTargetStorage:(id)storage fromPasteboardObject:(id)object descriptionsForBoardItems:(id)items
{
  itemsCopy = items;
  boardItems = [object boardItems];
  v8 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:boardItems descriptions:itemsCopy];

  return v8;
}

- (BOOL)canProduceBoardItemsFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if ([(CRLPasteboardController *)self hasNativeBoardItemsOnPasteboard:pasteboardCopy]|| [(CRLPasteboardController *)self hasNativeTextOnPasteboard:pasteboardCopy]|| [(CRLPasteboardController *)self hasImportableRichTextOnPasteboard:pasteboardCopy]|| [(CRLPasteboardController *)self hasImportablePlainTextOnPasteboard:pasteboardCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CRLPasteboardController *)self hasImportableBoardItemsOnPasteboard:pasteboardCopy detectImportableURLsInText:1 skipFileURLs:0];
  }

  return v5;
}

- (BOOL)hasImportableBoardItemsOnPasteboard:(id)pasteboard detectImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls
{
  lsCopy = ls;
  textCopy = text;
  pasteboardCopy = pasteboard;
  if (([pasteboardCopy containsContentLanguageDrawableTypes] & 1) != 0 || -[CRLPasteboardController hasImportableImagesOnPasteboard:skipFileURLs:](self, "hasImportableImagesOnPasteboard:skipFileURLs:", pasteboardCopy, lsCopy))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v37 = lsCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    pasteboardTypes = [pasteboardCopy pasteboardTypes];
    v11 = [pasteboardTypes countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v51;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(pasteboardTypes);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = [UTType typeWithIdentifier:v15];
          if (([v15 crl_isPasteboardStateType] & 1) == 0)
          {
            v17 = +[CRLIngestionTypes supportedMovieUTTypes];
            v18 = [v16 crl_conformsToAnyUTType:v17];

            if ((v18 & 1) != 0 || [CRLIngestionTypes isValidFileType:v16])
            {

              goto LABEL_26;
            }
          }
        }

        v12 = [pasteboardTypes countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    uRLs = [pasteboardCopy URLs];
    v9 = [uRLs count];

    if (v9)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      uRLs2 = [pasteboardCopy URLs];
      v9 = [uRLs2 countByEnumeratingWithState:&v46 objects:v56 count:16];
      selfCopy2 = self;
      if (v9)
      {
        v22 = *v47;
        while (2)
        {
          for (j = 0; j != v9; j = j + 1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(uRLs2);
            }

            v24 = *(*(&v46 + 1) + 8 * j);
            if (([v24 isFileURL] & 1) == 0 && +[CRLURLBoardItemProvider canInitWithURL:](CRLURLBoardItemProvider, "canInitWithURL:", v24))
            {
              LOBYTE(v9) = 1;
              goto LABEL_31;
            }
          }

          v9 = [uRLs2 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_31:
    }

    else
    {
      selfCopy2 = self;
    }

    if ((v9 & 1) == 0 && !v37)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      uRLs3 = [pasteboardCopy URLs];
      v27 = [uRLs3 countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v43;
        while (2)
        {
          for (k = 0; k != v28; k = k + 1)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(uRLs3);
            }

            v31 = *(*(&v42 + 1) + 8 * k);
            if ([v31 isFileURL] && +[CRLURLBoardItemProvider canInitWithURL:](CRLURLBoardItemProvider, "canInitWithURL:", v31))
            {
              LOBYTE(v9) = 1;
              goto LABEL_45;
            }
          }

          v28 = [uRLs3 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v9) = 0;
LABEL_45:
    }

    if ((v9 & 1) == 0 && textCopy)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      pasteboardTypes = [pasteboardCopy pasteboardTypes];
      v32 = [pasteboardTypes countByEnumeratingWithState:&v38 objects:v54 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v39;
LABEL_50:
        v35 = 0;
        while (1)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(pasteboardTypes);
          }

          v36 = [(CRLPasteboardController *)selfCopy2 p_detectedImportableURLOnPasteboard:pasteboardCopy type:*(*(&v38 + 1) + 8 * v35) fallbackBoardItemProvider:0];

          if (v36)
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [pasteboardTypes countByEnumeratingWithState:&v38 objects:v54 count:16];
            if (v33)
            {
              goto LABEL_50;
            }

            goto LABEL_56;
          }
        }

LABEL_26:
        LOBYTE(v9) = 1;
      }

      else
      {
LABEL_56:
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)hasImportableImagesOnPasteboard:(id)pasteboard skipFileURLs:(BOOL)ls
{
  pasteboardCopy = pasteboard;
  v6 = +[CRLIngestionTypes supportedImageUTTypes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  pasteboardTypes = [pasteboardCopy pasteboardTypes];
  v8 = [pasteboardTypes countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(pasteboardTypes);
      }

      v12 = [UTType typeWithIdentifier:*(*(&v25 + 1) + 8 * v11)];
      v13 = [v12 crl_conformsToAnyUTType:v6];

      if (v13)
      {
        goto LABEL_21;
      }

      if (v9 == ++v11)
      {
        v9 = [pasteboardTypes countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!ls)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    pasteboardTypes = [pasteboardCopy URLs];
    v14 = [pasteboardTypes countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (!v14)
    {
LABEL_22:

      goto LABEL_23;
    }

    v15 = *v22;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(pasteboardTypes);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      if ([v17 isFileURL])
      {
        crl_fileTypeIdentifierHandlingFileCoordinationPromises = [v17 crl_fileTypeIdentifierHandlingFileCoordinationPromises];
        v19 = [crl_fileTypeIdentifierHandlingFileCoordinationPromises crl_conformsToAnyUTType:v6];

        if (v19)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [pasteboardTypes countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    LOBYTE(v14) = 1;
    goto LABEL_22;
  }

  LOBYTE(v14) = 0;
LABEL_23:

  return v14;
}

- (id)asyncProvidersForBoardItemsFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if (![(CRLPasteboardController *)self hasNativeBoardItemsOnPasteboard:pasteboardCopy])
  {
    v13 = [(CRLPasteboardController *)self preferredImportableDataTypeOnPasteboard:pasteboardCopy detectImportableURLsInText:1];
    v6 = 0;
    if (v13 > 2)
    {
      if (v13 == 4)
      {
        v17 = [(CRLPasteboardController *)self providersForBoardItemsFromImportedTextFromPasteboard:pasteboardCopy];
        goto LABEL_30;
      }

      if (v13 != 3)
      {
        goto LABEL_31;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329AE4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329AF8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101329B88();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLPasteboardController asyncProvidersForBoardItemsFromPasteboard:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:642 isFatal:0 description:"should not ask for async providers for preferred type file promise!"];
    }

    else
    {
      if (v13 == 1)
      {
        v17 = [(CRLPasteboardController *)self providersForBoardItemsFromImportedRichTextFromPasteboard:pasteboardCopy];
        goto LABEL_30;
      }

      if (v13 != 2)
      {
        goto LABEL_31;
      }
    }

    v17 = [(CRLPasteboardController *)self providersForBoardItemsImportedFromPasteboard:pasteboardCopy];
LABEL_30:
    v6 = v17;
    goto LABEL_31;
  }

  v5 = [(CRLPasteboardController *)self providersForNativeBoardItemsFromPasteboard:pasteboardCopy];
  v6 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{&OBJC_PROTOCOL___CRLIngestibleItemImportableBoardItemProvider, v19}])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

LABEL_31:

  return v6;
}

- (id)providersForBoardItemsImportedFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  numberOfItems = [pasteboardCopy numberOfItems];
  if (numberOfItems < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    for (i = 0; i != numberOfItems; ++i)
    {
      v7 = [[NSIndexSet alloc] initWithIndex:i];
      v8 = objc_opt_class();
      v9 = [pasteboardCopy pasteboardTypesForItemSet:v7];
      firstObject = [v9 firstObject];
      v11 = [v8 pFilteredPasteboardTypesForPasteboard:pasteboardCopy types:firstObject];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(CRLPasteboardController *)self p_newImportableBoardItemProvidersFromPasteboard:pasteboardCopy itemIndex:i itemType:*(*(&v21 + 1) + 8 * j)];
            if (v17)
            {
              v18 = v17;
              if (!v5)
              {
                v5 = objc_alloc_init(NSMutableArray);
              }

              [v5 addObjectsFromArray:v18];

              goto LABEL_15;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  return v5;
}

- (id)p_newImportableBoardItemProvidersFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type
{
  pasteboardCopy = pasteboard;
  typeCopy = type;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v10 = +[TSCLConstants pasteboardCanvasObjectPrefix];
    if ([typeCopy hasPrefix:v10])
    {
      pasteboardTypes = [pasteboardCopy pasteboardTypes];
      v12 = [_TtC8Freeform20CRLCLCopyPasteHelper containsSupportedCanvasObjectFromTypeIdentifiers:pasteboardTypes];

      if (v12)
      {
        v13 = objc_opt_class();
        p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
        v15 = [v13 contentLanguageBoardItemProvidersForPasteboard:pasteboardCopy itemIndex:index boardItemFactory:p_boardItemFactory];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v16 = [(CRLPasteboardController *)self p_newImportableBoardItemProviderFromPasteboard:pasteboardCopy itemIndex:index itemType:typeCopy];
  p_boardItemFactory = v16;
  if (!v16)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v19 = v16;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
LABEL_8:
  v17 = v15;
LABEL_10:

  return v17;
}

- (id)p_newImportableBoardItemProviderFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type
{
  pasteboardCopy = pasteboard;
  typeCopy = type;
  v10 = [NSIndexSet indexSetWithIndex:index];
  v11 = [UTType typeWithIdentifier:typeCopy];
  if ([v11 conformsToType:UTTypeFileURL])
  {
    firstObject = [(CRLPasteboardController *)self p_importableFileURLFromPasteboard:pasteboardCopy itemIndex:index itemType:typeCopy];
    if (firstObject)
    {
      v13 = [CRLBoardItemProviderFactory alloc];
      p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
      v15 = [(CRLBoardItemProviderFactory *)v13 initWithBoardItemFactory:p_boardItemFactory];

      v28 = firstObject;
      v16 = [NSArray arrayWithObjects:&v28 count:1];
      v17 = [(CRLBoardItemProviderFactory *)v15 providersForBoardItemsFromURLs:v16];
      if ([v17 count])
      {
        v18 = [v17 objectAtIndexedSubscript:0];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_15;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  if ([v11 conformsToType:UTTypeURL])
  {
    v19 = [(CRLPasteboardController *)self p_importableURLFromPasteboard:pasteboardCopy itemIndex:index itemType:typeCopy];
  }

  else
  {
    importableRichTextTypes = [pasteboardCopy importableRichTextTypes];
    if ([importableRichTextTypes containsObject:typeCopy])
    {
    }

    else
    {
      v21 = [CRLIngestionTypes isValidPlainTextUTI:typeCopy];

      if ((v21 & 1) == 0)
      {
        if (![CRLInfoImporterBoardItemProvider canInitWithType:typeCopy])
        {
          v18 = 0;
          goto LABEL_22;
        }

        v24 = [pasteboardCopy dataForPasteboardType:typeCopy inItemSet:v10];
        firstObject = [v24 firstObject];

        if (firstObject && [firstObject length])
        {
          v25 = [CRLInfoImporterBoardItemProvider alloc];
          p_boardItemFactory2 = [(CRLPasteboardController *)self p_boardItemFactory];
          v18 = [(CRLInfoImporterBoardItemProvider *)v25 initWithData:firstObject type:typeCopy boardItemFactory:p_boardItemFactory2];

          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v19 = [(CRLPasteboardController *)self p_detectedImportableURLOnPasteboard:pasteboardCopy type:typeCopy fallbackBoardItemProvider:0];
  }

  firstObject = v19;
  if (!v19)
  {
    goto LABEL_20;
  }

  v22 = [CRLBoardItemProviderFactory alloc];
  p_boardItemFactory3 = [(CRLPasteboardController *)self p_boardItemFactory];
  v15 = [(CRLBoardItemProviderFactory *)v22 initWithBoardItemFactory:p_boardItemFactory3];

  v18 = [(CRLBoardItemProviderFactory *)v15 providerForBoardItemFromDetectedImportableURL:firstObject fallbackBoardItemProvider:0];
LABEL_15:

LABEL_21:
LABEL_22:

  return v18;
}

- (id)providersForBoardItemsFromImportedTextFromPasteboard:(id)pasteboard maximumStringLength:(unint64_t)length
{
  pasteboardCopy = pasteboard;
  v7 = [CRLBoardItemProviderFactory alloc];
  p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
  v9 = [(CRLBoardItemProviderFactory *)v7 initWithBoardItemFactory:p_boardItemFactory];

  v10 = [(CRLPasteboardController *)self importedTextStringFromPasteboard:pasteboardCopy smartPaste:0];

  if ([v10 length] <= length)
  {
    if ([v10 length])
    {
      v18 = [(CRLBoardItemProviderFactory *)v9 providersForBoardItemsFromImportedText:v10];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Pasted Text" value:0 table:0];

    v20 = 0;
    v13 = [v10 crl_writeToFileUsingName:v12 error:&v20];
    v14 = v20;
    if (v14)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329BB0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329BD8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101329C60();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLPasteboardController providersForBoardItemsFromImportedTextFromPasteboard:maximumStringLength:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:771 isFatal:0 description:"Failed to create a temporary file for oversize string: %@", v14];

      v18 = 0;
    }

    else
    {
      v21 = v13;
      v16 = [NSArray arrayWithObjects:&v21 count:1];
      v18 = [(CRLBoardItemProviderFactory *)v9 providersForBoardItemsFromURLs:v16];
    }
  }

  return v18;
}

- (id)providersForBoardItemsFromImportedRichTextFromPasteboard:(id)pasteboard maximumStringLength:(unint64_t)length
{
  v6 = [(CRLPasteboardController *)self importedRichTextStringFromPasteboard:pasteboard smartPaste:0];
  v7 = [CRLBoardItemProviderFactory alloc];
  p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
  v9 = [(CRLBoardItemProviderFactory *)v7 initWithBoardItemFactory:p_boardItemFactory];

  string = [v6 string];
  v11 = [string length];

  if (v11 <= length)
  {
    if ([v6 length])
    {
      v19 = [(CRLBoardItemProviderFactory *)v9 providersForBoardItemsFromImportedRichText:v6];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Pasted Text" value:0 table:0];

    v21 = 0;
    v14 = [v6 crl_writeToFileUsingName:v13 type:0 error:&v21];
    v15 = v21;
    if (v15)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329C88();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101329CB0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101329D38();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLPasteboardController providersForBoardItemsFromImportedRichTextFromPasteboard:maximumStringLength:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:798 isFatal:0 description:"Failed to create a temporary file for oversize string: %@", v15];

      v19 = 0;
    }

    else
    {
      v22 = v14;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      v19 = [(CRLBoardItemProviderFactory *)v9 providersForBoardItemsFromURLs:v17];
    }
  }

  return v19;
}

- (id)p_importableURLFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type
{
  pasteboardCopy = pasteboard;
  typeCopy = type;
  uRLs = [pasteboardCopy URLs];
  if ([uRLs count])
  {
    if ([uRLs count] <= index)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329D60();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v18 = v11;
        *buf = 67110402;
        v20 = v10;
        v21 = 2082;
        v22 = "[CRLPasteboardController p_importableURLFromPasteboard:itemIndex:itemType:]";
        v23 = 2082;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m";
        v25 = 1024;
        v26 = 848;
        v27 = 2048;
        indexCopy = index;
        v29 = 2048;
        v30 = [uRLs count];
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid URL index %tu: only %tu URLs on pasteboard", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101329D74();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLPasteboardController p_importableURLFromPasteboard:itemIndex:itemType:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 848, 0, "Invalid URL index %tu: only %tu URLs on pasteboard", index, [uRLs count]);
    }

    if ([uRLs count] <= index)
    {
      v15 = 0;
    }

    else
    {
      v15 = [uRLs objectAtIndexedSubscript:index];
    }
  }

  else
  {
    v16 = [pasteboardCopy dataForPasteboardType:typeCopy];
    if (v16)
    {
      v15 = [NSURL URLWithDataRepresentation:v16 relativeToURL:0];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)p_importableFileURLFromPasteboard:(id)pasteboard itemIndex:(unint64_t)index itemType:(id)type
{
  pasteboardCopy = pasteboard;
  typeCopy = type;
  v9 = [NSIndexSet indexSetWithIndex:index];
  v10 = [UTType typeWithIdentifier:typeCopy];
  if ([v10 conformsToType:UTTypeURL])
  {
    v11 = [NSURL crl_URLWithStringDataOnPasteboard:pasteboardCopy itemSet:v9 pasteboardType:typeCopy];
    if (v11 && [CRLURLBoardItemProvider canInitWithURL:v11])
    {
      v11 = v11;
      v12 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)p_detectedImportableURLOnPasteboard:(id)pasteboard type:(id)type fallbackBoardItemProvider:(id *)provider
{
  pasteboardCopy = pasteboard;
  typeCopy = type;
  importableRichTextTypes = [pasteboardCopy importableRichTextTypes];
  v11 = [importableRichTextTypes containsObject:typeCopy];

  if (v11)
  {
    v12 = [(CRLPasteboardController *)self importedRichTextStringFromPasteboard:pasteboardCopy smartPaste:0];
    v13 = [v12 length];
    if (v13)
    {
      v28 = xmmword_101464828;
      v14 = [v12 attribute:NSLinkAttributeName atIndex:0 effectiveRange:&v28];
      if (v14 && v28 == __PAIR128__(v13, 0))
      {
        v15 = objc_opt_class();
        v13 = sub_100014370(v15, v14);
        if (v13)
        {
LABEL_15:

          goto LABEL_17;
        }

        v16 = objc_opt_class();
        string = sub_100014370(v16, v14);
        if (!string)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v18 = objc_opt_class();
        v19 = string;
        v20 = 0;
      }

      else
      {
        v21 = objc_opt_class();
        string = [v12 string];
        v18 = v21;
        v19 = string;
        v20 = 1;
      }

      v13 = [v18 detectedImportableURLForPasteboardString:v19 canTrimWhitespace:v20];
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
    if (![CRLIngestionTypes isValidPlainTextUTI:typeCopy])
    {
      v13 = 0;
LABEL_22:
      v22 = 0;
      goto LABEL_38;
    }

    v12 = [(CRLPasteboardController *)self importedTextStringFromPasteboard:pasteboardCopy smartPaste:0];
    if (v12)
    {
      v13 = [objc_opt_class() detectedImportableURLForPasteboardString:v12 canTrimWhitespace:1];
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_17:

  if (!v13 || ![CRLURLBoardItemProvider canInitWithURL:v13])
  {
    goto LABEL_22;
  }

  v13 = v13;
  if (provider)
  {
    if (v11)
    {
      [(CRLPasteboardController *)self providersForBoardItemsFromImportedRichTextFromPasteboard:pasteboardCopy];
    }

    else
    {
      [(CRLPasteboardController *)self providersForBoardItemsFromImportedTextFromPasteboard:pasteboardCopy];
    }
    v23 = ;
    if ([v23 count])
    {
      if ([v23 count] != 1)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101329D9C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101329DC4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101329E54();
        }

        v24 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v24);
        }

        v25 = [NSString stringWithUTF8String:"[CRLPasteboardController p_detectedImportableURLOnPasteboard:type:fallbackBoardItemProvider:]"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
        [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:978 isFatal:0 description:"There should be only one rich or plain text board item provider when there is text on the pasteboard"];
      }

      *provider = [v23 objectAtIndexedSubscript:0];
    }
  }

  v22 = v13;
LABEL_38:

  return v22;
}

+ (id)detectedImportableURLForPasteboardString:(id)string canTrimWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  stringCopy = string;
  v6 = stringCopy;
  if (whitespaceCopy)
  {
    v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v6 = [stringCopy stringByTrimmingCharactersInSet:v7];
  }

  v8 = [v6 length];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = +[CRLURLBoardItemProvider supportedRemoteURLSchemes];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = stringCopy;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (v8 >= [v14 length] + 1)
        {
          v15 = [v6 substringToIndex:?];
          lowercaseString = [v15 lowercaseString];

          v17 = [v14 stringByAppendingString:@":"];
          LOBYTE(v15) = [lowercaseString isEqualToString:v17];

          if (v15)
          {
            v18 = [NSURL URLWithString:v6];

            goto LABEL_15;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_15:
    stringCopy = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)copyBoardItems:(id)items toPasteboard:(id)pasteboard asPDF:(BOOL)f writeAssistant:(id)assistant nativeOnly:(BOOL)only icc:(id)icc
{
  onlyCopy = only;
  fCopy = f;
  itemsCopy = items;
  pasteboardCopy = pasteboard;
  assistantCopy = assistant;
  obj = icc;
  if (fCopy && onlyCopy)
  {
    v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101329E7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329E90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101329F20();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101329F48(v17, v16);
    }

    v18 = [NSString stringWithUTF8String:"[CRLPasteboardController copyBoardItems:toPasteboard:asPDF:writeAssistant:nativeOnly:icc:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1017 isFatal:0 description:"asPDF is ignored when nativeOnly is specified"];
  }

  if (!pasteboardCopy)
  {
    v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132A000();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A028();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132A0C8();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A0F0(v21, v20);
    }

    v22 = [NSString stringWithUTF8String:"[CRLPasteboardController copyBoardItems:toPasteboard:asPDF:writeAssistant:nativeOnly:icc:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1019 isFatal:0 description:"invalid nil value for '%{public}s'", "inPasteboard"];
  }

  [objc_opt_class() clearPasteboardCacheDirectory];
  objc_storeWeak(&self->_icc, obj);
  context = objc_autoreleasePoolPush();
  if (assistantCopy)
  {
    v24 = pasteboardCopy;
    v25 = objc_alloc_init(CRLContentDescriptionTranslator);
    v26 = [(CRLContentDescriptionTranslator *)v25 contentDescriptionForBoardItems:itemsCopy];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_1001A99BC;
    v45 = sub_1001A99CC;
    v46 = 0;
    v27 = objc_opt_class();
    p_boardItemFactory = [(CRLPasteboardController *)self p_boardItemFactory];
    p_board = [(CRLPasteboardController *)self p_board];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1001AD7D0;
    v40[3] = &unk_101844A98;
    v40[4] = &v41;
    v30 = [v27 p_boardItemsForCopyByFixingUpBoardItems:itemsCopy boardItemFactory:p_boardItemFactory board:p_board UUIDRemappingBlock:v40];

    objc_storeStrong(&self->_invertedObjectUUIDMap, v42[5]);
    v31 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:assistantCopy boardItems:v30];

    if (v31)
    {
      [assistantCopy setContentDescription:v26];
      if (!onlyCopy)
      {
        v32 = [(CRLPasteboardController *)self publicTypesForBoardItems:v30 asPDF:fCopy];
        [assistantCopy setDataProvider:self forTypes:v32];
        if (fCopy)
        {
          [assistantCopy setExcludeNativeData:1];
        }

        [objc_opt_class() cacheWithBoardItems:v30];
      }

      v33 = objc_opt_class();
      v34 = sub_100014370(v33, assistantCopy);
      [v34 copyToPasteboard];
    }

    _Block_object_dispose(&v41, 8);

    itemsCopy = v30;
  }

  else
  {
    v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132A1A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A1D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132A270();
    }

    v24 = pasteboardCopy;
    v36 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A298(v36, v35);
    }

    v25 = [NSString stringWithUTF8String:"[CRLPasteboardController copyBoardItems:toPasteboard:asPDF:writeAssistant:nativeOnly:icc:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:1040 isFatal:0 description:"invalid nil value for '%{public}s'", "writeAssistant"];
  }

  objc_autoreleasePoolPop(context);
}

- (void)copyUninsertedFreehandDrawingItems:(id)items toPasteboard:(id)pasteboard
{
  itemsCopy = items;
  pasteboardCopy = pasteboard;
  if ([itemsCopy count])
  {
    v7 = [(CRLPasteboardController *)self newCopyAssistantWithPasteboard:pasteboardCopy];
    v8 = objc_alloc_init(CRLContentDescriptionTranslator);
    v9 = [(CRLContentDescriptionTranslator *)v8 contentDescriptionForBoardItems:itemsCopy];
    v10 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:v7 boardItems:itemsCopy];

    if (v10)
    {
      [v7 setContentDescription:v9];
      v11 = [(CRLPasteboardController *)self publicTypesForBoardItems:itemsCopy asPDF:0];
      [v7 setDataProvider:self forTypes:v11];
      [v7 copyToPasteboard];
    }
  }
}

- (BOOL)hasImportablePlainTextOnPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if ([pasteboardCopy containsImportableTextTypes])
  {
    v4 = 1;
  }

  else
  {
    [pasteboardCopy pasteboardTypes];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [UTType typeWithIdentifier:v10, v13];
          if (([v11 conformsToType:UTTypePlainText] & 1) != 0 || +[CRLPasteboardController p_isURLTypeExcludingFileURL:](CRLPasteboardController, "p_isURLTypeExcludingFileURL:", v10))
          {

            v4 = 1;
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v4 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
  }

  return v4;
}

- (id)importedRichTextStringFromPasteboard:(id)pasteboard smartPaste:(BOOL *)paste
{
  pasteboardCopy = pasteboard;
  richTextStrings = [pasteboardCopy richTextStrings];
  firstObject = [richTextStrings firstObject];

  if ([firstObject length])
  {
    v8 = [CRLWPStorageSanitizer filterText:firstObject removingAttachments:0];

    firstObject = v8;
  }

  if (paste)
  {
    if (firstObject)
    {
      isSmartCopy = [pasteboardCopy isSmartCopy];
    }

    else
    {
      isSmartCopy = 0;
    }

    *paste = isSmartCopy;
  }

  return firstObject;
}

- (id)importedTextStringFromPasteboard:(id)pasteboard smartPaste:(BOOL *)paste
{
  pasteboardCopy = pasteboard;
  v6 = pasteboardCopy;
  if (paste)
  {
    *paste = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  pasteboardTypes = [pasteboardCopy pasteboardTypes];
  v8 = [pasteboardTypes countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(pasteboardTypes);
      }

      if ([CRLPasteboardController p_isURLTypeExcludingFileURL:*(*(&v39 + 1) + 8 * v11)])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [pasteboardTypes countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }
    }

    pasteCopy = paste;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    uRLs = [v6 URLs];
    v13 = [uRLs countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      pasteboardTypes = 0;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(uRLs);
          }

          absoluteString = [*(*(&v35 + 1) + 8 * i) absoluteString];
          if ([absoluteString length])
          {
            if (pasteboardTypes)
            {
              v18 = [pasteboardTypes stringByAppendingFormat:@"%C%@", 10, absoluteString];

              pasteboardTypes = v18;
            }

            else
            {
              pasteboardTypes = absoluteString;
            }
          }
        }

        v14 = [uRLs countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v14);
    }

    else
    {
      pasteboardTypes = 0;
    }

    if (![pasteboardTypes length])
    {
      paste = pasteCopy;
      goto LABEL_32;
    }

    crl_stringByFixingBrokenSurrogatePairs = [pasteboardTypes crl_stringByFixingBrokenSurrogatePairs];
    crlwp_stringByNormalizingParagraphBreaks = [crl_stringByFixingBrokenSurrogatePairs crlwp_stringByNormalizingParagraphBreaks];
    v21 = [CRLWPStorageSanitizer filterText:crlwp_stringByNormalizingParagraphBreaks];

    paste = pasteCopy;
    if (pasteCopy && [v21 length])
    {
      *pasteCopy = 1;
    }

    if (v21)
    {
LABEL_45:
      if (!paste)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
LABEL_32:
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  strings = [v6 strings];
  v21 = [strings countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (!v21)
  {
LABEL_44:

    goto LABEL_45;
  }

  v23 = *v32;
LABEL_35:
  v24 = 0;
  while (1)
  {
    if (*v32 != v23)
    {
      objc_enumerationMutation(strings);
    }

    v25 = *(*(&v31 + 1) + 8 * v24);
    if ([v25 length])
    {
      break;
    }

    if (v21 == ++v24)
    {
      v21 = [strings countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v21)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  v26 = v25;

  if (v26)
  {
    crl_stringByFixingBrokenSurrogatePairs2 = [v26 crl_stringByFixingBrokenSurrogatePairs];
    crlwp_stringByNormalizingParagraphBreaks2 = [crl_stringByFixingBrokenSurrogatePairs2 crlwp_stringByNormalizingParagraphBreaks];
    v21 = [CRLWPStorageSanitizer filterText:crlwp_stringByNormalizingParagraphBreaks2];

    strings = v26;
    goto LABEL_44;
  }

  v21 = 0;
  if (paste)
  {
LABEL_46:
    if (v21 && [v6 isSmartCopy])
    {
      *paste = 1;
    }
  }

LABEL_49:

  return v21;
}

- (BOOL)hasTextStoragesOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasTextStoragesAttachmentsNotAllowed";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeTextOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeText";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeBoardItemsContainingTextOnPasteboard:(id)pasteboard
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeBoardItemsContainingText";
  pasteboardCopy = pasteboard;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [pasteboardCopy containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (void)copyTextStorage:(id)storage selection:(id)selection toPasteboard:(id)pasteboard smartCopy:(BOOL)copy writeAssistant:(id)assistant nativeOnly:(BOOL)only
{
  copyCopy = copy;
  storageCopy = storage;
  selectionCopy = selection;
  pasteboardCopy = pasteboard;
  assistantCopy = assistant;
  if (assistantCopy)
  {
    v17 = assistantCopy;
    v18 = 0;
  }

  else
  {
    v17 = [(CRLPasteboardController *)self newCopyAssistantWithPasteboard:pasteboardCopy];
    v18 = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  if (selectionCopy)
  {
    visualRangesArray = [selectionCopy visualRangesArray];
  }

  else
  {
    range = [storageCopy range];
    v22 = [NSValue valueWithRange:range, v21];
    v83 = v22;
    visualRangesArray = [NSArray arrayWithObjects:&v83 count:1];
  }

  v61 = v18;
  v62 = v17;
  v63 = selectionCopy;
  v60 = visualRangesArray;
  onlyCopy = only;
  if ([visualRangesArray count] < 2)
  {
    v25 = storageCopy;
    v43 = [visualRangesArray objectAtIndexedSubscript:0];
    rangeValue = [v43 rangeValue];
    v40 = v44;
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = visualRangesArray;
    v23 = [obj countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v23)
    {
      v24 = v23;
      selfCopy = self;
      v57 = pasteboardCopy;
      v25 = 0;
      v26 = *v67;
      v27 = obj;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v27);
          }

          rangeValue2 = [*(*(&v66 + 1) + 8 * v28) rangeValue];
          v31 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:storageCopy withRange:rangeValue2, v30];
          if (v31)
          {
            if (v25)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v33 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132A350();
            }

            v34 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v73 = v33;
              v74 = 2082;
              v75 = "[CRLPasteboardController copyTextStorage:selection:toPasteboard:smartCopy:writeAssistant:nativeOnly:]";
              v76 = 2082;
              v77 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m";
              v78 = 1024;
              v79 = 1262;
              v80 = 2082;
              v81 = "innerStorage";
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132A378();
            }

            v35 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v41 = v35;
              v42 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v73 = v33;
              v74 = 2114;
              v75 = v42;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v36 = [NSString stringWithUTF8String:"[CRLPasteboardController copyTextStorage:selection:toPasteboard:smartCopy:writeAssistant:nativeOnly:]"];
            v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
            [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:1262 isFatal:0 description:"invalid nil value for '%{public}s'", "innerStorage"];

            v27 = obj;
            if (v25)
            {
LABEL_15:
              [v25 replaceCharactersIn:objc_msgSend(v25 withStorage:{"length"), 0, v31}];
              v32 = v25;
              goto LABEL_26;
            }
          }

          v32 = v31;
          v25 = v32;
LABEL_26:
          rangeValue = [v32 range];
          v40 = v39;

          v28 = v28 + 1;
        }

        while (v24 != v28);
        v24 = [v27 countByEnumeratingWithState:&v66 objects:v82 count:16];
        if (!v24)
        {
          v43 = v27;
          self = selfCopy;
          pasteboardCopy = v57;
          goto LABEL_31;
        }
      }
    }

    v25 = 0;
    rangeValue = 0x7FFFFFFFFFFFFFFFLL;
    v40 = 0;
    v43 = obj;
  }

LABEL_31:

  if (v25)
  {
    v45 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v25 withRange:rangeValue, v40];
  }

  else
  {
    v45 = 0;
  }

  selfCopy2 = self;
  v47 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:v62 textStorage:v45 smartCopy:copyCopy];
  if (v47)
  {
    v48 = objc_alloc_init(CRLContentDescriptionTranslator);
    v49 = [(CRLContentDescriptionTranslator *)v48 contentDescriptionForTextStorage:v45 range:rangeValue boardItems:v40, &__NSArray0__struct];
    [v62 setContentDescription:v49];

    if (!onlyCopy)
    {
      identifier = [UTTypeRTF identifier];
      v71 = identifier;
      [NSArray arrayWithObjects:&v71 count:1];
      v51 = v58 = pasteboardCopy;
      [v62 setDataProvider:selfCopy2 forTypes:v51];

      identifier2 = [UTTypeUTF8PlainText identifier];
      v70 = identifier2;
      v53 = [NSArray arrayWithObjects:&v70 count:1];
      [v62 setDataProvider:selfCopy2 forTypes:v53];

      pasteboardCopy = v58;
    }

    v54 = v61;
    if (!v61)
    {
      v55 = objc_opt_class();
      v54 = sub_100014370(v55, v62);
    }

    [v54 copyToPasteboardIsSmartCopy:copyCopy];
  }

  else
  {
    v54 = v61;
  }

  selectionCopy = v63;
LABEL_42:
}

- (id)textStorageFromPasteboard:(id)pasteboard forTargetStorage:(id)storage smartPaste:(BOOL *)paste
{
  storage = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:pasteboard, storage];
  v8 = storage;
  if (!storage)
  {
    textStorage = 0;
    goto LABEL_15;
  }

  pasteboardObject = [storage pasteboardObject];
  v10 = pasteboardObject;
  if (pasteboardObject)
  {
    if (paste)
    {
      *paste = [pasteboardObject isSmartCopyPaste];
    }

    if ([v10 hasNativeText])
    {
      delegate = [(CRLPasteboardController *)self delegate];
      v12 = [delegate boardItemFactoryForPasteboardController:self];

      v13 = [v10 makeTextboxFromCopiedTextWith:v12];
      textStorage = [v13 textStorage];

LABEL_13:
      goto LABEL_14;
    }

    boardItems = [v10 boardItems];
    v16 = [boardItems count];

    if (v16 == 1)
    {
      v17 = objc_opt_class();
      boardItems2 = [v10 boardItems];
      firstObject = [boardItems2 firstObject];
      v12 = sub_100014370(v17, firstObject);

      if (v12)
      {
        textStorage = [v12 textStorage];
      }

      else
      {
        textStorage = 0;
      }

      goto LABEL_13;
    }
  }

  textStorage = 0;
LABEL_14:

LABEL_15:

  return textStorage;
}

- (unint64_t)preferredImportableDataTypeOnPasteboard:(id)pasteboard detectImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls
{
  lsCopy = ls;
  textCopy = text;
  pasteboardCopy = pasteboard;
  if ([(CRLPasteboardController *)self hasImportableBoardItemsOnPasteboard:pasteboardCopy detectImportableURLsInText:textCopy skipFileURLs:lsCopy])
  {
    v9 = 2;
  }

  else if ([(CRLPasteboardController *)self hasImportableRichTextOnPasteboard:pasteboardCopy])
  {
    v9 = 1;
  }

  else if ([(CRLPasteboardController *)self hasImportablePlainTextOnPasteboard:pasteboardCopy])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionForPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  v5 = +[CRLPasteboard generalPasteboard];

  if (v5 == pasteboardCopy)
  {
    changeCount = [pasteboardCopy changeCount];
    if (changeCount != self->_cachedGeneralDescriptionChangeCount)
    {
      v12 = changeCount;
      v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:pasteboardCopy];
      objc_storeStrong(&self->_cachedGeneralDescription, v7);
      self->_cachedGeneralDescriptionChangeCount = v12;
      goto LABEL_14;
    }

    cachedGeneralDescription = self->_cachedGeneralDescription;
    goto LABEL_10;
  }

  v6 = +[CRLPasteboard stylePasteboard];

  if (v6 == pasteboardCopy)
  {
    changeCount2 = [pasteboardCopy changeCount];
    if (changeCount2 != self->_cachedStyleDescriptionChangeCount)
    {
      v13 = changeCount2;
      v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:pasteboardCopy];
      objc_storeStrong(&self->_cachedStyleDescription, v7);
      self->_cachedStyleDescriptionChangeCount = v13;
      goto LABEL_14;
    }

    cachedGeneralDescription = self->_cachedStyleDescription;
LABEL_10:
    v7 = cachedGeneralDescription;
    goto LABEL_14;
  }

  v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:pasteboardCopy];
  if (!v7)
  {
    if ([pasteboardCopy containsImportableTextTypes])
    {
      v19 = @"hasText";
      v20 = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = @"text";
      v18 = v8;
      v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_14:
  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  v15 = v14;

  return v14;
}

- (id)descriptionsForBoardItemsOnPasteboard:(id)pasteboard
{
  v3 = [(CRLPasteboardController *)self descriptionForPasteboard:pasteboard];
  v4 = [CRLContentDescriptionTranslator descriptionsForBoardItemsInContentDescription:v3];

  return v4;
}

- (id)pasteboardPromise:(id)promise propertyListForType:(id)type
{
  typeCopy = type;
  promisedPasteboardObject = [promise promisedPasteboardObject];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v8 = objc_opt_class();
    boardItems = [promisedPasteboardObject boardItems];
    p_board = [(CRLPasteboardController *)self p_board];
    store = [p_board store];
    promisedStringForCopy = [v8 jsonDataForTypeIdentifier:typeCopy boardItems:boardItems boardDataStore:store];

    if (promisedStringForCopy)
    {
      goto LABEL_45;
    }
  }

  boardItems2 = [promisedPasteboardObject boardItems];
  v14 = [boardItems2 count];

  if (v14 == 1)
  {
    v15 = [UTType typeWithIdentifier:typeCopy];
    if (!v15)
    {
      goto LABEL_10;
    }

    boardItems3 = [promisedPasteboardObject boardItems];
    crl_anyObject = [boardItems3 crl_anyObject];
    promisedStringForCopy = [crl_anyObject promisedDataForPublicType:v15];

    if (promisedStringForCopy)
    {

      goto LABEL_45;
    }

    if ([v15 conformsToType:UTTypePlainText])
    {
      boardItems4 = [promisedPasteboardObject boardItems];
      crl_anyObject2 = [boardItems4 crl_anyObject];
      promisedStringForCopy = [crl_anyObject2 promisedStringForCopy];

      if (promisedStringForCopy)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_10:
    }
  }

  if ([promisedPasteboardObject hasNativeText])
  {
    delegate = [(CRLPasteboardController *)self delegate];
    v21 = [delegate boardItemFactoryForPasteboardController:self];

    v22 = [promisedPasteboardObject makeTextboxFromCopiedTextWith:v21];
    if (v22)
    {
      identifier = [UTTypeUTF8PlainText identifier];
      v24 = [typeCopy isEqualToString:identifier];

      if (v24)
      {
        text = [v22 text];
        string = [text string];

        promisedStringForCopy = [string dataUsingEncoding:4 allowLossyConversion:1];
        goto LABEL_27;
      }

      identifier2 = [UTTypeRTF identifier];
      v28 = [typeCopy isEqualToString:identifier2];

      if (v28)
      {
        text2 = [v22 text];
        string = [text2 coreTextAttributedString];

        v30 = [string length];
        v56 = NSDocumentTypeDocumentAttribute;
        v57 = NSRTFTextDocumentType;
        v31 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v55 = 0;
        promisedStringForCopy = [string dataFromRange:0 documentAttributes:v30 error:{v31, &v55}];
        v32 = v55;

        if (v32)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          v52 = string;
          if (qword_101AD5A10 != -1)
          {
            sub_10132A3A0();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10132A3C8();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132A450();
          }

          v33 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v33);
          }

          v34 = [NSString stringWithUTF8String:"[CRLPasteboardController pasteboardPromise:propertyListForType:]"];
          v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
          [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:1624 isFatal:0 description:"Error creating rich text string: %@", v32];

          string = v52;
        }

LABEL_27:
        if (promisedStringForCopy)
        {
          goto LABEL_45;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_30:
  identifier3 = [UTTypePNG identifier];
  v37 = [typeCopy isEqualToString:identifier3];

  if (v37)
  {
    v38 = typeCopy;
    v39 = objc_opt_class();
    boardItems5 = [promisedPasteboardObject boardItems];
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v42 = [v39 additionalBoardItemsForCopyImaging:boardItems5 icc:WeakRetained invertedObjectUUIDMap:self->_invertedObjectUUIDMap];

    invertedObjectUUIDMap = self->_invertedObjectUUIDMap;
    self->_invertedObjectUUIDMap = 0;

    boardItems6 = [promisedPasteboardObject boardItems];
    v45 = [boardItems6 arrayByAddingObjectsFromArray:v42];

    v53 = v38;
    v54 = 0;
    LODWORD(boardItems6) = [(CRLPasteboardController *)self pImageForBoardItems:v45 imageData:&v54 dataType:&v53 dataName:0];
    v46 = v54;
    v47 = v53;

    if (boardItems6 && [v47 isEqualToString:v38])
    {
      promisedStringForCopy = v46;
    }

    else
    {
      promisedStringForCopy = 0;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132A478();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A4A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132A528();
    }

    v48 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v48);
    }

    v49 = [NSString stringWithUTF8String:"[CRLPasteboardController pasteboardPromise:propertyListForType:]"];
    v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
    [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:1646 isFatal:0 description:"Request for property list for unsupported pasteboard type %@", typeCopy];

    promisedStringForCopy = 0;
  }

LABEL_45:

  return promisedStringForCopy;
}

- (void)distillPasteboardContentDescription:(id)description intoPasteboardStateTypes:(id)types
{
  descriptionCopy = description;
  typesCopy = types;
  v6 = objc_opt_class();
  if ([v6 hasNativeBoardItemsInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasNativeBoardItems"];
  }

  if ([v6 hasTextStoragesInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasTextStoragesAttachmentsNotAllowed"];
  }

  if ([v6 hasNativeTextInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasNativeText"];
  }

  if ([v6 hasNativeBoardItemsContainingTextInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasNativeBoardItemsContainingText"];
  }

  if ([v6 hasSingleNativeImageBoardItemInContentDescription:descriptionCopy])
  {
    v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeImageBoardItem";
  }

  else
  {
    if (![v6 hasSingleNativeMovieBoardItemInContentDescription:descriptionCopy])
    {
      goto LABEL_14;
    }

    v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeMovieBoardItem";
  }

  [typesCopy addObject:v7];
LABEL_14:
  if ([v6 hasOnlyFreehandDrawingBoardItemsInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasOnlyFreehandDrawingBoardItems"];
  }

  if ([v6 hasAnyFreehandDrawingBoardItemsInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasFreehandDrawingBoardItems"];
  }

  if ([v6 hasOnlyNativeTextBoxBoardItemsInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems"];
  }

  if ([v6 hasNativeTypesInContentDescription:descriptionCopy])
  {
    [typesCopy addObject:@"com.apple.freeform.pasteboardState.hasNativeTypes"];
  }

  v8 = [v6 stringToPrefixForStyleCopyingTypeFromDescription:descriptionCopy];
  if (v8)
  {
    v9 = [@"com.apple.freeform.pasteboardState.styleClass-" stringByAppendingString:v8];
    [typesCopy addObject:v9];
  }
}

+ (BOOL)p_isURLTypeExcludingFileURL:(id)l
{
  v3 = [UTType typeWithIdentifier:l];
  if ([v3 conformsToType:UTTypeURL])
  {
    v4 = [v3 conformsToType:UTTypeFileURL] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)pImageForBoardItems:(id)items imageData:(id *)data dataType:(id *)type dataName:(id *)name
{
  itemsCopy = items;
  v11 = [itemsCopy count];
  v12 = v11;
  if (type)
  {
    identifier = [UTTypePDF identifier];
    v14 = [identifier isEqual:*type];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
LABEL_3:
      [(CRLPasteboardController *)self p_board];
      v15 = *image = 0u;
      v26 = v15;
      v27 = itemsCopy;
      v28 = v14;
      image[0] = 0;
      LOBYTE(image[1]) = 0;
      [(CRLPasteboardController *)self pImageInfosWithReadLock:&v26];
      v16 = *(&v28 + 1);
      v17 = v16;
      if (v16)
      {
        if (data)
        {
          v18 = v16;
          *data = v17;
        }

        if (type)
        {
          *type = [UTTypePDF identifier];
        }

        if (name)
        {
          *name = @"CopiedImage.pdf";
        }

        v19 = image[0];
        if (!image[0])
        {
          goto LABEL_26;
        }
      }

      else
      {
        v19 = image[0];
        if (!image[0])
        {
          v20 = 0;
          goto LABEL_27;
        }

        if (type)
        {
          *type = [UTTypePNG identifier];
        }

        if (name)
        {
          *name = @"CopiedImage.png";
        }

        if (data)
        {
          v21 = +[NSMutableDictionary dictionary];
          if (LOBYTE(image[1]) == 1)
          {
            v22 = [NSNumber numberWithDouble:144.0];
            [v21 setObject:v22 forKeyedSubscript:kCGImagePropertyDPIWidth];

            v23 = [NSNumber numberWithDouble:144.0];
            [v21 setObject:v23 forKeyedSubscript:kCGImagePropertyDPIHeight];
          }

          v24 = sub_1005356F4(v19, v21);
          if (v24)
          {
            v24 = v24;
            *data = v24;
          }
        }
      }

      CGImageRelease(v19);
LABEL_26:
      v20 = 1;
LABEL_27:

      goto LABEL_28;
    }
  }

  v20 = 0;
LABEL_28:

  return v20;
}

- (void)pImageInfosWithReadLock:(id *)lock
{
  v4 = [[CRLCanvasImager alloc] initWithBoard:lock->var0];
  v5 = v4;
  if (v4)
  {
    [(CRLCanvasImager *)v4 setInfos:lock->var1];
    if (lock->var2)
    {
      pdfData = [(CRLCanvasImager *)v5 pdfData];
      var3 = lock->var3;
      lock->var3 = pdfData;
    }

    if (!lock->var3)
    {
      if ([lock->var1 count] != 1)
      {
        goto LABEL_18;
      }

      v8 = [lock->var1 objectAtIndexedSubscript:0];
      [v8 viewScaleToUseWhenRasterizingSingleBoardItemForCopy];
      v10 = v9;

      if (v10 < 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132A550();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132A564();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132A5F4();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v11);
        }

        v12 = [NSString stringWithUTF8String:"[CRLPasteboardController pImageInfosWithReadLock:]"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
        [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1860 isFatal:0 description:"requestedViewScale should never be negative."];
      }

      if (v10 > 0.0)
      {
        [(CRLCanvasImager *)v5 setViewScale:v10];
        v14 = 0;
      }

      else
      {
LABEL_18:
        [(CRLCanvasImager *)v5 setContentsScale:2.0];
        v14 = 1;
      }

      lock->var5 = v14;
      [(CRLCanvasImager *)v5 setMaximumImagePixelSize:sub_10050CFE8()];
      lock->var4 = [(CRLCanvasImager *)v5 newImage];
    }
  }
}

- (int64_t)p_integerFromPasteboardStateTypePrefix:(id)prefix pasteboard:(id)pasteboard
{
  prefixCopy = prefix;
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  pasteboardTypes = [pasteboard pasteboardTypes];
  v7 = [pasteboardTypes countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(pasteboardTypes);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 hasPrefix:prefixCopy])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [pasteboardTypes countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [[NSScanner alloc] initWithString:v11];
    [v13 scanString:prefixCopy intoString:0];
    if ([v13 scanInteger:&v23])
    {
      if ([v13 isAtEnd])
      {
LABEL_31:

        v12 = v23;
        goto LABEL_32;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132A6F4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132A71C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132A7A4();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLPasteboardController p_integerFromPasteboardStateTypePrefix:pasteboard:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1897 isFatal:0 description:"Expected scanner to be at end from pasteboard state type %@.", v11];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132A61C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132A644();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132A6CC();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v15 = [NSString stringWithUTF8String:"[CRLPasteboardController p_integerFromPasteboardStateTypePrefix:pasteboard:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1895 isFatal:0 description:"Expected scanner to read integer from pasteboard state type %@.", v11];
    }

    goto LABEL_31;
  }

LABEL_9:

  v12 = 0;
LABEL_32:

  return v12;
}

+ (id)pFilteredPasteboardTypesForPasteboard:(id)pasteboard types:(id)types
{
  pasteboardCopy = pasteboard;
  typesCopy = types;
  if (+[CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled](_TtC8Freeform19CRLFeatureFlagGroup, "isContentLanguageCopyPasteEnabled") && [objc_opt_class() p_pasteboardHasIWorkNativeData:pasteboardCopy])
  {
    v7 = [objc_opt_class() p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:typesCopy];

    typesCopy = v7;
  }

  v8 = [typesCopy crl_arrayOfObjectsPassingTest:&stru_101844C58];

  v9 = [objc_opt_class() p_movePublicURLBeforePlainTextIfNeededInTypes:v8];

  return v9;
}

+ (BOOL)p_pasteboardHasPlainAndRichHyperlink:(id)hyperlink
{
  pasteboardTypes = [hyperlink pasteboardTypes];
  identifier = [UTTypeURL identifier];
  v5 = [pasteboardTypes indexOfObject:identifier];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [pasteboardTypes indexOfObject:@"public.url-name"];
    v6 = 0;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (v5 < v7)
      {
        identifier2 = [UTTypeRTF identifier];
        v10 = [pasteboardTypes indexOfObject:identifier2];

        v6 = v10 != 0x7FFFFFFFFFFFFFFFLL && v8 < v10;
      }
    }
  }

  return v6;
}

+ (id)p_movePublicURLBeforePlainTextIfNeededInTypes:(id)types
{
  typesCopy = types;
  identifier = [UTTypeURL identifier];
  v5 = [typesCopy indexOfObject:identifier];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    identifier2 = [UTTypeUTF8PlainText identifier];
    v7 = [typesCopy indexOfObject:identifier2];

    v8 = [typesCopy indexOfObject:@"public.url-name"];
    v9 = v7 >= v8 ? v8 : v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v5 > v9)
    {
      v11 = [typesCopy mutableCopy];
      v12 = [typesCopy objectAtIndexedSubscript:v5];
      [v11 removeObjectAtIndex:v5];
      [v11 insertObject:v12 atIndex:v9];

      typesCopy = v11;
    }
  }

  return typesCopy;
}

+ (BOOL)p_pasteboardHasIWorkNativeData:(id)data
{
  pasteboardTypes = [data pasteboardTypes];
  v4 = [pasteboardTypes indexOfObject:@"com.apple.iWork.TSPNativeData"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:(id)types
{
  typesCopy = types;
  v4 = [_TtC8Freeform20CRLCLCopyPasteHelper canvasObjectTypeIdentifierToUseFromTypeIdentifiers:typesCopy];
  v5 = [typesCopy indexOfObject:v4];
  if (v5)
  {
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = [typesCopy mutableCopy];
    [v8 removeObjectAtIndex:v7];
    [v8 insertObject:v4 atIndex:0];

    typesCopy = v8;
  }

  return typesCopy;
}

- (CRLPasteboardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)copyStyleFromItem:(id)item to:(id)to
{
  swift_unknownObjectRetain();
  toCopy = to;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1009C6040(v8, toCopy);

  sub_100005070(v8);
}

- (BOOL)containsStylesRelevantTo:(id)to on:(id)on
{
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  onCopy = on;
  selfCopy = self;
  v9 = sub_1009C651C(v6, onCopy);

  return v9 & 1;
}

- (id)commandsToPasteStyleTo:(id)to from:(id)from
{
  type metadata accessor for CRLStyledItem();
  sub_1009CCDDC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  fromCopy = from;
  selfCopy = self;
  sub_1009C679C(v6);

  type metadata accessor for CRLCommand();
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)commandsToPasteTextStyleTo:(id)to in:(_NSRange)in from:(id)from
{
  length = in.length;
  location = in.location;
  toCopy = to;
  fromCopy = from;
  selfCopy = self;
  sub_1009CA570(toCopy, location, length, fromCopy);

  type metadata accessor for CRLCommand();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

+ (id)providersForBoardItemsAndTextWithBoardItemFactory:(id)factory keepHighlights:(BOOL)highlights fromPasteboardObject:(id)object descriptionsForBoardItems:(id)items validGeometries:(BOOL *)geometries
{
  highlightsCopy = highlights;
  sub_1005B981C(&qword_101A0B1B0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  factoryCopy = factory;
  objectCopy = object;
  sub_1009CC878(factoryCopy, highlightsCopy, objectCopy, v11, geometries);

  sub_1005B981C(&qword_101A0B1B8);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

+ (void)cacheWithBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1009CCC80(v3);
}

+ (id)jsonTypeIdentifiersForBoardItems:(id)items
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _s25PasteboardResourceHandlerCMa();
  v4 = swift_allocObject();
  type metadata accessor for CRLCLCopyPasteHelper();

  sub_1007ABA18(v3, v4, &off_1018A4368);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)jsonDataForTypeIdentifier:(id)identifier boardItems:(id)items boardDataStore:(id)store
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  type metadata accessor for CRLBoardItem(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;

  v11 = sub_100D8C08C(v6, v8);
  if (v13 <= 1u)
  {
    if (v13)
    {
      sub_100D8D8EC(v11, v12, 1);

      v19 = 0;
      v20 = 0xC000000000000000;
      goto LABEL_9;
    }

    v14 = v13;
    v15 = v11;
    v16 = v12;
    v17 = sub_100D8C33C(v9);
LABEL_6:
    v19 = v17;
    v20 = v18;
    sub_100D8D8EC(v15, v16, v14);

    if (v20 >> 60 == 15)
    {
      goto LABEL_11;
    }

LABEL_9:
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v19, v20);
    v22 = isa;
    goto LABEL_12;
  }

  if (v13 == 2)
  {
    v14 = v13;
    v15 = v11;
    v16 = v12;
    v17 = sub_100D8C6C0(v11, v12, storeCopy);
    goto LABEL_6;
  }

LABEL_11:
  v22 = 0;
LABEL_12:

  return v22;
}

+ (id)contentLanguageBoardItemProvidersForPasteboard:(id)pasteboard itemIndex:(unint64_t)index boardItemFactory:(id)factory
{
  pasteboardCopy = pasteboard;
  factoryCopy = factory;
  v9 = sub_100D8CD90(pasteboardCopy, index, factoryCopy);

  if (v9)
  {
    type metadata accessor for CRLContentLanguageBoardItemProvider();
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

@end