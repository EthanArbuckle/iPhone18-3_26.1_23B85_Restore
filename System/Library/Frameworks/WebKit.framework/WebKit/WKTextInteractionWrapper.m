@interface WKTextInteractionWrapper
- (NSArray)managedTextSelectionViews;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UITextSelectionDisplayInteraction)textSelectionDisplayInteraction;
- (UIView)selectionHighlightView;
- (WKTextInteractionWrapper)initWithView:(id)a3;
- (id).cxx_construct;
- (void)activateSelection;
- (void)deactivateSelection;
- (void)dealloc;
- (void)didEndScrollingOrZooming;
- (void)lookup:(id)a3 withRange:(_NSRange)a4 fromRect:(CGRect)a5;
- (void)prepareToMoveSelectionContainer:(id)a3;
- (void)scheduleChineseTransliterationForText:(id)a3;
- (void)scheduleReplacementsForText:(id)a3;
- (void)selectionChanged;
- (void)selectionChangedWithGestureAt:(CGPoint)a3 withGesture:(int64_t)a4 withState:(int64_t)a5 withFlags:(unint64_t)a6;
- (void)selectionChangedWithTouchAt:(CGPoint)a3 withSelectionTouch:(int64_t)a4 withFlags:(unint64_t)a5;
- (void)setExternalContextMenuInteractionDelegate:(id)a3;
- (void)setGestureRecognizers;
- (void)setNeedsSelectionUpdate;
- (void)showEditMenuTimerFired;
- (void)showShareSheetFor:(id)a3 fromRect:(CGRect)a4;
- (void)showTextServiceFor:(id)a3 fromRect:(CGRect)a4;
- (void)stopShowEditMenuTimer;
- (void)translate:(id)a3 fromRect:(CGRect)a4;
- (void)willBeginDragLift;
- (void)willStartScrollingOrZooming;
- (void)willStartScrollingOverflow:(id)a3;
@end

@implementation WKTextInteractionWrapper

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (void)dealloc
{
  [(WKTextInteractionWrapper *)self stopShowEditMenuTimer];
  if (self->_asyncTextInteraction.m_ptr)
  {
    [objc_loadWeak(&self->_view) removeInteraction:self->_asyncTextInteraction.m_ptr];
  }

  v3.receiver = self;
  v3.super_class = WKTextInteractionWrapper;
  [(WKTextInteractionWrapper *)&v3 dealloc];
}

- (void)stopShowEditMenuTimer
{
  m_ptr = self->_showEditMenuTimer.m_ptr;
  self->_showEditMenuTimer.m_ptr = 0;
  v3 = m_ptr;
  [(NSTimer *)m_ptr invalidate];
  if (v3)
  {
  }
}

- (WKTextInteractionWrapper)initWithView:(id)a3
{
  v11.receiver = self;
  v11.super_class = WKTextInteractionWrapper;
  v4 = [(WKTextInteractionWrapper *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_view, a3);
    if ([a3 shouldUseAsyncInteractions])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695AAA0]);
      m_ptr = v5->_asyncTextInteraction.m_ptr;
      v5->_asyncTextInteraction.m_ptr = v6;
      if (m_ptr)
      {

        v6 = v5->_asyncTextInteraction.m_ptr;
      }

      [(BETextInteraction *)v6 setDelegate:a3];
      [a3 addInteraction:v5->_asyncTextInteraction.m_ptr];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD2B0]) initWithView:a3];
      v9 = v5->_textInteractionAssistant.m_ptr;
      v5->_textInteractionAssistant.m_ptr = v8;
      if (v9)
      {
      }
    }
  }

  return v5;
}

- (UITextSelectionDisplayInteraction)textSelectionDisplayInteraction
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_asyncTextInteraction.m_ptr)
  {
    m_ptr = self->_asyncTextInteraction.m_ptr;

    return [(BETextInteraction *)m_ptr textSelectionDisplayInteraction];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [objc_loadWeak(&self->_view) interactions];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (v8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = v8;

              return v8;
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }
}

- (NSArray)managedTextSelectionViews
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_managedTextSelectionViews.m_size];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  m_buffer = self->_managedTextSelectionViews.m_buffer;
  m_size = self->_managedTextSelectionViews.m_size;
  v8 = &m_buffer[m_size];
  v9 = 0;
  if (m_size)
  {
    v10 = self->_managedTextSelectionViews.m_buffer;
    v11 = &m_buffer[m_size];
    v12 = v11;
    do
    {
      WeakRetained = objc_loadWeakRetained(m_buffer);
      if (WeakRetained)
      {
        [(NSArray *)v4 addObject:WeakRetained];
      }

      else
      {
        v14 = m_buffer;
        if (v11 != self->_managedTextSelectionViews.m_buffer + self->_managedTextSelectionViews.m_size)
        {
          if (m_buffer == v12)
          {
            v14 = v11;
          }

          else
          {
            WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::moveOverlapping(v12, m_buffer, v11);
            v14 = (v11 + v10 - v12);
          }
        }

        v12 = m_buffer + 1;
        objc_destroyWeak(m_buffer);
        ++v9;
        v11 = v14;
      }

      ++m_buffer;
      v10 += 8;
    }

    while (m_buffer < v8);
    m_buffer = self->_managedTextSelectionViews.m_buffer;
    LODWORD(m_size) = self->_managedTextSelectionViews.m_size;
    v8 = v12;
  }

  else
  {
    v11 = &m_buffer[m_size];
  }

  v15 = &m_buffer[m_size];
  if (v8 != v15)
  {
    WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::moveOverlapping(v8, v15, v11);
    LODWORD(m_size) = self->_managedTextSelectionViews.m_size;
  }

  self->_managedTextSelectionViews.m_size = m_size - v9;
  if (v4)
  {

    v16 = v4;
  }

  return v4;
}

- (UIView)selectionHighlightView
{
  v2 = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  return [(UITextSelectionDisplayInteraction *)v2 highlightView];
}

- (void)prepareToMoveSelectionContainer:(id)a3
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  v71 = v6;
  v8 = [(UITextSelectionDisplayInteraction *)v6 highlightView];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v70 = v9;
  if ([(UIView *)v9 superview]!= a3)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v12 = [a3 subviews];
    v13 = [v12 countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v13)
    {
      v14 = *v109;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v109 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addObject:*(*(&v108 + 1) + 8 * i)];
        }

        v13 = [v12 countByEnumeratingWithState:&v108 objects:v115 count:16];
      }

      while (v13);
    }

    [(WKTextInteractionWrapper *)self activateSelection];
    [(UITextSelectionDisplayInteraction *)v71 willMoveToView:objc_loadWeak(&self->_view)];
    [(UITextSelectionDisplayInteraction *)v71 didMoveToView:objc_loadWeak(&self->_view)];
    v92 = 0;
    v93 = 0;
    m_size = self->_managedTextSelectionViews.m_size;
    if (m_size)
    {
      m_buffer = self->_managedTextSelectionViews.m_buffer;
      v19 = 8 * m_size;
      do
      {
        objc_destroyWeak(m_buffer++);
        v19 -= 8;
      }

      while (v19);
    }

    v20 = self->_managedTextSelectionViews.m_buffer;
    if (v20)
    {
      self->_managedTextSelectionViews.m_buffer = 0;
      self->_managedTextSelectionViews.m_capacity = 0;
      WTF::fastFree(v20, v16);
    }

    self->_managedTextSelectionViews.m_buffer = v92;
    v21 = v93;
    v92 = 0;
    v93 = 0;
    *&self->_managedTextSelectionViews.m_capacity = v21;
    WTF::Vector<WTF::WeakObjCPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v92, v16);
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v22 = [a3 subviews];
    v23 = [v22 countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v23)
    {
      v24 = *v105;
      obj = v22;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v105 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v104 + 1) + 8 * j);
          if (([v11 containsObject:v26] & 1) == 0)
          {
            v27 = self->_managedTextSelectionViews.m_size;
            if (v27 == self->_managedTextSelectionViews.m_capacity)
            {
              if (v27 + (v27 >> 1) <= v27 + 1)
              {
                v28 = v27 + 1;
              }

              else
              {
                v28 = v27 + (v27 >> 1);
              }

              if (v28 >> 29)
              {
                __break(0xC471u);
                goto LABEL_115;
              }

              v29 = self->_managedTextSelectionViews.m_buffer;
              if (v28 <= 0x10)
              {
                v30 = 16;
              }

              else
              {
                v30 = v28;
              }

              v31 = WTF::fastMalloc((8 * v30));
              self->_managedTextSelectionViews.m_capacity = v30;
              self->_managedTextSelectionViews.m_buffer = v31;
              WTF::VectorMover<false,WTF::WeakObjCPtr<UIView>>::move(v29, &v29[v27], v31);
              if (v29)
              {
                if (self->_managedTextSelectionViews.m_buffer == v29)
                {
                  self->_managedTextSelectionViews.m_buffer = 0;
                  self->_managedTextSelectionViews.m_capacity = 0;
                }

                WTF::fastFree(v29, v32);
              }

              v33 = (self->_managedTextSelectionViews.m_buffer + 8 * self->_managedTextSelectionViews.m_size);
            }

            else
            {
              v33 = (self->_managedTextSelectionViews.m_buffer + 8 * v27);
            }

            *v33 = 0;
            objc_initWeak(v33, v26);
            ++self->_managedTextSelectionViews.m_size;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

  if (objc_loadWeak(&self->_view) == a3)
  {
    goto LABEL_108;
  }

  v34 = [objc_loadWeak(&self->_view) allViewsIntersectingSelectionRange];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  v37 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v38 = [v35 countByEnumeratingWithState:&v100 objects:v113 count:16];
  if (v38)
  {
    v39 = *v101;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v101 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v100 + 1) + 8 * k);
        if (v41 != a3 && v41 != 0)
        {
          v43 = v41;
          v44 = v41;
          if (v41 != objc_loadWeak(&self->_view))
          {
            while ([v41 superview] != a3)
            {
              v45 = [v41 superview];
              v44 = v45;
              if (!v45)
              {
                goto LABEL_59;
              }

              v46 = v45;

              v41 = v44;
              if (v44 == objc_loadWeak(&self->_view))
              {
                goto LABEL_60;
              }
            }

            v47 = v41;
            [v37 addObject:v41];
LABEL_59:
            v44 = v41;
          }

LABEL_60:
        }
      }

      v38 = [v35 countByEnumeratingWithState:&v100 objects:v113 count:16];
    }

    while (v38);
  }

  v48 = [objc_loadWeak(&self->_view) page];
  v49 = v48;
  if (v48)
  {
    v48 = CFRetain(v48[1]);
    v50 = v49[4];
    if ((v50[800] & 1) == 0)
    {
LABEL_115:
      __break(1u);
      return;
    }

    v51 = v50[792];
  }

  else
  {
    v51 = 0;
  }

  v92 = 0;
  v93 = &v92;
  v94 = 0x4012000000;
  v95 = __Block_byref_object_copy__7;
  v96 = __Block_byref_object_dispose__7;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x4012000000;
  v87 = __Block_byref_object_copy__7;
  v89 = 0;
  v90 = 0;
  v88 = __Block_byref_object_dispose__7;
  v91 = 1;
  WebCore::TileController::tileGridContainerLayerName(&v82, v48);
  v52 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v83, v52);
    if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, v53);
    }
  }

  else
  {
    v83 = &stru_1F1147748;
    v54 = &stru_1F1147748;
  }

  v55 = v82;
  v82 = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v53);
  }

  v56 = [a3 subviews];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3321888768;
  v77[2] = __60__WKTextInteractionWrapper_prepareToMoveSelectionContainer___block_invoke;
  v77[3] = &unk_1F110D990;
  v78 = v70;
  if (v70)
  {
    v57 = v70;
  }

  v77[4] = &v92;
  v79 = v83;
  if (v83)
  {
    v58 = v83;
  }

  v80 = v37;
  if (v37)
  {
    v59 = v37;
  }

  v81 = v51 & 1;
  v77[5] = &v84;
  [v56 enumerateObjectsUsingBlock:v77];
  v60 = *(v85 + 56);
  if (v60 == 1 && *(v93 + 56))
  {
    if (v85[6] == v93[6])
    {
      goto LABEL_94;
    }

LABEL_84:
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v61 = [(NSArray *)[(WKTextInteractionWrapper *)self managedTextSelectionViews] reverseObjectEnumerator];
    v62 = [(NSEnumerator *)v61 countByEnumeratingWithState:&v73 objects:v112 count:16];
    if (v62)
    {
      v63 = *v74;
      do
      {
        for (m = 0; m != v62; ++m)
        {
          if (*v74 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v73 + 1) + 8 * m);
          if ([v65 superview] == a3)
          {
            if ((v85[7] & 1) == 0)
            {
              goto LABEL_115;
            }

            [a3 insertSubview:v65 atIndex:v85[6]];
          }
        }

        v62 = [(NSEnumerator *)v61 countByEnumeratingWithState:&v73 objects:v112 count:16];
      }

      while (v62);
    }

    goto LABEL_94;
  }

  if (v60 != *(v93 + 56))
  {
    goto LABEL_84;
  }

LABEL_94:
  v66 = v80;
  v80 = 0;
  if (v66)
  {
  }

  v67 = v79;
  v79 = 0;
  if (v67)
  {
  }

  v68 = v78;
  v78 = 0;
  if (v68)
  {
  }

  v69 = v83;
  v83 = 0;
  if (v69)
  {
  }

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v92, 8);
  if (v49)
  {
    CFRelease(v49[1]);
  }

  if (v37)
  {
  }

  if (v35)
  {
  }

LABEL_108:
  if (v70)
  {
  }

  if (v71)
  {
  }
}

uint64_t __60__WKTextInteractionWrapper_prepareToMoveSelectionContainer___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (*(result + 48) == a2)
  {
    v6 = 32;
    goto LABEL_6;
  }

  result = [objc_msgSend(objc_msgSend(a2 "layer")];
  if (result & 1) != 0 || (result = [*(v4 + 64) containsObject:a2], (result) || *(v4 + 72) == 1 && (result = objc_msgSend(a2, "conformsToProtocol:", &unk_1F11B3730), result))
  {
    ++a3;
    v6 = 40;
LABEL_6:
    v7 = *(*(v4 + v6) + 8);
    *(v7 + 48) = a3;
    *(v7 + 56) = 1;
  }

  return result;
}

- (void)setNeedsSelectionUpdate
{
  v2 = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  [(UITextSelectionDisplayInteraction *)v2 setNeedsSelectionUpdate];
}

- (void)activateSelection
{
  v2 = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  [(UITextSelectionDisplayInteraction *)v2 setActivated:1];
}

- (void)deactivateSelection
{
  [(UITextSelectionDisplayInteraction *)[(WKTextInteractionWrapper *)self textSelectionDisplayInteraction] setActivated:0];
  self->_showEditMenuAfterNextSelectionChange = 0;

  [(WKTextInteractionWrapper *)self stopShowEditMenuTimer];
}

- (void)selectionChanged
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr selectionChanged];
  [(BETextInteraction *)self->_asyncTextInteraction.m_ptr refreshKeyboardUI];
  [(WKTextInteractionWrapper *)self stopShowEditMenuTimer];
  showEditMenuAfterNextSelectionChange = self->_showEditMenuAfterNextSelectionChange;
  self->_showEditMenuAfterNextSelectionChange = 0;
  if (showEditMenuAfterNextSelectionChange)
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_showEditMenuTimerFired selector:0 userInfo:0 repeats:0.2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    m_ptr = self->_showEditMenuTimer.m_ptr;
    self->_showEditMenuTimer.m_ptr = v5;
    if (m_ptr)
    {
    }
  }
}

- (void)setGestureRecognizers
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr setGestureRecognizers];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr editabilityChanged];
}

- (void)willBeginDragLift
{
  p_hideEditMenuScope = &self->_hideEditMenuScope;
  if (!self->_hideEditMenuScope.__ptr_ && ![(UIContextMenuInteraction *)[(WKTextInteractionWrapper *)self contextMenuInteraction] _wk_isMenuVisible])
  {
    v5 = WebKit::HideEditMenuScope::operator new(0x10, v4);
    WebKit::HideEditMenuScope::HideEditMenuScope(v5, self, 1);

    std::unique_ptr<WebKit::HideEditMenuScope>::reset[abi:sn200100](p_hideEditMenuScope, v5);
  }
}

- (void)willStartScrollingOverflow:(id)a3
{
  p_hideEditMenuScope = &self->_hideEditMenuScope;
  if (!self->_hideEditMenuScope.__ptr_)
  {
    v5 = [objc_loadWeak(&self->_view) _shouldHideSelectionDuringOverflowScroll:a3];
    v7 = WebKit::HideEditMenuScope::operator new(0x10, v6);
    WebKit::HideEditMenuScope::HideEditMenuScope(v7, self, v5);

    std::unique_ptr<WebKit::HideEditMenuScope>::reset[abi:sn200100](p_hideEditMenuScope, v7);
  }
}

- (void)willStartScrollingOrZooming
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr willStartScrollingOrZooming];
  self->_shouldRestoreEditMenuAfterOverflowScrolling = [objc_loadWeak(&self->_view) isPresentingEditMenu];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr dismissEditMenuForSelection];
}

- (void)didEndScrollingOrZooming
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr didEndScrollingOrZooming];
  shouldRestoreEditMenuAfterOverflowScrolling = self->_shouldRestoreEditMenuAfterOverflowScrolling;
  self->_shouldRestoreEditMenuAfterOverflowScrolling = 0;
  if (shouldRestoreEditMenuAfterOverflowScrolling)
  {
    m_ptr = self->_asyncTextInteraction.m_ptr;

    [(BETextInteraction *)m_ptr presentEditMenuForSelection];
  }
}

- (void)selectionChangedWithGestureAt:(CGPoint)a3 withGesture:(int64_t)a4 withState:(int64_t)a5 withFlags:(unint64_t)a6
{
  y = a3.y;
  x = a3.x;
  [UIWKTextInteractionAssistant selectionChangedWithGestureAt:"selectionChangedWithGestureAt:withGesture:withState:withFlags:" withGesture:? withState:? withFlags:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr selectionChangedWithGestureAtPoint:a4 gesture:a5 state:a6 flags:x, y];
}

- (void)selectionChangedWithTouchAt:(CGPoint)a3 withSelectionTouch:(int64_t)a4 withFlags:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  [UIWKTextInteractionAssistant selectionChangedWithTouchAt:"selectionChangedWithTouchAt:withSelectionTouch:withFlags:" withSelectionTouch:? withFlags:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr selectionBoundaryAdjustedToPoint:a4 touchPhase:a5 flags:x, y];
}

- (void)lookup:(id)a3 withRange:(_NSRange)a4 fromRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  length = a4.length;
  location = a4.location;
  [UIWKTextInteractionAssistant lookup:"lookup:withRange:fromRect:" withRange:? fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr showDictionaryForTextInContext:a3 definingTextInRange:location fromRect:length, x, y, width, height];
}

- (void)showShareSheetFor:(id)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [UIWKTextInteractionAssistant showShareSheetFor:"showShareSheetFor:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr shareText:a3 fromRect:x, y, width, height];
}

- (void)showTextServiceFor:(id)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [UIWKTextInteractionAssistant showTextServiceFor:"showTextServiceFor:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr addShortcutForText:a3 fromRect:x, y, width, height];
}

- (void)scheduleReplacementsForText:(id)a3
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr scheduleReplacementsForText:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr showReplacementsForText:a3];
}

- (void)scheduleChineseTransliterationForText:(id)a3
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr scheduleChineseTransliterationForText:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr transliterateChineseForText:a3];
}

- (void)translate:(id)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [UIWKTextInteractionAssistant translate:"translate:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr translateText:a3 fromRect:x, y, width, height];
}

- (void)showEditMenuTimerFired
{
  [(WKTextInteractionWrapper *)self stopShowEditMenuTimer];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr presentEditMenuForSelection];
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  m_ptr = self->_asyncTextInteraction.m_ptr;
  if (!m_ptr)
  {
    m_ptr = self->_textInteractionAssistant.m_ptr;
  }

  return [(BETextInteraction *)m_ptr contextMenuInteraction];
}

- (void)setExternalContextMenuInteractionDelegate:(id)a3
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr setExternalContextMenuInteractionDelegate:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr setContextMenuInteractionDelegate:a3];
}

@end