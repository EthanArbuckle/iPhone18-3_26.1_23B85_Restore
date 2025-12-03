@interface CRLEditorController
- (BOOL)anyEditorProhibitsAction:(SEL)action;
- (BOOL)isChangingSelection;
- (CRLEditorController)init;
- (CRLEditorController)initWithEditingCoordinator:(id)coordinator rootEditor:(id)editor debugName:(id)name;
- (CRLSelectionPath)selectionPath;
- (CRLTextInputEditor)textInputEditor;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)currentEditorsConformingToProtocol:(id)protocol;
- (id)currentEditorsOfClass:(Class)class;
- (id)description;
- (id)editorForEditAction:(SEL)action withSender:(id)sender response:(int64_t *)response;
- (id)mostSpecificCurrentEditorOfClass:(Class)class;
- (id)mostSpecificCurrentEditorOfClass:(Class)class conformingToProtocol:(id)protocol;
- (id)selectionForEditor:(id)editor;
- (id)selectionPathToPopEditor:(id)editor;
- (void)editorDidChangeSelectionAndWantsKeyboard:(id)keyboard;
- (void)enumerateEditorsOnStackLeastToMostSpecificUsingBlock:(id)block;
- (void)enumerateEditorsOnStackUsingBlock:(id)block;
- (void)notifyResignedTextInputEditors;
- (void)p_didChangeCurrentEditors;
- (void)p_didChangeTextInputEditor;
- (void)p_endTransaction;
- (void)p_enumerateEditorsWithEnumerator:(id)enumerator usingBlock:(id)block;
- (void)p_popEditor:(id)editor;
- (void)p_pushEditor:(id)editor;
- (void)p_refreshTextInputEditorWithFlags:(unint64_t)flags;
- (void)performBlockAfterSettingSelection:(id)selection;
- (void)pushSelection:(id)selection;
- (void)refreshTextInputEditor;
- (void)setSelection:(id)selection forEditor:(id)editor withFlags:(unint64_t)flags;
- (void)setSelectionPath:(id)path withFlags:(unint64_t)flags;
- (void)setSelectionPathToPopEditor:(id)editor;
- (void)setSelectionPathToPopToEditor:(id)editor;
- (void)teardown;
@end

@implementation CRLEditorController

- (CRLEditorController)initWithEditingCoordinator:(id)coordinator rootEditor:(id)editor debugName:(id)name
{
  coordinatorCopy = coordinator;
  editorCopy = editor;
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = CRLEditorController;
  v11 = [(CRLEditorController *)&v34 init];
  if (v11)
  {
    if (coordinatorCopy)
    {
      if (editorCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101339944();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133996C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101339A08();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLEditorController initWithEditingCoordinator:rootEditor:debugName:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:68 isFatal:0 description:"invalid nil value for '%{public}s'", "editingCoordinator"];

      if (editorCopy)
      {
LABEL_4:
        if (nameCopy)
        {
LABEL_33:
          objc_storeWeak(&v11->mEditingCoordinator, coordinatorCopy);
          v21 = objc_alloc_init(NSMutableArray);
          mEditorStack = v11->mEditorStack;
          v11->mEditorStack = v21;

          v23 = objc_alloc_init(NSMutableArray);
          mResignedTextInputEditors = v11->mResignedTextInputEditors;
          v11->mResignedTextInputEditors = v23;

          v25 = objc_alloc_init(NSMutableDictionary);
          mInspectorPropertyValueMap = v11->mInspectorPropertyValueMap;
          v11->mInspectorPropertyValueMap = v25;

          v27 = [nameCopy copy];
          mDebugName = v11->mDebugName;
          v11->mDebugName = v27;

          v29 = objc_alloc_init(_TtC8Freeform17CRLBoardSelection);
          v35 = v29;
          v30 = [NSArray arrayWithObjects:&v35 count:1];
          v31 = [CRLSelectionPath selectionPathWithSelectionArray:v30];
          mSelectionPath = v11->mSelectionPath;
          v11->mSelectionPath = v31;

          [editorCopy setEditorController:v11];
          [(CRLEditorController *)v11 p_pushEditor:editorCopy];
          goto LABEL_34;
        }

LABEL_24:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101339B1C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101339B44();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101339BE0();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v18);
        }

        v19 = [NSString stringWithUTF8String:"[CRLEditorController initWithEditingCoordinator:rootEditor:debugName:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
        [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "debugName"];

        goto LABEL_33;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339A30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101339A58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339AF4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLEditorController initWithEditingCoordinator:rootEditor:debugName:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:69 isFatal:0 description:"invalid nil value for '%{public}s'", "rootEditor"];

    if (nameCopy)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

LABEL_34:

  return v11;
}

- (CRLEditorController)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184BF10);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLEditorController init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m";
    v18 = 1024;
    v19 = 85;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184BF30);
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

  v7 = [NSString stringWithUTF8String:"[CRLEditorController init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:85 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLEditorController init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  mDebugName = self->mDebugName;
  v6 = [(NSMutableArray *)self->mEditorStack count];
  v7 = &stru_1018BCA28;
  if (!v6)
  {
    v7 = @" TORN DOWN";
  }

  v8 = [NSString stringWithFormat:@"%@<%p>: %@%@", v4, self, mDebugName, v7];

  return v8;
}

- (void)teardown
{
  [(CRLEditorController *)self p_beginTransaction];
  firstObject = [(NSMutableArray *)self->mEditorStack firstObject];
  v4 = [(NSMutableArray *)self->mEditorStack copy];
  [(CRLEditorController *)self p_popEditor:firstObject];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 tearDown];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CRLEditorController *)self p_endTransaction];
}

- (CRLTextInputEditor)textInputEditor
{
  WeakRetained = objc_loadWeakRetained(&self->mTextInputEditor);

  return WeakRetained;
}

- (CRLSelectionPath)selectionPath
{
  if (![(NSMutableArray *)self->mEditorStack count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339C08();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101339C1C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339CAC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLEditorController selectionPath]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:123 isFatal:0 description:"Asking a torn-down editor controller for its current selection."];
  }

  mSelectionPath = self->mSelectionPath;

  return mSelectionPath;
}

- (BOOL)isChangingSelection
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339CD4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101339CE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339D78();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLEditorController isChangingSelection]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:129 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  return self->mReentrancyValue > 0;
}

- (void)setSelectionPath:(id)path withFlags:(unint64_t)flags
{
  pathCopy = path;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339DA0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101339DB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339E44();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_101339E6C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:138 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if ([(CRLEditorController *)self selectionChangeDisabled])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A5D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A5F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A688();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    v13 = "Cannot set the selection while the canvas is doing background layout!";
    v14 = v11;
    v15 = v12;
    v16 = 141;
LABEL_21:
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:v16 isFatal:0 description:v13];

    goto LABEL_197;
  }

  if (!pathCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A4F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A518();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A5A8();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v34);
    }

    pathCopy = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:pathCopy file:v11 lineNumber:146 isFatal:0 description:"Should never set a nil selection path on the editor controller!"];
    goto LABEL_197;
  }

  if (![(NSMutableArray *)self->mEditorStack count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A410();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A438();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A4C8();
    }

    v35 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v35);
    }

    v11 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    v13 = "Should never set a selection on an editor controller that has already been torn down! It won't work.";
    v14 = v11;
    v15 = v12;
    v16 = 153;
    goto LABEL_21;
  }

  v143 = pathCopy;
  if (self->mReentrancyValue)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339F10();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_101339F38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339FC8();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101339E6C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:157 isFatal:0 description:"re-entrant call to CRLEditorController"];

    mReentrancyValue = self->mReentrancyValue;
    self->mReentrancyValue = mReentrancyValue + 1;
    if (mReentrancyValue)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101339FF0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133A018();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133A0A8();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v22);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Intentionally crashing for reentrant setSelectionPath: call to avoid mangled state", v23, v24, v25, v26, v27, v28, v29, "[CRLEditorController setSelectionPath:withFlags:]");
      v30 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:169 isFatal:1 description:"Intentionally crashing for reentrant setSelectionPath: call to avoid mangled state"];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, v33);
      abort();
    }
  }

  else
  {
    self->mReentrancyValue = 1;
  }

  v11 = +[NSMutableArray array];
  v36 = self->mSelectionPath;
  selectionPath = [(CRLEditorController *)self selectionPath];
  v38 = [pathCopy isEqual:selectionPath];

  if (flags & 0x400) == 0 && (v38)
  {
    v39 = 0;
    goto LABEL_194;
  }

  selectionPath2 = [(CRLEditorController *)self selectionPath];
  v41 = [pathCopy isEqual:selectionPath2];

  if (qword_101AD5C68 != -1)
  {
    sub_10133A0D0();
  }

  v42 = off_1019EEB30;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_10133A0F8(self, pathCopy, v42);
  }

  v43 = v41 ^ 1;

  v146 = +[NSMutableArray array];
  orderedSelections = [(CRLSelectionPath *)v36 orderedSelections];
  p_mSelectionPath = &self->mSelectionPath;
  if (![orderedSelections count])
  {
    orderedSelections2 = [pathCopy orderedSelections];
    v71 = [orderedSelections2 count];

    if (!v71)
    {
      goto LABEL_71;
    }

    orderedSelections = [pathCopy selectionAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133A218();
      }

      v72 = off_1019EDA68;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_10133A240();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133A2D0();
      }

      v73 = off_1019EDA68;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_101339E6C();
      }

      v74 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
      v75 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
      [CRLAssertionHandler handleFailureInFunction:v74 file:v75 lineNumber:218 isFatal:0 description:"Least specific selection MUST be a board selection. Selection path is malformed. %@", pathCopy];
    }
  }

LABEL_71:
  v140 = v43;
  orderedSelections3 = [pathCopy orderedSelections];
  [orderedSelections3 objectEnumerator];
  v47 = v46 = self;

  nextObject = [v47 nextObject];
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v141 = v46;
  currentEditors = [(CRLEditorController *)v46 currentEditors];
  objectEnumerator = [currentEditors objectEnumerator];

  v51 = [objectEnumerator countByEnumeratingWithState:&v167 objects:v182 count:16];
  v142 = v11;
  v138 = v36;
  if (!v51)
  {
    v53 = 0;
    v139 = 0;
    goto LABEL_108;
  }

  v52 = v51;
  v53 = 0;
  v54 = *v168;
  nextObject2 = nextObject;
  v153 = v47;
LABEL_73:
  v56 = 0;
  while (1)
  {
    nextObject = nextObject2;
    if (*v168 != v54)
    {
      objc_enumerationMutation(objectEnumerator);
    }

    v57 = *(*(&v167 + 1) + 8 * v56);
    currentEditors2 = [(CRLEditorController *)v141 currentEditors];
    v59 = [currentEditors2 objectAtIndex:0];

    if (v57 == v59)
    {
      if (nextObject)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v62 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10133A2F8();
          }

          v63 = off_1019EDA68;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *v175 = v62;
            *&v175[4] = 2082;
            *&v175[6] = "[CRLEditorController setSelectionPath:withFlags:]";
            *&v175[14] = 2082;
            *&v175[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m";
            *&v175[24] = 1024;
            *&v175[26] = 234;
            v176 = 2112;
            v177 = v143;
            _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Least specific selection MUST be a board selection. Selection path is malformed. %@", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10133A320();
          }

          v64 = v53;
          v65 = off_1019EDA68;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v68 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *v175 = v62;
            *&v175[4] = 2114;
            *&v175[6] = v68;
            _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v66 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
          v67 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
          [CRLAssertionHandler handleFailureInFunction:v66 file:v67 lineNumber:234 isFatal:0 description:"Least specific selection MUST be a board selection. Selection path is malformed. %@", v143];

          v53 = v64;
          v47 = v153;
        }
      }

      goto LABEL_79;
    }

    if (!nextObject || ([v57 shouldRemainOnEditorStackForSelection:nextObject inSelectionPath:v143 withNewEditors:v146] & 1) == 0)
    {
      break;
    }

LABEL_79:
    v60 = v57;

    nextObject2 = [v47 nextObject];

    v61 = v60;
    v53 = v61;
    [v146 addObject:v61];
    if (v52 == ++v56)
    {
      v69 = [objectEnumerator countByEnumeratingWithState:&v167 objects:v182 count:16];
      v52 = v69;
      if (!v69)
      {
        v139 = 0;
        nextObject = nextObject2;
        goto LABEL_95;
      }

      goto LABEL_73;
    }
  }

  v139 = v57;
  v140 = 1;
LABEL_95:
  v11 = v142;
  v36 = v138;
LABEL_108:

  pathCopy = v143;
  v154 = v53;
  if (nextObject)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v53 shouldDiscardAllSubselectionsStartingWithSelection:nextObject withNewEditorStack:v146 selectionPath:v143])
    {
      [v143 selectionPathPoppingOffSelection:nextObject];
      pathCopy = v76 = v143;
      v77 = p_mSelectionPath;
    }

    else
    {
      v78 = [v53 nextEditorForSelection:nextObject withNewEditorStack:v146 selectionPath:v143];
      if (v78)
      {
        v79 = v78;
        v77 = p_mSelectionPath;
        while (1)
        {
          [v146 addObject:v79];
          if (v47)
          {
            nextObject3 = [v47 nextObject];

            nextObject = nextObject3;
            if (!nextObject3)
            {
              v76 = v79;
              goto LABEL_141;
            }
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v79 shouldDiscardAllSubselectionsStartingWithSelection:nextObject withNewEditorStack:v146 selectionPath:v143])
          {
            v90 = [v143 selectionPathPoppingOffSelection:nextObject];

            v76 = v79;
            pathCopy = v90;
            goto LABEL_141;
          }

          v76 = v79;
          v79 = [v76 nextEditorForSelection:nextObject withNewEditorStack:v146 selectionPath:v143];

          if (!v79)
          {
            break;
          }
        }

        v85 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133A348();
        }

        v86 = off_1019EDA68;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110658;
          *v175 = v85;
          *&v175[4] = 2082;
          *&v175[6] = "[CRLEditorController setSelectionPath:withFlags:]";
          *&v175[14] = 2082;
          *&v175[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m";
          *&v175[24] = 1024;
          *&v175[26] = 307;
          v176 = 2112;
          v177 = v76;
          v178 = 2112;
          v179 = nextObject;
          v180 = 2112;
          v181 = v143;
          _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d oldEditor %@ didn't push editor for selection %@ in selection path %@", buf, 0x40u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133A370();
        }

        v87 = off_1019EDA68;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v136 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          *v175 = v85;
          *&v175[4] = 2114;
          *&v175[6] = v136;
          _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v88 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
        v89 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
        pathCopy = v143;
        [CRLAssertionHandler handleFailureInFunction:v88 file:v89 lineNumber:307 isFatal:0 description:"oldEditor %@ didn't push editor for selection %@ in selection path %@", v76, nextObject, v143];

        v11 = v142;
LABEL_141:
        v53 = v154;
      }

      else
      {
        v81 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        v77 = p_mSelectionPath;
        if (qword_101AD5A10 != -1)
        {
          sub_10133A398();
        }

        v82 = off_1019EDA68;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110658;
          *v175 = v81;
          *&v175[4] = 2082;
          *&v175[6] = "[CRLEditorController setSelectionPath:withFlags:]";
          *&v175[14] = 2082;
          *&v175[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m";
          *&v175[24] = 1024;
          *&v175[26] = 277;
          v176 = 2112;
          v177 = v53;
          v178 = 2112;
          v179 = nextObject;
          v180 = 2112;
          v181 = v143;
          _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d oldEditor %@ didn't push editor for selection %@ in selection path %@", buf, 0x40u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133A3C0();
        }

        v83 = off_1019EDA68;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_101339E6C();
        }

        v76 = [NSString stringWithUTF8String:"[CRLEditorController setSelectionPath:withFlags:]"];
        v84 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
        pathCopy = v143;
        [CRLAssertionHandler handleFailureInFunction:v76 file:v84 lineNumber:277 isFatal:0 description:"oldEditor %@ didn't push editor for selection %@ in selection path %@", v53, nextObject, v143];
      }
    }
  }

  else
  {
    v77 = p_mSelectionPath;
  }

  if (v53)
  {
    orderedSelections4 = [(CRLSelectionPath *)v36 orderedSelections];
    objectEnumerator2 = [orderedSelections4 objectEnumerator];

    nextObject4 = [objectEnumerator2 nextObject];
    orderedSelections5 = [pathCopy orderedSelections];
    objectEnumerator3 = [orderedSelections5 objectEnumerator];

    v151 = objectEnumerator3;
    nextObject5 = [objectEnumerator3 nextObject];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    obj = [v146 objectEnumerator];
    v97 = [obj countByEnumeratingWithState:&v163 objects:v173 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = 0;
      v149 = *v164;
      do
      {
        v100 = 0;
        v101 = nextObject4;
        v102 = nextObject5;
        do
        {
          if (*v164 != v149)
          {
            objc_enumerationMutation(obj);
          }

          v103 = *(*(&v163 + 1) + 8 * v100);
          if (v101 | v102 && ([v101 isEqual:v102] & 1) == 0)
          {
            v104 = [v103 selectionWillChangeFromSelection:v101 toSelection:v102 withFlags:flags inSelectionPath:pathCopy withNewEditors:v146];
            v105 = v104;
            if (v104 && ([v104 isEqual:v102] & 1) == 0)
            {
              if (qword_101AD5C70 != -1)
              {
                sub_10133A3E8();
              }

              v106 = off_1019EEB38;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                *v175 = v103;
                *&v175[8] = 2112;
                *&v175[10] = v102;
                *&v175[18] = 2112;
                *&v175[20] = v105;
                _os_log_debug_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEBUG, "editor %@ modified its selection component from %@ to %@", buf, 0x20u);
              }

              orderedSelections6 = [pathCopy orderedSelections];
              v144 = pathCopy;
              v108 = [orderedSelections6 mutableCopy];

              [v108 replaceObjectAtIndex:v99 withObject:v105];
              v109 = [CRLSelectionPath selectionPathWithSelectionArray:v108];

              pathCopy = v109;
              v11 = v142;
            }

            [v11 addObject:v103];
          }

          if (v103 == v154)
          {

            nextObject4 = 0;
            objectEnumerator2 = 0;
          }

          else
          {
            nextObject4 = [objectEnumerator2 nextObject];
          }

          nextObject5 = [v151 nextObject];

          ++v99;
          v100 = v100 + 1;
          v101 = nextObject4;
          v102 = nextObject5;
        }

        while (v98 != v100);
        v98 = [obj countByEnumeratingWithState:&v163 objects:v173 count:16];
      }

      while (v98);
    }

    v77 = p_mSelectionPath;
    v36 = v138;
  }

  v150 = v139 != 0;
  self = v141;
  v39 = v140;
  if (v139)
  {
    [(CRLEditorController *)v141 p_popEditor:?];
  }

  objc_storeStrong(v77, pathCopy);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v152 = v146;
  v110 = [v152 countByEnumeratingWithState:&v159 objects:v172 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v160;
    do
    {
      for (i = 0; i != v111; i = i + 1)
      {
        if (*v160 != v112)
        {
          objc_enumerationMutation(v152);
        }

        v114 = *(*(&v159 + 1) + 8 * i);
        if (([(NSMutableArray *)v141->mEditorStack containsObject:v114]& 1) == 0)
        {
          [(CRLEditorController *)v141 p_pushEditor:v114];
          v150 = 1;
        }
      }

      v111 = [v152 countByEnumeratingWithState:&v159 objects:v172 count:16];
    }

    while (v111);
  }

  v115 = v154;
  if (v154)
  {
    v145 = pathCopy;
    orderedSelections7 = [(CRLSelectionPath *)v36 orderedSelections];
    objectEnumerator4 = [orderedSelections7 objectEnumerator];

    nextObject6 = [objectEnumerator4 nextObject];
    orderedSelections8 = [*v77 orderedSelections];
    objectEnumerator5 = [orderedSelections8 objectEnumerator];

    nextObject7 = [objectEnumerator5 nextObject];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    objectEnumerator6 = [v152 objectEnumerator];
    v123 = [objectEnumerator6 countByEnumeratingWithState:&v155 objects:v171 count:16];
    if (v123)
    {
      v124 = v123;
      v125 = *v156;
      do
      {
        v126 = 0;
        v127 = nextObject6;
        v128 = nextObject7;
        do
        {
          if (*v156 != v125)
          {
            objc_enumerationMutation(objectEnumerator6);
          }

          v129 = *(*(&v155 + 1) + 8 * v126);
          if (v127 | v128 && ([v127 isEqual:v128] & 1) == 0)
          {
            [v129 selectionDidChangeFromSelection:v127 toSelection:v128 withFlags:flags];
          }

          if (v129 == v154)
          {

            objectEnumerator4 = 0;
            nextObject6 = 0;
          }

          else
          {
            nextObject6 = [objectEnumerator4 nextObject];
          }

          nextObject7 = [objectEnumerator5 nextObject];

          v126 = v126 + 1;
          v127 = nextObject6;
          v128 = nextObject7;
        }

        while (v124 != v126);
        v124 = [objectEnumerator6 countByEnumeratingWithState:&v155 objects:v171 count:16];
      }

      while (v124);
    }

    v11 = v142;
    pathCopy = v145;
    self = v141;
    v36 = v138;
    v39 = v140;
    v115 = v154;
  }

  [(CRLEditorController *)self p_refreshTextInputEditorWithFlags:flags];
  if (v150)
  {
    [(CRLEditorController *)self p_didChangeCurrentEditors];
  }

LABEL_194:
  --self->mReentrancyValue;
  [(CRLEditorController *)self notifyResignedTextInputEditors];
  if (v39)
  {
    v130 = [NSDictionary alloc];
    v131 = [NSNumber numberWithUnsignedInteger:flags];
    v132 = [v130 initWithObjectsAndKeys:{v131, @"CRLEditorControllerSelectionFlagsKey", v11, @"CRLEditorControllerEditorsKey", v36, @"CRLEditorControllerOldSelectionPathKey", 0}];

    v133 = +[NSNotificationCenter defaultCenter];
    [v133 postNotificationName:@"CRLEditorControllerSelectionPathDidChangeNotification" object:self userInfo:v132];
  }

  v134 = [(NSMutableArray *)self->mBlocksToPerform copy];
  mBlocksToPerform = self->mBlocksToPerform;
  self->mBlocksToPerform = 0;

  [v134 makeObjectsPerformSelector:"invoke"];
LABEL_197:
}

- (void)performBlockAfterSettingSelection:(id)selection
{
  selectionCopy = selection;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A6B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A6C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A754();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLEditorController performBlockAfterSettingSelection:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:424 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (!selectionCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A77C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A7A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A834();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLEditorController performBlockAfterSettingSelection:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:425 isFatal:0 description:"Should send in a non-nil block to this method."];
    goto LABEL_27;
  }

  if (self->mReentrancyValue)
  {
    mBlocksToPerform = self->mBlocksToPerform;
    if (mBlocksToPerform)
    {
      v9 = mBlocksToPerform;
    }

    else
    {
      v9 = objc_alloc_init(NSMutableArray);
    }

    v13 = self->mBlocksToPerform;
    self->mBlocksToPerform = v9;

    v14 = self->mBlocksToPerform;
    v11 = [selectionCopy copy];
    v12 = objc_retainBlock(v11);
    [(NSMutableArray *)v14 addObject:v12];
LABEL_27:

    goto LABEL_28;
  }

  selectionCopy[2](selectionCopy);
LABEL_28:
}

- (void)setSelection:(id)selection forEditor:(id)editor withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  v12 = [(CRLEditorController *)self selectionForEditor:editor];
  selectionPath = [(CRLEditorController *)self selectionPath];
  v10 = [selectionPath selectionPathPoppingOffSelection:v12];

  v11 = [v10 selectionPathWithAppendedSelection:selectionCopy];

  [(CRLEditorController *)self setSelectionPath:v11 withFlags:flags];
}

- (void)setSelectionPathToPopEditor:(id)editor
{
  v4 = [(CRLEditorController *)self selectionPathToPopEditor:editor];
  [(CRLEditorController *)self setSelectionPath:v4];
}

- (void)setSelectionPathToPopToEditor:(id)editor
{
  editorCopy = editor;
  selectionPath = [(CRLEditorController *)self selectionPath];
  orderedSelections = [selectionPath orderedSelections];

  v6 = [(CRLEditorController *)self selectionForEditor:editorCopy];

  v7 = [orderedSelections indexOfObject:v6];
  if (v7 < [orderedSelections count] - 1)
  {
    v8 = [orderedSelections objectAtIndex:v7 + 1];
    selectionPath2 = [(CRLEditorController *)self selectionPath];
    v10 = [selectionPath2 selectionPathPoppingOffSelection:v8];

    [(CRLEditorController *)self setSelectionPath:v10];
  }
}

- (void)pushSelection:(id)selection
{
  selectionCopy = selection;
  if (!selectionCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A85C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A870();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A90C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLEditorController pushSelection:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:466 isFatal:0 description:"invalid nil value for '%{public}s'", "selection"];
  }

  selectionPath = [(CRLEditorController *)self selectionPath];
  v9 = [selectionPath selectionPathWithAppendedSelection:selectionCopy];
  [(CRLEditorController *)self setSelectionPath:v9];
}

- (id)selectionForEditor:(id)editor
{
  editorCopy = editor;
  if (!editorCopy)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_14;
  }

  v5 = [(NSMutableArray *)self->mEditorStack indexOfObject:editorCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133A934();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133A948();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133A9D8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLEditorController selectionForEditor:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:475 isFatal:0 description:"Editor %@ must be on the stack to retrieve its associated selection", editorCopy];

    goto LABEL_12;
  }

  v10 = v5;
  selectionPath = [(CRLEditorController *)self selectionPath];
  v9 = [selectionPath selectionAtIndex:v10];

LABEL_14:

  return v9;
}

- (id)selectionPathToPopEditor:(id)editor
{
  v4 = [(CRLEditorController *)self selectionForEditor:editor];
  if (v4)
  {
    selectionPath = [(CRLEditorController *)self selectionPath];
    v6 = [selectionPath selectionPathPoppingOffSelection:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)refreshTextInputEditor
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133AA00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133AA14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133AAA4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLEditorController refreshTextInputEditor]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:495 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLEditorController *)self p_refreshTextInputEditorWithFlags:0];
}

- (id)editorForEditAction:(SEL)action withSender:(id)sender response:(int64_t *)response
{
  senderCopy = sender;
  editingDisabledReasons = [(CRLEditorController *)self editingDisabledReasons];
  editingCoordinator = [(CRLEditorController *)self editingCoordinator];
  canPerformUserAction = [editingCoordinator canPerformUserAction];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    responseCopy = response;
    v13 = editingDisabledReasons | canPerformUserAction ^ 1;
    v14 = *v28;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      if (objc_opt_respondsToSelector())
      {
        if (!v13 || ((objc_opt_respondsToSelector() & 1) == 0 ? (v17 = 0) : ([v16 permittedActionsForReasons:v13], v17 = objc_claimAutoreleasedReturnValue()), NSStringFromSelector(action), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "containsObject:", v18), v18, v17, v19))
        {
          v20 = [v16 canPerformEditorAction:action withSender:{senderCopy, responseCopy}];
          if (v20)
          {
            break;
          }
        }
      }

      if (v12 == ++v15)
      {
        v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        v21 = 0;
        goto LABEL_19;
      }
    }

    v21 = v20;
    if (v20 == 1)
    {
      v22 = v16;
      goto LABEL_20;
    }

LABEL_19:
    v22 = 0;
LABEL_20:
    response = responseCopy;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (response)
  {
    *response = v21;
  }

  return v22;
}

- (BOOL)anyEditorProhibitsAction:(SEL)action
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 shouldProhibitAction:action])
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)p_pushEditor:(id)editor
{
  editorCopy = editor;
  if (qword_101AD5C70 != -1)
  {
    sub_10133AACC();
  }

  v5 = off_1019EEB38;
  if (os_log_type_enabled(off_1019EEB38, OS_LOG_TYPE_DEBUG))
  {
    sub_10133AAE0(editorCopy, v5, v6, v7, v8, v9, v10, v11);
    if (editorCopy)
    {
      goto LABEL_5;
    }
  }

  else if (editorCopy)
  {
LABEL_5:
    if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editorCopy]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133AB4C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133AB74();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133AC04();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLEditorController p_pushEditor:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:603 isFatal:0 description:"shouldn't push the same editor twice"];
    }

    if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editorCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->mEditorStack addObject:editorCopy];
      if (objc_opt_respondsToSelector())
      {
        [editorCopy didBecomeCurrentEditorForEditorController:self];
      }
    }

    goto LABEL_28;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133AC2C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133AC54();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133ACF0();
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v15);
  }

  v16 = [NSString stringWithUTF8String:"[CRLEditorController p_pushEditor:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
  [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:599 isFatal:0 description:"invalid nil value for '%{public}s'", "newEditor"];

LABEL_28:
}

- (void)p_popEditor:(id)editor
{
  editorCopy = editor;
  if (qword_101AD5C70 != -1)
  {
    sub_10133AD18();
  }

  v5 = off_1019EEB38;
  if (os_log_type_enabled(off_1019EEB38, OS_LOG_TYPE_DEBUG))
  {
    sub_10133AD2C(editorCopy, v5, v6, v7, v8, v9, v10, v11);
    if (editorCopy)
    {
      goto LABEL_14;
    }
  }

  else if (editorCopy)
  {
    goto LABEL_14;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133AD98();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133ADC0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133AE5C();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v12);
  }

  v13 = [NSString stringWithUTF8String:"[CRLEditorController p_popEditor:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:619 isFatal:0 description:"invalid nil value for '%{public}s'", "poppedEditor"];

LABEL_14:
  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editorCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133AE84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133AEAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133AF3C();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLEditorController p_popEditor:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:620 isFatal:0 description:"shouldn't pop an editor that isn't on the stack"];
  }

  if (editorCopy && [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editorCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(NSMutableArray *)self->mEditorStack count]+ 1;
    do
    {
      if (!--v18)
      {
        break;
      }

      lastObject = [(NSMutableArray *)self->mEditorStack lastObject];
      WeakRetained = objc_loadWeakRetained(&self->mTextInputEditor);

      if (lastObject == WeakRetained)
      {
        if (objc_opt_respondsToSelector())
        {
          [lastObject willResignTextInputEditor];
        }

        v21 = objc_loadWeakRetained(&self->mTextInputEditor);

        if (v21)
        {
          mResignedTextInputEditors = self->mResignedTextInputEditors;
          v23 = objc_loadWeakRetained(&self->mTextInputEditor);
          [(NSMutableArray *)mResignedTextInputEditors addObject:v23];
        }

        objc_storeWeak(&self->mTextInputEditor, 0);
      }

      if (objc_opt_respondsToSelector())
      {
        [lastObject willResignCurrentEditor];
      }

      [(NSMutableArray *)self->mEditorStack removeLastObject];
    }

    while (lastObject != editorCopy);
  }
}

- (void)p_endTransaction
{
  mTransactionLevel = self->mTransactionLevel;
  if (mTransactionLevel)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133AF64();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133AF78();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133B008();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLEditorController p_endTransaction]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:660 isFatal:0 description:"unbalanced endTransaction"];

  mTransactionLevel = self->mTransactionLevel;
  if (mTransactionLevel)
  {
LABEL_11:
    v7 = mTransactionLevel - 1;
    self->mTransactionLevel = v7;
    if (!v7)
    {
      if (self->mDidChangeTextInputEditor)
      {
        [(CRLEditorController *)self p_didChangeTextInputEditor];
        self->mDidChangeTextInputEditor = 0;
      }

      if (self->mDidChangeCurrentEditors)
      {
        [(CRLEditorController *)self p_didChangeCurrentEditors];
        self->mDidChangeCurrentEditors = 0;
      }
    }
  }
}

- (void)notifyResignedTextInputEditors
{
  if (!self->mIsReentrantResigningTextInputEditors)
  {
    self->mIsReentrantResigningTextInputEditors = 1;
    if ([(NSMutableArray *)self->mResignedTextInputEditors count])
    {
      v3 = 0;
      do
      {
        v4 = [(NSMutableArray *)self->mResignedTextInputEditors objectAtIndex:v3];
        if (objc_opt_respondsToSelector())
        {
          [v4 didResignTextInputEditor];
        }

        ++v3;
      }

      while (v3 < [(NSMutableArray *)self->mResignedTextInputEditors count]);
    }

    [(NSMutableArray *)self->mResignedTextInputEditors removeAllObjects];
    self->mIsReentrantResigningTextInputEditors = 0;
  }
}

- (void)enumerateEditorsOnStackUsingBlock:(id)block
{
  mEditorStack = self->mEditorStack;
  blockCopy = block;
  reverseObjectEnumerator = [(NSMutableArray *)mEditorStack reverseObjectEnumerator];
  [(CRLEditorController *)self p_enumerateEditorsWithEnumerator:reverseObjectEnumerator usingBlock:blockCopy];
}

- (void)enumerateEditorsOnStackLeastToMostSpecificUsingBlock:(id)block
{
  mEditorStack = self->mEditorStack;
  blockCopy = block;
  objectEnumerator = [(NSMutableArray *)mEditorStack objectEnumerator];
  [(CRLEditorController *)self p_enumerateEditorsWithEnumerator:objectEnumerator usingBlock:blockCopy];
}

- (void)p_enumerateEditorsWithEnumerator:(id)enumerator usingBlock:(id)block
{
  enumeratorCopy = enumerator;
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = enumeratorCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11), &v16);
      if (v16)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)currentEditorsOfClass:(Class)class
{
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->mEditorStack;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)mostSpecificCurrentEditorOfClass:(Class)class
{
  if (class)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
    v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            lastObject = v8;

            goto LABEL_13;
          }
        }

        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    lastObject = 0;
  }

  else
  {
    lastObject = [(NSMutableArray *)self->mEditorStack lastObject];
  }

LABEL_13:

  return lastObject;
}

- (id)mostSpecificCurrentEditorOfClass:(Class)class conformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!class || (objc_opt_isKindOfClass()) && ([v12 conformsToProtocol:protocolCopy])
        {
          v13 = v12;
          goto LABEL_13;
        }
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)currentEditorsConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->mEditorStack;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:{protocolCopy, v13}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)editorDidChangeSelectionAndWantsKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (!keyboardCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133B030();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133B044();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133B0E0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLEditorController editorDidChangeSelectionAndWantsKeyboard:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLEditorController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:789 isFatal:0 description:"invalid nil value for '%{public}s'", "editor"];
  }

  if (qword_101AD5C70 != -1)
  {
    sub_10133B108();
  }

  v8 = off_1019EEB38;
  if (os_log_type_enabled(off_1019EEB38, OS_LOG_TYPE_DEBUG))
  {
    sub_10133B130(keyboardCopy, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 postNotificationName:@"CRLEditorControllerSelectionDidChangeAndWantsKeyboard" object:self userInfo:0];
}

- (void)p_refreshTextInputEditorWithFlags:(unint64_t)flags
{
  WeakRetained = objc_loadWeakRetained(&self->mTextInputEditor);
  objc_storeWeak(&self->mTextInputEditor, 0);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 shouldBecomeTextInputEditor] && objc_msgSend(v10, "conformsToProtocol:", &OBJC_PROTOCOL____TtP8Freeform18CRLTextInputEditor_))
        {
          v11 = objc_opt_class();
          v17 = sub_1003038E0(v10, v11, 1, v12, v13, v14, v15, v16, &OBJC_PROTOCOL____TtP8Freeform18CRLTextInputEditor_);
          objc_storeWeak(&self->mTextInputEditor, v17);

          goto LABEL_13;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = objc_loadWeakRetained(&self->mTextInputEditor);
  if (WeakRetained != v18)
  {
    if (qword_101AD5C70 != -1)
    {
      sub_10133B19C();
    }

    v19 = off_1019EEB38;
    if (os_log_type_enabled(off_1019EEB38, OS_LOG_TYPE_DEBUG))
    {
      v29 = v19;
      v30 = objc_loadWeakRetained(&self->mTextInputEditor);
      *buf = 134218498;
      selfCopy = self;
      v40 = 2112;
      v41 = WeakRetained;
      v42 = 2112;
      v43 = v30;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%p Change text input editor from %@ to %@", buf, 0x20u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained willResignTextInputEditor];
    }

    if (WeakRetained)
    {
      [(NSMutableArray *)self->mResignedTextInputEditors addObject:WeakRetained];
    }

    v20 = objc_loadWeakRetained(&self->mTextInputEditor);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->mTextInputEditor);
      [v22 didBecomeTextInputEditor];

      v23 = objc_loadWeakRetained(&self->mTextInputEditor);
      if (v23)
      {
        mResignedTextInputEditors = self->mResignedTextInputEditors;
        v25 = objc_loadWeakRetained(&self->mTextInputEditor);
        [(NSMutableArray *)mResignedTextInputEditors removeObject:v25];
      }
    }

    v36 = @"CRLEditorControllerSelectionFlagsKey";
    v26 = [NSNumber numberWithUnsignedLongLong:flags];
    v37 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 postNotificationName:@"CRLEditorControllerDidChangeTextInputEditor" object:self userInfo:v27];
  }
}

- (void)p_didChangeTextInputEditor
{
  if (self->mTransactionLevel)
  {
    self->mDidChangeTextInputEditor = 1;
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"CRLEditorControllerDidChangeTextInputEditor" object:self];
  }
}

- (void)p_didChangeCurrentEditors
{
  if (self->mTransactionLevel)
  {
    self->mDidChangeCurrentEditors = 1;
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"CRLEditorControllerDidChangeCurrentEditors" object:self];
  }
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->mEditingCoordinator);

  return WeakRetained;
}

@end