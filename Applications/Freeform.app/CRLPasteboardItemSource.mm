@interface CRLPasteboardItemSource
- (BOOL)canLoadItemsOfClass:(Class)class;
- (BOOL)canProduceBoardItems;
- (BOOL)hasContentLanguageDrawablesType;
- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls;
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
- (CRLPasteboardItemSource)initWithPasteboard:(id)pasteboard pasteboardController:(id)controller;
- (id)loadImportedImagesForAssetOwner:(id)owner compatibilityAlertPresenter:(id)presenter withHandler:(id)handler;
- (id)loadImportedRichTextStringWithHandler:(id)handler;
- (id)loadImportedTextStringWithHandler:(id)handler;
- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)factory WithLoadHandler:(id)handler;
- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)factory maximumStringLength:(unint64_t)length WithLoadHandler:(id)handler;
- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)factory loadHandler:(id)handler;
- (id)loadTextStorageUsingBoardItemFactory:(id)factory forTargetContext:(id)context targetStorage:(id)storage loadHandler:(id)handler;
- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls;
@end

@implementation CRLPasteboardItemSource

- (CRLPasteboardItemSource)initWithPasteboard:(id)pasteboard pasteboardController:(id)controller
{
  pasteboardCopy = pasteboard;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLPasteboardItemSource;
  v9 = [(CRLPasteboardItemSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_pbController, controllerCopy);
    objc_storeStrong(&v10->_pasteboard, pasteboard);
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

- (BOOL)canLoadItemsOfClass:(Class)class
{
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  LOBYTE(class) = [pasteboard canLoadItemsOfClass:class];

  return class;
}

- (unint64_t)preferredImportableDataTypeDetectingImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls
{
  lsCopy = ls;
  textCopy = text;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [pasteboardController preferredImportableDataTypeOnPasteboard:pasteboard detectImportableURLsInText:textCopy skipFileURLs:lsCopy];

  return v9;
}

- (BOOL)hasImportableImages
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasImportableImagesOnPasteboard:pasteboard skipFileURLs:0];

  return v5;
}

- (BOOL)hasImportableBoardItemsDetectingImportableURLsInText:(BOOL)text skipFileURLs:(BOOL)ls
{
  lsCopy = ls;
  textCopy = text;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  LOBYTE(lsCopy) = [pasteboardController hasImportableBoardItemsOnPasteboard:pasteboard detectImportableURLsInText:textCopy skipFileURLs:lsCopy];

  return lsCopy;
}

- (BOOL)hasImportableText
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasImportablePlainTextOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasImportableRichText
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasImportableRichTextOnPasteboard:pasteboard];

  return v5;
}

- (id)loadImportedRichTextStringWithHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v7 = [pasteboardController importedRichTextStringFromPasteboard:pasteboard smartPaste:&v9];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7, v9);
  }

  return 0;
}

- (id)loadImportedTextStringWithHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v7 = [pasteboardController importedTextStringFromPasteboard:pasteboard smartPaste:&v9];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7, v9);
  }

  return 0;
}

- (BOOL)hasNativeTypes
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasNativeTypesOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasNativeBoardItems
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasNativeBoardItemsOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasContentLanguageDrawablesType
{
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  containsContentLanguageDrawableTypes = [pasteboard containsContentLanguageDrawableTypes];

  return containsContentLanguageDrawableTypes;
}

- (BOOL)canProduceBoardItems
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];

  if (!pasteboardController)
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

  pasteboardController2 = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [pasteboardController2 canProduceBoardItemsFromPasteboard:pasteboard];

  return v9;
}

- (BOOL)hasSingleNativeImageBoardItem
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasSingleNativeImageBoardItemOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasSingleNativeMovieBoardItem
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasSingleNativeMovieBoardItemOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasOnlyNativeFreehandDrawingBoardItems
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasOnlyNativeFreehandDrawingBoardItemsOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasNativeFreehandDrawingBoardItems
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasNativeFreehandDrawingBoardItemsOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasOnlyNativeTextBoxItems
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasOnlyNativeTextBoxItemsOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasNativeTextStorages
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasTextStoragesOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasNativeText
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasNativeTextOnPasteboard:pasteboard];

  return v5;
}

- (BOOL)hasNativeBoardItemsContainingText
{
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v5 = [pasteboardController hasNativeBoardItemsContainingTextOnPasteboard:pasteboard];

  return v5;
}

- (id)loadTextStorageUsingBoardItemFactory:(id)factory forTargetContext:(id)context targetStorage:(id)storage loadHandler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  storageCopy = storage;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v12 = [pasteboardController textStorageFromPasteboard:pasteboard forTargetStorage:storageCopy smartPaste:&v14];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v12, v14);
  }

  return 0;
}

- (id)loadProvidersForNativeBoardItemsWithBoardItemFactory:(id)factory loadHandler:(id)handler
{
  handlerCopy = handler;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v8 = [pasteboardController providersForBoardItemsFromPasteboard:pasteboard];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8, &__NSArray0__struct);
  }

  return 0;
}

- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)factory WithLoadHandler:(id)handler
{
  handlerCopy = handler;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v8 = [pasteboardController providersForBoardItemsImportedFromPasteboard:pasteboard];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }

  return 0;
}

- (id)loadProvidersForImportedBoardItemsUsingBoardItemFactory:(id)factory maximumStringLength:(unint64_t)length WithLoadHandler:(id)handler
{
  handlerCopy = handler;
  pasteboardController = [(CRLPasteboardItemSource *)self pasteboardController];
  pasteboard = [(CRLPasteboardItemSource *)self pasteboard];
  v9 = [pasteboardController providersForBoardItemsImportedFromPasteboard:pasteboard];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9);
  }

  return 0;
}

- (id)loadImportedImagesForAssetOwner:(id)owner compatibilityAlertPresenter:(id)presenter withHandler:(id)handler
{
  ownerCopy = owner;
  presenterCopy = presenter;
  handlerCopy = handler;
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
    selfCopy = self;
    do
    {
      v53 = v19;
      v57 = [NSIndexSet indexSetWithIndex:v19];
      v22 = [(CRLPasteboard *)self->_pasteboard pasteboardTypesForItemSet:?];
      firstObject = [v22 firstObject];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = firstObject;
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
              firstObject2 = [v39 firstObject];

              firstObject3 = [[CRLImageFillProvider alloc] initWithData:firstObject2 type:v28];
              [(CRLImageFillProvider *)firstObject3 provideImageDataForAssetOwner:ownerCopy compatibilityAlertPresenter:presenterCopy completionHandler:v49];
LABEL_44:

              goto LABEL_45;
            }

            if ([v29 conformsToType:v20])
            {
              v30 = v20;
              v31 = [(CRLPasteboard *)self->_pasteboard dataForPasteboardType:v28 inItemSet:v57];
              firstObject3 = [v31 firstObject];

              if (firstObject3)
              {
                v33 = [objc_alloc(v8[101]) initWithData:firstObject3 encoding:4];
                if (v33)
                {
                  v34 = [NSURL URLWithString:v33];
                  if (v34)
                  {
                    firstObject2 = v34;
                    if ([(CRLImageFillProvider *)v34 isFileURL])
                    {
                      crl_fileTypeIdentifierHandlingFileCoordinationPromises = [(CRLImageFillProvider *)firstObject2 crl_fileTypeIdentifierHandlingFileCoordinationPromises];
                    }

                    else
                    {
                      crl_fileTypeIdentifierHandlingFileCoordinationPromises = 0;
                    }

                    identifier = [crl_fileTypeIdentifierHandlingFileCoordinationPromises identifier];
                    v38 = [identifier crl_conformsToAnyUTI:v55];

                    if (v38)
                    {
                      dispatch_group_enter(group);
                      [CRLImageFillProvider makeCompatibleImageFillDataFromURL:firstObject2 forAssetOwner:ownerCopy modalOperationPresenter:presenterCopy compatibilityAlertPresenter:presenterCopy completionHandler:v49];

                      self = selfCopy;
                      v12 = v55;
                      v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
                      v20 = v30;
                      v21 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
                      goto LABEL_44;
                    }

                    v33 = firstObject3;
                    firstObject3 = firstObject2;
                    self = selfCopy;
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
  v62 = handlerCopy;
  v41 = v46;
  v42 = v47;
  v43 = handlerCopy;
  dispatch_group_notify(group, v40, block);

  return 0;
}

- (CRLPasteboardController)pasteboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_pbController);

  return WeakRetained;
}

@end