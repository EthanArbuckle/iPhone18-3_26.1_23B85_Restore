@interface CRLImageEditor
- (BOOL)canToggleMaskEditMode;
- (BOOL)p_allImagesAreSupportedTypes;
- (BOOL)p_allSelectedImagesArePlaceholders;
- (BOOL)p_canBeginEditingMask;
- (BOOL)p_canHandleInsertNewline;
- (BOOL)p_canRemoveImageBackground;
- (BOOL)p_canResetMask;
- (BOOL)p_canSaveDefaultImagePreset;
- (BOOL)p_canTogglePlaceholderKnob;
- (BOOL)p_isEditingMask;
- (BOOL)p_placeholderKnobDebuggingEnabled;
- (_TtC8Freeform12CRLImageItem)firstImageItem;
- (id)setAsPlaceholderToggledControlState;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)hideMaskControl:(id)a3;
- (void)insertNewline:(id)a3;
- (void)removeImageBackground:(id)a3;
- (void)resetMask:(id)a3;
- (void)saveDefaultInsertionPreset:(id)a3;
- (void)toggleIsImagePlaceholder:(id)a3;
- (void)toggleMaskEditMode:(id)a3;
@end

@implementation CRLImageEditor

- (_TtC8Freeform12CRLImageItem)firstImageItem
{
  v3 = objc_opt_class();
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];
  v6 = sub_100014370(v3, v5);

  return v6;
}

- (BOOL)p_canHandleInsertNewline
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 hasSelectedInfosInMultipleContainers];

  if (v4)
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(CRLImageEditor *)self selectedImageObjects];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v14 = [v13 repForInfo:v11];
        v15 = sub_100014370(v12, v14);

        if (!v15)
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135C240();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v31 = v16;
            v32 = 2082;
            v33 = "[CRLImageEditor p_canHandleInsertNewline]";
            v34 = 2082;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m";
            v36 = 1024;
            v37 = 56;
            v38 = 2082;
            v39 = "imageRep";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135C268();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v23 = v18;
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v31 = v16;
            v32 = 2114;
            v33 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v19 = [NSString stringWithUTF8String:"[CRLImageEditor p_canHandleInsertNewline]"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:56 isFatal:0 description:"invalid nil value for '%{public}s'", "imageRep"];
        }

        v21 = [v15 imageLayout];
        v22 = [v21 isInMaskEditMode];

        if (v22)
        {
          v5 = 1;
          goto LABEL_23;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_23:

  return v5;
}

- (void)insertNewline:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 hasSelectedInfosInMultipleContainers];

  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C290();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C2A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C334();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageEditor insertNewline:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:67 isFatal:0 description:"Cannot insert newline with cross-container selection!"];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [(CRLImageEditor *)self selectedImageObjects];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = objc_opt_class();
        v16 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v17 = [v16 repForInfo:v14];
        v18 = sub_100014370(v15, v17);

        if (!v18)
        {
          v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135C35C();
          }

          v20 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v33 = v19;
            v34 = 2082;
            v35 = "[CRLImageEditor insertNewline:]";
            v36 = 2082;
            v37 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m";
            v38 = 1024;
            v39 = 71;
            v40 = 2082;
            v41 = "imageRep";
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135C384();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v26 = v21;
            v27 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v33 = v19;
            v34 = 2114;
            v35 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v22 = [NSString stringWithUTF8String:"[CRLImageEditor insertNewline:]"];
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:71 isFatal:0 description:"invalid nil value for '%{public}s'", "imageRep"];
        }

        v24 = [v18 imageLayout];
        v25 = [v24 isInMaskEditMode];

        if (v25)
        {
          [v18 endEditingMask];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v11);
  }
}

- (BOOL)p_allImagesAreSupportedTypes
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 hasSelectedInfosInMultipleContainers];

  if (v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C3AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C3C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C450();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageEditor p_allImagesAreSupportedTypes]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:79 isFatal:0 description:"Cannot check that all images are supported types with cross-container selection!"];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
LABEL_13:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v25 + 1) + 8 * v13);
      v16 = objc_opt_class();
      v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v18 = [v17 repForInfo:v15 createIfNeeded:1];
      v11 = sub_100014370(v16, v18);

      v19 = +[CRLImageProviderPool sharedPool];
      v20 = [v11 imageDataForRendering];
      v21 = [v19 providerForAsset:v20 shouldValidate:1];

      v22 = [v21 isError];
      if (v22)
      {
        break;
      }

      v13 = v13 + 1;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_13;
        }

        break;
      }
    }

    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (BOOL)p_canResetMask
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLImageEditor *)self selectedImageObjects];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(CRLImageEditor *)self p_canResetMaskForImageInfo:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)resetMask:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 commandController];

  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v8 = [v7 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v8];

  [v5 openGroupWithSelectionBehavior:v9];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Reset Mask" value:0 table:@"UndoStrings"];
  [v5 setCurrentGroupActionString:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(CRLBoardItemEditor *)self boardItems];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = objc_opt_class();
        v19 = sub_100013F00(v18, v17);
        if ([(CRLImageEditor *)self p_canResetMaskForImageInfo:v19])
        {
          v20 = [v19 commandToResetMask];
          [v5 enqueueCommand:v20];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [v5 closeGroup];
}

- (BOOL)canToggleMaskEditMode
{
  v3 = [(CRLBoardItemEditor *)self boardItems];
  if ([v3 count] == 1)
  {
    v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    if ([v4 hasSelectedInfosInMultipleContainers])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(CRLImageEditor *)self p_allImagesAreSupportedTypes];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleMaskEditMode:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 hasSelectedInfosInMultipleContainers];

  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C478();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C48C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C51C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageEditor toggleMaskEditMode:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:145 isFatal:0 description:"Cannot toggle mask edit mode with cross-container selection!"];
  }

  v9 = [(CRLImageEditor *)self selectedImageObjects];
  v10 = [v9 anyObject];

  v11 = objc_opt_class();
  v12 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v13 = [v12 repForInfo:v10];
  v14 = sub_100014370(v11, v13);

  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C544();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C56C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C608();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLImageEditor toggleMaskEditMode:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:148 isFatal:0 description:"invalid nil value for '%{public}s'", "imageRep"];
  }

  v18 = [v14 imageLayout];
  if ([v18 isInMaskEditMode])
  {
    [v14 endEditingMask];
  }

  else
  {
    v19 = [v14 imageInfo];
    v20 = [v19 maskInfo];

    if (v20)
    {
      [v14 editMaskWithHUD:1];
    }

    else
    {
      [v14 maskWithHUD:1];
    }

    v21 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v22 = [v21 layerHost];
    v23 = [v22 miniFormatterPresenter];
    [v23 dismissMiniFormatter];
  }
}

- (BOOL)p_canBeginEditingMask
{
  if ([(CRLImageEditor *)self canToggleMaskEditMode])
  {
    v3 = [(CRLImageEditor *)self selectedImageObjects];
    v4 = [v3 anyObject];

    v5 = objc_opt_class();
    v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v7 = [v6 repForInfo:v4];
    v8 = sub_100014370(v5, v7);

    v9 = [v8 imageLayout];
    v10 = [v9 isInMaskEditMode] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)removeImageBackground:(id)a3
{
  v4 = [(CRLImageEditor *)self selectedImageObjects];
  v5 = [v4 anyObject];

  v6 = objc_opt_class();
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v8 = [v7 repForInfo:v5];
  v9 = sub_100014370(v6, v8);

  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C630();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C644();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C6E0();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLImageEditor removeImageBackground:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:202 isFatal:0 description:"invalid nil value for '%{public}s'", "imageRep"];
  }

  [v9 removeBackgroundFromImage];
  v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v14 = [v13 layerHost];
  v15 = [v14 asiOSCVC];

  v16 = [v15 miniFormatterPresenter];
  [v16 dismissMiniFormatter];
}

- (BOOL)p_canRemoveImageBackground
{
  v3 = [(CRLImageEditor *)self selectedImageObjects];
  v4 = [v3 anyObject];

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C708();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C71C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C7B8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageEditor p_canRemoveImageBackground]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:218 isFatal:0 description:"invalid nil value for '%{public}s'", "imageInfo"];
  }

  v8 = objc_opt_class();
  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v10 = [v9 repForInfo:v4];
  v11 = sub_100014370(v8, v10);

  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C7E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C808();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C8A4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageEditor p_canRemoveImageBackground]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:220 isFatal:0 description:"invalid nil value for '%{public}s'", "imageRep"];
  }

  v15 = [v11 canRemoveBackgroundFromImage];
  if (!+[VKCRemoveBackgroundRequestHandler isSupported](VKCRemoveBackgroundRequestHandler, "isSupported") || (v15 & ((+[VKCImageAnalyzer supportedAnalysisTypes]& 0x20) != 0)) != 1)
  {
    goto LABEL_27;
  }

  v16 = [(CRLBoardItemEditor *)self boardItems];
  if ([v16 count] != 1)
  {
LABEL_26:

LABEL_27:
    LOBYTE(v18) = 0;
    goto LABEL_28;
  }

  v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  if ([v17 hasSelectedInfosInMultipleContainers])
  {

    goto LABEL_26;
  }

  v18 = [(CRLImageEditor *)self p_allImagesAreSupportedTypes];

  if (v18)
  {
    v18 = [v4 isBackgroundRemoved] ^ 1;
  }

LABEL_28:

  return v18;
}

- (BOOL)p_placeholderKnobDebuggingEnabled
{
  v2 = +[CRLInternalOSUtilities isInternalOSInstall];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"CRLImagePlaceholderContextMenuOption"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)toggleIsImagePlaceholder:(id)a3
{
  v4 = [(CRLImageEditor *)self p_allSelectedImagesArePlaceholders];
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = [v8 canvasEditor];
  v10 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v9];

  [v6 openGroupWithSelectionBehavior:v10];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(CRLImageEditor *)self selectedImageObjects];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[_TtC8Freeform29CRLCommandSetImagePlaceholder alloc] initWithImageItem:*(*(&v17 + 1) + 8 * v15) isImagePlaceholder:v4 ^ 1];
        [v6 enqueueCommand:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [v6 closeGroup];
}

- (BOOL)p_allSelectedImagesArePlaceholders
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLImageEditor *)self selectedImageObjects];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isImagePlaceholder])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)setAsPlaceholderToggledControlState
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CRLImageEditor *)self selectedImageObjects];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v3)
  {

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = [*(*(&v13 + 1) + 8 * i) isImagePlaceholder];
      v5 |= v9 ^ 1;
      v6 |= v9;
    }

    v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v4);

  if (v6 & v5)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if ((v6 & v5 & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  v11 = [CRLPlatformControlState stateWithValue:v10];

  return v11;
}

- (BOOL)p_canTogglePlaceholderKnob
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLImageEditor *)self selectedImageObjects];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(CRLImageEditor *)self p_canTogglePlaceholderForImageInfo:*(*(&v10 + 1) + 8 * i)])
        {

          v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
          v8 = [v3 documentIsSharedReadOnly] ^ 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v8) = 0;
LABEL_11:

  return v8;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("insertNewline:" == a3)
  {
    v7 = [(CRLImageEditor *)self p_canHandleInsertNewline];
    goto LABEL_20;
  }

  if ("toggleMaskEditMode:" == a3)
  {
    v7 = [(CRLImageEditor *)self canToggleMaskEditMode];
    goto LABEL_20;
  }

  if ("beginEditingMask:" == a3)
  {
    v7 = [(CRLImageEditor *)self p_canBeginEditingMask];
    goto LABEL_20;
  }

  if (sel_isEqual(a3, "resetMask:"))
  {
    v7 = [(CRLImageEditor *)self p_canResetMask];
    goto LABEL_20;
  }

  if (sel_isEqual(a3, "saveDefaultInsertionPreset:"))
  {
    v7 = [(CRLImageEditor *)self p_canSaveDefaultImagePreset];
    goto LABEL_20;
  }

  if ("removeImageBackground:" == a3)
  {
    v7 = [(CRLImageEditor *)self p_canRemoveImageBackground];
    goto LABEL_20;
  }

  if ("toggleIsImagePlaceholder:" == a3)
  {
    v7 = [(CRLImageEditor *)self p_canTogglePlaceholderKnob];
LABEL_20:
    if (v7)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    goto LABEL_23;
  }

  if (sel_isEqual(a3, "hideMaskControl:"))
  {
    v8 = [(CRLImageEditor *)self firstImageItem];
    v9 = objc_opt_class();
    v10 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v11 = [v10 repForInfo:v8];
    v12 = sub_100014370(v9, v11);

    v13 = [v12 imageLayout];
    if ([v13 isInMaskEditMode])
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRLImageEditor;
    v14 = [(CRLMediaEditor *)&v16 canPerformEditorAction:a3 withSender:v6];
  }

LABEL_23:

  return v14;
}

- (BOOL)p_isEditingMask
{
  v3 = [(CRLImageEditor *)self firstImageItem];
  v4 = objc_opt_class();
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 repForInfo:v3];
  v7 = sub_100014370(v4, v6);

  v8 = [v7 imageLayout];
  LOBYTE(v6) = [v8 isInMaskEditMode];

  return v6;
}

- (BOOL)p_canSaveDefaultImagePreset
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 count] == 1;

  return v3;
}

- (void)saveDefaultInsertionPreset:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 count];

  if (v5 != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C8CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C8E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C970();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageEditor saveDefaultInsertionPreset:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:361 isFatal:0 description:"Only should save default style with a single object selected!"];
  }

  v9 = objc_opt_class();
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 anyObject];
  v12 = sub_100013F00(v9, v11);

  if (v12)
  {
    v13 = [[_TtC8Freeform40CRLCommandSetDefaultImageInsertionPreset alloc] initWithImageItem:v12];
    v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v15 = [v14 commandController];
    [v15 enqueueCommand:v13];
  }
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v25 = self;
  v26.receiver = self;
  v26.super_class = CRLImageEditor;
  [(CRLMediaEditor *)&v26 addContextualMenuElementsToArray:v7 atPoint:x, y];
  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = objc_opt_class();
      v10 = [v7 objectAtIndexedSubscript:v8];
      v11 = sub_100014370(v9, v10);

      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:@"CRLShadowAndRoundCornersMenuIdentifier"];

      if (v13)
      {
        break;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = objc_alloc_init(NSMutableArray);
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Reset Mask" value:0 table:0];
  v17 = [UIImage systemImageNamed:@"crop"];
  v18 = [UICommand commandWithTitle:v16 image:v17 action:"resetMask:" propertyList:0];

  [v14 insertObject:v18 atIndex:0];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isPlaceholderImagesEnabled]&& [(CRLImageEditor *)v25 p_placeholderKnobDebuggingEnabled])
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Set as Placeholder" value:0 table:0];
    v21 = [UIImage systemImageNamed:@"plus.circle"];
    v22 = [UICommand commandWithTitle:v20 image:v21 action:"toggleIsImagePlaceholder:" propertyList:0];

    v23 = [(CRLImageEditor *)v25 setAsPlaceholderToggledControlState];
    [v22 setState:{objc_msgSend(v23, "stateValue")}];
    [v14 insertObject:v22 atIndex:1];
  }

  v24 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v14];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addObject:v24];
  }

  else
  {
    [v7 insertObject:v24 atIndex:v8];
  }
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v33.receiver = self;
  v33.super_class = CRLImageEditor;
  [(CRLBoardItemEditor *)&v33 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  v8 = [v7 count];
  v9 = [(CRLBoardItemEditor *)self boardItems];
  v10 = [v9 count];

  if (v10 <= 1)
  {
    if ([(CRLImageEditor *)self p_canModifyImage])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Modify Image" value:0 table:0];
      v13 = [CRLImage crl_quickInspectorImageNamed:@"photo"];
      v14 = [CRLQuickInspectorElement elementWithName:v12 image:v13 type:2 options:128];

      [v14 setTag:8];
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"Replace this photo value:reset to original size table:{or remove background", 0, 0}];
      [v14 setToolTip:v16];

      [v7 insertObject:v14 atIndex:v8++];
    }

    if ([(CRLImageEditor *)self p_canBeginEditingMask])
    {
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"Crop Mask" value:0 table:0];
      v19 = [CRLImage crl_quickInspectorImageNamed:@"crop"];
      v20 = [CRLQuickInspectorElement elementWithName:v18 image:v19 type:2 action:"beginEditingMask:" parent:0 children:0];

      [v20 setTag:21];
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"Crop and scale" value:0 table:0];
      [v20 setToolTip:v22];

      [v7 insertObject:v20 atIndex:v8++];
    }

    if ([(CRLImageEditor *)self p_canResetMask])
    {
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"Reset Mask" value:0 table:0];
      v25 = [CRLImage crl_quickInspectorImageNamed:@"crop.rotate"];
      v26 = [CRLQuickInspectorElement elementWithName:v24 image:v25 type:1 action:"resetMask:" parent:0 children:0];

      [v26 setTag:22];
      [v7 insertObject:v26 atIndex:v8];
    }

    if ([(CRLBoardItemEditor *)self canShowPreview])
    {
      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"Preview" value:0 table:0];
      v29 = [CRLImage crl_quickInspectorImageNamed:@"eye"];
      v30 = [CRLQuickInspectorElement elementWithName:v28 image:v29 type:2 action:"showPreview:"];

      [v30 setTag:23];
      v31 = [(CRLImageEditor *)self firstImageItem];
      v32 = [v31 previewTooltip];
      [v30 setToolTip:v32];

      [v7 addObject:v30];
    }
  }
}

- (void)hideMaskControl:(id)a3
{
  v8 = [(CRLImageEditor *)self firstImageItem];
  v4 = objc_opt_class();
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 repForInfo:v8 createIfNeeded:0];
  v7 = sub_100014370(v4, v6);

  [v7 endEditingMask];
}

@end