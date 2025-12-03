@interface CRLiOSDragAndDropController
- (BOOL)canCreateBoardItemsFromDragInfo:(id)info;
- (BOOL)insertBoardItemsForDragInfo:(id)info atPoint:(CGPoint)point onRep:(id)rep;
- (BOOL)shouldCleanupAfterSuccessfulDragOperation;
- (void)cleanupEndOfDragOperation;
- (void)dealloc;
- (void)p_transitionToItemPromiseState:(unint64_t)state;
@end

@implementation CRLiOSDragAndDropController

- (void)dealloc
{
  if (self->_itemPromiseState != 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101316EA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316EB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101316F44();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:38 isFatal:0 description:"Did not properly clean up drag and drop!"];
  }

  ignoringUserInteractionWrapper = self->_ignoringUserInteractionWrapper;
  if (ignoringUserInteractionWrapper)
  {
    [(CRLiOSWindowIgnoreUserInteractionSafeWrapper *)ignoringUserInteractionWrapper endIgnoringUserInteractionSafely];
  }

  v7.receiver = self;
  v7.super_class = CRLiOSDragAndDropController;
  [(CRLDragAndDropController *)&v7 dealloc];
}

- (BOOL)canCreateBoardItemsFromDragInfo:(id)info
{
  itemSource = [info itemSource];
  canProduceBoardItems = [itemSource canProduceBoardItems];

  return canProduceBoardItems;
}

- (BOOL)shouldCleanupAfterSuccessfulDragOperation
{
  if (self->_itemPromiseState == 2)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = CRLiOSDragAndDropController;
  return [(CRLDragAndDropController *)&v5 shouldCleanupAfterSuccessfulDragOperation];
}

- (BOOL)insertBoardItemsForDragInfo:(id)info atPoint:(CGPoint)point onRep:(id)rep
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  itemSource = [info itemSource];
  interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  followCoordinator = [editingCoordinator followCoordinator];
  [followCoordinator endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

  interactiveCanvasController2 = [(CRLDragAndDropController *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController2 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];

  if ([currentDocumentMode wantsToEndForDragAndDropInteractions])
  {
    boardViewController = [currentDocumentMode boardViewController];
    documentModeController = [boardViewController documentModeController];
    [documentModeController resetToDefaultModeAnimated:1];
  }

  if ([itemSource hasNativeBoardItems])
  {
    interactiveCanvasController3 = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator2 = [interactiveCanvasController3 editingCoordinator];
    boardItemFactory = [editingCoordinator2 boardItemFactory];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100115924;
    v57[3] = &unk_10183D920;
    v57[4] = self;
    v59 = x;
    v60 = y;
    v58 = repCopy;
    v24 = [itemSource loadProvidersForNativeBoardItemsWithBoardItemFactory:boardItemFactory loadHandler:v57];

    if (!v24)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101317154();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131717C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101317220();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v26 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController insertBoardItemsForDragInfo:atPoint:onRep:]"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:94 isFatal:0 description:"invalid nil value for '%{public}s'", "progress"];
    }
  }

  else
  {
    v47 = repCopy;
    hasNativeTextStorages = [itemSource hasNativeTextStorages];
    interactiveCanvasController4 = [(CRLDragAndDropController *)self interactiveCanvasController];
    editingCoordinator3 = [interactiveCanvasController4 editingCoordinator];
    boardItemFactory2 = [editingCoordinator3 boardItemFactory];
    if (hasNativeTextStorages)
    {

      interactiveCanvasController5 = [(CRLDragAndDropController *)self interactiveCanvasController];
      canvasEditor = [interactiveCanvasController5 canvasEditor];
      pasteboardController = [canvasEditor pasteboardController];

      delegate2 = [pasteboardController delegate];
      v36 = [delegate2 sourceContextForPasteboardController:pasteboardController];

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100115C0C;
      v53[3] = &unk_10183D988;
      v55 = x;
      v56 = y;
      v53[4] = boardItemFactory2;
      v53[5] = self;
      v54 = v47;
      v37 = [itemSource loadTextStorageUsingBoardItemFactory:boardItemFactory2 forTargetContext:v36 targetStorage:0 loadHandler:v53];
      if (!v37)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        v46 = v36;
        if (qword_101AD5A10 != -1)
        {
          sub_101317060();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101317088();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131712C();
        }

        v38 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v38);
        }

        v39 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController insertBoardItemsForDragInfo:atPoint:onRep:]"];
        v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
        [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:123 isFatal:0 description:"invalid nil value for '%{public}s'", "progress"];

        v36 = v46;
      }
    }

    else
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100115EA8;
      v49[3] = &unk_10183DA18;
      v49[4] = self;
      v51 = x;
      v52 = y;
      v50 = v47;
      v41 = [itemSource loadProvidersForImportedBoardItemsUsingBoardItemFactory:boardItemFactory2 WithLoadHandler:v49];

      if (!v41)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101316F6C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101316F94();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101317038();
        }

        v42 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v42);
        }

        v43 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController insertBoardItemsForDragInfo:atPoint:onRep:]"];
        v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
        [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:155 isFatal:0 description:"invalid nil value for '%{public}s'", "progress"];
      }

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1001161B4;
      v48[3] = &unk_10183AB38;
      v48[4] = self;
      [itemSource setCancellationHandler:v48];
    }

    repCopy = v47;
  }

  [(CRLiOSDragAndDropController *)self p_transitionToItemPromiseState:1];

  return 1;
}

- (void)cleanupEndOfDragOperation
{
  if (qword_101AD5B68 != -1)
  {
    sub_10131729C();
  }

  v3 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    itemPromiseState = self->_itemPromiseState;
    *buf = 134217984;
    v10 = itemPromiseState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cleanupEndOfDragOperation called. item promise state %zi", buf, 0xCu);
  }

  v5 = self->_itemPromiseState;
  if (v5 <= 3 && v5 != 1)
  {
    if (qword_101AD5B68 != -1)
    {
      sub_1013172B0();
    }

    v7 = off_1019EDBC0;
    if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "actually cleaning up mac DnD infrastructure", buf, 2u);
    }

    [(CRLiOSDragAndDropController *)self p_transitionToItemPromiseState:4];
    v8.receiver = self;
    v8.super_class = CRLiOSDragAndDropController;
    [(CRLDragAndDropController *)&v8 cleanupEndOfDragOperation];
  }
}

- (void)p_transitionToItemPromiseState:(unint64_t)state
{
  if (qword_101AD5B68 != -1)
  {
    sub_1013172D8();
  }

  v5 = off_1019EDBC0;
  if (os_log_type_enabled(off_1019EDBC0, OS_LOG_TYPE_DEFAULT))
  {
    itemPromiseState = self->_itemPromiseState;
    v30 = 134218240;
    v31 = itemPromiseState;
    v32 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transitioning item promise state from %zi to %zi", &v30, 0x16u);
  }

  if (self->_itemPromiseState == 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013172EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101317314();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013173A4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController p_transitionToItemPromiseState:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:190 isFatal:0 description:"Should not transition to a new state after we have completed a drag."];
  }

  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 4)
      {
        goto LABEL_64;
      }

      if (self->_itemPromiseState == 1)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131758C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013175B4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101317644();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v20 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController p_transitionToItemPromiseState:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:209 isFatal:0 description:"Should only receive promises from state Waiting."];
      }

      ignoringUserInteractionWrapper = self->_ignoringUserInteractionWrapper;
      if (!ignoringUserInteractionWrapper)
      {
        goto LABEL_64;
      }

      [(CRLiOSWindowIgnoreUserInteractionSafeWrapper *)ignoringUserInteractionWrapper endIgnoringUserInteractionSafely];
      interactiveCanvasController = self->_ignoringUserInteractionWrapper;
      self->_ignoringUserInteractionWrapper = 0;
LABEL_63:

      goto LABEL_64;
    }

    if (self->_itemPromiseState == 1)
    {
      goto LABEL_64;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013173CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013173F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101317484();
    }

    v29 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v29);
    }

    interactiveCanvasController = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController p_transitionToItemPromiseState:]"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
    v25 = "Should only receive promises from state Waiting.";
    v26 = interactiveCanvasController;
    v27 = v24;
    v28 = 205;
LABEL_62:
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:v28 isFatal:0 description:v25];

    goto LABEL_63;
  }

  if (!state)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131766C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101317694();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101317724();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v23);
    }

    interactiveCanvasController = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController p_transitionToItemPromiseState:]"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
    v25 = "Should never transition to state None. That's only for starting!";
    v26 = interactiveCanvasController;
    v27 = v24;
    v28 = 193;
    goto LABEL_62;
  }

  if (state == 1)
  {
    if (self->_itemPromiseState)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013174AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013174D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101317564();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLiOSDragAndDropController p_transitionToItemPromiseState:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDragAndDropController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:199 isFatal:0 description:"Should only begin waiting for promises from state None."];
    }

    interactiveCanvasController = [(CRLDragAndDropController *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    crl_windowWrapper = [asiOSCVC crl_windowWrapper];
    newWrapperBeginningIgnoringUserInteractionSafely = [crl_windowWrapper newWrapperBeginningIgnoringUserInteractionSafely];
    v18 = self->_ignoringUserInteractionWrapper;
    self->_ignoringUserInteractionWrapper = newWrapperBeginningIgnoringUserInteractionSafely;

    goto LABEL_63;
  }

LABEL_64:
  self->_itemPromiseState = state;
}

@end