@interface CRLPasteboardController
+ (BOOL)p_isURLTypeExcludingFileURL:(id)a3;
+ (BOOL)p_pasteboardHasIWorkNativeData:(id)a3;
+ (BOOL)p_pasteboardHasPlainAndRichHyperlink:(id)a3;
+ (NSURL)pasteboardCacheDirectory;
+ (id)additionalBoardItemsForCopyImaging:(id)a3 icc:(id)a4 invertedObjectUUIDMap:(id)a5;
+ (id)boardItemsForCopyByFixingUpBoardItems:(id)a3 boardItemFactory:(id)a4 board:(id)a5;
+ (id)contentLanguageBoardItemProvidersForPasteboard:(id)a3 itemIndex:(unint64_t)a4 boardItemFactory:(id)a5;
+ (id)descriptionsForBoardItemsOnPasteboardObject:(id)a3;
+ (id)detectedImportableURLForPasteboardString:(id)a3 canTrimWhitespace:(BOOL)a4;
+ (id)jsonDataForTypeIdentifier:(id)a3 boardItems:(id)a4 boardDataStore:(id)a5;
+ (id)jsonTypeIdentifiersForBoardItems:(id)a3;
+ (id)pFilteredPasteboardTypesForPasteboard:(id)a3 types:(id)a4;
+ (id)p_boardItemsForCopyByFixingUpBoardItems:(id)a3 boardItemFactory:(id)a4 board:(id)a5 UUIDRemappingBlock:(id)a6;
+ (id)p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:(id)a3;
+ (id)p_movePublicURLBeforePlainTextIfNeededInTypes:(id)a3;
+ (id)providersForBoardItemsAndTextWithBoardItemFactory:(id)a3 keepHighlights:(BOOL)a4 fromPasteboardObject:(id)a5 descriptionsForBoardItems:(id)a6 validGeometries:(BOOL *)a7;
+ (id)readPasteboardBoardItemsForTargetStorage:(id)a3 fromPasteboardObject:(id)a4 descriptionsForBoardItems:(id)a5;
+ (void)cacheWithBoardItems:(id)a3;
+ (void)clearPasteboardCacheDirectory;
- (BOOL)canProduceBoardItemsFromPasteboard:(id)a3;
- (BOOL)containsStylesRelevantTo:(id)a3 on:(id)a4;
- (BOOL)hasImportableBoardItemsOnPasteboard:(id)a3 detectImportableURLsInText:(BOOL)a4 skipFileURLs:(BOOL)a5;
- (BOOL)hasImportableImagesOnPasteboard:(id)a3 skipFileURLs:(BOOL)a4;
- (BOOL)hasImportablePlainTextOnPasteboard:(id)a3;
- (BOOL)hasNativeBoardItemsContainingTextOnPasteboard:(id)a3;
- (BOOL)hasNativeBoardItemsOnPasteboard:(id)a3;
- (BOOL)hasNativeFreehandDrawingBoardItemsOnPasteboard:(id)a3;
- (BOOL)hasNativeTextOnPasteboard:(id)a3;
- (BOOL)hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:(id)a3;
- (BOOL)hasOnlyNativeTextBoxBoardItemsOnPasteboard:(id)a3;
- (BOOL)hasOnlyNativeTextBoxItemsOnPasteboard:(id)a3;
- (BOOL)hasSingleNativeImageBoardItemOnPasteboard:(id)a3;
- (BOOL)hasSingleNativeMovieBoardItemOnPasteboard:(id)a3;
- (BOOL)hasTextStoragesOnPasteboard:(id)a3;
- (BOOL)pImageForBoardItems:(id)a3 imageData:(id *)a4 dataType:(id *)a5 dataName:(id *)a6;
- (CRLPasteboardController)init;
- (CRLPasteboardController)initWithDelegate:(id)a3;
- (CRLPasteboardControllerDelegate)delegate;
- (id)asyncProvidersForBoardItemsFromPasteboard:(id)a3;
- (id)commandsToPasteStyleTo:(id)a3 from:(id)a4;
- (id)commandsToPasteTextStyleTo:(id)a3 in:(_NSRange)a4 from:(id)a5;
- (id)descriptionForPasteboard:(id)a3;
- (id)descriptionsForBoardItemsOnPasteboard:(id)a3;
- (id)importedRichTextStringFromPasteboard:(id)a3 smartPaste:(BOOL *)a4;
- (id)importedTextStringFromPasteboard:(id)a3 smartPaste:(BOOL *)a4;
- (id)ingestibleItemSourceForPasteboard:(id)a3;
- (id)newCopyAssistantWithPasteboard:(id)a3;
- (id)newDragAssistant;
- (id)newReadAssistantWithPasteboard:(id)a3;
- (id)p_board;
- (id)p_boardItemFactory;
- (id)p_detectedImportableURLOnPasteboard:(id)a3 type:(id)a4 fallbackBoardItemProvider:(id *)a5;
- (id)p_importableFileURLFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5;
- (id)p_importableURLFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5;
- (id)p_newImportableBoardItemProviderFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5;
- (id)p_newImportableBoardItemProvidersFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5;
- (id)p_providersForBoardItemsAndTextFromPasteboardReadAssistant:(id)a3 pasteboard:(id)a4 validGeometries:(BOOL *)a5;
- (id)pasteboardObjectFromAssistant:(id)a3 boardItems:(id)a4;
- (id)pasteboardObjectFromAssistant:(id)a3 textStorage:(id)a4 smartCopy:(BOOL)a5;
- (id)pasteboardPromise:(id)a3 propertyListForType:(id)a4;
- (id)providersForBoardItemsForTargetStorage:(id)a3 fromPasteboard:(id)a4;
- (id)providersForBoardItemsFromImportedRichTextFromPasteboard:(id)a3 maximumStringLength:(unint64_t)a4;
- (id)providersForBoardItemsFromImportedTextFromPasteboard:(id)a3 maximumStringLength:(unint64_t)a4;
- (id)providersForBoardItemsImportedFromPasteboard:(id)a3;
- (id)providersForNativeBoardItemsAndTextFromPasteboard:(id)a3 validGeometries:(BOOL *)a4;
- (id)providersForNativeBoardItemsFromPasteboard:(id)a3;
- (id)publicTypesForBoardItems:(id)a3 asPDF:(BOOL)a4;
- (id)textStorageFromPasteboard:(id)a3 forTargetStorage:(id)a4 smartPaste:(BOOL *)a5;
- (int64_t)p_integerFromPasteboardStateTypePrefix:(id)a3 pasteboard:(id)a4;
- (unint64_t)boardItemStyleKindsOnPasteboard:(id)a3;
- (unint64_t)preferredImportableDataTypeOnPasteboard:(id)a3 detectImportableURLsInText:(BOOL)a4 skipFileURLs:(BOOL)a5;
- (void)copyBoardItems:(id)a3 toPasteboard:(id)a4 asPDF:(BOOL)a5 writeAssistant:(id)a6 nativeOnly:(BOOL)a7 icc:(id)a8;
- (void)copyStyleFromItem:(id)a3 to:(id)a4;
- (void)copyTextStorage:(id)a3 selection:(id)a4 toPasteboard:(id)a5 smartCopy:(BOOL)a6 writeAssistant:(id)a7 nativeOnly:(BOOL)a8;
- (void)copyUninsertedFreehandDrawingItems:(id)a3 toPasteboard:(id)a4;
- (void)distillPasteboardContentDescription:(id)a3 intoPasteboardStateTypes:(id)a4;
- (void)pImageInfosWithReadLock:(id *)a3;
@end

@implementation CRLPasteboardController

- (CRLPasteboardController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLPasteboardController;
  v5 = [(CRLPasteboardController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
  v3 = [(CRLPasteboardController *)self delegate];
  v4 = [v3 boardForPasteboardController:self];

  return v4;
}

- (id)p_boardItemFactory
{
  v3 = [(CRLPasteboardController *)self delegate];
  v4 = [v3 boardItemFactoryForPasteboardController:self];

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

  v9 = [objc_opt_class() p_cacheDirectoryName];
  v10 = [v3 URLByAppendingPathComponent:v9];

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

  v10 = [objc_opt_class() p_cacheDirectoryName];
  v11 = [v4 URLByAppendingPathComponent:v10];

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
            v23 = [v2[71] defaultManager];
            v32 = v21;
            [v23 removeItemAtURL:v22 error:&v32];
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

- (id)ingestibleItemSourceForPasteboard:(id)a3
{
  v4 = a3;
  v5 = [[CRLPasteboardItemSource alloc] initWithPasteboard:v4 pasteboardController:self];

  return v5;
}

- (id)newCopyAssistantWithPasteboard:(id)a3
{
  v4 = a3;
  v5 = [(CRLPasteboardController *)self delegate];
  v6 = [v5 sourceContextForPasteboardController:self];

  v7 = [[CRLPasteboardCopyAssistant alloc] initWithPasteboard:v4 sourceContext:v6];
  [(CRLPasteboardWriteAssistant *)v7 setDelegate:self];

  return v7;
}

- (id)newDragAssistant
{
  v3 = [(CRLPasteboardController *)self delegate];
  v4 = [v3 sourceContextForPasteboardController:self];

  v5 = [(CRLPasteboardWriteAssistant *)[CRLDraggingAssistant alloc] initWithContext:v4];
  [(CRLPasteboardWriteAssistant *)v5 setDelegate:self];

  return v5;
}

- (id)newReadAssistantWithPasteboard:(id)a3
{
  v4 = a3;
  v5 = [(CRLPasteboardController *)self p_board];
  v6 = [v5 store];
  v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant alloc];
  v8 = [v6 crdtContext];
  v9 = [(CRLPasteboardObjectReadAssistant *)v7 initWithPasteboard:v4 store:v6 context:v8];

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
      v16 = [v26[5] domain];
      v17 = [v26[5] code];
      v18 = v26[5];
      *buf = 138544130;
      v32 = v15;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
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

- (id)pasteboardObjectFromAssistant:(id)a3 boardItems:(id)a4
{
  v5 = a4;
  v6 = [a3 pasteboardObject];
  v7 = v6;
  if (v6)
  {
    [v6 setBoardItems:v5];
  }

  return v7;
}

- (id)pasteboardObjectFromAssistant:(id)a3 textStorage:(id)a4 smartCopy:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [a3 pasteboardObject];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      [v8 copyTextFrom:v7];
      [v9 setIsSmartCopyPaste:v5];
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

- (id)publicTypesForBoardItems:(id)a3 asPDF:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSMutableArray array];
  if ([v6 count] == 1)
  {
    v8 = [v6 firstObject];
    v9 = [v8 customPublicTypesToPromiseWhenCopyingSingleBoardItem];
    if ([v9 count])
    {
      v10 = [v8 wantsStandardPublicTypesInAdditionToCustomTypesToPromiseWhenCopyingSingleBoardItem];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v11 = [objc_opt_class() jsonTypeIdentifiersForBoardItems:v6];
    [v7 addObjectsFromArray:v11];
  }

  [v7 crl_addObjectsFromNonNilArray:v9];
  if (v10)
  {
    if (v4)
    {
      v12 = [UTTypePDF identifier];
    }

    else
    {
      v12 = 0;
    }

    v17 = v12;
    v13 = [(CRLPasteboardController *)self pImageForBoardItems:v6 imageData:0 dataType:&v17 dataName:0];
    v14 = v17;

    if (v13)
    {
      [v7 addObject:v14];
    }
  }

  v15 = [v7 copy];

  return v15;
}

- (BOOL)hasNativeBoardItemsOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeBoardItems";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasSingleNativeImageBoardItemOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeImageBoardItem";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasSingleNativeMovieBoardItemOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeMovieBoardItem";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyFreehandDrawingBoardItems";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeFreehandDrawingBoardItemsOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasFreehandDrawingBoardItems";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasOnlyNativeTextBoxBoardItemsOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (unint64_t)boardItemStyleKindsOnPasteboard:(id)a3
{
  result = [(CRLPasteboardController *)self p_integerFromPasteboardStateTypePrefix:@"com.apple.freeform.pasteboardState.styleClass-" pasteboard:a3];
  if ((result & 0x8000000000000000) != 0)
  {
    sub_10132980C();
    return 0;
  }

  return result;
}

- (BOOL)hasOnlyNativeTextBoxItemsOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (id)providersForNativeBoardItemsAndTextFromPasteboard:(id)a3 validGeometries:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:v6];
  if (v7)
  {
    v8 = [(CRLPasteboardController *)self p_providersForBoardItemsAndTextFromPasteboardReadAssistant:v7 pasteboard:v6 validGeometries:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)providersForNativeBoardItemsFromPasteboard:(id)a3
{
  v4 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pasteboardObject];
    if (v6)
    {
      v7 = [objc_opt_class() descriptionsForBoardItemsOnPasteboardObject:v6];
      v8 = [v6 boardItems];
      v9 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:v8 descriptions:v7];

      if ([v9 count])
      {
        v10 = [CRLBoardItemProviderFactory alloc];
        v11 = [(CRLPasteboardController *)self p_boardItemFactory];
        v12 = [(CRLBoardItemProviderFactory *)v10 initWithBoardItemFactory:v11];

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

- (id)providersForBoardItemsForTargetStorage:(id)a3 fromPasteboard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 pasteboardObject];
    if (v10)
    {
      v11 = [(CRLPasteboardController *)self descriptionsForBoardItemsOnPasteboard:v7];
      v12 = [objc_opt_class() readPasteboardBoardItemsForTargetStorage:v6 fromPasteboardObject:v10 descriptionsForBoardItems:v11];
      if ([v12 count])
      {
        v13 = [CRLBoardItemProviderFactory alloc];
        v14 = [(CRLPasteboardController *)self p_boardItemFactory];
        v15 = [(CRLBoardItemProviderFactory *)v13 initWithBoardItemFactory:v14];

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

+ (id)descriptionsForBoardItemsOnPasteboardObject:(id)a3
{
  v3 = a3;
  v4 = [v3 boardItems];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v6 = [v3 boardItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      [v5 addObject:&__NSDictionary0__struct];
      ++v8;
      v9 = [v3 boardItems];
      v10 = [v9 count];
    }

    while (v8 < v10);
  }

  return v5;
}

+ (id)boardItemsForCopyByFixingUpBoardItems:(id)a3 boardItemFactory:(id)a4 board:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() p_boardItemsForCopyByFixingUpBoardItems:v9 boardItemFactory:v8 board:v7 UUIDRemappingBlock:0];

  return v10;
}

+ (id)p_boardItemsForCopyByFixingUpBoardItems:(id)a3 boardItemFactory:(id)a4 board:(id)a5 UUIDRemappingBlock:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [a4 makeDuplicateOfBoardItems:v9 UUIDRemappingBlock:a6];
  v12 = [v9 count];
  if ([v11 count] == v12)
  {
    v13 = v11;
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = objc_opt_class();
        v16 = [v9 objectAtIndexedSubscript:i];
        v17 = sub_100014370(v15, v16);

        if (v17)
        {
          v18 = objc_opt_class();
          v19 = [v11 objectAtIndexedSubscript:i];
          v20 = sub_100013F00(v18, v19);

          if (v20)
          {
            [CRLConnectionLineAdjustmentHelper transferLaidOutInfoGeometryAndPathSourceFrom:v17 to:v20 withBoardItemOwner:v10];
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

    v13 = v9;
  }

  v24 = v13;

  return v13;
}

+ (id)additionalBoardItemsForCopyImaging:(id)a3 icc:(id)a4 invertedObjectUUIDMap:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [a3 crl_arrayOfObjectsPassingTest:&stru_101844870];
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
          v17 = [v7 repForInfo:{v16, v25}];
          if (!v17)
          {
            v18 = [v16 id];
            v19 = [v8 objectForKeyedSubscript:v18];

            if (v19)
            {
              v20 = [v7 board];
              v21 = [v20 getBoardItemForUUID:v19];

              v17 = [v7 repForInfo:v21];
            }

            else
            {
              v17 = 0;
            }
          }

          v22 = [v17 createAdditionalBoardItemsForCopyImaging];
          v23 = v22;
          if (v22 && [v22 count])
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

- (id)p_providersForBoardItemsAndTextFromPasteboardReadAssistant:(id)a3 pasteboard:(id)a4 validGeometries:(BOOL *)a5
{
  v7 = [a3 pasteboardObject];
  if (v7)
  {
    v8 = [(CRLPasteboardController *)self p_shouldKeepHighlights];
    v9 = [objc_opt_class() descriptionsForBoardItemsOnPasteboardObject:v7];
    v10 = objc_opt_class();
    v11 = [(CRLPasteboardController *)self p_boardItemFactory];
    v12 = [v10 providersForBoardItemsAndTextWithBoardItemFactory:v11 keepHighlights:v8 fromPasteboardObject:v7 descriptionsForBoardItems:v9 validGeometries:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)readPasteboardBoardItemsForTargetStorage:(id)a3 fromPasteboardObject:(id)a4 descriptionsForBoardItems:(id)a5
{
  v6 = a5;
  v7 = [a4 boardItems];
  v8 = [CRLIngestibleBoardItemAndDescription ingestibleBoardItemAndDescriptionWithBoardItems:v7 descriptions:v6];

  return v8;
}

- (BOOL)canProduceBoardItemsFromPasteboard:(id)a3
{
  v4 = a3;
  if ([(CRLPasteboardController *)self hasNativeBoardItemsOnPasteboard:v4]|| [(CRLPasteboardController *)self hasNativeTextOnPasteboard:v4]|| [(CRLPasteboardController *)self hasImportableRichTextOnPasteboard:v4]|| [(CRLPasteboardController *)self hasImportablePlainTextOnPasteboard:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CRLPasteboardController *)self hasImportableBoardItemsOnPasteboard:v4 detectImportableURLsInText:1 skipFileURLs:0];
  }

  return v5;
}

- (BOOL)hasImportableBoardItemsOnPasteboard:(id)a3 detectImportableURLsInText:(BOOL)a4 skipFileURLs:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (([v8 containsContentLanguageDrawableTypes] & 1) != 0 || -[CRLPasteboardController hasImportableImagesOnPasteboard:skipFileURLs:](self, "hasImportableImagesOnPasteboard:skipFileURLs:", v8, v5))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v37 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = [v8 pasteboardTypes];
    v11 = [v10 countByEnumeratingWithState:&v50 objects:v57 count:16];
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
            objc_enumerationMutation(v10);
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

        v12 = [v10 countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = [v8 URLs];
    v9 = [v19 count];

    if (v9)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v20 = [v8 URLs];
      v9 = [v20 countByEnumeratingWithState:&v46 objects:v56 count:16];
      v21 = self;
      if (v9)
      {
        v22 = *v47;
        while (2)
        {
          for (j = 0; j != v9; j = j + 1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v46 + 1) + 8 * j);
            if (([v24 isFileURL] & 1) == 0 && +[CRLURLBoardItemProvider canInitWithURL:](CRLURLBoardItemProvider, "canInitWithURL:", v24))
            {
              LOBYTE(v9) = 1;
              goto LABEL_31;
            }
          }

          v9 = [v20 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
      v21 = self;
    }

    if ((v9 & 1) == 0 && !v37)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v26 = [v8 URLs];
      v27 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
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
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v42 + 1) + 8 * k);
            if ([v31 isFileURL] && +[CRLURLBoardItemProvider canInitWithURL:](CRLURLBoardItemProvider, "canInitWithURL:", v31))
            {
              LOBYTE(v9) = 1;
              goto LABEL_45;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
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

    if ((v9 & 1) == 0 && v6)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = [v8 pasteboardTypes];
      v32 = [v10 countByEnumeratingWithState:&v38 objects:v54 count:16];
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
            objc_enumerationMutation(v10);
          }

          v36 = [(CRLPasteboardController *)v21 p_detectedImportableURLOnPasteboard:v8 type:*(*(&v38 + 1) + 8 * v35) fallbackBoardItemProvider:0];

          if (v36)
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [v10 countByEnumeratingWithState:&v38 objects:v54 count:16];
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

- (BOOL)hasImportableImagesOnPasteboard:(id)a3 skipFileURLs:(BOOL)a4
{
  v5 = a3;
  v6 = +[CRLIngestionTypes supportedImageUTTypes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v5 pasteboardTypes];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = [UTType typeWithIdentifier:*(*(&v25 + 1) + 8 * v11)];
      v13 = [v12 crl_conformsToAnyUTType:v6];

      if (v13)
      {
        goto LABEL_21;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!a4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v5 URLs];
    v14 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
        objc_enumerationMutation(v7);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      if ([v17 isFileURL])
      {
        v18 = [v17 crl_fileTypeIdentifierHandlingFileCoordinationPromises];
        v19 = [v18 crl_conformsToAnyUTType:v6];

        if (v19)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (id)asyncProvidersForBoardItemsFromPasteboard:(id)a3
{
  v4 = a3;
  if (![(CRLPasteboardController *)self hasNativeBoardItemsOnPasteboard:v4])
  {
    v13 = [(CRLPasteboardController *)self preferredImportableDataTypeOnPasteboard:v4 detectImportableURLsInText:1];
    v6 = 0;
    if (v13 > 2)
    {
      if (v13 == 4)
      {
        v17 = [(CRLPasteboardController *)self providersForBoardItemsFromImportedTextFromPasteboard:v4];
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
        v17 = [(CRLPasteboardController *)self providersForBoardItemsFromImportedRichTextFromPasteboard:v4];
        goto LABEL_30;
      }

      if (v13 != 2)
      {
        goto LABEL_31;
      }
    }

    v17 = [(CRLPasteboardController *)self providersForBoardItemsImportedFromPasteboard:v4];
LABEL_30:
    v6 = v17;
    goto LABEL_31;
  }

  v5 = [(CRLPasteboardController *)self providersForNativeBoardItemsFromPasteboard:v4];
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

- (id)providersForBoardItemsImportedFromPasteboard:(id)a3
{
  v4 = a3;
  v20 = [v4 numberOfItems];
  if (v20 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    for (i = 0; i != v20; ++i)
    {
      v7 = [[NSIndexSet alloc] initWithIndex:i];
      v8 = objc_opt_class();
      v9 = [v4 pasteboardTypesForItemSet:v7];
      v10 = [v9 firstObject];
      v11 = [v8 pFilteredPasteboardTypesForPasteboard:v4 types:v10];

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

            v17 = [(CRLPasteboardController *)self p_newImportableBoardItemProvidersFromPasteboard:v4 itemIndex:i itemType:*(*(&v21 + 1) + 8 * j)];
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

- (id)p_newImportableBoardItemProvidersFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v10 = +[TSCLConstants pasteboardCanvasObjectPrefix];
    if ([v9 hasPrefix:v10])
    {
      v11 = [v8 pasteboardTypes];
      v12 = [_TtC8Freeform20CRLCLCopyPasteHelper containsSupportedCanvasObjectFromTypeIdentifiers:v11];

      if (v12)
      {
        v13 = objc_opt_class();
        v14 = [(CRLPasteboardController *)self p_boardItemFactory];
        v15 = [v13 contentLanguageBoardItemProvidersForPasteboard:v8 itemIndex:a4 boardItemFactory:v14];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v16 = [(CRLPasteboardController *)self p_newImportableBoardItemProviderFromPasteboard:v8 itemIndex:a4 itemType:v9];
  v14 = v16;
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

- (id)p_newImportableBoardItemProviderFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSIndexSet indexSetWithIndex:a4];
  v11 = [UTType typeWithIdentifier:v9];
  if ([v11 conformsToType:UTTypeFileURL])
  {
    v12 = [(CRLPasteboardController *)self p_importableFileURLFromPasteboard:v8 itemIndex:a4 itemType:v9];
    if (v12)
    {
      v13 = [CRLBoardItemProviderFactory alloc];
      v14 = [(CRLPasteboardController *)self p_boardItemFactory];
      v15 = [(CRLBoardItemProviderFactory *)v13 initWithBoardItemFactory:v14];

      v28 = v12;
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
    v19 = [(CRLPasteboardController *)self p_importableURLFromPasteboard:v8 itemIndex:a4 itemType:v9];
  }

  else
  {
    v20 = [v8 importableRichTextTypes];
    if ([v20 containsObject:v9])
    {
    }

    else
    {
      v21 = [CRLIngestionTypes isValidPlainTextUTI:v9];

      if ((v21 & 1) == 0)
      {
        if (![CRLInfoImporterBoardItemProvider canInitWithType:v9])
        {
          v18 = 0;
          goto LABEL_22;
        }

        v24 = [v8 dataForPasteboardType:v9 inItemSet:v10];
        v12 = [v24 firstObject];

        if (v12 && [v12 length])
        {
          v25 = [CRLInfoImporterBoardItemProvider alloc];
          v26 = [(CRLPasteboardController *)self p_boardItemFactory];
          v18 = [(CRLInfoImporterBoardItemProvider *)v25 initWithData:v12 type:v9 boardItemFactory:v26];

          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v19 = [(CRLPasteboardController *)self p_detectedImportableURLOnPasteboard:v8 type:v9 fallbackBoardItemProvider:0];
  }

  v12 = v19;
  if (!v19)
  {
    goto LABEL_20;
  }

  v22 = [CRLBoardItemProviderFactory alloc];
  v23 = [(CRLPasteboardController *)self p_boardItemFactory];
  v15 = [(CRLBoardItemProviderFactory *)v22 initWithBoardItemFactory:v23];

  v18 = [(CRLBoardItemProviderFactory *)v15 providerForBoardItemFromDetectedImportableURL:v12 fallbackBoardItemProvider:0];
LABEL_15:

LABEL_21:
LABEL_22:

  return v18;
}

- (id)providersForBoardItemsFromImportedTextFromPasteboard:(id)a3 maximumStringLength:(unint64_t)a4
{
  v6 = a3;
  v7 = [CRLBoardItemProviderFactory alloc];
  v8 = [(CRLPasteboardController *)self p_boardItemFactory];
  v9 = [(CRLBoardItemProviderFactory *)v7 initWithBoardItemFactory:v8];

  v10 = [(CRLPasteboardController *)self importedTextStringFromPasteboard:v6 smartPaste:0];

  if ([v10 length] <= a4)
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

- (id)providersForBoardItemsFromImportedRichTextFromPasteboard:(id)a3 maximumStringLength:(unint64_t)a4
{
  v6 = [(CRLPasteboardController *)self importedRichTextStringFromPasteboard:a3 smartPaste:0];
  v7 = [CRLBoardItemProviderFactory alloc];
  v8 = [(CRLPasteboardController *)self p_boardItemFactory];
  v9 = [(CRLBoardItemProviderFactory *)v7 initWithBoardItemFactory:v8];

  v10 = [v6 string];
  v11 = [v10 length];

  if (v11 <= a4)
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

- (id)p_importableURLFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 URLs];
  if ([v9 count])
  {
    if ([v9 count] <= a4)
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
        v28 = a4;
        v29 = 2048;
        v30 = [v9 count];
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
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 848, 0, "Invalid URL index %tu: only %tu URLs on pasteboard", a4, [v9 count]);
    }

    if ([v9 count] <= a4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v9 objectAtIndexedSubscript:a4];
    }
  }

  else
  {
    v16 = [v7 dataForPasteboardType:v8];
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

- (id)p_importableFileURLFromPasteboard:(id)a3 itemIndex:(unint64_t)a4 itemType:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NSIndexSet indexSetWithIndex:a4];
  v10 = [UTType typeWithIdentifier:v8];
  if ([v10 conformsToType:UTTypeURL])
  {
    v11 = [NSURL crl_URLWithStringDataOnPasteboard:v7 itemSet:v9 pasteboardType:v8];
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

- (id)p_detectedImportableURLOnPasteboard:(id)a3 type:(id)a4 fallbackBoardItemProvider:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 importableRichTextTypes];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [(CRLPasteboardController *)self importedRichTextStringFromPasteboard:v8 smartPaste:0];
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
        v17 = sub_100014370(v16, v14);
        if (!v17)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v18 = objc_opt_class();
        v19 = v17;
        v20 = 0;
      }

      else
      {
        v21 = objc_opt_class();
        v17 = [v12 string];
        v18 = v21;
        v19 = v17;
        v20 = 1;
      }

      v13 = [v18 detectedImportableURLForPasteboardString:v19 canTrimWhitespace:v20];
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
    if (![CRLIngestionTypes isValidPlainTextUTI:v9])
    {
      v13 = 0;
LABEL_22:
      v22 = 0;
      goto LABEL_38;
    }

    v12 = [(CRLPasteboardController *)self importedTextStringFromPasteboard:v8 smartPaste:0];
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
  if (a5)
  {
    if (v11)
    {
      [(CRLPasteboardController *)self providersForBoardItemsFromImportedRichTextFromPasteboard:v8];
    }

    else
    {
      [(CRLPasteboardController *)self providersForBoardItemsFromImportedTextFromPasteboard:v8];
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

      *a5 = [v23 objectAtIndexedSubscript:0];
    }
  }

  v22 = v13;
LABEL_38:

  return v22;
}

+ (id)detectedImportableURLForPasteboardString:(id)a3 canTrimWhitespace:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v6 = [v5 stringByTrimmingCharactersInSet:v7];
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
    v20 = v5;
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
          v16 = [v15 lowercaseString];

          v17 = [v14 stringByAppendingString:@":"];
          LOBYTE(v15) = [v16 isEqualToString:v17];

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
    v5 = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)copyBoardItems:(id)a3 toPasteboard:(id)a4 asPDF:(BOOL)a5 writeAssistant:(id)a6 nativeOnly:(BOOL)a7 icc:(id)a8
{
  v38 = a7;
  v10 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  obj = a8;
  if (v10 && v38)
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

  if (!v14)
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
  if (v15)
  {
    v24 = v14;
    v25 = objc_alloc_init(CRLContentDescriptionTranslator);
    v26 = [(CRLContentDescriptionTranslator *)v25 contentDescriptionForBoardItems:v13];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_1001A99BC;
    v45 = sub_1001A99CC;
    v46 = 0;
    v27 = objc_opt_class();
    v28 = [(CRLPasteboardController *)self p_boardItemFactory];
    v29 = [(CRLPasteboardController *)self p_board];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1001AD7D0;
    v40[3] = &unk_101844A98;
    v40[4] = &v41;
    v30 = [v27 p_boardItemsForCopyByFixingUpBoardItems:v13 boardItemFactory:v28 board:v29 UUIDRemappingBlock:v40];

    objc_storeStrong(&self->_invertedObjectUUIDMap, v42[5]);
    v31 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:v15 boardItems:v30];

    if (v31)
    {
      [v15 setContentDescription:v26];
      if (!v38)
      {
        v32 = [(CRLPasteboardController *)self publicTypesForBoardItems:v30 asPDF:v10];
        [v15 setDataProvider:self forTypes:v32];
        if (v10)
        {
          [v15 setExcludeNativeData:1];
        }

        [objc_opt_class() cacheWithBoardItems:v30];
      }

      v33 = objc_opt_class();
      v34 = sub_100014370(v33, v15);
      [v34 copyToPasteboard];
    }

    _Block_object_dispose(&v41, 8);

    v13 = v30;
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

    v24 = v14;
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

- (void)copyUninsertedFreehandDrawingItems:(id)a3 toPasteboard:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v12 count])
  {
    v7 = [(CRLPasteboardController *)self newCopyAssistantWithPasteboard:v6];
    v8 = objc_alloc_init(CRLContentDescriptionTranslator);
    v9 = [(CRLContentDescriptionTranslator *)v8 contentDescriptionForBoardItems:v12];
    v10 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:v7 boardItems:v12];

    if (v10)
    {
      [v7 setContentDescription:v9];
      v11 = [(CRLPasteboardController *)self publicTypesForBoardItems:v12 asPDF:0];
      [v7 setDataProvider:self forTypes:v11];
      [v7 copyToPasteboard];
    }
  }
}

- (BOOL)hasImportablePlainTextOnPasteboard:(id)a3
{
  v3 = a3;
  if ([v3 containsImportableTextTypes])
  {
    v4 = 1;
  }

  else
  {
    [v3 pasteboardTypes];
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

- (id)importedRichTextStringFromPasteboard:(id)a3 smartPaste:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 richTextStrings];
  v7 = [v6 firstObject];

  if ([v7 length])
  {
    v8 = [CRLWPStorageSanitizer filterText:v7 removingAttachments:0];

    v7 = v8;
  }

  if (a4)
  {
    if (v7)
    {
      v9 = [v5 isSmartCopy];
    }

    else
    {
      v9 = 0;
    }

    *a4 = v9;
  }

  return v7;
}

- (id)importedTextStringFromPasteboard:(id)a3 smartPaste:(BOOL *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v5 pasteboardTypes];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
        objc_enumerationMutation(v7);
      }

      if ([CRLPasteboardController p_isURLTypeExcludingFileURL:*(*(&v39 + 1) + 8 * v11)])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }
    }

    v30 = a4;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [v6 URLs];
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v7 = 0;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v35 + 1) + 8 * i) absoluteString];
          if ([v17 length])
          {
            if (v7)
            {
              v18 = [v7 stringByAppendingFormat:@"%C%@", 10, v17];

              v7 = v18;
            }

            else
            {
              v7 = v17;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v14);
    }

    else
    {
      v7 = 0;
    }

    if (![v7 length])
    {
      a4 = v30;
      goto LABEL_32;
    }

    v19 = [v7 crl_stringByFixingBrokenSurrogatePairs];
    v20 = [v19 crlwp_stringByNormalizingParagraphBreaks];
    v21 = [CRLWPStorageSanitizer filterText:v20];

    a4 = v30;
    if (v30 && [v21 length])
    {
      *v30 = 1;
    }

    if (v21)
    {
LABEL_45:
      if (!a4)
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
  v22 = [v6 strings];
  v21 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
      objc_enumerationMutation(v22);
    }

    v25 = *(*(&v31 + 1) + 8 * v24);
    if ([v25 length])
    {
      break;
    }

    if (v21 == ++v24)
    {
      v21 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
    v27 = [v26 crl_stringByFixingBrokenSurrogatePairs];
    v28 = [v27 crlwp_stringByNormalizingParagraphBreaks];
    v21 = [CRLWPStorageSanitizer filterText:v28];

    v22 = v26;
    goto LABEL_44;
  }

  v21 = 0;
  if (a4)
  {
LABEL_46:
    if (v21 && [v6 isSmartCopy])
    {
      *a4 = 1;
    }
  }

LABEL_49:

  return v21;
}

- (BOOL)hasTextStoragesOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasTextStoragesAttachmentsNotAllowed";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeTextOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeText";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (BOOL)hasNativeBoardItemsContainingTextOnPasteboard:(id)a3
{
  v7 = @"com.apple.freeform.pasteboardState.hasNativeBoardItemsContainingText";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v3 containsPasteboardTypes:{v4, v7}];

  return v5;
}

- (void)copyTextStorage:(id)a3 selection:(id)a4 toPasteboard:(id)a5 smartCopy:(BOOL)a6 writeAssistant:(id)a7 nativeOnly:(BOOL)a8
{
  v64 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
  }

  else
  {
    v17 = [(CRLPasteboardController *)self newCopyAssistantWithPasteboard:v15];
    v18 = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  if (v14)
  {
    v19 = [v14 visualRangesArray];
  }

  else
  {
    v20 = [v13 range];
    v22 = [NSValue valueWithRange:v20, v21];
    v83 = v22;
    v19 = [NSArray arrayWithObjects:&v83 count:1];
  }

  v61 = v18;
  v62 = v17;
  v63 = v14;
  v60 = v19;
  v59 = a8;
  if ([v19 count] < 2)
  {
    v25 = v13;
    v43 = [v19 objectAtIndexedSubscript:0];
    v38 = [v43 rangeValue];
    v40 = v44;
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v19;
    v23 = [obj countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v23)
    {
      v24 = v23;
      v56 = self;
      v57 = v15;
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

          v29 = [*(*(&v66 + 1) + 8 * v28) rangeValue];
          v31 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v13 withRange:v29, v30];
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
          v38 = [v32 range];
          v40 = v39;

          v28 = v28 + 1;
        }

        while (v24 != v28);
        v24 = [v27 countByEnumeratingWithState:&v66 objects:v82 count:16];
        if (!v24)
        {
          v43 = v27;
          self = v56;
          v15 = v57;
          goto LABEL_31;
        }
      }
    }

    v25 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = 0;
    v43 = obj;
  }

LABEL_31:

  if (v25)
  {
    v45 = [[_TtC8Freeform12CRLWPStorage alloc] initFromStorage:v25 withRange:v38, v40];
  }

  else
  {
    v45 = 0;
  }

  v46 = self;
  v47 = [(CRLPasteboardController *)self pasteboardObjectFromAssistant:v62 textStorage:v45 smartCopy:v64];
  if (v47)
  {
    v48 = objc_alloc_init(CRLContentDescriptionTranslator);
    v49 = [(CRLContentDescriptionTranslator *)v48 contentDescriptionForTextStorage:v45 range:v38 boardItems:v40, &__NSArray0__struct];
    [v62 setContentDescription:v49];

    if (!v59)
    {
      v50 = [UTTypeRTF identifier];
      v71 = v50;
      [NSArray arrayWithObjects:&v71 count:1];
      v51 = v58 = v15;
      [v62 setDataProvider:v46 forTypes:v51];

      v52 = [UTTypeUTF8PlainText identifier];
      v70 = v52;
      v53 = [NSArray arrayWithObjects:&v70 count:1];
      [v62 setDataProvider:v46 forTypes:v53];

      v15 = v58;
    }

    v54 = v61;
    if (!v61)
    {
      v55 = objc_opt_class();
      v54 = sub_100014370(v55, v62);
    }

    [v54 copyToPasteboardIsSmartCopy:v64];
  }

  else
  {
    v54 = v61;
  }

  v14 = v63;
LABEL_42:
}

- (id)textStorageFromPasteboard:(id)a3 forTargetStorage:(id)a4 smartPaste:(BOOL *)a5
{
  v7 = [(CRLPasteboardController *)self newReadAssistantWithPasteboard:a3, a4];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v9 = [v7 pasteboardObject];
  v10 = v9;
  if (v9)
  {
    if (a5)
    {
      *a5 = [v9 isSmartCopyPaste];
    }

    if ([v10 hasNativeText])
    {
      v11 = [(CRLPasteboardController *)self delegate];
      v12 = [v11 boardItemFactoryForPasteboardController:self];

      v13 = [v10 makeTextboxFromCopiedTextWith:v12];
      v14 = [v13 textStorage];

LABEL_13:
      goto LABEL_14;
    }

    v15 = [v10 boardItems];
    v16 = [v15 count];

    if (v16 == 1)
    {
      v17 = objc_opt_class();
      v18 = [v10 boardItems];
      v19 = [v18 firstObject];
      v12 = sub_100014370(v17, v19);

      if (v12)
      {
        v14 = [v12 textStorage];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_14:

LABEL_15:

  return v14;
}

- (unint64_t)preferredImportableDataTypeOnPasteboard:(id)a3 detectImportableURLsInText:(BOOL)a4 skipFileURLs:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([(CRLPasteboardController *)self hasImportableBoardItemsOnPasteboard:v8 detectImportableURLsInText:v6 skipFileURLs:v5])
  {
    v9 = 2;
  }

  else if ([(CRLPasteboardController *)self hasImportableRichTextOnPasteboard:v8])
  {
    v9 = 1;
  }

  else if ([(CRLPasteboardController *)self hasImportablePlainTextOnPasteboard:v8])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionForPasteboard:(id)a3
{
  v4 = a3;
  v5 = +[CRLPasteboard generalPasteboard];

  if (v5 == v4)
  {
    v9 = [v4 changeCount];
    if (v9 != self->_cachedGeneralDescriptionChangeCount)
    {
      v12 = v9;
      v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:v4];
      objc_storeStrong(&self->_cachedGeneralDescription, v7);
      self->_cachedGeneralDescriptionChangeCount = v12;
      goto LABEL_14;
    }

    cachedGeneralDescription = self->_cachedGeneralDescription;
    goto LABEL_10;
  }

  v6 = +[CRLPasteboard stylePasteboard];

  if (v6 == v4)
  {
    v11 = [v4 changeCount];
    if (v11 != self->_cachedStyleDescriptionChangeCount)
    {
      v13 = v11;
      v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:v4];
      objc_storeStrong(&self->_cachedStyleDescription, v7);
      self->_cachedStyleDescriptionChangeCount = v13;
      goto LABEL_14;
    }

    cachedGeneralDescription = self->_cachedStyleDescription;
LABEL_10:
    v7 = cachedGeneralDescription;
    goto LABEL_14;
  }

  v7 = [_TtC8Freeform32CRLPasteboardObjectReadAssistant contentDescriptionFrom:v4];
  if (!v7)
  {
    if ([v4 containsImportableTextTypes])
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

- (id)descriptionsForBoardItemsOnPasteboard:(id)a3
{
  v3 = [(CRLPasteboardController *)self descriptionForPasteboard:a3];
  v4 = [CRLContentDescriptionTranslator descriptionsForBoardItemsInContentDescription:v3];

  return v4;
}

- (id)pasteboardPromise:(id)a3 propertyListForType:(id)a4
{
  v6 = a4;
  v7 = [a3 promisedPasteboardObject];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled])
  {
    v8 = objc_opt_class();
    v9 = [v7 boardItems];
    v10 = [(CRLPasteboardController *)self p_board];
    v11 = [v10 store];
    v12 = [v8 jsonDataForTypeIdentifier:v6 boardItems:v9 boardDataStore:v11];

    if (v12)
    {
      goto LABEL_45;
    }
  }

  v13 = [v7 boardItems];
  v14 = [v13 count];

  if (v14 == 1)
  {
    v15 = [UTType typeWithIdentifier:v6];
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = [v7 boardItems];
    v17 = [v16 crl_anyObject];
    v12 = [v17 promisedDataForPublicType:v15];

    if (v12)
    {

      goto LABEL_45;
    }

    if ([v15 conformsToType:UTTypePlainText])
    {
      v18 = [v7 boardItems];
      v19 = [v18 crl_anyObject];
      v12 = [v19 promisedStringForCopy];

      if (v12)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_10:
    }
  }

  if ([v7 hasNativeText])
  {
    v20 = [(CRLPasteboardController *)self delegate];
    v21 = [v20 boardItemFactoryForPasteboardController:self];

    v22 = [v7 makeTextboxFromCopiedTextWith:v21];
    if (v22)
    {
      v23 = [UTTypeUTF8PlainText identifier];
      v24 = [v6 isEqualToString:v23];

      if (v24)
      {
        v25 = [v22 text];
        v26 = [v25 string];

        v12 = [v26 dataUsingEncoding:4 allowLossyConversion:1];
        goto LABEL_27;
      }

      v27 = [UTTypeRTF identifier];
      v28 = [v6 isEqualToString:v27];

      if (v28)
      {
        v29 = [v22 text];
        v26 = [v29 coreTextAttributedString];

        v30 = [v26 length];
        v56 = NSDocumentTypeDocumentAttribute;
        v57 = NSRTFTextDocumentType;
        v31 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v55 = 0;
        v12 = [v26 dataFromRange:0 documentAttributes:v30 error:{v31, &v55}];
        v32 = v55;

        if (v32)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          v52 = v26;
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

          v26 = v52;
        }

LABEL_27:
        if (v12)
        {
          goto LABEL_45;
        }

        goto LABEL_30;
      }
    }
  }

LABEL_30:
  v36 = [UTTypePNG identifier];
  v37 = [v6 isEqualToString:v36];

  if (v37)
  {
    v38 = v6;
    v39 = objc_opt_class();
    v40 = [v7 boardItems];
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v42 = [v39 additionalBoardItemsForCopyImaging:v40 icc:WeakRetained invertedObjectUUIDMap:self->_invertedObjectUUIDMap];

    invertedObjectUUIDMap = self->_invertedObjectUUIDMap;
    self->_invertedObjectUUIDMap = 0;

    v44 = [v7 boardItems];
    v45 = [v44 arrayByAddingObjectsFromArray:v42];

    v53 = v38;
    v54 = 0;
    LODWORD(v44) = [(CRLPasteboardController *)self pImageForBoardItems:v45 imageData:&v54 dataType:&v53 dataName:0];
    v46 = v54;
    v47 = v53;

    if (v44 && [v47 isEqualToString:v38])
    {
      v12 = v46;
    }

    else
    {
      v12 = 0;
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
    [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:1646 isFatal:0 description:"Request for property list for unsupported pasteboard type %@", v6];

    v12 = 0;
  }

LABEL_45:

  return v12;
}

- (void)distillPasteboardContentDescription:(id)a3 intoPasteboardStateTypes:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  if ([v6 hasNativeBoardItemsInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasNativeBoardItems"];
  }

  if ([v6 hasTextStoragesInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasTextStoragesAttachmentsNotAllowed"];
  }

  if ([v6 hasNativeTextInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasNativeText"];
  }

  if ([v6 hasNativeBoardItemsContainingTextInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasNativeBoardItemsContainingText"];
  }

  if ([v6 hasSingleNativeImageBoardItemInContentDescription:v10])
  {
    v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeImageBoardItem";
  }

  else
  {
    if (![v6 hasSingleNativeMovieBoardItemInContentDescription:v10])
    {
      goto LABEL_14;
    }

    v7 = @"com.apple.freeform.pasteboardState.hasSingleNativeMovieBoardItem";
  }

  [v5 addObject:v7];
LABEL_14:
  if ([v6 hasOnlyFreehandDrawingBoardItemsInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasOnlyFreehandDrawingBoardItems"];
  }

  if ([v6 hasAnyFreehandDrawingBoardItemsInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasFreehandDrawingBoardItems"];
  }

  if ([v6 hasOnlyNativeTextBoxBoardItemsInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasOnlyNativeTextBoxItems"];
  }

  if ([v6 hasNativeTypesInContentDescription:v10])
  {
    [v5 addObject:@"com.apple.freeform.pasteboardState.hasNativeTypes"];
  }

  v8 = [v6 stringToPrefixForStyleCopyingTypeFromDescription:v10];
  if (v8)
  {
    v9 = [@"com.apple.freeform.pasteboardState.styleClass-" stringByAppendingString:v8];
    [v5 addObject:v9];
  }
}

+ (BOOL)p_isURLTypeExcludingFileURL:(id)a3
{
  v3 = [UTType typeWithIdentifier:a3];
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

- (BOOL)pImageForBoardItems:(id)a3 imageData:(id *)a4 dataType:(id *)a5 dataName:(id *)a6
{
  v10 = a3;
  v11 = [v10 count];
  v12 = v11;
  if (a5)
  {
    v13 = [UTTypePDF identifier];
    v14 = [v13 isEqual:*a5];

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
      v27 = v10;
      v28 = v14;
      image[0] = 0;
      LOBYTE(image[1]) = 0;
      [(CRLPasteboardController *)self pImageInfosWithReadLock:&v26];
      v16 = *(&v28 + 1);
      v17 = v16;
      if (v16)
      {
        if (a4)
        {
          v18 = v16;
          *a4 = v17;
        }

        if (a5)
        {
          *a5 = [UTTypePDF identifier];
        }

        if (a6)
        {
          *a6 = @"CopiedImage.pdf";
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

        if (a5)
        {
          *a5 = [UTTypePNG identifier];
        }

        if (a6)
        {
          *a6 = @"CopiedImage.png";
        }

        if (a4)
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
            *a4 = v24;
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

- (void)pImageInfosWithReadLock:(id *)a3
{
  v4 = [[CRLCanvasImager alloc] initWithBoard:a3->var0];
  v5 = v4;
  if (v4)
  {
    [(CRLCanvasImager *)v4 setInfos:a3->var1];
    if (a3->var2)
    {
      v6 = [(CRLCanvasImager *)v5 pdfData];
      var3 = a3->var3;
      a3->var3 = v6;
    }

    if (!a3->var3)
    {
      if ([a3->var1 count] != 1)
      {
        goto LABEL_18;
      }

      v8 = [a3->var1 objectAtIndexedSubscript:0];
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

      a3->var5 = v14;
      [(CRLCanvasImager *)v5 setMaximumImagePixelSize:sub_10050CFE8()];
      a3->var4 = [(CRLCanvasImager *)v5 newImage];
    }
  }
}

- (int64_t)p_integerFromPasteboardStateTypePrefix:(id)a3 pasteboard:(id)a4
{
  v5 = a3;
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a4 pasteboardTypes];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 hasPrefix:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [[NSScanner alloc] initWithString:v11];
    [v13 scanString:v5 intoString:0];
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

+ (id)pFilteredPasteboardTypesForPasteboard:(id)a3 types:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (+[CRLFeatureFlagGroup isContentLanguageCopyPasteEnabled](_TtC8Freeform19CRLFeatureFlagGroup, "isContentLanguageCopyPasteEnabled") && [objc_opt_class() p_pasteboardHasIWorkNativeData:v5])
  {
    v7 = [objc_opt_class() p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:v6];

    v6 = v7;
  }

  v8 = [v6 crl_arrayOfObjectsPassingTest:&stru_101844C58];

  v9 = [objc_opt_class() p_movePublicURLBeforePlainTextIfNeededInTypes:v8];

  return v9;
}

+ (BOOL)p_pasteboardHasPlainAndRichHyperlink:(id)a3
{
  v3 = [a3 pasteboardTypes];
  v4 = [UTTypeURL identifier];
  v5 = [v3 indexOfObject:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 indexOfObject:@"public.url-name"];
    v6 = 0;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (v5 < v7)
      {
        v9 = [UTTypeRTF identifier];
        v10 = [v3 indexOfObject:v9];

        v6 = v10 != 0x7FFFFFFFFFFFFFFFLL && v8 < v10;
      }
    }
  }

  return v6;
}

+ (id)p_movePublicURLBeforePlainTextIfNeededInTypes:(id)a3
{
  v3 = a3;
  v4 = [UTTypeURL identifier];
  v5 = [v3 indexOfObject:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [UTTypeUTF8PlainText identifier];
    v7 = [v3 indexOfObject:v6];

    v8 = [v3 indexOfObject:@"public.url-name"];
    v9 = v7 >= v8 ? v8 : v7;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v5 > v9)
    {
      v11 = [v3 mutableCopy];
      v12 = [v3 objectAtIndexedSubscript:v5];
      [v11 removeObjectAtIndex:v5];
      [v11 insertObject:v12 atIndex:v9];

      v3 = v11;
    }
  }

  return v3;
}

+ (BOOL)p_pasteboardHasIWorkNativeData:(id)a3
{
  v3 = [a3 pasteboardTypes];
  v4 = [v3 indexOfObject:@"com.apple.iWork.TSPNativeData"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)p_moveContentLanguageDrawblesToTopOfPasteboardIfNeededInTypes:(id)a3
{
  v3 = a3;
  v4 = [_TtC8Freeform20CRLCLCopyPasteHelper canvasObjectTypeIdentifierToUseFromTypeIdentifiers:v3];
  v5 = [v3 indexOfObject:v4];
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
    v8 = [v3 mutableCopy];
    [v8 removeObjectAtIndex:v7];
    [v8 insertObject:v4 atIndex:0];

    v3 = v8;
  }

  return v3;
}

- (CRLPasteboardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)copyStyleFromItem:(id)a3 to:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1009C6040(v8, v6);

  sub_100005070(v8);
}

- (BOOL)containsStylesRelevantTo:(id)a3 on:(id)a4
{
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  v9 = sub_1009C651C(v6, v7);

  return v9 & 1;
}

- (id)commandsToPasteStyleTo:(id)a3 from:(id)a4
{
  type metadata accessor for CRLStyledItem();
  sub_1009CCDDC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1009C679C(v6);

  type metadata accessor for CRLCommand();
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)commandsToPasteTextStyleTo:(id)a3 in:(_NSRange)a4 from:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_1009CA570(v9, location, length, v10);

  type metadata accessor for CRLCommand();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

+ (id)providersForBoardItemsAndTextWithBoardItemFactory:(id)a3 keepHighlights:(BOOL)a4 fromPasteboardObject:(id)a5 descriptionsForBoardItems:(id)a6 validGeometries:(BOOL *)a7
{
  v9 = a4;
  sub_1005B981C(&qword_101A0B1B0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a5;
  sub_1009CC878(v12, v9, v13, v11, a7);

  sub_1005B981C(&qword_101A0B1B8);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

+ (void)cacheWithBoardItems:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1009CCC80(v3);
}

+ (id)jsonTypeIdentifiersForBoardItems:(id)a3
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

+ (id)jsonDataForTypeIdentifier:(id)a3 boardItems:(id)a4 boardDataStore:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  type metadata accessor for CRLBoardItem(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a5;

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
    v17 = sub_100D8C6C0(v11, v12, v10);
    goto LABEL_6;
  }

LABEL_11:
  v22 = 0;
LABEL_12:

  return v22;
}

+ (id)contentLanguageBoardItemProvidersForPasteboard:(id)a3 itemIndex:(unint64_t)a4 boardItemFactory:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_100D8CD90(v7, a4, v8);

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