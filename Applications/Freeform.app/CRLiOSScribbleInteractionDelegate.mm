@interface CRLiOSScribbleInteractionDelegate
- (BOOL)_indirectScribbleInteractionShouldDisableInputAssistant:(id)assistant;
- (BOOL)_scribbleInteractionShouldDisableInputAssistant:(id)assistant;
- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused;
- (BOOL)indirectScribbleInteraction:(id)interaction shouldDelayFocusForElement:(id)element;
- (BOOL)p_isElementFocused:(id)focused;
- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element;
- (CGRect)p_expandedScribbleFrameForElement:(id)element;
- (CRLiOSScribbleInteractionDelegate)initWithEditingProvider:(id)provider scribbleInteractionObserver:(id)observer;
- (CRLiOSScribbleInteractionEditingProvider)editingProvider;
- (CRLiOSScribbleInteractionObserver)scribbleObserver;
- (id)p_absoluteScribbleCapableElementWithIdentifier:(id)identifier;
- (id)p_containedScribbleElementForContainerScribbleElement:(id)element;
- (id)p_currentEditingTextInputResponderForElementIdentifer:(id)identifer;
- (id)p_insertedScribbleElementProvider;
- (id)p_scribbleCapableElementsForRect:(CGRect)rect;
- (id)p_scribbleElementIdentifiersInRect:(CGRect)rect;
- (void)indirectScribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
@end

@implementation CRLiOSScribbleInteractionDelegate

- (CRLiOSScribbleInteractionDelegate)initWithEditingProvider:(id)provider scribbleInteractionObserver:(id)observer
{
  providerCopy = provider;
  observerCopy = observer;
  v13.receiver = self;
  v13.super_class = CRLiOSScribbleInteractionDelegate;
  v8 = [(CRLiOSScribbleInteractionDelegate *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_editingProvider, providerCopy);
    v10 = +[NSUUID UUID];
    rootIdentifier = v9->_rootIdentifier;
    v9->_rootIdentifier = v10;

    objc_storeWeak(&v9->_scribbleObserver, observerCopy);
  }

  return v9;
}

- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  neededCopy = needed;
  completionCopy = completion;
  if (qword_101AD5CE8 != -1)
  {
    sub_10138ED34();
  }

  v15 = &unk_1019F0000;
  v16 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v37 = v16;
    v38 = NSStringFromSelector(a2);
    v46.x = x;
    v46.y = y;
    v39 = NSStringFromCGPoint(v46);
    *buf = 138543874;
    v41 = v38;
    v42 = 2114;
    v43 = neededCopy;
    v44 = 2114;
    v45 = v39;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@, focusReferencePoint: %{public}@", buf, 0x20u);
  }

  v17 = objc_opt_class();
  v18 = sub_100013F00(v17, neededCopy);
  v19 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:v18];
  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];

  if (v18 != rootIdentifier)
  {
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  p_insertedScribbleElementProvider = [(CRLiOSScribbleInteractionDelegate *)self p_insertedScribbleElementProvider];
  if ([p_insertedScribbleElementProvider canInsertScribbleElementAtPoint:{x, y}])
  {
    v22 = [p_insertedScribbleElementProvider insertedScribbleElementAtPoint:{x, y}];
    v23 = v22;
    if (v22)
    {
      v24 = v22;

      v19 = v24;
      v15 = &unk_1019F0000;
    }
  }

  if (!v19)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138ED48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138ED70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138EE20();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v26 = [NSString stringWithUTF8String:"[CRLiOSScribbleInteractionDelegate indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:67 isFatal:0 description:"invalid nil value for '%{public}s'", "scribbleElement"];

    v15 = &unk_1019F0000;
  }

LABEL_22:
  if (qword_101AD5CE8 != -1)
  {
    sub_10138EE48();
  }

  v28 = *(v15 + 470);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_10138EE70(v19, v28);
  }

  if (([v19 scribbleElementIsFocused] & 1) == 0)
  {
    scribbleEditingBlock = [v19 scribbleEditingBlock];

    if (scribbleEditingBlock)
    {
      scribbleEditingBlock2 = [v19 scribbleEditingBlock];
      scribbleEditingBlock2[2](scribbleEditingBlock2, 0, x, y);
    }
  }

  scribbleIdentifier = [v19 scribbleIdentifier];
  v32 = [(CRLiOSScribbleInteractionDelegate *)self p_currentEditingTextInputResponderForElementIdentifer:scribbleIdentifier];

  if (v32)
  {
    prepareForScribbleBlock = [v19 prepareForScribbleBlock];

    if (!prepareForScribbleBlock)
    {
      goto LABEL_42;
    }

    prepareForScribbleBlock2 = [v19 prepareForScribbleBlock];
    prepareForScribbleBlock2[2](x, y);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138EEE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138EF10();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138EFC0();
    }

    v35 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v35);
    }

    prepareForScribbleBlock2 = [NSString stringWithUTF8String:"[CRLiOSScribbleInteractionDelegate indirectScribbleInteraction:focusElementIfNeeded:referencePoint:completion:]"];
    v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m"];
    [CRLAssertionHandler handleFailureInFunction:prepareForScribbleBlock2 file:v36 lineNumber:78 isFatal:0 description:"invalid nil value for '%{public}s'", "inputResponder"];
  }

LABEL_42:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v32);
  }
}

- (BOOL)indirectScribbleInteraction:(id)interaction shouldDelayFocusForElement:(id)element
{
  elementCopy = element;
  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];

  if (rootIdentifier == elementCopy)
  {
    shouldDelayScribbleFocus = 1;
  }

  else
  {
    v8 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:elementCopy];
    v9 = v8;
    if (v8)
    {
      shouldDelayScribbleFocus = [v8 shouldDelayScribbleFocus];
    }

    else
    {
      shouldDelayScribbleFocus = 0;
    }
  }

  if (qword_101AD5CE8 != -1)
  {
    sub_10138EFE8();
  }

  v11 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v13 = v11;
    v14 = NSStringFromSelector(a2);
    v15 = @"NO";
    if (shouldDelayScribbleFocus)
    {
      v15 = @"YES";
    }

    v16 = v15;
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = elementCopy;
    v21 = 2114;
    v22 = v16;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@ -> %{public}@", &v17, 0x20u);
  }

  return shouldDelayScribbleFocus;
}

- (void)indirectScribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleObserver);
  [WeakRetained willBeginScribbleWithDelegate:self];

  if (qword_101AD5CE8 != -1)
  {
    sub_10138EFFC();
  }

  v7 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    sub_10138F010(v7);
  }

  v8 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:elementCopy];
  v9 = v8;
  if (v8)
  {
    willBeginWritingBlock = [v8 willBeginWritingBlock];

    if (willBeginWritingBlock)
    {
      willBeginWritingBlock2 = [v9 willBeginWritingBlock];
      willBeginWritingBlock2[2]();
    }
  }

  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];
  [editingProvider scribbleInteractionWillBeginWritingScribbleElementWillBeInserted:rootIdentifier == elementCopy];
}

- (BOOL)p_isElementFocused:(id)focused
{
  v4 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:focused];
  v5 = v4;
  if (v4)
  {
    scribbleElementIsFocused = [v4 scribbleElementIsFocused];
    editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
    currentEditingTextInputResponder = [editingProvider currentEditingTextInputResponder];

    if (scribbleElementIsFocused && !currentEditingTextInputResponder)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138F0AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138F0C0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138F160();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSScribbleInteractionDelegate p_isElementFocused:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSScribbleInteractionDelegate.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:125 isFatal:0 description:"Element says it is focused but we have no editing TIR"];
    }
  }

  else
  {
    LOBYTE(scribbleElementIsFocused) = 0;
  }

  return scribbleElementIsFocused;
}

- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused
{
  focusedCopy = focused;
  v7 = [(CRLiOSScribbleInteractionDelegate *)self p_isElementFocused:focusedCopy];
  if (qword_101AD5CE8 != -1)
  {
    sub_10138F188();
  }

  v8 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    v11 = NSStringFromSelector(a2);
    v12 = @"NO";
    if (v7)
    {
      v12 = @"YES";
    }

    v13 = v12;
    v14 = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = focusedCopy;
    v18 = 2114;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@ -> %{public}@", &v14, 0x20u);
  }

  return v7;
}

- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element
{
  interactionCopy = interaction;
  elementCopy = element;
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, elementCopy);
  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];

  if (v10 == rootIdentifier)
  {
    view = [interactionCopy view];
    [view bounds];
    x = v18;
    y = v20;
    width = v22;
    height = v24;

    p_insertedScribbleElementProvider = [(CRLiOSScribbleInteractionDelegate *)self p_insertedScribbleElementProvider];
    v12 = p_insertedScribbleElementProvider;
    if (!p_insertedScribbleElementProvider)
    {
      goto LABEL_8;
    }

    [p_insertedScribbleElementProvider rectForInsertingScribbleElements];
    goto LABEL_6;
  }

  v12 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:elementCopy];
  if (v12)
  {
    [(CRLiOSScribbleInteractionDelegate *)self p_expandedScribbleFrameForElement:v12];
LABEL_6:
    x = v13;
    y = v14;
    width = v15;
    height = v16;
    goto LABEL_8;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
LABEL_8:

  if (qword_101AD5CE8 != -1)
  {
    sub_10138F19C();
  }

  v27 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v32 = v27;
    v33 = NSStringFromSelector(a2);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v34 = NSStringFromCGRect(v41);
    v35 = 138543874;
    v36 = v33;
    v37 = 2114;
    v38 = elementCopy;
    v39 = 2114;
    v40 = v34;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@ -> %{public}@", &v35, 0x20u);
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  interactionCopy = interaction;
  completionCopy = completion;
  if (width < 300.0 || height < 300.0)
  {
    if (qword_101AD5CE8 != -1)
    {
      sub_10138F1B0();
    }

    v14 = off_1019F0EB0;
    if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
    {
      sub_10138F1C4(v14, a2, x, y, width, height);
    }

    v15 = sub_100120414(x, y, width, height);
    v17 = v16;
    v18 = sub_10011FBF0(width, height, 300.0);
    x = sub_10011EC70(v15, v17, v18);
    y = v19;
    width = v20;
    height = v21;
  }

  height = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleElementIdentifiersInRect:x, y, width, height];
  completionCopy[2](completionCopy, height);
  if (qword_101AD5CE8 != -1)
  {
    sub_10138F2C0();
  }

  v23 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    v25 = NSStringFromSelector(a2);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v26 = NSStringFromCGRect(v33);
    v27 = 138543874;
    v28 = v25;
    v29 = 2114;
    v30 = v26;
    v31 = 2114;
    v32 = height;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@ -> %{public}@", &v27, 0x20u);
  }
}

- (void)indirectScribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleObserver);
  [WeakRetained didFinishScribbleWithDelegate:self];

  if (qword_101AD5CE8 != -1)
  {
    sub_10138F2E8();
  }

  v7 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    sub_10138F010(v7);
  }

  v8 = objc_opt_class();
  v9 = sub_100013F00(v8, elementCopy);
  v10 = [(CRLiOSScribbleInteractionDelegate *)self p_absoluteScribbleCapableElementWithIdentifier:v9];
  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];

  if (v9 == rootIdentifier || v10)
  {
    editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
    [editingProvider scribbleInteractionDidFinishWriting];
  }
}

- (BOOL)_indirectScribbleInteractionShouldDisableInputAssistant:(id)assistant
{
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  wantsSystemInputAssistantForScribble = [editingProvider wantsSystemInputAssistantForScribble];

  return wantsSystemInputAssistantForScribble ^ 1;
}

- (BOOL)scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  v8 = [editingProvider shouldBeginScribblingAtPoint:{x, y}];

  if (qword_101AD5CE8 != -1)
  {
    sub_10138F2FC();
  }

  v9 = off_1019F0EB0;
  if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
  {
    v11 = v9;
    v12 = NSStringFromSelector(a2);
    v22.x = x;
    v22.y = y;
    v13 = NSStringFromCGPoint(v22);
    v14 = @"NO";
    if (v8)
    {
      v14 = @"YES";
    }

    v15 = v14;
    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v15;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@\n %{public}@ -> %{public}@", &v16, 0x20u);
  }

  return v8;
}

- (BOOL)_scribbleInteractionShouldDisableInputAssistant:(id)assistant
{
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  wantsSystemInputAssistantForScribble = [editingProvider wantsSystemInputAssistantForScribble];

  return wantsSystemInputAssistantForScribble ^ 1;
}

- (id)p_currentEditingTextInputResponderForElementIdentifer:(id)identifer
{
  if ([(CRLiOSScribbleInteractionDelegate *)self p_isElementFocused:identifer])
  {
    editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
    currentEditingTextInputResponder = [editingProvider currentEditingTextInputResponder];
  }

  else
  {
    currentEditingTextInputResponder = 0;
  }

  return currentEditingTextInputResponder;
}

- (id)p_insertedScribbleElementProvider
{
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  v9 = sub_1003035DC(editingProvider, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLiOSScribbleInteractionInsertedScribbleElementProvider);

  return v9;
}

- (id)p_containedScribbleElementForContainerScribbleElement:(id)element
{
  elementCopy = element;
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    editingProvider2 = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
    v8 = [editingProvider2 containedScribbleElementForContainerScribbleElement:elementCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_absoluteScribbleCapableElementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_class();
  v6 = sub_100013F00(v5, identifierCopy);

  rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];

  if (v6 == rootIdentifier || v6 == 0)
  {
    v10 = 0;
  }

  else
  {
    editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
    v10 = [editingProvider scribbleCapableElementWithIdentifier:v6];

    if (v10)
    {
      v11 = [(CRLiOSScribbleInteractionDelegate *)self p_containedScribbleElementForContainerScribbleElement:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;

        v10 = v13;
      }
    }
  }

  return v10;
}

- (id)p_scribbleCapableElementsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  editingProvider = [(CRLiOSScribbleInteractionDelegate *)self editingProvider];
  v8 = [editingProvider scribbleCapableElementsForRect:{x, y, width, height}];

  return v8;
}

- (CGRect)p_expandedScribbleFrameForElement:(id)element
{
  elementCopy = element;
  [elementCopy scaledScribbleEditingFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [elementCopy hitToleranceInsetsWithDefaultInsets:{-60.0, -60.0, -60.0, -60.0}];
  v76 = v16;
  v77 = v13;
  v17 = v15;
  if (v14 == 0.0)
  {
    v27 = v13;
  }

  else
  {
    v18 = v14;
    v75 = v15;
    v98.origin.x = v6;
    v98.origin.y = v8;
    v98.size.width = v10;
    v98.size.height = v12;
    MinX = CGRectGetMinX(v98);
    v99.origin.x = v6;
    v99.origin.y = v8;
    v99.size.width = v10;
    v99.size.height = v12;
    v20 = CGRectGetMaxY(v99) + 0.001;
    v21 = -v18;
    v100.origin.x = MinX;
    v100.origin.y = v20;
    v100.size.width = v10;
    v100.size.height = -v18;
    MaxY = CGRectGetMaxY(v100);
    v23 = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleCapableElementsForRect:MinX, v20, v10, v21];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v91;
      v27 = v77;
      v17 = v75;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v91 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v90 + 1) + 8 * i) scaledScribbleEditingFrame];
          MinY = CGRectGetMinY(v101);
          if (MinY < MaxY)
          {
            MaxY = MinY;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v25);
    }

    else
    {
      v27 = v77;
      v17 = v75;
    }

    v102.origin.x = v6;
    v102.origin.y = v8;
    v102.size.width = v10;
    v102.size.height = v12;
    if (MaxY > CGRectGetMaxY(v102))
    {
      v6 = sub_100120604(v6, v8, v10, v12, v6);
      v8 = v30;
      v10 = v31;
      v12 = v32;
    }
  }

  if (v17 != 0.0)
  {
    v103.origin.x = v6;
    v103.origin.y = v8;
    v103.size.width = v10;
    v103.size.height = v12;
    v33 = CGRectGetMaxX(v103) + 0.001;
    v104.origin.x = v6;
    v104.origin.y = v8;
    v104.size.width = v10;
    v104.size.height = v12;
    v34 = CGRectGetMinY(v104);
    v35 = -v17;
    v105.origin.x = v33;
    v105.origin.y = v34;
    v105.size.width = -v17;
    v105.size.height = v12;
    MaxX = CGRectGetMaxX(v105);
    v37 = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleCapableElementsForRect:v33, v34, v35, v12];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v38 = [v37 countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v87;
      v27 = v77;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v87 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [*(*(&v86 + 1) + 8 * j) scaledScribbleEditingFrame];
          v42 = CGRectGetMinX(v106);
          if (v42 < MaxX)
          {
            MaxX = v42;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v39);
    }

    else
    {
      v27 = v77;
    }

    v107.origin.x = v6;
    v107.origin.y = v8;
    v107.size.width = v10;
    v107.size.height = v12;
    if (MaxX > CGRectGetMaxX(v107))
    {
      v6 = sub_100120604(v6, v8, v10, v12, MaxX);
      v8 = v43;
      v10 = v44;
      v12 = v45;
    }
  }

  if (v27 != 0.0)
  {
    v108.origin.x = v6;
    v108.origin.y = v8;
    v108.size.width = v10;
    v108.size.height = v12;
    v46 = CGRectGetMinX(v108);
    v109.origin.x = v6;
    v109.origin.y = v8;
    v109.size.width = v10;
    v109.size.height = v12;
    v47 = v27 + CGRectGetMinY(v109) + -0.001;
    v48 = -v27;
    v110.origin.x = v46;
    v110.origin.y = v47;
    v110.size.width = v10;
    v110.size.height = -v27;
    v49 = CGRectGetMinY(v110);
    v50 = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleCapableElementsForRect:v46, v47, v10, v48];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v83;
      do
      {
        for (k = 0; k != v52; k = k + 1)
        {
          if (*v83 != v53)
          {
            objc_enumerationMutation(v50);
          }

          [*(*(&v82 + 1) + 8 * k) scaledScribbleEditingFrame];
          v55 = CGRectGetMaxY(v111);
          if (v55 > v49)
          {
            v49 = v55;
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v82 objects:v95 count:16];
      }

      while (v52);
    }

    v112.origin.x = v6;
    v112.origin.y = v8;
    v112.size.width = v10;
    v112.size.height = v12;
    if (v49 < CGRectGetMinY(v112))
    {
      v6 = sub_100120604(v6, v8, v10, v12, v6);
      v8 = v56;
      v10 = v57;
      v12 = v58;
    }
  }

  if (v76 != 0.0)
  {
    v113.origin.x = v6;
    v113.origin.y = v8;
    v113.size.width = v10;
    v113.size.height = v12;
    v59 = v76 + CGRectGetMinX(v113) + -0.001;
    v114.origin.x = v6;
    v114.origin.y = v8;
    v114.size.width = v10;
    v114.size.height = v12;
    v60 = CGRectGetMinY(v114);
    v115.origin.x = v59;
    v115.origin.y = v60;
    v115.size.width = -v76;
    v115.size.height = v12;
    v61 = CGRectGetMinX(v115);
    v62 = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleCapableElementsForRect:v59, v60, -v76, v12];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v63 = [v62 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v79;
      do
      {
        for (m = 0; m != v64; m = m + 1)
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(v62);
          }

          [*(*(&v78 + 1) + 8 * m) scaledScribbleEditingFrame];
          v67 = CGRectGetMaxX(v116);
          if (v67 > v61)
          {
            v61 = v67;
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v78 objects:v94 count:16];
      }

      while (v64);
    }

    v117.origin.x = v6;
    v117.origin.y = v8;
    v117.size.width = v10;
    v117.size.height = v12;
    if (v61 < CGRectGetMinX(v117))
    {
      v6 = sub_100120604(v6, v8, v10, v12, v61);
      v8 = v68;
      v10 = v69;
      v12 = v70;
    }
  }

  v71 = v6;
  v72 = v8;
  v73 = v10;
  v74 = v12;
  result.size.height = v74;
  result.size.width = v73;
  result.origin.y = v72;
  result.origin.x = v71;
  return result;
}

- (id)p_scribbleElementIdentifiersInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_alloc_init(NSMutableArray);
  height = [(CRLiOSScribbleInteractionDelegate *)self p_scribbleCapableElementsForRect:x, y, width, height];
  p_insertedScribbleElementProvider = [(CRLiOSScribbleInteractionDelegate *)self p_insertedScribbleElementProvider];
  if (p_insertedScribbleElementProvider && [p_insertedScribbleElementProvider canInsertScribbleElementAtPoint:{sub_100120414(x, y, width, height)}])
  {
    rootIdentifier = [(CRLiOSScribbleInteractionDelegate *)self rootIdentifier];
    [v9 addObject:rootIdentifier];

    if (qword_101AD5CE8 != -1)
    {
      sub_10138F310();
    }

    v13 = off_1019F0EB0;
    if (os_log_type_enabled(off_1019F0EB0, OS_LOG_TYPE_DEBUG))
    {
      sub_10138F324(v13, a2, self);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = height;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        scribbleIdentifier = [*(*(&v21 + 1) + 8 * i) scribbleIdentifier];
        [v9 crl_addNonNilObject:scribbleIdentifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v9;
}

- (CRLiOSScribbleInteractionEditingProvider)editingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_editingProvider);

  return WeakRetained;
}

- (CRLiOSScribbleInteractionObserver)scribbleObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleObserver);

  return WeakRetained;
}

@end