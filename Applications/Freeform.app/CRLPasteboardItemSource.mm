@interface CRLPasteboardItemSource
- (BOOL)canLoadItemsOfClass:(Class)a3;
- (BOOL)canProduceBoardItems;
- (BOOL)hasContentLanguageDrawablesType;
- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4;
- (BOOL)hasImportableImages;
- (BOOL)hasImportableRichText;
- (BOOL)hasImportableText;
- (BOOL)hasNativeBoardItems;
- (BOOL)hasNativeBoardItemsContainingText;
- (BOOL)hasNativeFreehandDrawingBoardItems;
- (BOOL)hasNativeText;
- (BOOL)hasNativeTextStorages;
- (BOOL)hasNativeTypes;
- (BOOL)hasOnlyNativeFreehandDrawingBoardItems;
- (BOOL)hasOnlyNativeTextBoxItems;
- (BOOL)hasSingleNativeImageBoardItem;
- (BOOL)hasSingleNativeMovieBoardItem;
- (CRLPasteboardController)pasteboardController;
- (CRLPasteboardItemSource)init;
- (CRLPasteboardItemSource)initWithPasteboard:(id)a3 pasteboardController:(id)a4;
- (id)loadImportedImagesForAssetOwner:(id)a3 compatibilityAlertPresenter:(id)a4 withHandler:(id)a5;
- (id)loadImportedRichTextStringWithHandler:(id)a3;
- (id)loadImportedTextStringWithHandler:(id)a3;
- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 WithLoadHandler:(id)a4;
- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 maximumStringLength:(unint64_t)a4 WithLoadHandler:(id)a5;
- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)a3 loadHandler:(id)a4;
- (id)loadTextStorageUsingBoardItemFactory:(id)a3 forTargetContext:(id)a4 targetStorage:(id)a5 loadHandler:(id)a6;
- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4;
@end

@implementation CRLPasteboardItemSource

- (CRLPasteboardItemSource)initWithPasteboard:(id)a3 pasteboardController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRLPasteboardItemSource;
  v9 = [(CRLPasteboardItemSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_pbController, v8);
    objc_storeStrong(&v10->_pasteboard, a3);
  }

  return v10;
}

- (CRLPasteboardItemSource)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018715D8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLPasteboardItemSource init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPasteboardItemSource.m";
    v18 = 1024;
    v19 = 48;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018715F8);
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

  v7 = [NSString stringWithUTF8String:"[CRLPasteboardItemSource init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPasteboardItemSource.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:48 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLPasteboardItemSource init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)canLoadItemsOfClass:(Class)a3
{
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  LOBYTE(a3) = [v4 canLoadItemsOfClass:a3];

  return a3;
}

- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CRLPasteboardItemSource *)self pasteboardController];
  v8 = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [v7 preferredImportableDataTypeOnPasteboard:v8 detectImportableURLsInText:v5 skipFileURLs:v4];

  return v9;
}

- (BOOL)hasImportableImages
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasImportableImagesOnPasteboard:v4 skipFileURLs:0];

  return v5;
}

- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)a3 skipFileURLs:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CRLPasteboardItemSource *)self pasteboardController];
  v8 = [(CRLPasteboardItemSource *)self pasteboard];
  LOBYTE(v4) = [v7 hasImportableBoardItemsOnPasteboard:v8 detectImportableURLsInText:v5 skipFileURLs:v4];

  return v4;
}

- (BOOL)hasImportableText
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasImportablePlainTextOnPasteboard:v4];

  return v5;
}

- (BOOL)hasImportableRichText
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasImportableRichTextOnPasteboard:v4];

  return v5;
}

- (id)loadImportedRichTextStringWithHandler:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(CRLPasteboardItemSource *)self pasteboardController];
  v6 = [(CRLPasteboardItemSource *)self pasteboard];
  v7 = [v5 importedRichTextStringFromPasteboard:v6 smartPaste:&v9];

  if (v4)
  {
    v4[2](v4, v7, v9);
  }

  return 0;
}

- (id)loadImportedTextStringWithHandler:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(CRLPasteboardItemSource *)self pasteboardController];
  v6 = [(CRLPasteboardItemSource *)self pasteboard];
  v7 = [v5 importedTextStringFromPasteboard:v6 smartPaste:&v9];

  if (v4)
  {
    v4[2](v4, v7, v9);
  }

  return 0;
}

- (BOOL)hasNativeTypes
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasNativeTypesOnPasteboard:v4];

  return v5;
}

- (BOOL)hasNativeBoardItems
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasNativeBoardItemsOnPasteboard:v4];

  return v5;
}

- (BOOL)hasContentLanguageDrawablesType
{
  v2 = [(CRLPasteboardItemSource *)self pasteboard];
  v3 = [v2 containsContentLanguageDrawableTypes];

  return v3;
}

- (BOOL)canProduceBoardItems
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399558();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139956C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101399618();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLPasteboardItemSource canProduceBoardItems]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPasteboardItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:145 isFatal:0 description:"invalid nil value for '%{public}s'", "self.pasteboardController"];
  }

  v7 = [(CRLPasteboardItemSource *)self pasteboardController];
  v8 = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [v7 canProduceBoardItemsFromPasteboard:v8];

  return v9;
}

- (BOOL)hasSingleNativeImageBoardItem
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasSingleNativeImageBoardItemOnPasteboard:v4];

  return v5;
}

- (BOOL)hasSingleNativeMovieBoardItem
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasSingleNativeMovieBoardItemOnPasteboard:v4];

  return v5;
}

- (BOOL)hasOnlyNativeFreehandDrawingBoardItems
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:v4];

  return v5;
}

- (BOOL)hasNativeFreehandDrawingBoardItems
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasNativeFreehandDrawingBoardItemsOnPasteboard:v4];

  return v5;
}

- (BOOL)hasOnlyNativeTextBoxItems
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasOnlyNativeTextBoxItemsOnPasteboard:v4];

  return v5;
}

- (BOOL)hasNativeTextStorages
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasTextStoragesOnPasteboard:v4];

  return v5;
}

- (BOOL)hasNativeText
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasNativeTextOnPasteboard:v4];

  return v5;
}

- (BOOL)hasNativeBoardItemsContainingText
{
  v3 = [(CRLPasteboardItemSource *)self pasteboardController];
  v4 = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [v3 hasNativeBoardItemsContainingTextOnPasteboard:v4];

  return v5;
}

- (id)loadTextStorageUsingBoardItemFactory:(id)a3 forTargetContext:(id)a4 targetStorage:(id)a5 loadHandler:(id)a6
{
  v8 = a6;
  v14 = 0;
  v9 = a5;
  v10 = [(CRLPasteboardItemSource *)self pasteboardController];
  v11 = [(CRLPasteboardItemSource *)self pasteboard];
  v12 = [v10 textStorageFromPasteboard:v11 forTargetStorage:v9 smartPaste:&v14];

  if (v8)
  {
    v8[2](v8, v12, v14);
  }

  return 0;
}

- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)a3 loadHandler:(id)a4
{
  v5 = a4;
  v6 = [(CRLPasteboardItemSource *)self pasteboardController];
  v7 = [(CRLPasteboardItemSource *)self pasteboard];
  v8 = [v6 providersForBoardItemsFromPasteboard:v7];

  if (v5)
  {
    v5[2](v5, v8, &__NSArray0__struct);
  }

  return 0;
}

- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 WithLoadHandler:(id)a4
{
  v5 = a4;
  v6 = [(CRLPasteboardItemSource *)self pasteboardController];
  v7 = [(CRLPasteboardItemSource *)self pasteboard];
  v8 = [v6 providersForBoardItemsImportedFromPasteboard:v7];

  if (v5)
  {
    v5[2](v5, v8);
  }

  return 0;
}

- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)a3 maximumStringLength:(unint64_t)a4 WithLoadHandler:(id)a5
{
  v6 = a5;
  v7 = [(CRLPasteboardItemSource *)self pasteboardController];
  v8 = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [v7 providersForBoardItemsImportedFromPasteboard:v8];

  if (v6)
  {
    v6[2](v6, v9);
  }

  return 0;
}

- (id)loadImportedImagesForAssetOwner:(id)a3 compatibilityAlertPresenter:(id)a4 withHandler:(id)a5
{
  v52 = a3;
  v51 = a4;
  v48 = a5;
  v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101399640();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399654();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013996E4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLPasteboardItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPasteboardItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:238 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v12 = +[CRLIngestionTypes supportedImageTypes];
  v13 = dispatch_group_create();
  v14 = +[NSMutableArray array];
  v15 = +[NSMutableArray array];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1005A20D8;
  v67[3] = &unk_1018716E0;
  v47 = v14;
  v68 = v47;
  v45 = v15;
  v69 = v45;
  group = v13;
  v70 = group;
  v49 = objc_retainBlock(v67);
  v55 = v12;
  if ([(CRLPasteboard *)self->_pasteboard numberOfItems]!= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139970C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101399734();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013997C4();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLPasteboardItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]", v45];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLPasteboardItemSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:261 isFatal:0 description:"More than one item detected on the pasteboard for image fill. Currently only single items are supported."];
  }

  if ([(CRLPasteboard *)self->_pasteboard numberOfItems]>= 1)
  {
    v19 = 0;
    v20 = UTTypeURL;
    v21 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    v54 = self;
    do
    {
      v53 = v19;
      v57 = [NSIndexSet indexSetWithIndex:v19];
      v22 = [(CRLPasteboard *)self->_pasteboard pasteboardTypesForItemSet:?];
      v23 = [v22 firstObject];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v23;
      v24 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v64;
        while (2)
        {
          v27 = 0;
          v56 = v25;
          do
          {
            if (*v64 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v63 + 1) + 8 * v27);
            v29 = [v21[274] typeWithIdentifier:v28];
            if ([v28 crl_conformsToAnyUTI:v12])
            {
              dispatch_group_enter(group);
              v39 = [(CRLPasteboard *)self->_pasteboard dataForPasteboardType:v28 inItemSet:v57];
              v35 = [v39 firstObject];

              v32 = [[CRLImageFillProvider alloc] initWithData:v35 type:v28];
              [(CRLImageFillProvider *)v32 provideImageDataForAssetOwner:v52 compatibilityAlertPresenter:v51 completionHandler:v49];
LABEL_44:

              goto LABEL_45;
            }

            if ([v29 conformsToType:v20])
            {
              v30 = v20;
              v31 = [(CRLPasteboard *)self->_pasteboard dataForPasteboardType:v28 inItemSet:v57];
              v32 = [v31 firstObject];

              if (v32)
              {
                v33 = [objc_alloc(v8[101]) initWithData:v32 encoding:4];
                if (v33)
                {
                  v34 = [NSURL URLWithString:v33];
                  if (v34)
                  {
                    v35 = v34;
                    if ([(CRLImageFillProvider *)v34 isFileURL])
                    {
                      v36 = [(CRLImageFillProvider *)v35 crl_fileTypeIdentifierHandlingFileCoordinationPromises];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v37 = [v36 identifier];
                    v38 = [v37 crl_conformsToAnyUTI:v55];

                    if (v38)
                    {
                      dispatch_group_enter(group);
                      [CRLImageFillProvider makeCompatibleImageFillDataFromURL:v35 forAssetOwner:v52 modalOperationPresenter:v51 compatibilityAlertPresenter:v51 completionHandler:v49];

                      self = v54;
                      v12 = v55;
                      v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
                      v20 = v30;
                      v21 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
                      goto LABEL_44;
                    }

                    v33 = v32;
                    v32 = v35;
                    self = v54;
                    v12 = v55;
                    v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
                  }
                }
              }

              else
              {
                v33 = 0;
              }

              v20 = v30;
              v21 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
              v25 = v56;
            }

            v27 = v27 + 1;
          }

          while (v25 != v27);
          v25 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

LABEL_45:

      v19 = v53 + 1;
    }

    while (v53 + 1 < [(CRLPasteboard *)self->_pasteboard numberOfItems]);
  }

  v40 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A236C;
  block[3] = &unk_101847170;
  v60 = v47;
  v61 = v46;
  v62 = v48;
  v41 = v46;
  v42 = v47;
  v43 = v48;
  dispatch_group_notify(group, v40, block);

  return 0;
}

- (CRLPasteboardController)pasteboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_pbController);

  return WeakRetained;
}

@end