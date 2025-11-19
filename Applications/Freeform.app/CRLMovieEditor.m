@interface CRLMovieEditor
- (BOOL)p_canSaveDefaultMoviePreset;
- (_TtC8Freeform12CRLMovieItem)anyMovieItem;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)didEndChangingTimePropertyForMovieItem:(id)a3 withCommand:(id)a4 error:(id)a5;
- (void)saveDefaultInsertionPreset:(id)a3;
- (void)setMovieVolume:(double)a3;
- (void)setPropertyValue:(id)a3 forMovieProperty:(unint64_t)a4;
- (void)willBeginChangingTimePropertyForMovieItem:(id)a3 withLocalizedMessage:(id)a4 cancelHandler:(id)a5;
@end

@implementation CRLMovieEditor

- (_TtC8Freeform12CRLMovieItem)anyMovieItem
{
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_isEqual(a3, "saveDefaultInsertionPreset:"))
  {
    if ([(CRLMovieEditor *)self p_canSaveDefaultMoviePreset])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLMovieEditor;
    v7 = [(CRLMediaEditor *)&v9 canPerformEditorAction:a3 withSender:v6];
  }

  return v7;
}

- (void)setMovieVolume:(double)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = [v8 canvasEditor];
  v10 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v9];

  [v6 openGroupWithSelectionBehavior:v10];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(CRLBoardItemEditor *)self boardItems];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    v15 = a3;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [_TtC8Freeform24CRLCommandSetMovieVolume alloc];
        *&v19 = v15;
        v20 = [(CRLCommandSetMovieVolume *)v18 initWithMovieItem:v17 volume:v19];
        [v6 enqueueCommand:v20];

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [v6 closeGroup];
}

- (void)setPropertyValue:(id)a3 forMovieProperty:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 47 || a4 == 44)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101387EA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101387EB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101387F40();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMovieEditor setPropertyValue:forMovieProperty:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:105 isFatal:0 description:"We need to set the poster time and the poster image together. The poster image is a board item asset so it is async so we'll have to wait until we have both, then use CRLCommandSetMoviePosterTime."];
  }

  else
  {
    v10 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v8 = [v10 commandController];

    v11 = [CRLCanvasCommandSelectionBehavior alloc];
    v12 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v13 = [v12 canvasEditor];
    v9 = [(CRLCanvasCommandSelectionBehavior *)v11 initWithCanvasEditor:v13];

    [v8 openGroupWithSelectionBehavior:v9];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(CRLBoardItemEditor *)self boardItems];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [_TtC8Freeform23CRLCommandSetMovieValue movieSetValueCommandWithMovie:*(*(&v20 + 1) + 8 * i) property:a4 boxedValue:v6];
          [v8 enqueueCommand:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    [v8 closeGroup];
  }
}

- (void)willBeginChangingTimePropertyForMovieItem:(id)a3 withLocalizedMessage:(id)a4 cancelHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101387F68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101387F7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101388004();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMovieEditor willBeginChangingTimePropertyForMovieItem:withLocalizedMessage:cancelHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:125 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v12 = *(&self->super.super.mIsChangingStrokeWidth + 1);
  if (!v12)
  {
    v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    if (*(&self->_timePropertyUpdatingCount + 1))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138802C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101388054();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101388104();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLMovieEditor willBeginChangingTimePropertyForMovieItem:withLocalizedMessage:cancelHandler:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:130 isFatal:0 description:"expected nil value for '%{public}s'", "_modalOperationToken"];
    }

    v17 = [v13 layerHost];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005007B0;
    v25[3] = &unk_10183AB38;
    v25[4] = self;
    v18 = [v17 beginModalOperationWithLocalizedMessage:v7 progress:0 cancelHandler:v25];
    v19 = *(&self->_timePropertyUpdatingCount + 1);
    *(&self->_timePropertyUpdatingCount + 1) = v18;

    v12 = *(&self->super.super.mIsChangingStrokeWidth + 1);
  }

  *(&self->super.super.mIsChangingStrokeWidth + 1) = v12 + 1;
  if (v8)
  {
    v20 = *(&self->_modalOperationToken + 1);
    if (!v20)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = *(&self->_modalOperationToken + 1);
      *(&self->_modalOperationToken + 1) = v21;

      v20 = *(&self->_modalOperationToken + 1);
    }

    v23 = [v8 copy];
    v24 = objc_retainBlock(v23);
    [v20 addObject:v24];
  }
}

- (void)didEndChangingTimePropertyForMovieItem:(id)a3 withCommand:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138812C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101388140();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013881C8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMovieEditor didEndChangingTimePropertyForMovieItem:withCommand:error:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:152 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (*(&self->super.super.mIsChangingStrokeWidth + 1))
  {
    goto LABEL_21;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013881F0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101388218();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013882A0();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v12);
  }

  v13 = [NSString stringWithUTF8String:"[CRLMovieEditor didEndChangingTimePropertyForMovieItem:withCommand:error:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:154 isFatal:0 description:"didEndChangingTimePropertyForMovieItem called without matching willBeginChangingTimePropertyForMovieItem"];

  if (*(&self->super.super.mIsChangingStrokeWidth + 1))
  {
LABEL_21:
    if (v7)
    {
      v15 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
      if (!v15)
      {
        v16 = objc_alloc_init(NSMutableArray);
        v17 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
        *(&self->_timePropertyUpdatingCancelHandlers + 1) = v16;

        v15 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
      }

      [v15 addObject:v7];
    }

    if (v8)
    {
      v18 = *(&self->_timePropertyUpdatingCommands + 1);
      if (!v18)
      {
        v19 = objc_alloc_init(NSMutableArray);
        v20 = *(&self->_timePropertyUpdatingCommands + 1);
        *(&self->_timePropertyUpdatingCommands + 1) = v19;

        v18 = *(&self->_timePropertyUpdatingCommands + 1);
      }

      [v18 addObject:v8];
    }

    v21 = *(&self->super.super.mIsChangingStrokeWidth + 1) - 1;
    *(&self->super.super.mIsChangingStrokeWidth + 1) = v21;
    if (!v21)
    {
      v22 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      if (*(&self->_timePropertyUpdatingCount + 1))
      {
        goto LABEL_40;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013882C8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013882F0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013883A0();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v23);
      }

      v24 = [NSString stringWithUTF8String:"[CRLMovieEditor didEndChangingTimePropertyForMovieItem:withCommand:error:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:176 isFatal:0 description:"invalid nil value for '%{public}s'", "_modalOperationToken"];

      if (*(&self->_timePropertyUpdatingCount + 1))
      {
LABEL_40:
        v26 = [v22 layerHost];
        [v26 endModalOperationWithToken:*(&self->_timePropertyUpdatingCount + 1)];

        v27 = *(&self->_timePropertyUpdatingCount + 1);
        *(&self->_timePropertyUpdatingCount + 1) = 0;
      }

      if ((BYTE1(self->_timePropertyUpdatingErrors) & 1) == 0)
      {
        v28 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
        if (v28)
        {
          v29 = [v28 count];
          if (v29)
          {
            v30 = v29;
            v31 = [v22 commandController];
            v32 = v31;
            v44 = v30;
            if (v30 != 1)
            {
              [v31 openGroup];
            }

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v33 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
            v34 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v48;
              do
              {
                for (i = 0; i != v35; i = i + 1)
                {
                  if (*v48 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  [v32 enqueueCommand:*(*(&v47 + 1) + 8 * i)];
                }

                v35 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
              }

              while (v35);
            }

            if (v44 != 1)
            {
              [v32 closeGroup];
            }
          }
        }
      }

      v38 = *(&self->_timePropertyUpdatingCommands + 1);
      if (v38 && [v38 count])
      {
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100501098;
        v45[3] = &unk_10183AE28;
        v45[4] = self;
        v46 = v22;
        v39 = v45;
        Main = CFRunLoopGetMain();
        CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, v39);
        CFRunLoopWakeUp(Main);
      }

      v41 = *(&self->_modalOperationToken + 1);
      *(&self->_modalOperationToken + 1) = 0;

      v42 = *(&self->_timePropertyUpdatingCancelHandlers + 1);
      *(&self->_timePropertyUpdatingCancelHandlers + 1) = 0;

      v43 = *(&self->_timePropertyUpdatingCommands + 1);
      *(&self->_timePropertyUpdatingCommands + 1) = 0;

      BYTE1(self->_timePropertyUpdatingErrors) = 0;
    }
  }
}

- (BOOL)p_canSaveDefaultMoviePreset
{
  v3 = objc_opt_class();
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];
  v6 = sub_100013F00(v3, v5);

  v7 = [(CRLBoardItemEditor *)self boardItems];
  if ([v7 count] == 1)
  {
    v8 = [v6 isAudioOnly] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
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
      sub_1013883C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013883DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101388464();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMovieEditor saveDefaultInsertionPreset:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:227 isFatal:0 description:"Only should save default style with a single object selected!"];
  }

  v9 = objc_opt_class();
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 anyObject];
  v12 = sub_100013F00(v9, v11);

  if (v12)
  {
    v13 = [[_TtC8Freeform40CRLCommandSetDefaultMovieInsertionPreset alloc] initWithMovieItem:v12];
    v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v15 = [v14 commandController];
    [v15 enqueueCommand:v13];
  }
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v31.receiver = self;
  v31.super_class = CRLMovieEditor;
  [(CRLBoardItemEditor *)&v31 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v8 count];

  if (v9 <= 1)
  {
    if ([(CRLMovieEditor *)self p_canModifyMedia])
    {
      v10 = [(CRLMovieEditor *)self anyMovieItem];
      v11 = [v10 isAudioOnly];

      v12 = +[NSBundle mainBundle];
      v13 = v12;
      v14 = v11 == 0;
      if (v11)
      {
        v15 = @"Modify Audio";
      }

      else
      {
        v15 = @"Modify Movie";
      }

      if (v11)
      {
        v16 = @"speaker.wave.2";
      }

      else
      {
        v16 = @"film";
      }

      if (v14)
      {
        v17 = 512;
      }

      else
      {
        v17 = 256;
      }

      if (v14)
      {
        v18 = 10;
      }

      else
      {
        v18 = 9;
      }

      if (v14)
      {
        v19 = @"Replace this video or reset to original size";
      }

      else
      {
        v19 = @"Replace this audio file";
      }

      v20 = [v12 localizedStringForKey:v15 value:0 table:0];
      v21 = [CRLImage crl_quickInspectorImageNamed:v16];
      v22 = [CRLQuickInspectorElement elementWithName:v20 image:v21 type:2 options:v17];

      [v22 setTag:v18];
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:v19 value:0 table:0];
      [v22 setToolTip:v24];

      [v7 insertObject:v22 atIndex:{objc_msgSend(v7, "count")}];
    }

    if ([(CRLBoardItemEditor *)self canShowPreview])
    {
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Preview" value:0 table:0];
      v27 = [CRLImage crl_quickInspectorImageNamed:@"eye"];
      v28 = [CRLQuickInspectorElement elementWithName:v26 image:v27 type:2 action:"showPreview:"];

      [v28 setTag:23];
      v29 = [(CRLMovieEditor *)self anyMovieItem];
      v30 = [v29 previewTooltip];
      [v28 setToolTip:v30];

      [v7 addObject:v28];
    }
  }
}

@end