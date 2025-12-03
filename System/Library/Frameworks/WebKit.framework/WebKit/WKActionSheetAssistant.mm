@interface WKActionSheetAssistant
- (BOOL)_appendAppLinkOpenActionsForURL:(id)l actions:(id)actions elementInfo:(id)info;
- (BOOL)presentSheet;
- (BOOL)synchronouslyRetrievePositionInformation;
- (CGRect)_presentationRectForSheetGivenPoint:(CGPoint)point inHostView:(id)view;
- (CGRect)initialPresentationRectInHostViewForSheet;
- (CGRect)presentationRectForElementUsingClosestIndicatedRect;
- (CGRect)presentationRectForIndicatedElement;
- (CGRect)presentationRectInHostViewForSheet;
- (RetainPtr<NSArray<_WKElementAction)defaultActionsForImageSheet:(id)sheet;
- (RetainPtr<NSArray<_WKElementAction)defaultActionsForLinkSheet:(id)sheet;
- (id).cxx_construct;
- (id)_contentsOfContextMenuItem:(id)item;
- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration;
- (id)_elementActionForDDAction:(id)action;
- (id)_uiMenuElementsForMediaControlContextMenuItems:(void *)items;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)currentlyAvailableActionTitles;
- (id)currentlyAvailableMediaControlsContextMenuItems;
- (id)suggestedActionsForContextMenuWithPositionInformation:(const void *)information;
- (id)superviewForSheet;
- (int64_t)_presentationStyleForPositionInfo:(const void *)info elementInfo:(id)elementInfo;
- (optional<WebKit::InteractionInformationAtPosition>)currentPositionInformation;
- (void)_appendAnimationAction:(id)action elementInfo:(id)info;
- (void)_appendOpenActionsForURL:(id)l actions:(id)actions elementInfo:(id)info;
- (void)_createSheetWithElementActions:(id)actions defaultTitle:(id)title showLinkTitle:(BOOL)linkTitle;
- (void)_dataDetectorContextMenuPresenter;
- (void)_mediaControlsContextMenuPresenter;
- (void)_resetDataDetectorContextMenuPresenter;
- (void)_resetMediaControlsContextMenuPresenter;
- (void)cleanupSheet;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)handleElementActionWithType:(int64_t)type element:(id)element needsInteraction:(BOOL)interaction;
- (void)interactionDidStartWithPositionInformation:(const void *)information;
- (void)showDataDetectorsUIForPositionInformation:(const void *)information;
- (void)showImageSheet;
- (void)showLinkSheet;
- (void)showMediaControlsContextMenu:(FloatRect *)menu items:(void *)items completionHandler:(void *)handler;
- (void)updatePositionInformation;
@end

@implementation WKActionSheetAssistant

- (id).cxx_construct
{
  *(self + 560) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 32) = 0;
  *(self + 36) = 0u;
  *(self + 37) = 0u;
  *(self + 38) = 0u;
  *(self + 78) = 0;
  return self;
}

- (void)dealloc
{
  [(WKActionSheetAssistant *)self cleanupSheet];
  [(WKActionSheetAssistant *)self _resetDataDetectorContextMenuPresenter];
  [(WKActionSheetAssistant *)self _resetMediaControlsContextMenuPresenter];
  v3.receiver = self;
  v3.super_class = WKActionSheetAssistant;
  [(WKActionSheetAssistant *)&v3 dealloc];
}

- (void)_resetDataDetectorContextMenuPresenter
{
  if (self->_dataDetectorContextMenuPresenter.__ptr_)
  {
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](&self->_dataDetectorContextMenuPresenter, 0);
    objc_loadWeak(&self->_delegate.m_weakReference);
    if (objc_opt_respondsToSelector())
    {
      Weak = objc_loadWeak(&self->_delegate.m_weakReference);

      [Weak removeContextMenuViewIfPossibleForActionSheetAssistant:self];
    }
  }
}

- (void)_resetMediaControlsContextMenuPresenter
{
  if (self->_mediaControlsContextMenuPresenter.__ptr_)
  {
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](&self->_mediaControlsContextMenuPresenter, 0);
    m_ptr = self->_mediaControlsContextMenu.m_ptr;
    self->_mediaControlsContextMenu.m_ptr = 0;
    if (m_ptr)
    {
    }

    self->_mediaControlsContextMenuTargetFrame = 0u;
    ptr = self->_mediaControlsContextMenuCallback.m_function.m_callableWrapper.__ptr_;
    v4 = ptr;
    self->_mediaControlsContextMenuCallback.m_function.m_callableWrapper.__ptr_ = 0;
    if (v4)
    {
      WTF::CompletionHandler<void ()(unsigned long long)>::operator()(&ptr);
      v5 = ptr;
      ptr = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    objc_loadWeak(&self->_delegate.m_weakReference);
    if (objc_opt_respondsToSelector())
    {
      [objc_loadWeak(&self->_delegate.m_weakReference) removeContextMenuViewIfPossibleForActionSheetAssistant:self];
    }
  }
}

- (void)cleanupSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained actionSheetAssistantDidStopInteraction:self];
  }

  [(WKActionSheet *)self->_interactionSheet.m_ptr doneWithSheet:!self->_isPresentingDDUserInterface];
  [(WKActionSheet *)self->_interactionSheet.m_ptr setSheetDelegate:0];
  m_ptr = self->_interactionSheet.m_ptr;
  self->_interactionSheet.m_ptr = 0;
  if (m_ptr)
  {
  }

  v5 = self->_elementInfo.m_ptr;
  self->_elementInfo.m_ptr = 0;
  if (v5)
  {
  }

  if (self->_anon_1a8[136] == 1)
  {
    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&self->_positionInformation, v3);
    self->_anon_1a8[136] = 0;
  }

  *&self->_needsLinkIndicator = 0;
  self->_hasPendingActionSheet = 0;
  if (WeakRetained)
  {
  }
}

- (BOOL)synchronouslyRetrievePositionInformation
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained positionInformationForActionSheetAssistant:self];
    if (self->_anon_1a8[136] == v10)
    {
      if (self->_anon_1a8[136])
      {
        WebKit::InteractionInformationAtPosition::operator=(&self->_positionInformation, v9);
      }
    }

    else
    {
      if (self->_anon_1a8[136])
      {
        WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&self->_positionInformation, v5);
        v7 = 0;
      }

      else
      {
        WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(&self->_positionInformation, v9);
        v7 = 1;
      }

      self->_anon_1a8[136] = v7;
    }

    if (v10 == 1)
    {
      WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(v9, v5);
    }

    v6 = self->_anon_1a8[136];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)superviewForSheet
{
  Weak = objc_loadWeak(&self->_view.m_weakReference);
  window = [Weak window];
  if (!Weak)
  {
    return window;
  }

  v5 = 0;
  do
  {
    v6 = WebCore::viewController(Weak, v3);
    if (v6)
    {
      v5 = v6;
    }

    Weak = [Weak superview];
  }

  while (Weak);
  if (!v5)
  {
    return window;
  }

  return [v5 view];
}

- (CGRect)_presentationRectForSheetGivenPoint:(CGPoint)point inHostView:(id)view
{
  [view convertPoint:objc_loadWeak(&self->_view.m_weakReference) fromView:{point.x, point.y}];
  v6 = 1.0;
  v7 = 1.0;

  return CGRectInset(*&v4, -22.0, -22.0);
}

- (CGRect)presentationRectForElementUsingClosestIndicatedRect
{
  superviewForSheet = [(WKActionSheetAssistant *)self superviewForSheet];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v5 = WeakRetained;
  if (superviewForSheet && WeakRetained && (self->_anon_1a8[136] & 1) != 0)
  {
    m_ptr = self->_positionInformation.var0.__val_.textIndicator.m_ptr;
    if (m_ptr)
    {
      ++*m_ptr;
    }

    if (*(m_ptr + 17))
    {
      WebCore::FloatPoint::FloatPoint(v37, &self->_positionInformation);
      v10 = *(m_ptr + 3);
      v35 = 0;
      v36 = 0;
      v11 = *(m_ptr + 17);
      if (v11)
      {
        v32 = v10;
        if (v11 >> 28)
        {
          __break(0xC471u);
          goto LABEL_31;
        }

        v12 = WTF::fastMalloc((16 * v11));
        LODWORD(v36) = v11;
        v35 = v12;
        v13 = *(m_ptr + 17);
        *v14.i64 = v32;
        if (v13)
        {
          v15 = *(m_ptr + 7);
          v14.i64[1] = 0x4000000040000000;
          v16 = *(m_ptr + 17);
          do
          {
            v17 = *v15++;
            *v12 = vaddq_f32(v14, vaddq_f32(v17, xmmword_19E703D50));
            v12 = (v12 + 16);
            --v16;
          }

          while (v16);
          HIDWORD(v36) = v13;
        }
      }

      WebCore::PathUtilities::pathsWithShrinkWrappedRects();
      if (v34)
      {
        v19 = v33;
        v20 = v34 << 6;
        while (1)
        {
          WebCore::Path::fastBoundingRect(v19);
          if (WebCore::FloatRect::contains())
          {
            break;
          }

          v19 = (v19 + 64);
          v20 -= 64;
          if (!v20)
          {
            goto LABEL_17;
          }
        }

        WebCore::FloatRect::operator CGRect();
        [superviewForSheet convertRect:objc_loadWeak(&self->_view.m_weakReference) fromView:{v26, v27, v28, v29}];
        v39 = CGRectInset(v38, -15.0, -15.0);
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        WTF::Vector<WebCore::Path,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v30);
      }

      else
      {
LABEL_17:
        WTF::Vector<WebCore::Path,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v18);
        x = *MEMORY[0x1E695F058];
        y = *(MEMORY[0x1E695F058] + 8);
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
      }

      v31 = v35;
      if (v35)
      {
        v35 = 0;
        LODWORD(v36) = 0;
        WTF::fastFree(v31, v21);
        if (!m_ptr)
        {
          goto LABEL_19;
        }
      }

      else if (!m_ptr)
      {
        goto LABEL_19;
      }
    }

    else
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    WTF::RefCounted<WebCore::TextIndicator>::deref(m_ptr);
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

LABEL_19:
  if (v5)
  {
  }

  v10 = x;
  v7 = y;
  v8 = width;
  v9 = height;
LABEL_31:
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v10;
  return result;
}

- (CGRect)presentationRectForIndicatedElement
{
  superviewForSheet = [(WKActionSheetAssistant *)self superviewForSheet];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v5 = WeakRetained;
  if (!superviewForSheet)
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    if (!WeakRetained)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (WeakRetained)
  {
    if (self->_anon_1a8[136])
    {
      v18 = *(&self->_positionInformation.var0.__engaged_ + 11);
      WebCore::IntRect::operator CGRect();
      [superviewForSheet convertRect:objc_loadWeak(&self->_view.m_weakReference) fromView:{v6, v7, v8, v9, v18}];
      v20 = CGRectInset(v19, -15.0, -15.0);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }

    else
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

LABEL_9:

    goto LABEL_10;
  }

  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
LABEL_10:
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)initialPresentationRectInHostViewForSheet
{
  superviewForSheet = [(WKActionSheetAssistant *)self superviewForSheet];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v5 = WeakRetained;
  if (!superviewForSheet)
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    if (!WeakRetained)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (WeakRetained)
  {
    if (self->_anon_1a8[136])
    {
      WebCore::IntPoint::operator CGPoint();
      [(WKActionSheetAssistant *)self _presentationRectForSheetGivenPoint:superviewForSheet inHostView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v7 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v11 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
LABEL_10:
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)presentationRectInHostViewForSheet
{
  superviewForSheet = [(WKActionSheetAssistant *)self superviewForSheet];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v5 = WeakRetained;
  if (!superviewForSheet)
  {
    v19 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    if (!WeakRetained)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (WeakRetained)
  {
    if (self->_anon_1a8[136])
    {
      WebCore::IntRect::operator CGRect();
      if ((self->_anon_1a8[136] & 1) == 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      WebCore::IntPoint::operator CGPoint();
      MidX = v14;
      MidY = v16;
      v27.origin.x = v10;
      v27.origin.y = v11;
      v27.size.width = v12;
      v27.size.height = v13;
      v26.x = MidX;
      v26.y = MidY;
      if (!CGRectContainsPoint(v27, v26))
      {
        v28.origin.x = v10;
        v28.origin.y = v11;
        v28.size.width = v12;
        v28.size.height = v13;
        MidX = CGRectGetMidX(v28);
        v29.origin.x = v10;
        v29.origin.y = v11;
        v29.size.width = v12;
        v29.size.height = v13;
        MidY = CGRectGetMidY(v29);
      }

      [(WKActionSheetAssistant *)self _presentationRectForSheetGivenPoint:superviewForSheet inHostView:MidX, MidY];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v19 = *MEMORY[0x1E695F058];
      v21 = *(MEMORY[0x1E695F058] + 8);
      v23 = *(MEMORY[0x1E695F058] + 16);
      v25 = *(MEMORY[0x1E695F058] + 24);
    }

LABEL_12:

    goto LABEL_13;
  }

  v19 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v23 = *(MEMORY[0x1E695F058] + 16);
  v25 = *(MEMORY[0x1E695F058] + 24);
LABEL_13:
  v6 = v19;
  v7 = v21;
  v8 = v23;
  v9 = v25;
LABEL_15:
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)updatePositionInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained updatePositionInformationForActionSheetAssistant:self];
  }

  if (WeakRetained)
  {
  }
}

- (BOOL)presentSheet
{
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
    {
      [(WKActionSheetAssistant *)self initialPresentationRectInHostViewForSheet];
      x = v10.origin.x;
      y = v10.origin.y;
      width = v10.size.width;
      height = v10.size.height;
      if (CGRectIsEmpty(v10))
      {
        return 0;
      }
    }
  }

  m_ptr = self->_interactionSheet.m_ptr;

  return [(WKActionSheet *)m_ptr presentSheetFromRect:x, y, width, height];
}

- (void)interactionDidStartWithPositionInformation:(const void *)information
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (WeakRetained)
  {

    if (WebCore::DataDetection::canBePresentedByDataDetectors((information + 72), v5))
    {
      CFURL = WTF::URL::createCFURL(&v9, (information + 72));
      if (v9)
      {
        sharedController = [(*MEMORY[0x1E69E2358])(CFURL) sharedController];
        if (objc_opt_respondsToSelector())
        {
          [sharedController interactionDidStartForURL:v9];
        }

        v8 = v9;
        v9 = 0;
        if (v8)
        {
        }
      }
    }
  }
}

- (optional<WebKit::InteractionInformationAtPosition>)currentPositionInformation
{
  retstr->var0.__null_state_ = 0;
  *(&retstr[1].var0.__engaged_ + 136) = 0;
  if (*(&result[1].var0.__engaged_ + 168))
  {
    result = WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(retstr, (&result->var0.__engaged_ + 32));
    *(&retstr[1].var0.__engaged_ + 136) = 1;
  }

  return result;
}

- (void)_createSheetWithElementActions:(id)actions defaultTitle:(id)title showLinkTitle:(BOOL)linkTitle
{
  linkTitleCopy = linkTitle;
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (self->_anon_1a8[136] == 1)
    {
      WTF::URL::createCFURL(&v51, (&self->_positionInformation.var0.__engaged_ + 72));
      v10 = objc_alloc_init(WKActionSheet);
      m_ptr = self->_interactionSheet.m_ptr;
      self->_interactionSheet.m_ptr = v10;
      if (m_ptr)
      {

        v10 = self->_interactionSheet.m_ptr;
      }

      [(WKActionSheet *)v10 setSheetDelegate:self];
      [(WKActionSheet *)self->_interactionSheet.m_ptr setPreferredStyle:0];
      v40 = v9;
      if (linkTitleCopy && [-[WTF absoluteString](v51 "absoluteString")])
      {
        scheme = [(WTF *)v51 scheme];
        if (scheme && ![scheme caseInsensitiveCompare:@"javascript"])
        {
          WebCore::localizedString(&v49, @"JavaScript Action Sheet Title", v13);
          v36 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v50, v36);
            if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v37);
            }
          }

          else
          {
            v50 = &stru_1F1147748;
            v38 = &stru_1F1147748;
          }

          v39 = v49;
          title = v50;
          v49 = 0;
          v50 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v37);
          }
        }

        else
        {
          v14 = WTF::userVisibleString(v51, v13);
          title = v14;
          if (v14)
          {
            v15 = v14;
          }
        }
      }

      else if (title)
      {
        titleCopy = title;
      }

      else
      {
        if ((self->_anon_1a8[136] & 1) == 0)
        {
          __break(1u);
        }

        v17 = self->_positionInformation.var0.__val_.title.m_impl.m_ptr;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v50, v17);
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v18);
          }
        }

        else
        {
          v50 = &stru_1F1147748;
          v19 = &stru_1F1147748;
        }

        title = v50;
      }

      if ([title length])
      {
        [(WKActionSheet *)self->_interactionSheet.m_ptr setTitle:title];
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v21 = [actions countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v21)
      {
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(actions);
            }

            v24 = *(*(&v45 + 1) + 8 * i);
            v25 = self->_interactionSheet.m_ptr;
            title = [v24 title];
            v43[4] = v24;
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __84__WKActionSheetAssistant__createSheetWithElementActions_defaultTitle_showLinkTitle___block_invoke;
            v44[3] = &unk_1E76321C8;
            v44[4] = v24;
            v44[5] = self;
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __84__WKActionSheetAssistant__createSheetWithElementActions_defaultTitle_showLinkTitle___block_invoke_2;
            v43[3] = &unk_1E7633758;
            [(WKActionSheet *)v25 _addActionWithTitle:title style:0 handler:v44 shouldDismissHandler:v43];
          }

          v21 = [actions countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v21);
      }

      v27 = self->_interactionSheet.m_ptr;
      v28 = MEMORY[0x1E69DC648];
      WebCore::localizedString(&v49, @"Cancel button label in button bar", v20);
      v29 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v50, v29);
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v30);
        }
      }

      else
      {
        v50 = &stru_1F1147748;
        v31 = &stru_1F1147748;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __84__WKActionSheetAssistant__createSheetWithElementActions_defaultTitle_showLinkTitle___block_invoke_3;
      v42[3] = &unk_1E7633780;
      v42[4] = self;
      -[WKActionSheet addAction:](v27, "addAction:", [v28 actionWithTitle:v50 style:1 handler:v42]);
      v33 = v50;
      v50 = 0;
      v9 = v40;
      if (v33)
      {
      }

      v34 = v49;
      v49 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }

      if (objc_opt_respondsToSelector())
      {
        [v40 actionSheetAssistant:self willStartInteractionWithElement:self->_elementInfo.m_ptr];
      }

      if (title)
      {
      }

      v35 = v51;
      v51 = 0;
      if (v35)
      {
      }
    }
  }
}

uint64_t __84__WKActionSheetAssistant__createSheetWithElementActions_defaultTitle_showLinkTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _runActionWithElementInfo:*(*(a1 + 40) + 24) forActionSheetAssistant:?];
  v2 = *(a1 + 40);

  return [v2 cleanupSheet];
}

uint64_t __84__WKActionSheetAssistant__createSheetWithElementActions_defaultTitle_showLinkTitle___block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) dismissalHandler])
  {
    return 1;
  }

  v2 = *([*(a1 + 32) dismissalHandler] + 16);

  return v2();
}

- (void)showImageSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (![(WKActionSheetAssistant *)self synchronouslyRetrievePositionInformation])
    {
LABEL_17:

      return;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v5 = v17;
    v17[0] = __40__WKActionSheetAssistant_showImageSheet__block_invoke;
    v17[1] = &unk_1F110D5E8;
    v17[2] = self;
    v18 = v4;
    v6 = v4;
    if ((self->_anon_1a8[136] & 1) == 0)
    {
      goto LABEL_19;
    }

    m_ptr = self->_positionInformation.var0.__val_.url.m_string.m_impl.m_ptr;
    if (m_ptr && *(m_ptr + 1) || !self->_positionInformation.var0.__val_.image.m_ptr || (objc_opt_respondsToSelector() & 1) == 0)
    {
      (v17[0])(v16, 0, 0);
LABEL_15:
      v12 = v18;
      v18 = 0;
      if (v12)
      {
      }

      goto LABEL_17;
    }

    v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
    if (self->_anon_1a8[136])
    {
      v8 = v6;
      WebCore::ShareableBitmap::makeCGImageCopy(&cf, self->_positionInformation.var0.__val_.image.m_ptr);
      v5 = [v8 initWithCGImage:cf];
      v6 = cf;
      cf = 0;
      if (!v6)
      {
LABEL_10:
        self->_hasPendingActionSheet = 1;
        selfCopy = self;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3321888768;
        v13[2] = __40__WKActionSheetAssistant_showImageSheet__block_invoke_262;
        v13[3] = &unk_1F110D620;
        selfCopy2 = self;
        selfCopy3 = self;
        v13[4] = v16;
        [v4 actionSheetAssistant:self getAlternateURLForImage:v5 completion:v13];
        v11 = selfCopy2;
        selfCopy2 = 0;
        if (v11)
        {
        }

        if (v5)
        {
        }

        goto LABEL_15;
      }
    }

    else
    {
LABEL_19:
      __break(1u);
    }

    CFRelease(v6);
    goto LABEL_10;
  }
}

void __40__WKActionSheetAssistant_showImageSheet__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if ((*(v6 + 560) & 1) == 0)
  {
    goto LABEL_39;
  }

  v4 = a3;
  v5 = a2;
  v3 = a1;
  WTF::URL::createCFURL(&v31, (v6 + 104));
  v7 = *(v3 + 32);
  if ((*(v7 + 560) & 1) == 0)
  {
    goto LABEL_39;
  }

  WTF::URL::createCFURL(&v30, (v7 + 144));
  if (!v31)
  {
    if (!v5)
    {
      goto LABEL_40;
    }

    v8 = v5;
    v9 = v31;
    v31 = v5;
    if (v9)
    {
    }
  }

  while (1)
  {
    v10 = [_WKActivatedElementInfo alloc];
    v11 = *(v3 + 32);
    if (*(v11 + 560))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v31 = 0;
  }

  v12 = [(_WKActivatedElementInfo *)v10 _initWithType:1 URL:v31 imageURL:v30 userInfo:v4 information:v11 + 32];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([*(v3 + 40) actionSheetAssistant:*(v3 + 32) showCustomSheetForElement:v12] & 1) == 0)
  {
    v13 = *(v3 + 32);
    if (v13)
    {
      [v13 defaultActionsForImageSheet:v12];
      v14 = *(v3 + 32);
      v15 = v29;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v16 = *(v3 + 40);
    v29 = 0;
    v27 = v15;
    if (v16)
    {
      [v16 actionSheetAssistant:v14 decideActionsForElement:v12 defaultActions:&v27];
      v15 = v27;
    }

    else
    {
      v28 = 0;
    }

    v27 = 0;
    if (v15)
    {
    }

    if ([v28 count])
    {
      if (v5 || !v4)
      {
        [*(v3 + 32) _createSheetWithElementActions:v28 defaultTitle:0 showLinkTitle:1];
        v17 = *(v3 + 32);
        if (*(v17 + 16))
        {
          v18 = *(v17 + 24);
          *(v17 + 24) = v12;
          if (v18)
          {
          }

          v19 = *(v3 + 32);
          if ((*(v19 + 560) & 1) == 0)
          {
            v24 = std::__throw_bad_optional_access[abi:sn200100]();
            v25 = v30;
            v30 = 0;
            if (v25)
            {
            }

            v26 = v31;
            v31 = 0;
            if (v26)
            {
            }

            _Unwind_Resume(v24);
          }

          v12 = 0;
          if (([*(v19 + 16) presentSheet:{objc_msgSend(v19, "_presentationStyleForPositionInfo:elementInfo:", v19 + 32, *(v19 + 24))}] & 1) == 0)
          {
            [*(v3 + 32) cleanupSheet];
          }
        }
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
      }
    }

    v20 = v28;
    v28 = 0;
    if (v20)
    {
    }

    v21 = v29;
    v29 = 0;
    if (v21)
    {
    }
  }

  if (v12)
  {
  }

  v22 = v30;
  v30 = 0;
  if (v22)
  {
  }

  v23 = v31;
  v31 = 0;
  if (v23)
  {
  }
}

uint64_t __40__WKActionSheetAssistant_showImageSheet__block_invoke_262(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 634) == 1)
  {
    *(v1 + 634) = 0;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (int64_t)_presentationStyleForPositionInfo:(const void *)info elementInfo:(id)elementInfo
{
  Weak = objc_loadWeak(&self->_view.m_weakReference);
  WebCore::IntRect::operator CGRect();
  [Weak convertRect:objc_msgSend(objc_loadWeak(&self->_view.m_weakReference) toView:{"window"), v8, v9, v10, v11}];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  if (CGRectIsEmpty(v43))
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unoccludedWindowBoundsForActionSheetAssistant:self];
  }

  else
  {
    [objc_msgSend(objc_loadWeak(&self->_view.m_weakReference) "window")];
  }

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v55.origin.x = v22;
  v55.origin.y = v23;
  v55.size.width = v24;
  v55.size.height = v25;
  v45 = CGRectIntersection(v44, v55);
  v26 = v45.origin.x;
  v27 = v45.origin.y;
  v28 = v45.size.width;
  v29 = v45.size.height;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v41 = CGRectGetMinX(v46);
  v47.origin.x = v26;
  v47.origin.y = v27;
  v47.size.width = v28;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v48.origin.x = v22;
  v48.origin.y = v23;
  v48.size.width = v24;
  v48.size.height = v25;
  v37 = CGRectGetMinY(v48);
  v49.origin.x = v22;
  v49.origin.y = v23;
  v49.size.width = v24;
  v49.size.height = v25;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = v26;
  v50.origin.y = v27;
  v50.size.width = v28;
  v50.size.height = v29;
  v39 = CGRectGetMaxX(v50);
  v51.origin.x = v22;
  v51.origin.y = v23;
  v51.size.width = v24;
  v51.size.height = v25;
  MaxY = CGRectGetMaxY(v51);
  v52.origin.x = v26;
  v52.origin.y = v27;
  v52.size.width = v28;
  v52.size.height = v29;
  v30 = CGRectGetMaxY(v52);
  v53.origin.x = v22;
  v53.origin.y = v23;
  v53.size.width = v24;
  v53.size.height = v25;
  v31 = CGRectGetWidth(v53);
  v32 = MinX - v41;
  if (MinX - v41 < MaxX - v39)
  {
    v32 = MaxX - v39;
  }

  if (v32 > v31 * 0.4)
  {
    goto LABEL_22;
  }

  v54.origin.x = v22;
  v54.origin.y = v23;
  v54.size.width = v24;
  v54.size.height = v25;
  v33 = CGRectGetHeight(v54);
  v34 = MinY - v37;
  if (MinY - v37 < MaxY - v30)
  {
    v34 = MaxY - v30;
  }

  if (v34 <= v33 * 0.4)
  {
    v16 = 0;
  }

  else
  {
LABEL_22:
    if ([elementInfo type] || !*(*(info + 35) + 68))
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  if (WeakRetained)
  {
  }

  return v16;
}

- (BOOL)_appendAppLinkOpenActionsForURL:(id)l actions:(id)actions elementInfo:(id)info
{
  if (HIBYTE(word_1EB01D604) == 1)
  {
    if ((word_1EB01D604 & 1) == 0)
    {
LABEL_10:
      LOBYTE(v11) = 0;
      return v11;
    }
  }

  else
  {
    if ((WTF::processHasEntitlement() & 1) == 0)
    {
      LOBYTE(v11) = 0;
      word_1EB01D604 = 256;
      return v11;
    }

    LODWORD(v11) = WTF::processHasEntitlement();
    LOBYTE(word_1EB01D604) = v11;
    HIBYTE(word_1EB01D604) = 1;
    if (!v11)
    {
      return v11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v10 = [WeakRetained actionSheetAssistant:self shouldIncludeAppLinkActionsForElement:info];
  if (WeakRetained)
  {
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [objc_msgSend(MEMORY[0x1E69635C0] appLinksWithURL:l limit:1 error:{0), "firstObject"}];
  if (v11)
  {
    v13 = v11;
    WebCore::localizedString(&v29, @"Open in Safari", v12);
    v14 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v28, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v28 = &stru_1F1147748;
      v16 = &stru_1F1147748;
    }

    v17 = v29;
    v29 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78__WKActionSheetAssistant__appendAppLinkOpenActionsForURL_actions_elementInfo___block_invoke;
    v27[3] = &unk_1E76337A8;
    v27[4] = v13;
    [actions addObject:{+[_WKElementAction _elementActionWithType:title:actionHandler:](_WKElementAction, "_elementActionWithType:title:actionHandler:", 5, v28, v27)}];
    v18 = [objc_msgSend(v13 "targetApplicationProxy")];
    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      WebCore::copyLocalizedString(&v29, @"Open in “%@”", v20);
      v21 = v29;
      v29 = 0;
      if (v21)
      {
        CFAutorelease(v21);
        v22 = v29;
        v29 = 0;
        if (v22)
        {
          CFRelease(v22);
        }
      }

      v23 = [v19 initWithFormat:v21, v18];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__WKActionSheetAssistant__appendAppLinkOpenActionsForURL_actions_elementInfo___block_invoke_2;
      v26[3] = &unk_1E76337A8;
      v26[4] = v13;
      [actions addObject:{+[_WKElementAction _elementActionWithType:title:actionHandler:](_WKElementAction, "_elementActionWithType:title:actionHandler:", 6, v23, v26)}];
      if (v23)
      {
      }
    }

    v24 = v28;
    v28 = 0;
    if (v24)
    {
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

uint64_t __78__WKActionSheetAssistant__appendAppLinkOpenActionsForURL_actions_elementInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = *(a1 + 32);

  return [v2 openWithCompletionHandler:0];
}

uint64_t __78__WKActionSheetAssistant__appendAppLinkOpenActionsForURL_actions_elementInfo___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  v2 = *(a1 + 32);

  return [v2 openWithCompletionHandler:0];
}

- (void)_appendOpenActionsForURL:(id)l actions:(id)actions elementInfo:(id)info
{
  if (![WKActionSheetAssistant _appendAppLinkOpenActionsForURL:"_appendAppLinkOpenActionsForURL:actions:elementInfo:" actions:l elementInfo:?])
  {
    v8 = [_WKElementAction _elementActionWithType:1 info:info assistant:self];

    [actions addObject:v8];
  }
}

- (void)_appendAnimationAction:(id)action elementInfo:(id)info
{
  if (([info isAnimatedImage] & 1) != 0 || *(objc_msgSend(info, "_animationsUnderElement") + 12))
  {
    if ([info canShowAnimationControls])
    {
      objc_loadWeak(&self->_delegate.m_weakReference);
      if (objc_opt_respondsToSelector())
      {
        if ([objc_loadWeak(&self->_delegate.m_weakReference) _allowAnimationControls])
        {
          isAnimating = [info isAnimating];
          if (([info isAnimatedImage] & 1) != 0 || (v8 = objc_msgSend(info, "_animationsUnderElement"), v9 = *(v8 + 12), !v9))
          {
LABEL_11:
            if (!isAnimating)
            {
              v13 = 15;
LABEL_15:
              v14 = [_WKElementAction _elementActionWithType:v13 info:info assistant:self];

              [action addObject:v14];
              return;
            }
          }

          else
          {
            v10 = (*v8 + 80);
            v11 = 96 * v9;
            while (1)
            {
              v12 = *v10;
              v10 += 96;
              if (v12 == 1)
              {
                break;
              }

              v11 -= 96;
              if (!v11)
              {
                goto LABEL_11;
              }
            }
          }

          v13 = 16;
          goto LABEL_15;
        }
      }
    }
  }
}

- (RetainPtr<NSArray<_WKElementAction)defaultActionsForLinkSheet:(id)sheet
{
  v6 = v3;
  v7.var0 = [sheet URL];
  if (v7.var0)
  {
    var0 = v7.var0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(WKActionSheetAssistant *)self _appendOpenActionsForURL:var0 actions:v9 elementInfo:sheet];
    if ([getSSReadingListClass() supportsURL:var0])
    {
      [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 4, sheet, self)}];
    }

    imageURL = [sheet imageURL];
    if (imageURL)
    {
      TCC_kTCCServicePhotos = WebKit::get_TCC_kTCCServicePhotos(imageURL);
      if (WebKit::softLinkTCCTCCAccessPreflight(TCC_kTCCServicePhotos, 0, v12) != 1)
      {
        [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 3, sheet, self)}];
      }
    }

    scheme = [var0 scheme];
    if (!scheme || [scheme caseInsensitiveCompare:@"javascript"])
    {
      [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 2, sheet, self)}];
      [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 7, sheet, self)}];
    }

    if ([sheet type] == 1 || objc_msgSend(sheet, "_isImage"))
    {
      objc_loadWeak(&self->_delegate.m_weakReference);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistantShouldIncludeCopySubjectAction:self])
      {
        [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 14, sheet, self)}];
      }

      objc_loadWeak(&self->_delegate.m_weakReference);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistant:self shouldIncludeShowTextActionForElement:sheet])
      {
        [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 12, sheet, self)}];
      }

      objc_loadWeak(&self->_delegate.m_weakReference);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistant:self shouldIncludeLookUpImageActionForElement:sheet])
      {
        [v9 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 13, sheet, self)}];
      }
    }

    v7.var0 = [(WKActionSheetAssistant *)self _appendAnimationAction:v9 elementInfo:sheet];
  }

  else
  {
    v9 = 0;
  }

  *v6 = v9;
  return v7;
}

- (RetainPtr<NSArray<_WKElementAction)defaultActionsForImageSheet:(id)sheet
{
  v6 = v3;
  v7 = [sheet URL];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    [(WKActionSheetAssistant *)self _appendOpenActionsForURL:v7 actions:v8 elementInfo:sheet];
  }

  else if (![sheet imageURL])
  {
    goto LABEL_5;
  }

  [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 7, sheet, self)}];
LABEL_5:
  v9 = [getSSReadingListClass() supportsURL:v7];
  if (v9)
  {
    v9 = [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 4, sheet, self)}];
  }

  TCC_kTCCServicePhotos = WebKit::get_TCC_kTCCServicePhotos(v9);
  if (WebKit::softLinkTCCTCCAccessPreflight(TCC_kTCCServicePhotos, 0, v11) != 1)
  {
    [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 3, sheet, self)}];
  }

  [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 2, sheet, self)}];
  objc_loadWeak(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    v12 = [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistantShouldIncludeCopySubjectAction:self];
  }

  else
  {
    v12 = 0;
  }

  [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:disabled:](_WKElementAction, "_elementActionWithType:info:assistant:disabled:", 14, sheet, self, v12 ^ 1u)}];
  objc_loadWeak(&self->_delegate.m_weakReference);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistant:self shouldIncludeShowTextActionForElement:sheet])
  {
    [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:](_WKElementAction, "_elementActionWithType:info:assistant:", 12, sheet, self)}];
  }

  objc_loadWeak(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    v13 = [objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistant:self shouldIncludeLookUpImageActionForElement:sheet];
  }

  else
  {
    v13 = 0;
  }

  [v8 addObject:{+[_WKElementAction _elementActionWithType:info:assistant:disabled:](_WKElementAction, "_elementActionWithType:info:assistant:disabled:", 13, sheet, self, v13 ^ 1u)}];
  v14.var0 = [(WKActionSheetAssistant *)self _appendAnimationAction:v8 elementInfo:sheet];
  *v6 = v8;
  return v14;
}

- (void)showLinkSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (!WeakRetained)
  {
    return;
  }

  self->_needsLinkIndicator = 1;
  if (![(WKActionSheetAssistant *)self synchronouslyRetrievePositionInformation])
  {
    return;
  }

  if ((self->_anon_1a8[136] & 1) == 0)
  {
    goto LABEL_33;
  }

  WTF::URL::createCFURL(&v20, (&self->_positionInformation.var0.__engaged_ + 72));
  if (!v20)
  {
    self->_needsLinkIndicator = 0;
    return;
  }

  v5 = [_WKActivatedElementInfo alloc];
  if ((self->_anon_1a8[136] & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = [(_WKActivatedElementInfo *)v5 _initWithType:0 URL:v20 information:&self->_positionInformation];
  objc_loadWeak(&self->_delegate.m_weakReference);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_loadWeak(&self->_delegate.m_weakReference) actionSheetAssistant:self showCustomSheetForElement:v2])
  {
    [(WKActionSheetAssistant *)self defaultActionsForLinkSheet:v2];
    Weak = objc_loadWeak(&self->_delegate.m_weakReference);
    v7 = v19;
    v19 = 0;
    v17 = v7;
    if (Weak)
    {
      [Weak actionSheetAssistant:self decideActionsForElement:v2 defaultActions:&v17];
      v7 = v17;
    }

    else
    {
      v18 = 0;
    }

    v17 = 0;
    if (v7)
    {
    }

    if (![v18 count] || (-[WKActionSheetAssistant _createSheetWithElementActions:defaultTitle:showLinkTitle:](self, "_createSheetWithElementActions:defaultTitle:showLinkTitle:", v18, 0, 1), (m_ptr = self->_interactionSheet.m_ptr) == 0))
    {
      self->_needsLinkIndicator = 0;
LABEL_24:
      v10 = v18;
      v18 = 0;
      if (v10)
      {
      }

      v11 = v19;
      v19 = 0;
      if (v11)
      {
      }

      goto LABEL_28;
    }

    v9 = self->_elementInfo.m_ptr;
    self->_elementInfo.m_ptr = v2;
    if (v9)
    {

      m_ptr = self->_interactionSheet.m_ptr;
    }

    if (self->_anon_1a8[136])
    {
      v2 = 0;
      if (![(WKActionSheet *)m_ptr presentSheet:[(WKActionSheetAssistant *)self _presentationStyleForPositionInfo:&self->_positionInformation elementInfo:self->_elementInfo.m_ptr]])
      {
        [(WKActionSheetAssistant *)self cleanupSheet];
      }

      goto LABEL_24;
    }

LABEL_34:
    v13 = std::__throw_bad_optional_access[abi:sn200100]();
    v14 = v17;
    v17 = 0;
    if (v14)
    {
    }

    v15 = v19;
    v19 = 0;
    if (v15)
    {
    }

    if (v2)
    {
    }

    v16 = v20;
    v20 = 0;
    if (v16)
    {
    }

    _Unwind_Resume(v13);
  }

  self->_needsLinkIndicator = 0;
LABEL_28:
  if (v2)
  {
  }

  v12 = v20;
  v20 = 0;
  if (v12)
  {
  }
}

- (void)_dataDetectorContextMenuPresenter
{
  p_dataDetectorContextMenuPresenter = &self->_dataDetectorContextMenuPresenter;
  if (!self->_dataDetectorContextMenuPresenter.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view.m_weakReference);
    v6 = WebKit::CompactContextMenuPresenter::operator new(0x10, v5);
    WebKit::CompactContextMenuPresenter::CompactContextMenuPresenter(v6, WeakRetained, self);
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](p_dataDetectorContextMenuPresenter, v6);
    if (WeakRetained)
    {
    }
  }

  return *p_dataDetectorContextMenuPresenter;
}

- (void)_mediaControlsContextMenuPresenter
{
  p_mediaControlsContextMenuPresenter = &self->_mediaControlsContextMenuPresenter;
  if (!self->_mediaControlsContextMenuPresenter.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view.m_weakReference);
    v6 = WebKit::CompactContextMenuPresenter::operator new(0x10, v5);
    WebKit::CompactContextMenuPresenter::CompactContextMenuPresenter(v6, WeakRetained, self);
    std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](p_mediaControlsContextMenuPresenter, v6);
    if (WeakRetained)
    {
    }
  }

  return *p_mediaControlsContextMenuPresenter;
}

- (id)_elementActionForDDAction:(id)action
{
  if (self)
  {
    selfCopy = self;
  }

  localizedName = [action localizedName];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __52__WKActionSheetAssistant__elementActionForDDAction___block_invoke;
  v12[3] = &unk_1F110D658;
  selfCopy2 = self;
  if (self)
  {
    selfCopy3 = self;
  }

  v12[4] = action;
  v8 = [_WKElementAction elementActionWithTitle:localizedName actionHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__WKActionSheetAssistant__elementActionForDDAction___block_invoke_287;
  v11[3] = &unk_1E7633758;
  v11[4] = action;
  [(_WKElementAction *)v8 setDismissalHandler:v11];
  v9 = selfCopy2;
  selfCopy2 = 0;
  if (v9)
  {
  }

  if (self)
  {
  }

  return v8;
}

uint64_t __52__WKActionSheetAssistant__elementActionForDDAction___block_invoke(uint64_t a1)
{
  *(*(a1 + 40) + 633) = [*(a1 + 32) hasUserInterface];
  v2 = [(*MEMORY[0x1E69E2358])() sharedController];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return [v2 performAction:v3 fromAlertController:v4 interactionDelegate:?];
}

- (void)showDataDetectorsUIForPositionInformation:(const void *)information
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (WeakRetained)
  {

    if (self->_anon_1a8[136])
    {
      WebKit::InteractionInformationAtPosition::operator=(&self->_positionInformation, information);
      if ((self->_anon_1a8[136] & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      WebKit::InteractionInformationAtPosition::InteractionInformationAtPosition(&self->_positionInformation, information);
      self->_anon_1a8[136] = 1;
    }

    if (WebCore::DataDetection::canBePresentedByDataDetectors((&self->_positionInformation.var0.__engaged_ + 72), v6))
    {
      if (self->_anon_1a8[136])
      {
        CFURL = WTF::URL::createCFURL(&v22, (&self->_positionInformation.var0.__engaged_ + 72));
        if (!v22)
        {
          return;
        }

        sharedController = [(*MEMORY[0x1E69E2358])(CFURL) sharedController];
        objc_loadWeak(&self->_delegate.m_weakReference);
        if (objc_opt_respondsToSelector())
        {
          Weak = objc_loadWeak(&self->_delegate.m_weakReference);
          if ((self->_anon_1a8[136] & 1) == 0)
          {
            goto LABEL_35;
          }

          v10 = [Weak dataDetectionContextForActionSheetAssistant:self positionInformation:&self->_positionInformation];
        }

        else
        {
          v10 = 0;
        }

        objc_loadWeak(&self->_delegate.m_weakReference);
        if (objc_opt_respondsToSelector())
        {
          v11 = [objc_loadWeak(&self->_delegate.m_weakReference) selectedTextForActionSheetAssistant:self];
        }

        else
        {
          v11 = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && [sharedController shouldImmediatelyLaunchDefaultActionForURL:v22])
        {
          if (self->_anon_1a8[136])
          {
            [-[WKActionSheetAssistant _elementActionForDDAction:](self _elementActionForDDAction:{objc_msgSend(sharedController, "defaultActionForURL:results:context:", v22, self->_positionInformation.var0.__val_.dataDetectorResults.m_ptr, v10)), "_runActionWithElementInfo:forActionSheetAssistant:", self->_elementInfo.m_ptr, self}];
            goto LABEL_32;
          }
        }

        else
        {
          if ((self->_anon_1a8[136] & 1) == 0)
          {
            goto LABEL_35;
          }

          v12 = v22;
          m_ptr = self->_positionInformation.var0.__val_.dataDetectorIdentifier.m_impl.m_ptr;
          if (m_ptr)
          {
            atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v21, m_ptr);
            if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(m_ptr, v14);
            }
          }

          else
          {
            v21 = &stru_1F1147748;
            v15 = &stru_1F1147748;
          }

          if ((self->_anon_1a8[136] & 1) == 0)
          {
            goto LABEL_35;
          }

          v16 = [sharedController actionsForURL:v12 identifier:v21 selectedText:v11 results:self->_positionInformation.var0.__val_.dataDetectorResults.m_ptr context:v10];
          v17 = v21;
          v21 = 0;
          if (v17)
          {
          }

          if (![v16 count] || !objc_msgSend(objc_loadWeak(&self->_view.m_weakReference), "window"))
          {
            goto LABEL_32;
          }

          _dataDetectorContextMenuPresenter = [(WKActionSheetAssistant *)self _dataDetectorContextMenuPresenter];
          if (self->_anon_1a8[136])
          {
            v19 = _dataDetectorContextMenuPresenter;
            WebCore::IntPoint::operator CGPoint();
            v23.size.width = *MEMORY[0x1E695F060];
            v23.size.height = *(MEMORY[0x1E695F060] + 8);
            WebKit::CompactContextMenuPresenter::present(v19, v23);
LABEL_32:
            v20 = v22;
            v22 = 0;
            if (v20)
            {
            }

            return;
          }
        }
      }

LABEL_35:
      __break(1u);
    }
  }
}

- (id)_uiMenuElementsForMediaControlContextMenuItems:(void *)items
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(items + 3)];
  v5 = *(items + 3);
  if (v5)
  {
    v6 = 0;
    v7 = *items;
    v8 = 48 * v5;
    do
    {
      if (!*(v7 + v6))
      {
        v9 = *(v7 + v6 + 8);
        if (!v9 || !*(v9 + 4))
        {
          v10 = *(v7 + v6 + 16);
          if (v10)
          {
            if (!(*(v10 + 4) | *(v7 + v6 + 44)))
            {
              goto LABEL_8;
            }
          }

          else if (!*(v7 + v6 + 44))
          {
LABEL_8:
            v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1147748 image:0 identifier:0 options:1 children:MEMORY[0x1E695E0F0]];
            if (!v11)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }
      }

      v12 = v7 + v6;
      v13 = *(v7 + v6 + 16);
      if (v13)
      {
        if (v13[1])
        {
          v14 = MEMORY[0x1E69DCAB8];
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&location, v13);
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v15);
          }

          v13 = [v14 systemImageNamed:location];
          v16 = location;
          location = 0;
          if (v16)
          {
          }
        }

        else
        {
          v13 = 0;
        }
      }

      if (*(v12 + 44))
      {
        v17 = MEMORY[0x1E69DCC60];
        v18 = *(v7 + v6 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&location, v18);
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v19);
          }
        }

        else
        {
          location = &stru_1F1147748;
          v24 = &stru_1F1147748;
        }

        v11 = [v17 menuWithTitle:location image:v13 identifier:0 options:0 children:{-[WKActionSheetAssistant _uiMenuElementsForMediaControlContextMenuItems:](self, "_uiMenuElementsForMediaControlContextMenuItems:", v12 + 32)}];
        v25 = location;
        location = 0;
        if (v25)
        {
        }

        if (!v11)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69DC628];
        v21 = *(v7 + v6);
        v22 = *(v7 + v6 + 8);
        if (v22)
        {
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v36, v22);
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v23);
          }
        }

        else
        {
          v36 = &stru_1F1147748;
          v26 = &stru_1F1147748;
        }

        v27 = v36;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3321888768;
        v34[2] = ___ZZ73__WKActionSheetAssistant__uiMenuElementsForMediaControlContextMenuItems__ENK3__8clERN7WebCore28MediaControlsContextMenuItemE_block_invoke;
        v34[3] = &__block_descriptor_48_e8_32c148_ZTSKZZ73__WKActionSheetAssistant__uiMenuElementsForMediaControlContextMenuItems__ENK3__8clERN7WebCore28MediaControlsContextMenuItemEEUlP8UIActionE__e18_v16__0__UIAction_8l;
        location = 0;
        objc_initWeak(&location, self);
        v33 = v21;
        v35[0] = 0;
        objc_copyWeak(v35, &location);
        v35[1] = v33;
        v11 = [v20 actionWithTitle:v27 image:v13 identifier:0 handler:v34];
        objc_destroyWeak(&location);
        v28 = v36;
        v36 = 0;
        if (v28)
        {
        }

        if (*(v7 + v6 + 24) == 1)
        {
          [v11 setState:1];
        }

        objc_destroyWeak(v35);
        if (!v11)
        {
          goto LABEL_37;
        }
      }

LABEL_36:
      [v4 addObject:v11];
LABEL_37:
      v6 += 48;
    }

    while (v8 != v6);
  }

  if (v4)
  {
    v29 = v4;
  }

  return v4;
}

- (void)showMediaControlsContextMenu:(FloatRect *)menu items:(void *)items completionHandler:(void *)handler
{
  v30 = 0;
  v31 = 0;
  v8 = *(items + 3);
  if (v8 == 1)
  {
    v9 = *(*items + 8);
    *(*items + 8) = 0;
    v10 = *items;
    items = (*items + 32);
    v8 = *(v10 + 44);
    v11 = (v10 + 40);
  }

  else
  {
    v9 = 0;
    v11 = (items + 8);
  }

  v12 = *v11;
  v13 = *items;
  *items = 0;
  *(items + 1) = 0;
  v30 = v13;
  v31 = __PAIR64__(v8, v12);
  objc_loadWeak(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    v14 = [objc_loadWeak(&self->_delegate.m_weakReference) additionalMediaControlsContextMenuItemsForActionSheetAssistant:self];
  }

  else
  {
    v14 = 0;
  }

  if ([objc_loadWeak(&self->_view.m_weakReference) window] && (HIDWORD(v31) || objc_msgSend(v14, "count")))
  {
    v15 = [-[WKActionSheetAssistant _uiMenuElementsForMediaControlContextMenuItems:](self _uiMenuElementsForMediaControlContextMenuItems:{&v30), "arrayByAddingObjectsFromArray:", v14}];
    v16 = MEMORY[0x1E69DCC60];
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v17);
      }
    }

    else
    {
      v29 = &stru_1F1147748;
      v19 = &stru_1F1147748;
    }

    v20 = [v16 menuWithTitle:v29 children:v15];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    m_ptr = self->_mediaControlsContextMenu.m_ptr;
    self->_mediaControlsContextMenu.m_ptr = v21;
    if (m_ptr)
    {
    }

    v24 = v29;
    v29 = 0;
    if (v24)
    {
    }

    self->_mediaControlsContextMenuTargetFrame = *menu;
    v25 = *handler;
    *handler = 0;
    ptr = self->_mediaControlsContextMenuCallback.m_function.m_callableWrapper.__ptr_;
    self->_mediaControlsContextMenuCallback.m_function.m_callableWrapper.__ptr_ = v25;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    _mediaControlsContextMenuPresenter = [(WKActionSheetAssistant *)self _mediaControlsContextMenuPresenter];
    WebCore::FloatRect::operator CGRect();
    WebKit::CompactContextMenuPresenter::present(_mediaControlsContextMenuPresenter, v32);
  }

  else
  {
    WTF::CompletionHandler<void ()(unsigned long long)>::operator()(handler);
  }

  WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v18);
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v28);
    }
  }
}

- (id)suggestedActionsForContextMenuWithPositionInformation:(const void *)information
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [[_WKActivatedElementInfo alloc] _initWithInteractionInformationAtPosition:information isUsingAlternateURLForImage:0 userInfo:0];
  if (*(information + 24) == 1)
  {
    if (self)
    {
      [(WKActionSheetAssistant *)self defaultActionsForLinkSheet:v5];
      goto LABEL_6;
    }

LABEL_9:
    v14 = 0;
LABEL_10:
    v7 = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!self)
  {
    goto LABEL_9;
  }

  [(WKActionSheetAssistant *)self defaultActionsForImageSheet:v5];
LABEL_6:
  self = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v6 = v14;
  v7 = 0;
  if (v5)
  {
LABEL_11:
    v8 = v5;
  }

LABEL_12:
  if ([(WKActionSheetAssistant *)self count])
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[WKActionSheetAssistant count](self, "count")}];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [(WKActionSheetAssistant *)self countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(self);
          }

          [v9 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "uiActionForElementInfo:", v5)}];
        }

        v10 = [(WKActionSheetAssistant *)self countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    if (v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
LABEL_21:
    }
  }

  if ((v7 & 1) == 0)
  {
  }

  if (v14)
  {
  }

  if (v5)
  {
  }

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  ptr = self->_dataDetectorContextMenuPresenter.__ptr_;
  if (!ptr || [*(ptr + 1) contextMenuInteraction] != interaction)
  {
    v7 = self->_mediaControlsContextMenuPresenter.__ptr_;
    if (!v7 || [*(v7 + 1) contextMenuInteraction] != interaction)
    {
      return 0;
    }

    v12 = MEMORY[0x1E69DC8D8];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3321888768;
    v33[2] = __80__WKActionSheetAssistant_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v33[3] = &__block_descriptor_40_e8_32c93_ZTSKZ80__WKActionSheetAssistant_contextMenuInteraction_configurationForMenuAtLocation__E3__9_e25___UIMenu_16__0__NSArray_8l;
    location[0] = 0;
    objc_initWeak(location, self);
    v34 = 0;
    objc_copyWeak(&v34, location);
    v8 = [v12 configurationWithIdentifier:0 previewProvider:0 actionProvider:v33];
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
    return v8;
  }

  sharedController = [(*MEMORY[0x1E69E2358])() sharedController];
  objc_loadWeak(&self->_delegate.m_weakReference);
  if (objc_opt_respondsToSelector())
  {
    result = objc_loadWeak(&self->_delegate.m_weakReference);
    if ((self->_anon_1a8[136] & 1) == 0)
    {
      goto LABEL_36;
    }

    v11 = [result dataDetectionContextForActionSheetAssistant:self positionInformation:&self->_positionInformation];
  }

  else
  {
    v11 = 0;
  }

  objc_loadWeak(&self->_delegate.m_weakReference);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_loadWeak(&self->_delegate.m_weakReference) selectedTextForActionSheetAssistant:self];
    v13 = result;
  }

  else
  {
    v13 = 0;
  }

  v37 = 0;
  if (self->_anon_1a8[136])
  {
    result = WTF::URL::createCFURL(location, (&self->_positionInformation.var0.__engaged_ + 72));
    if (self->_anon_1a8[136])
    {
      v14 = location[0];
      m_ptr = self->_positionInformation.var0.__val_.dataDetectorIdentifier.m_impl.m_ptr;
      if (m_ptr)
      {
        atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
        result = MEMORY[0x19EB00B70](&v36, m_ptr);
        if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(m_ptr, v16);
        }
      }

      else
      {
        v36 = &stru_1F1147748;
        result = &stru_1F1147748;
      }

      if (self->_anon_1a8[136])
      {
        result = [sharedController resultForURL:v14 identifier:v36 selectedText:v13 results:self->_positionInformation.var0.__val_.dataDetectorResults.m_ptr context:v11 extendedContext:&v37];
        v17 = result;
        v18 = v36;
        v36 = 0;
        if (v18)
        {
        }

        v19 = location[0];
        location[0] = 0;
        if (v19)
        {
        }

        if (self->_anon_1a8[136])
        {
          if (self->_positionInformation.var0.__val_.isLink && (v20 = self->_positionInformation.var0.__val_.textIndicator.m_ptr) != 0)
          {
            *location = *(v20 + 24);
            v21 = WebCore::FloatRect::operator CGRect();
          }

          else
          {
            v21 = WebCore::IntRect::operator CGRect();
          }

          v26 = v22;
          v27 = v23;
          v28 = v24;
          v29 = v25;
          v30 = (*MEMORY[0x1E69E2320])(v21);
          result = [v30 updateContext:v37 withSourceRect:{v26, v27, v28, v29}];
          v31 = result;
          if (v17)
          {
            return [v30 contextMenuConfigurationWithResult:v17 inView:objc_loadWeak(&self->_view.m_weakReference) context:result menuIdentifier:0];
          }

          if (self->_anon_1a8[136])
          {
            WTF::URL::createCFURL(location, (&self->_positionInformation.var0.__engaged_ + 72));
            v8 = [v30 contextMenuConfigurationWithURL:location[0] inView:objc_loadWeak(&self->_view.m_weakReference) context:v31 menuIdentifier:0];
            v32 = location[0];
            location[0] = 0;
            if (v32)
            {
            }

            return v8;
          }
        }
      }
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t __80__WKActionSheetAssistant_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained[74];

  return v2;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  ptr = self->_dataDetectorContextMenuPresenter.__ptr_;
  if (!ptr || [*(ptr + 1) contextMenuInteraction] != interaction)
  {
    v8 = self->_mediaControlsContextMenuPresenter.__ptr_;
    if (!v8 || [*(v8 + 1) contextMenuInteraction] != interaction)
    {
      return 0;
    }

    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    WebCore::FloatRect::operator CGRect();
    v11 = [v16 initWithFrame:?];
    v17 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v18 = objc_alloc(MEMORY[0x1E69DCE38]);
    Weak = objc_loadWeak(&self->_view.m_weakReference);
    WebCore::FloatPoint::operator CGPoint();
    v20 = [v18 initWithContainer:Weak center:?];
    v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v11 parameters:v17 target:v20];
    v9 = v21;
    if (!v21)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  result = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (self->_anon_1a8[136])
  {
    v11 = result;
    WebCore::IntPoint::operator CGPoint();
    v13 = v12;
    v15 = v14;
    if (objc_opt_respondsToSelector())
    {
      v9 = [v11 createTargetedContextMenuHintForActionSheetAssistant:self];
LABEL_17:
      if (v11)
      {
      }

      return v9;
    }

    v17 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v20 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:objc_loadWeak(&self->_view.m_weakReference) center:{v13, v15}];
    v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:objc_loadWeak(&self->_view.m_weakReference) parameters:v17 target:v20];
    v9 = v21;
    if (!v21)
    {
LABEL_13:
      if (v20)
      {
      }

      if (v17)
      {
      }

      goto LABEL_17;
    }

LABEL_12:
    v22 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __90__WKActionSheetAssistant_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v7[3] = &__block_descriptor_40_e8_32c104_ZTSKZ90__WKActionSheetAssistant_contextMenuInteraction_willDisplayMenuForConfiguration_animator__E4__10_e5_v8__0l;
  objc_initWeak(&v6, self);
  v8 = 0;
  objc_copyWeak(&v8, &v6);
  [animator addCompletion:v7];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void __90__WKActionSheetAssistant_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    objc_loadWeak(WeakRetained + 1);
    if (objc_opt_respondsToSelector())
    {
      [objc_loadWeak(v2 + 1) actionSheetAssistantDidShowContextMenu:v2];
    }
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  ptr = self->_dataDetectorContextMenuPresenter.__ptr_;
  if (ptr && [*(ptr + 1) contextMenuInteraction] == interaction)
  {
    [(WKActionSheetAssistant *)self _resetDataDetectorContextMenuPresenter];
  }

  v9 = self->_mediaControlsContextMenuPresenter.__ptr_;
  if (v9 && [*(v9 + 1) contextMenuInteraction] == interaction)
  {
    [(WKActionSheetAssistant *)self _resetMediaControlsContextMenuPresenter];
  }

  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __82__WKActionSheetAssistant_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32c96_ZTSKZ82__WKActionSheetAssistant_contextMenuInteraction_willEndForConfiguration_animator__E4__11_e5_v8__0l;
  objc_initWeak(&v10, self);
  v12 = 0;
  objc_copyWeak(&v12, &v10);
  [animator addCompletion:v11];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void __82__WKActionSheetAssistant_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    objc_loadWeak(WeakRetained + 1);
    if (objc_opt_respondsToSelector())
    {
      [objc_loadWeak(v2 + 1) actionSheetAssistantDidDismissContextMenu:v2];
    }
  }
}

- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration
{
  ptr = self->_dataDetectorContextMenuPresenter.__ptr_;
  if (!ptr || [*(ptr + 1) contextMenuInteraction] != interaction || self->_anon_1a8[136] != 1)
  {
    return 0;
  }

  return [(WKActionSheetAssistant *)self suggestedActionsForContextMenuWithPositionInformation:&self->_positionInformation];
}

- (void)handleElementActionWithType:(int64_t)type element:(id)element needsInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  if (interactionCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained actionSheetAssistant:self willStartInteractionWithElement:element];
  }

  if (type > 12)
  {
    if ((type - 15) < 2)
    {
      if (type == 16)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      [WeakRetained actionSheetAssistant:self performAction:v14];
      if (*([element _animationsUnderElement] + 12) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        _animationsUnderElement = [element _animationsUnderElement];
        _interactionLocation = 0;
        v38 = 0;
        v16 = *(_animationsUnderElement + 12);
        if (v16)
        {
          if (v16 >= 0x3333334)
          {
            __break(0xC471u);
            return;
          }

          v17 = 80 * v16;
          v18 = WTF::fastMalloc((80 * v16));
          LODWORD(v38) = v17 / 0x50;
          _interactionLocation = v18;
          if (*(_animationsUnderElement + 12))
          {
            v19 = 0;
            v20 = 0;
            do
            {
              memmove(v18, (*_animationsUnderElement + v19), 0x50uLL);
              ++v20;
              v18 = (v18 + 80);
              v19 += 96;
            }

            while (v20 < *(_animationsUnderElement + 12));
            HIDWORD(v38) = v20;
          }
        }

        [WeakRetained _actionSheetAssistant:self performAction:v14 onElements:&_interactionLocation];
        v22 = _interactionLocation;
        if (_interactionLocation)
        {
          _interactionLocation = 0;
          LODWORD(v38) = 0;
          WTF::fastFree(v22, v21);
        }
      }
    }

    else if (type == 13)
    {
      image = [element image];
      imageURL = [element imageURL];
      title = [element title];
      [element boundingRect];
      [WeakRetained actionSheetAssistant:self lookUpImage:image imageURL:imageURL title:title imageBounds:?];
    }

    else if (type == 14)
    {
      [WeakRetained actionSheetAssistant:self copySubject:objc_msgSend(element sourceMIMEType:{"image"), objc_msgSend(element, "imageMIMEType")}];
    }
  }

  else
  {
    if (type > 2)
    {
      if (type != 3)
      {
        if (type != 7)
        {
          if (type == 12)
          {
            image2 = [element image];
            imageURL2 = [element imageURL];
            title2 = [element title];
            [element boundingRect];
            [WeakRetained actionSheetAssistant:self showTextForImage:image2 imageURL:imageURL2 title:title2 imageBounds:?];
          }

          goto LABEL_52;
        }

        MEMORY[0x19EB01DE0](&_interactionLocation, [element imageURL]);
        if (WTF::URL::protocolIs() && [element image])
        {
          v30 = objc_opt_respondsToSelector();
          v31 = _interactionLocation;
          _interactionLocation = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v29);
          }

          if (v30)
          {
            image3 = [element image];
            [element boundingRect];
            [WeakRetained actionSheetAssistant:self shareElementWithImage:image3 rect:?];
            goto LABEL_52;
          }
        }

        else
        {
          v33 = _interactionLocation;
          _interactionLocation = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v28);
          }
        }

        if ([element URL] && ((v34 = objc_msgSend(objc_msgSend(element, "URL"), "scheme")) == 0 || objc_msgSend(v34, "caseInsensitiveCompare:", @"javascript")))
        {
          imageURL3 = [element URL];
        }

        else
        {
          imageURL3 = [element imageURL];
        }

        v36 = imageURL3;
        [element boundingRect];
        [WeakRetained actionSheetAssistant:self shareElementWithURL:v36 rect:?];
        goto LABEL_52;
      }

      v13 = 1;
LABEL_32:
      [WeakRetained actionSheetAssistant:self performAction:v13];
      goto LABEL_52;
    }

    if (type == 1)
    {
      if ([element _isUsingAlternateURLForImage])
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        v27 = [element URL];
        [mEMORY[0x1E69DC668] openURL:v27 options:MEMORY[0x1E695E0F8] completionHandler:0];
      }

      else
      {
        _interactionLocation = [element _interactionLocation];
        WebCore::IntPoint::operator CGPoint();
        [WeakRetained actionSheetAssistant:self openElementAtLocation:?];
      }

      goto LABEL_52;
    }

    if (type == 2)
    {
      v13 = 0;
      goto LABEL_32;
    }
  }

LABEL_52:
  if (interactionCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained actionSheetAssistantDidStopInteraction:self];
  }

  if (WeakRetained)
  {
  }
}

- (id)currentlyAvailableActionTitles
{
  v16 = *MEMORY[0x1E69E9840];
  m_ptr = self->_interactionSheet.m_ptr;
  if (!m_ptr)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[WKActionSheet actions](m_ptr, "actions"), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions = [(WKActionSheet *)self->_interactionSheet.m_ptr actions];
  v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(actions);
        }

        [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "title")}];
      }

      v7 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_contentsOfContextMenuItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([objc_msgSend(item "title")])
  {
    [dictionary setObject:objc_msgSend(item forKeyedSubscript:{"title"), @"title"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(item, "children"), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    children = [item children];
    v8 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(children);
          }

          [v6 addObject:{-[WKActionSheetAssistant _contentsOfContextMenuItem:](self, "_contentsOfContextMenuItem:", *(*(&v13 + 1) + 8 * v11++))}];
        }

        while (v9 != v11);
        v9 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKeyedSubscript:@"children"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [item state] == 1)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"checked"];
  }

  return dictionary;
}

- (id)currentlyAvailableMediaControlsContextMenuItems
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_mediaControlsContextMenu.m_ptr)
  {
    [array addObject:{-[WKActionSheetAssistant _contentsOfContextMenuItem:](self, "_contentsOfContextMenuItem:")}];
  }

  return array;
}

@end