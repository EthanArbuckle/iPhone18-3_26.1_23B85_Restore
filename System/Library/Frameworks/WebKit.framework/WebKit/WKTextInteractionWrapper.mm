@interface WKTextInteractionWrapper
- (NSArray)managedTextSelectionViews;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UITextSelectionDisplayInteraction)textSelectionDisplayInteraction;
- (UIView)selectionHighlightView;
- (WKTextInteractionWrapper)initWithView:(id)view;
- (id).cxx_construct;
- (void)activateSelection;
- (void)deactivateSelection;
- (void)dealloc;
- (void)didEndScrollingOrZooming;
- (void)lookup:(id)lookup withRange:(_NSRange)range fromRect:(CGRect)rect;
- (void)prepareToMoveSelectionContainer:(id)container;
- (void)scheduleChineseTransliterationForText:(id)text;
- (void)scheduleReplacementsForText:(id)text;
- (void)selectionChanged;
- (void)selectionChangedWithGestureAt:(CGPoint)at withGesture:(int64_t)gesture withState:(int64_t)state withFlags:(unint64_t)flags;
- (void)selectionChangedWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch withFlags:(unint64_t)flags;
- (void)setExternalContextMenuInteractionDelegate:(id)delegate;
- (void)setGestureRecognizers;
- (void)setNeedsSelectionUpdate;
- (void)showEditMenuTimerFired;
- (void)showShareSheetFor:(id)for fromRect:(CGRect)rect;
- (void)showTextServiceFor:(id)for fromRect:(CGRect)rect;
- (void)stopShowEditMenuTimer;
- (void)translate:(id)translate fromRect:(CGRect)rect;
- (void)willBeginDragLift;
- (void)willStartScrollingOrZooming;
- (void)willStartScrollingOverflow:(id)overflow;
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

- (WKTextInteractionWrapper)initWithView:(id)view
{
  v11.receiver = self;
  v11.super_class = WKTextInteractionWrapper;
  v4 = [(WKTextInteractionWrapper *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_view, view);
    if ([view shouldUseAsyncInteractions])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695AAA0]);
      m_ptr = v5->_asyncTextInteraction.m_ptr;
      v5->_asyncTextInteraction.m_ptr = v6;
      if (m_ptr)
      {

        v6 = v5->_asyncTextInteraction.m_ptr;
      }

      [(BETextInteraction *)v6 setDelegate:view];
      [view addInteraction:v5->_asyncTextInteraction.m_ptr];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD2B0]) initWithView:view];
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
    interactions = [objc_loadWeak(&self->_view) interactions];
    v5 = [interactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(interactions);
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
        v5 = [interactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  textSelectionDisplayInteraction = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  return [(UITextSelectionDisplayInteraction *)textSelectionDisplayInteraction highlightView];
}

- (void)prepareToMoveSelectionContainer:(id)container
{
  v116 = *MEMORY[0x1E69E9840];
  textSelectionDisplayInteraction = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];
  v6 = textSelectionDisplayInteraction;
  if (textSelectionDisplayInteraction)
  {
    v7 = textSelectionDisplayInteraction;
  }

  v71 = v6;
  highlightView = [(UITextSelectionDisplayInteraction *)v6 highlightView];
  v9 = highlightView;
  if (highlightView)
  {
    v10 = highlightView;
  }

  v70 = v9;
  if ([(UIView *)v9 superview]!= container)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    subviews = [container subviews];
    v13 = [subviews countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v13)
    {
      v14 = *v109;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v109 != v14)
          {
            objc_enumerationMutation(subviews);
          }

          [v11 addObject:*(*(&v108 + 1) + 8 * i)];
        }

        v13 = [subviews countByEnumeratingWithState:&v108 objects:v115 count:16];
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
    subviews2 = [container subviews];
    v23 = [subviews2 countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v23)
    {
      v24 = *v105;
      obj = subviews2;
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

  if (objc_loadWeak(&self->_view) == container)
  {
    goto LABEL_108;
  }

  allViewsIntersectingSelectionRange = [objc_loadWeak(&self->_view) allViewsIntersectingSelectionRange];
  v35 = allViewsIntersectingSelectionRange;
  if (allViewsIntersectingSelectionRange)
  {
    v36 = allViewsIntersectingSelectionRange;
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
        if (v41 != container && v41 != 0)
        {
          v43 = v41;
          v44 = v41;
          if (v41 != objc_loadWeak(&self->_view))
          {
            while ([v41 superview] != container)
            {
              superview = [v41 superview];
              v44 = superview;
              if (!superview)
              {
                goto LABEL_59;
              }

              v46 = superview;

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

  page = [objc_loadWeak(&self->_view) page];
  v49 = page;
  if (page)
  {
    page = CFRetain(page[1]);
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
  WebCore::TileController::tileGridContainerLayerName(&v82, page);
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

  subviews3 = [container subviews];
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
  [subviews3 enumerateObjectsUsingBlock:v77];
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
    reverseObjectEnumerator = [(NSArray *)[(WKTextInteractionWrapper *)self managedTextSelectionViews] reverseObjectEnumerator];
    v62 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v73 objects:v112 count:16];
    if (v62)
    {
      v63 = *v74;
      do
      {
        for (m = 0; m != v62; ++m)
        {
          if (*v74 != v63)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v65 = *(*(&v73 + 1) + 8 * m);
          if ([v65 superview] == container)
          {
            if ((v85[7] & 1) == 0)
            {
              goto LABEL_115;
            }

            [container insertSubview:v65 atIndex:v85[6]];
          }
        }

        v62 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v73 objects:v112 count:16];
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
  textSelectionDisplayInteraction = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  [(UITextSelectionDisplayInteraction *)textSelectionDisplayInteraction setNeedsSelectionUpdate];
}

- (void)activateSelection
{
  textSelectionDisplayInteraction = [(WKTextInteractionWrapper *)self textSelectionDisplayInteraction];

  [(UITextSelectionDisplayInteraction *)textSelectionDisplayInteraction setActivated:1];
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

- (void)willStartScrollingOverflow:(id)overflow
{
  p_hideEditMenuScope = &self->_hideEditMenuScope;
  if (!self->_hideEditMenuScope.__ptr_)
  {
    v5 = [objc_loadWeak(&self->_view) _shouldHideSelectionDuringOverflowScroll:overflow];
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

- (void)selectionChangedWithGestureAt:(CGPoint)at withGesture:(int64_t)gesture withState:(int64_t)state withFlags:(unint64_t)flags
{
  y = at.y;
  x = at.x;
  [UIWKTextInteractionAssistant selectionChangedWithGestureAt:"selectionChangedWithGestureAt:withGesture:withState:withFlags:" withGesture:? withState:? withFlags:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr selectionChangedWithGestureAtPoint:gesture gesture:state state:flags flags:x, y];
}

- (void)selectionChangedWithTouchAt:(CGPoint)at withSelectionTouch:(int64_t)touch withFlags:(unint64_t)flags
{
  y = at.y;
  x = at.x;
  [UIWKTextInteractionAssistant selectionChangedWithTouchAt:"selectionChangedWithTouchAt:withSelectionTouch:withFlags:" withSelectionTouch:? withFlags:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr selectionBoundaryAdjustedToPoint:touch touchPhase:flags flags:x, y];
}

- (void)lookup:(id)lookup withRange:(_NSRange)range fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  [UIWKTextInteractionAssistant lookup:"lookup:withRange:fromRect:" withRange:? fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr showDictionaryForTextInContext:lookup definingTextInRange:location fromRect:length, x, y, width, height];
}

- (void)showShareSheetFor:(id)for fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [UIWKTextInteractionAssistant showShareSheetFor:"showShareSheetFor:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr shareText:for fromRect:x, y, width, height];
}

- (void)showTextServiceFor:(id)for fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [UIWKTextInteractionAssistant showTextServiceFor:"showTextServiceFor:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr addShortcutForText:for fromRect:x, y, width, height];
}

- (void)scheduleReplacementsForText:(id)text
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr scheduleReplacementsForText:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr showReplacementsForText:text];
}

- (void)scheduleChineseTransliterationForText:(id)text
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr scheduleChineseTransliterationForText:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr transliterateChineseForText:text];
}

- (void)translate:(id)translate fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [UIWKTextInteractionAssistant translate:"translate:fromRect:" fromRect:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr translateText:translate fromRect:x, y, width, height];
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

- (void)setExternalContextMenuInteractionDelegate:(id)delegate
{
  [(UIWKTextInteractionAssistant *)self->_textInteractionAssistant.m_ptr setExternalContextMenuInteractionDelegate:?];
  m_ptr = self->_asyncTextInteraction.m_ptr;

  [(BETextInteraction *)m_ptr setContextMenuInteractionDelegate:delegate];
}

@end