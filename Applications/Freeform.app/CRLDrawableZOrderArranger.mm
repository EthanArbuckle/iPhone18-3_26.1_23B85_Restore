@interface CRLDrawableZOrderArranger
- (BOOL)canBringDrawablesForward;
- (BOOL)canSendDrawablesBackward;
- (BOOL)isZOrderChangeRecord:(id)record;
- (BOOL)p_forcesPlacementOnBottom:(id)bottom;
- (BOOL)p_forcesPlacementOnTop:(id)top;
- (BOOL)p_usingRelativeZOrder;
- (CRLCanvasEditor)canvasEditor;
- (CRLDrawableZOrderArranger)init;
- (CRLDrawableZOrderArranger)initWithCanvasEditor:(id)editor;
- (id)commandToSetZOrderOfInfos:(id)infos toIndexes:(id)indexes coalesceable:(BOOL)coalesceable;
- (id)p_selectedInfos;
- (id)p_zOrderSiblings;
- (id)p_zOrderSiblingsForRelativeOrder;
- (id)p_zOrderedSelectedObjects;
- (unint64_t)currentZValueForArrangeInspector;
- (unint64_t)indexOfNextHigherCanvasObject;
- (unint64_t)indexOfNextLowerCanvasObject;
- (unint64_t)maxZValueForArrangeInspector;
- (unint64_t)minZValueForArrangeInspector;
- (unint64_t)p_indexOfChildren:(id)children inContainer:(id)container;
- (unint64_t)p_maxIndex;
- (unint64_t)p_maxRelativeZValueOfChildrenInTopLevelContainer:(id)container;
- (unint64_t)p_maxZValueOfChildren:(id)children inContainer:(id)container;
- (unint64_t)p_minIndex;
- (unint64_t)p_minZValueOfChildren:(id)children inContainer:(id)container;
- (unint64_t)p_relativeIndexOfChildrenInTopLevelContainer:(id)container;
- (unint64_t)p_zOrderIndex;
- (void)arrangeInspectorDidEndChangingZValue;
- (void)arrangeInspectorDidSetZValue:(unint64_t)value forContainer:(id)container;
- (void)arrangeInspectorWillBeginChangingZValue;
- (void)moveBackForArrangeInspector;
- (void)moveFrontForArrangeInspector;
- (void)moveToBackForArrangeInspector;
- (void)moveToFrontForArrangeInspector;
- (void)registerTargetForChanges:(id)changes;
- (void)unregisterTargetForChanges:(id)changes;
@end

@implementation CRLDrawableZOrderArranger

- (CRLDrawableZOrderArranger)initWithCanvasEditor:(id)editor
{
  editorCopy = editor;
  v8.receiver = self;
  v8.super_class = CRLDrawableZOrderArranger;
  v5 = [(CRLDrawableZOrderArranger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mCanvasEditor, editorCopy);
  }

  return v6;
}

- (CRLDrawableZOrderArranger)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018723F0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLDrawableZOrderArranger init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m";
    v18 = 1024;
    v19 = 28;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101872410);
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

  v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:28 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLDrawableZOrderArranger init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)commandToSetZOrderOfInfos:(id)infos toIndexes:(id)indexes coalesceable:(BOOL)coalesceable
{
  infosCopy = infos;
  indexesCopy = indexes;
  v9 = [_TtC8Freeform34CRLCommandReorderContainerChildren alloc];
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  board = [interactiveCanvasController board];
  rootContainer = [board rootContainer];
  v14 = [(CRLCommandReorderContainerChildren *)v9 initWithParentContainer:rootContainer childrenToMove:infosCopy targetIndices:indexesCopy];

  return v14;
}

- (void)registerTargetForChanges:(id)changes
{
  changesCopy = changes;
  canvasEditor = [(CRLDrawableZOrderArranger *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  changeNotifier = [interactiveCanvasController changeNotifier];
  [changeNotifier addObserver:changesCopy forChangeSourceOfClass:objc_opt_class()];
}

- (void)unregisterTargetForChanges:(id)changes
{
  changesCopy = changes;
  canvasEditor = [(CRLDrawableZOrderArranger *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  changeNotifier = [interactiveCanvasController changeNotifier];
  [changeNotifier removeObserver:changesCopy forChangeSourceOfClass:objc_opt_class()];
}

- (BOOL)isZOrderChangeRecord:(id)record
{
  recordCopy = record;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([recordCopy kind] == 1)
  {
    details = [recordCopy details];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B09E8;
    v7[3] = &unk_10184D300;
    v7[4] = &v8;
    [details enumeratePropertiesUsingBlock:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)minZValueForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BF00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BF14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139BF9C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger minZValueForArrangeInspector]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:64 isFatal:0 description:"Cannot get the current min z-value for a cross-container selection"];
  }

  return [(CRLDrawableZOrderArranger *)self p_minIndex];
}

- (unint64_t)maxZValueForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BFC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BFD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C060();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger maxZValueForArrangeInspector]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:70 isFatal:0 description:"Cannot get the current max z-value for a cross-container selection"];
  }

  return [(CRLDrawableZOrderArranger *)self p_maxIndex];
}

- (unint64_t)currentZValueForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C088();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C09C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C124();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger currentZValueForArrangeInspector]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:76 isFatal:0 description:"Cannot get the current z-value for a cross-container selection"];
  }

  result = [(CRLDrawableZOrderArranger *)self p_zOrderIndex];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(CRLDrawableZOrderArranger *)self p_minIndex];
  }

  return result;
}

- (BOOL)canSendDrawablesBackward
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  if (![interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v16 = [p_selectedInfos count];

    if (v16 < 2)
    {
      p_selectedInfos2 = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
      v19 = [p_selectedInfos2 count];

      if (v19 == 1)
      {
        indexOfNextLowerCanvasObject = [(CRLDrawableZOrderArranger *)self indexOfNextLowerCanvasObject];
        v17 = currentZValueForArrangeInspector != 0x7FFFFFFFFFFFFFFFLL && currentZValueForArrangeInspector > indexOfNextLowerCanvasObject;
        goto LABEL_21;
      }
    }

    else if (currentZValueForArrangeInspector != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = currentZValueForArrangeInspector > [(CRLDrawableZOrderArranger *)self minZValueForArrangeInspector];
LABEL_21:
      v13 = v17;
      goto LABEL_25;
    }

    v13 = 0;
    goto LABEL_25;
  }

  p_selectedInfos3 = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  containersForSelection = [interactiveCanvasController containersForSelection];
  v7 = [containersForSelection countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(containersForSelection);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos3 inContainer:v11];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 > [(CRLDrawableZOrderArranger *)self p_minZValueOfChildren:p_selectedInfos3 inContainer:v11])
        {
          v13 = 1;
          goto LABEL_16;
        }
      }

      v8 = [containersForSelection countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

LABEL_25:
  return v13;
}

- (BOOL)canBringDrawablesForward
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  if (![interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v16 = [p_selectedInfos count];

    if (v16 < 2)
    {
      p_selectedInfos2 = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
      v19 = [p_selectedInfos2 count];

      if (v19 == 1)
      {
        indexOfNextHigherCanvasObject = [(CRLDrawableZOrderArranger *)self indexOfNextHigherCanvasObject];
        v17 = currentZValueForArrangeInspector == 0x7FFFFFFFFFFFFFFFLL || currentZValueForArrangeInspector >= indexOfNextHigherCanvasObject;
        goto LABEL_21;
      }
    }

    else if (currentZValueForArrangeInspector != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = currentZValueForArrangeInspector >= [(CRLDrawableZOrderArranger *)self maxZValueForArrangeInspector];
LABEL_21:
      v13 = !v17;
      goto LABEL_25;
    }

    v13 = 0;
    goto LABEL_25;
  }

  p_selectedInfos3 = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  containersForSelection = [interactiveCanvasController containersForSelection];
  v7 = [containersForSelection countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(containersForSelection);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos3 inContainer:v11];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 < [(CRLDrawableZOrderArranger *)self p_maxZValueOfChildren:p_selectedInfos3 inContainer:v11])
        {
          v13 = 1;
          goto LABEL_16;
        }
      }

      v8 = [containersForSelection countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

LABEL_25:
  return v13;
}

- (void)arrangeInspectorWillBeginChangingZValue
{
  self->mCanCoalesceZOrderCommand = 0;
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  [WeakRetained willChangeValueForKey:@"canBringDrawablesForward"];

  v4 = objc_loadWeakRetained(&self->mCanvasEditor);
  [v4 willChangeValueForKey:@"canSendDrawablesBackward"];

  v5 = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [v5 interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController openGroup];

  v10 = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController2 = [v10 interactiveCanvasController];
  commandController2 = [interactiveCanvasController2 commandController];
  [commandController2 enableProgressiveEnqueuingInCurrentGroup];
}

- (void)arrangeInspectorDidSetZValue:(unint64_t)value forContainer:(id)container
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (!containerCopy && hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C14C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C160();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C1E8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger arrangeInspectorDidSetZValue:forContainer:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:147 isFatal:0 description:"If we have a cross-container selection, the container whose z-order is being changed must be specified!"];

    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    goto LABEL_16;
  }

  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  if (!containerCopy)
  {
LABEL_16:
    p_zOrderedSelectedObjects = [(CRLDrawableZOrderArranger *)self p_zOrderedSelectedObjects];
    goto LABEL_17;
  }

  v14 = objc_opt_class();
  childInfos = [containerCopy childInfos];
  v16 = sub_100014370(v14, childInfos);
  v17 = v16;
  v18 = &__NSArray0__struct;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  p_zOrderedSelectedObjects = [v19 crl_arrayWithObjectsInSet:p_selectedInfos];

LABEL_17:
  v21 = [p_zOrderedSelectedObjects count];
  if (v21)
  {
    v22 = v21;
    v23 = [(CRLDrawableZOrderArranger *)self p_minZValueOfChildren:p_selectedInfos inContainer:containerCopy];
    v24 = [(CRLDrawableZOrderArranger *)self p_maxZValueOfChildren:p_selectedInfos inContainer:containerCopy];
    if (v24 < v23)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139C210();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139C238();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139C2C0();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v26 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger arrangeInspectorDidSetZValue:forContainer:]"];
      interactiveCanvasController2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:interactiveCanvasController2 lineNumber:166 isFatal:0 description:"Max index for z-order is below min index! This is not good. Skipping z-order operation entirely."];
LABEL_46:

      goto LABEL_47;
    }

    v28 = v24;
    if ([(CRLDrawableZOrderArranger *)self p_usingRelativeZOrder])
    {
      p_zOrderSiblingsForRelativeOrder = [(CRLDrawableZOrderArranger *)self p_zOrderSiblingsForRelativeOrder];
      v30 = [p_zOrderSiblingsForRelativeOrder objectAtIndexedSubscript:value];

      v31 = [NSSet setWithObject:v30];
      value = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:v31 inContainer:0];
    }

    if (value >= v28)
    {
      valueCopy = v28;
    }

    else
    {
      valueCopy = value;
    }

    if (value >= v23)
    {
      v33 = valueCopy;
    }

    else
    {
      v33 = v23;
    }

    if (v33 != [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:containerCopy])
    {
      v26 = [[NSIndexSet alloc] initWithIndexesInRange:{v33 - v22 + 1, v22}];
      v34 = objc_loadWeakRetained(&self->mCanvasEditor);
      interactiveCanvasController2 = [v34 interactiveCanvasController];

      commandController = [interactiveCanvasController2 commandController];
      if (!containerCopy)
      {
        topLevelContainerInfoForEditing = [interactiveCanvasController2 topLevelContainerInfoForEditing];
        v37 = objc_opt_class();
        containerCopy = sub_1003038E0(topLevelContainerInfoForEditing, v37, 1, v38, v39, v40, v41, v42, &OBJC_PROTOCOL___CRLContainerInfo);

        if (containerCopy)
        {
          v43 = containerCopy;
        }
      }

      v44 = [CRLCanvasCommandSelectionBehavior alloc];
      v45 = objc_loadWeakRetained(&self->mCanvasEditor);
      v46 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:v45 type:2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = objc_opt_class();
        v48 = sub_100013F00(v47, containerCopy);
        v52 = [p_zOrderedSelectedObjects crl_arrayOfObjectsPassingTest:&stru_101872590];
        v49 = v46;
        v50 = commandController;
        v51 = [[_TtC8Freeform34CRLCommandReorderContainerChildren alloc] initWithParentContainer:v48 childrenToMove:v52 targetIndices:v26];
        [v50 enqueueCommand:v51 withSelectionBehavior:v49];
        self->mCanCoalesceZOrderCommand = 1;

        commandController = v50;
        v46 = v49;
      }

      else
      {
        v48 = [(CRLDrawableZOrderArranger *)self commandToSetZOrderOfInfos:p_zOrderedSelectedObjects toIndexes:v26 coalesceable:self->mCanCoalesceZOrderCommand];
        if (v48)
        {
          [commandController enqueueCommand:v48 withSelectionBehavior:v46];
          self->mCanCoalesceZOrderCommand = 1;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_47:
}

- (void)arrangeInspectorDidEndChangingZValue
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  [WeakRetained didChangeValueForKey:@"canBringDrawablesForward"];

  v4 = objc_loadWeakRetained(&self->mCanvasEditor);
  [v4 didChangeValueForKey:@"canSendDrawablesBackward"];

  v7 = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [v7 interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController closeGroup];
}

- (void)moveToBackForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorWillBeginChangingZValue];
  [commandController openGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Send to Back" value:0 table:@"UndoStrings"];

  [commandController setCurrentGroupActionString:v7];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    v19 = v7;
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    containersForSelection = [interactiveCanvasController containersForSelection];
    v10 = [containersForSelection countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(containersForSelection);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:v14];
          v16 = [(CRLDrawableZOrderArranger *)self p_minZValueOfChildren:p_selectedInfos inContainer:v14];
          if (v15 != v16)
          {
            [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:v16 forContainer:v14];
          }
        }

        v11 = [containersForSelection countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v7 = v19;
  }

  else
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    minZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self minZValueForArrangeInspector];
    if (currentZValueForArrangeInspector != minZValueForArrangeInspector)
    {
      [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:minZValueForArrangeInspector forContainer:0];
    }
  }

  [commandController closeGroup];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorDidEndChangingZValue];
}

- (void)moveBackForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorWillBeginChangingZValue];
  [commandController openGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Send Backward" value:0 table:@"UndoStrings"];

  [commandController setCurrentGroupActionString:v7];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    v17 = v7;
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    containersForSelection = [interactiveCanvasController containersForSelection];
    v10 = [containersForSelection countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(containersForSelection);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:v14];
          if (v15 > [(CRLDrawableZOrderArranger *)self p_minZValueOfChildren:p_selectedInfos inContainer:v14])
          {
            [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:v15 - 1 forContainer:v14];
          }
        }

        v11 = [containersForSelection countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v7 = v17;
  }

  else
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    if (currentZValueForArrangeInspector > [(CRLDrawableZOrderArranger *)self minZValueForArrangeInspector])
    {
      [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:[(CRLDrawableZOrderArranger *)self indexOfNextLowerCanvasObject] forContainer:0];
    }
  }

  [commandController closeGroup];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorDidEndChangingZValue];
}

- (void)moveFrontForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorWillBeginChangingZValue];
  [commandController openGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Bring Forward" value:0 table:@"UndoStrings"];

  [commandController setCurrentGroupActionString:v7];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    v17 = v7;
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    containersForSelection = [interactiveCanvasController containersForSelection];
    v10 = [containersForSelection countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(containersForSelection);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:v14];
          if (v15 < [(CRLDrawableZOrderArranger *)self p_maxZValueOfChildren:p_selectedInfos inContainer:v14])
          {
            [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:v15 + 1 forContainer:v14];
          }
        }

        v11 = [containersForSelection countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v7 = v17;
  }

  else
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    if (currentZValueForArrangeInspector < [(CRLDrawableZOrderArranger *)self maxZValueForArrangeInspector])
    {
      [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:[(CRLDrawableZOrderArranger *)self indexOfNextHigherCanvasObject] forContainer:0];
    }
  }

  [commandController closeGroup];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorDidEndChangingZValue];
}

- (void)moveToFrontForArrangeInspector
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  commandController = [interactiveCanvasController commandController];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorWillBeginChangingZValue];
  [commandController openGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Bring to Front" value:0 table:@"UndoStrings"];

  [commandController setCurrentGroupActionString:v7];
  if ([interactiveCanvasController hasSelectedInfosInMultipleContainers])
  {
    v19 = v7;
    p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    containersForSelection = [interactiveCanvasController containersForSelection];
    v10 = [containersForSelection countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(containersForSelection);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:v14];
          v16 = [(CRLDrawableZOrderArranger *)self p_maxZValueOfChildren:p_selectedInfos inContainer:v14];
          if (v15 != v16)
          {
            [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:v16 forContainer:v14];
          }
        }

        v11 = [containersForSelection countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v7 = v19;
  }

  else
  {
    currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
    maxZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self maxZValueForArrangeInspector];
    if (currentZValueForArrangeInspector != maxZValueForArrangeInspector)
    {
      [(CRLDrawableZOrderArranger *)self arrangeInspectorDidSetZValue:maxZValueForArrangeInspector forContainer:0];
    }
  }

  [commandController closeGroup];
  [(CRLDrawableZOrderArranger *)self arrangeInspectorDidEndChangingZValue];
}

- (unint64_t)indexOfNextHigherCanvasObject
{
  currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
  p_zOrderSiblings = [(CRLDrawableZOrderArranger *)self p_zOrderSiblings];
  v5 = [p_zOrderSiblings objectAtIndexedSubscript:currentZValueForArrangeInspector];
  v6 = [(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v5];
  v7 = [(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v5];
  maxZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self maxZValueForArrangeInspector];
  v9 = currentZValueForArrangeInspector + 1;
  if (currentZValueForArrangeInspector + 1 <= maxZValueForArrangeInspector)
  {
    v10 = maxZValueForArrangeInspector;
    while (1)
    {
      v11 = [p_zOrderSiblings objectAtIndexedSubscript:v9];
      if (v6)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_8;
      }

      if (![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11]&& ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11]|| ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11]&& ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11])
      {
LABEL_16:

        goto LABEL_17;
      }

LABEL_14:

      if (++v9 > v10)
      {
        goto LABEL_15;
      }
    }

    if ([(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11])
    {
      goto LABEL_16;
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_8:
    if ([(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11])
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_15:
  v9 = currentZValueForArrangeInspector;
LABEL_17:

  return v9;
}

- (unint64_t)indexOfNextLowerCanvasObject
{
  currentZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self currentZValueForArrangeInspector];
  p_zOrderSiblings = [(CRLDrawableZOrderArranger *)self p_zOrderSiblings];
  v5 = [p_zOrderSiblings objectAtIndexedSubscript:currentZValueForArrangeInspector];
  v6 = [(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v5];
  v7 = [(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v5];
  minZValueForArrangeInspector = [(CRLDrawableZOrderArranger *)self minZValueForArrangeInspector];
  if (currentZValueForArrangeInspector != minZValueForArrangeInspector)
  {
    v9 = minZValueForArrangeInspector;
    v10 = currentZValueForArrangeInspector - 1;
    while (1)
    {
      if (v10 < v9)
      {
        goto LABEL_16;
      }

      v11 = [p_zOrderSiblings objectAtIndexedSubscript:v10];
      if (v6)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_9;
      }

      if (![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11]&& ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11]|| ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11]&& ![(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11])
      {
LABEL_18:

        goto LABEL_17;
      }

LABEL_15:

      if (--v10 == -1)
      {
        goto LABEL_16;
      }
    }

    if ([(CRLDrawableZOrderArranger *)self p_forcesPlacementOnTop:v11])
    {
      goto LABEL_18;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_9:
    if ([(CRLDrawableZOrderArranger *)self p_forcesPlacementOnBottom:v11])
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_16:
  v10 = currentZValueForArrangeInspector;
LABEL_17:

  return v10;
}

- (id)p_zOrderSiblings
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];
  v6 = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController2 = [v6 interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController2 hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C2E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C2FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C384();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger p_zOrderSiblings]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:480 isFatal:0 description:"Should not get the generic z-order siblings for a cross-container selection"];
  }

  if (topLevelContainerInfoForEditing)
  {
    v12 = objc_opt_class();
    childInfos = [topLevelContainerInfoForEditing childInfos];
    v14 = sub_100014370(v12, childInfos);
    v15 = v14;
    v16 = &__NSArray0__struct;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;
  }

  else
  {
    childInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
    v17 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:childInfos];
  }

  return v17;
}

- (BOOL)p_usingRelativeZOrder
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)p_zOrderSiblingsForRelativeOrder
{
  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  p_zOrderSiblings = [(CRLDrawableZOrderArranger *)self p_zOrderSiblings];
  v4 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(p_zOrderSiblings, "count")}];
  v54 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = p_zOrderSiblings;
  v7 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v70;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v69 + 1) + 8 * i);
        v12 = [interactiveCanvasController layoutForInfo:v11];
        v13 = v12;
        if (v12)
        {
          geometry = [v12 geometry];
          [geometry frame];
          v15 = [NSValue valueWithCGRect:?];
          [v4 setObject:v15 forKeyedSubscript:v11];
        }

        else
        {
          [v54 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v8);
  }

  if ([v54 count])
  {
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1005B31B4;
    v66[3] = &unk_101872638;
    v67 = v54;
    v68 = v4;
    [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v67 useInBlock:v66];
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = p_selectedInfos;
  v20 = [v56 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v63;
    *&v21 = 67109378;
    v53 = v21;
    do
    {
      v24 = 0;
      do
      {
        if (*v63 != v23)
        {
          objc_enumerationMutation(v56);
        }

        v25 = [v4 objectForKeyedSubscript:{*(*(&v62 + 1) + 8 * v24), v53}];
        v26 = v25;
        if (v25)
        {
          [v25 CGRectValue];
          v88.origin.x = v27;
          v88.origin.y = v28;
          v88.size.width = v29;
          v88.size.height = v30;
          v85.origin.x = x;
          v85.origin.y = y;
          v85.size.width = width;
          v85.size.height = height;
          v86 = CGRectUnion(v85, v88);
          x = v86.origin.x;
          y = v86.origin.y;
          width = v86.size.width;
          height = v86.size.height;
        }

        else
        {
          v31 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10139C3AC();
          }

          v32 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v75 = v31;
            v76 = 2082;
            v77 = "[CRLDrawableZOrderArranger p_zOrderSiblingsForRelativeOrder]";
            v78 = 2082;
            v79 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m";
            v80 = 1024;
            v81 = 539;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d All of the selectedInfos should have been in the zOrderSiblings array that was used to create the rects.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10139C3D4();
          }

          v33 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v36 = v33;
            v37 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v53;
            v75 = v31;
            v76 = 2114;
            v77 = v37;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v34 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger p_zOrderSiblingsForRelativeOrder]"];
          v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
          [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:539 isFatal:0 description:"All of the selectedInfos should have been in the zOrderSiblings array that was used to create the rects."];
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v56 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v22);
  }

  v38 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = obj;
  v40 = [v39 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v59;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v58 + 1) + 8 * j);
        v45 = [v4 objectForKeyedSubscript:v44];
        [v45 CGRectValue];
        v89.origin.x = v46;
        v89.origin.y = v47;
        v89.size.width = v48;
        v89.size.height = v49;
        v87.origin.x = x;
        v87.origin.y = y;
        v87.size.width = width;
        v87.size.height = height;
        v50 = CGRectIntersectsRect(v87, v89);

        if (!v50)
        {
          [v38 addObject:v44];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v41);
  }

  v51 = [v39 crl_arrayByRemovingObjectsIdenticalToObjectsInArray:v38];

  return v51;
}

- (id)p_zOrderedSelectedObjects
{
  p_zOrderSiblings = [(CRLDrawableZOrderArranger *)self p_zOrderSiblings];
  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  v5 = [p_zOrderSiblings crl_arrayWithObjectsInSet:p_selectedInfos];

  return v5;
}

- (unint64_t)p_minIndex
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C44C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C460();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C4E8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger p_minIndex]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:566 isFatal:0 description:"Cannot get the generic min index for a cross-container selection"];
  }

  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  v10 = [(CRLDrawableZOrderArranger *)self p_minZValueOfChildren:p_selectedInfos inContainer:0];

  return v10;
}

- (unint64_t)p_minZValueOfChildren:(id)children inContainer:(id)container
{
  childrenCopy = children;
  v6 = childrenCopy;
  if (container)
  {
    childInfos = [container childInfos];
    v8 = [childInfos crl_arrayWithObjectsInSet:v6];

    v9 = [v8 count];
    v6 = childInfos;
  }

  else
  {
    v9 = [childrenCopy count];
  }

  if (v9)
  {
    return v9 - 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)p_forcesPlacementOnTop:(id)top
{
  topCopy = top;
  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, topCopy);

  LOBYTE(topCopy) = [v5 forcesPlacementOnTop];
  return topCopy;
}

- (BOOL)p_forcesPlacementOnBottom:(id)bottom
{
  bottomCopy = bottom;
  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, bottomCopy);

  LOBYTE(bottomCopy) = [v5 forcesPlacementOnBottom];
  return bottomCopy;
}

- (unint64_t)p_maxIndex
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C510();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C524();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C5AC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger p_maxIndex]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:591 isFatal:0 description:"Cannot get the generic max index for a cross-container selection"];
  }

  p_usingRelativeZOrder = [(CRLDrawableZOrderArranger *)self p_usingRelativeZOrder];
  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  if (p_usingRelativeZOrder)
  {
    v11 = [(CRLDrawableZOrderArranger *)self p_maxRelativeZValueOfChildrenInTopLevelContainer:p_selectedInfos];
  }

  else
  {
    v11 = [(CRLDrawableZOrderArranger *)self p_maxZValueOfChildren:p_selectedInfos inContainer:0];
  }

  v12 = v11;

  return v12;
}

- (unint64_t)p_maxZValueOfChildren:(id)children inContainer:(id)container
{
  childrenCopy = children;
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  if (containerCopy)
  {
    [containerCopy childInfos];
  }

  else
  {
    [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:childrenCopy];
  }
  v10 = ;
  v11 = [v10 count];

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)p_maxRelativeZValueOfChildrenInTopLevelContainer:(id)container
{
  p_zOrderSiblingsForRelativeOrder = [(CRLDrawableZOrderArranger *)self p_zOrderSiblingsForRelativeOrder];
  v4 = [p_zOrderSiblingsForRelativeOrder count];

  if (v4)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)p_indexOfChildren:(id)children inContainer:(id)container
{
  childrenCopy = children;
  containerCopy = container;
  v8 = containerCopy;
  if (containerCopy)
  {
    [containerCopy childInfos];
  }

  else
  {
    [(CRLDrawableZOrderArranger *)self p_zOrderSiblings];
  }
  v9 = ;
  v10 = [v9 crl_arrayWithObjectsInSet:childrenCopy];
  if ([v10 count])
  {
    lastObject = [v10 lastObject];
    v12 = [v9 indexOfObjectIdenticalTo:lastObject];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (unint64_t)p_relativeIndexOfChildrenInTopLevelContainer:(id)container
{
  containerCopy = container;
  p_zOrderSiblingsForRelativeOrder = [(CRLDrawableZOrderArranger *)self p_zOrderSiblingsForRelativeOrder];
  v6 = [p_zOrderSiblingsForRelativeOrder crl_arrayWithObjectsInSet:containerCopy];

  if ([v6 count])
  {
    lastObject = [v6 lastObject];
    v8 = [p_zOrderSiblingsForRelativeOrder indexOfObjectIdenticalTo:lastObject];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (unint64_t)p_zOrderIndex
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  if (hasSelectedInfosInMultipleContainers)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139C5D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139C5E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139C670();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLDrawableZOrderArranger p_zOrderIndex]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLDrawableZOrderArranger.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:635 isFatal:0 description:"Cannot get the generic max index for a cross-container selection"];
  }

  p_usingRelativeZOrder = [(CRLDrawableZOrderArranger *)self p_usingRelativeZOrder];
  p_selectedInfos = [(CRLDrawableZOrderArranger *)self p_selectedInfos];
  if (p_usingRelativeZOrder)
  {
    v11 = [(CRLDrawableZOrderArranger *)self p_relativeIndexOfChildrenInTopLevelContainer:p_selectedInfos];
  }

  else
  {
    v11 = [(CRLDrawableZOrderArranger *)self p_indexOfChildren:p_selectedInfos inContainer:0];
  }

  v12 = v11;

  return v12;
}

- (id)p_selectedInfos
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v7 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  return v7;
}

- (CRLCanvasEditor)canvasEditor
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);

  return WeakRetained;
}

@end