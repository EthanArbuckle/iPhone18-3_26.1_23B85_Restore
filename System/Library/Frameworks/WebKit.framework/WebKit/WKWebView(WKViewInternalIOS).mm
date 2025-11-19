@interface WKWebView(WKViewInternalIOS)
- (WTF::RunLoop)_presentLockdownMode;
- (WebCore::IOSurface)_takeViewSnapshot;
- (uint64_t)_acquireResizeAssertionForReason:()WKViewInternalIOS;
- (uint64_t)_endLiveResize;
- (uint64_t)_firePresentationUpdateForPendingStableStatePresentationCallbacks;
- (uint64_t)_presentLockdownMode;
- (uint64_t)_restorePageScrollPosition:()WKViewInternalIOS scrollOrigin:previousObscuredInset:scale:;
- (uint64_t)_restorePageStateToUnobscuredCenter:()WKViewInternalIOS scale:;
- (uint64_t)_scheduleVisibleContentRectUpdateAfterScrollInView:()WKViewInternalIOS;
- (uint64_t)_takeViewSnapshot;
- (uint64_t)_updateVisibleContentRects;
- (uint64_t)scrollView:()WKViewInternalIOS handleScrollUpdate:completion:;
- (void)_acquireResizeAssertionForReason:;
- (void)_acquireResizeAssertionForReason:()WKViewInternalIOS;
- (void)_endLiveResize;
- (void)_firePresentationUpdateForPendingStableStatePresentationCallbacks;
- (void)_presentLockdownMode;
- (void)_rescheduleEndLiveResizeTimer;
- (void)_restorePageScrollPosition:()WKViewInternalIOS scrollOrigin:previousObscuredInset:scale:;
- (void)_restorePageStateToUnobscuredCenter:()WKViewInternalIOS scale:;
- (void)_scheduleVisibleContentRectUpdateAfterScrollInView:()WKViewInternalIOS;
- (void)_takeViewSnapshot;
- (void)_updateVisibleContentRects;
- (void)scrollView:()WKViewInternalIOS handleScrollUpdate:completion:;
- (void)setConversationContext:()WKViewInternalIOS;
@end

@implementation WKWebView(WKViewInternalIOS)

- (void)setConversationContext:()WKViewInternalIOS
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_conversationContextFromClient.m_ptr;
  self->_conversationContextFromClient.m_ptr = a3;
  if (m_ptr)
  {
  }

  v7 = self->_contentView.m_ptr;

  [(WKContentView *)v7 _setConversationContext:a3];
}

- (void)_rescheduleEndLiveResizeTimer
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endLiveResize];
  if (WeakRetained)
  {
  }
}

- (void)_acquireResizeAssertionForReason:
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((*(*(a1 + 40) + 4) & 1) == 0)
    {
      v3 = WeakRetained;
      [WeakRetained _invalidateResizeAssertions];
      *(*(a1 + 40) + 4) = 1;
      WeakRetained = v3;
    }
  }
}

- (void)_firePresentationUpdateForPendingStableStatePresentationCallbacks
{
  v2 = a1[1];
  *a1 = &unk_1F10FD270;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_firePresentationUpdateForPendingStableStatePresentationCallbacks
{
  result = [*(*(a1 + 8) + 1736) count];
  if (result)
  {
    v3 = *(a1 + 8);

    return [v3 _firePresentationUpdateForPendingStableStatePresentationCallbacks];
  }

  return result;
}

- (void)_endLiveResize
{
  v2 = a1[1];
  *a1 = &unk_1F10FD4E0;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (void)_presentLockdownMode
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];
  }

  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  WebCore::copyLocalizedString(&arg, @"Lockdown Mode is Turned On For “%@“", v6);
  v7 = arg;
  arg = 0;
  if (v7)
  {
    CFAutorelease(v7);
    v8 = arg;
    arg = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = [v5 initWithFormat:v7, v3];
  WebKit::createUIAlertController(v9, *(a1 + 8), &v17);
  if (v9)
  {
  }

  v11 = v17;
  v12 = MEMORY[0x1E69DC648];
  WebCore::copyLocalizedString(&arg, @"OK", v10);
  v13 = arg;
  arg = 0;
  if (v13)
  {
    CFAutorelease(v13);
    v14 = arg;
    arg = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  [v11 addAction:{objc_msgSend(v12, "actionWithTitle:style:handler:", v13, 0, 0)}];
  v15 = [*(a1 + 16) _wk_viewControllerForFullScreenPresentation];
  [v15 presentViewController:v17 animated:1 completion:0];
  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v16 = v17;
  v17 = 0;
  if (v16)
  {
  }
}

- (WTF::RunLoop)_presentLockdownMode
{
  if (a2 == 2)
  {
    lockdownModeWarningNeeded = 1;
  }

  else
  {
    lockdownModeWarningNeeded = 0;
    if (a2 == 3)
    {
      v2 = [MEMORY[0x1E695E000] standardUserDefaults];

      return [v2 setBool:1 forKey:@"WebKitCaptivePortalModeAlertShown"];
    }

    else
    {
      v3 = result;
      WTF::RunLoop::mainSingleton(result);
      v4 = *(v3 + 4);
      if (v4)
      {
        v5 = v4;
      }

      v6 = *(v3 + 5);
      *(v3 + 5) = 0;
      v7 = WTF::fastMalloc(0x18);
      *v7 = &unk_1F10FD318;
      *(v7 + 1) = v4;
      *(v7 + 2) = v6;
      v8 = v7;
      WTF::RunLoop::dispatch();
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  return result;
}

- (uint64_t)_presentLockdownMode
{
  *this = &unk_1F10FD318;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)_restorePageScrollPosition:()WKViewInternalIOS scrollOrigin:previousObscuredInset:scale:
{
  v2 = a1[1];
  *a1 = &unk_1F10FD3C8;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_restorePageScrollPosition:()WKViewInternalIOS scrollOrigin:previousObscuredInset:scale:
{
  LODWORD(a2) = *(a1 + 28);
  LODWORD(a3) = *(a1 + 32);
  LODWORD(a4) = *(a1 + 36);
  LODWORD(a5) = *(a1 + 40);
  LODWORD(a6) = *(a1 + 44);
  LODWORD(a7) = *(a1 + 48);
  return [*(a1 + 8) _restorePageScrollPosition:*(a1 + 16) scrollOrigin:*(a1 + 24) previousObscuredInset:a2 scale:{a3, a4, a5, a6, a7, *(a1 + 56)}];
}

- (void)_restorePageStateToUnobscuredCenter:()WKViewInternalIOS scale:
{
  v2 = a1[1];
  *a1 = &unk_1F10FD3F0;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_restorePageStateToUnobscuredCenter:()WKViewInternalIOS scale:
{
  v3 = *(this + 1);
  *this = &unk_1F10FD3F0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)_takeViewSnapshot
{
  v2 = a1[1];
  *a1 = &unk_1F10FD418;
  a1[1] = 0;
  if (v2)
  {
    WTF::RefCounted<WebKit::ViewSnapshot>::deref((v2 + 8));
  }

  return a1;
}

- (uint64_t)_takeViewSnapshot
{
  v3 = *(this + 1);
  *this = &unk_1F10FD418;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ViewSnapshot>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

- (WebCore::IOSurface)_takeViewSnapshot
{
  v2 = *a2;
  *a2 = 0;
  if (v2)
  {
    v3 = *(result + 1);
    v6 = v2;
    WebKit::ViewSnapshot::setSurface(v3, &v6);
    result = v6;
    if (v6)
    {
      WebCore::IOSurface::~IOSurface(v6);

      return bmalloc::api::tzoneFree(v4, v5);
    }
  }

  return result;
}

- (uint64_t)scrollView:()WKViewInternalIOS handleScrollUpdate:completion:
{
  *a1 = &unk_1F10FD440;
  _Block_release(*(a1 + 16));
  objc_destroyWeak((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FD440;
  _Block_release(*(a1 + 16));
  objc_destroyWeak((a1 + 8));

  return WTF::fastFree(a1, v2);
}

- (void)scrollView:()WKViewInternalIOS handleScrollUpdate:completion:
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(a1 + 24))
    {
      if ((WeakRetained[1754] & 1) == 0)
      {
        *(WeakRetained + 1753) = a2 ^ 1 | 0x100;
      }

      (*(*(a1 + 16) + 16))();
    }
  }

  else if (*(a1 + 24))
  {
    v5 = *(*(a1 + 16) + 16);

    v5();
  }
}

- (uint64_t)_acquireResizeAssertionForReason:()WKViewInternalIOS
{
  *a1 = &unk_1F10FD468;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  objc_destroyWeak((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FD468;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  objc_destroyWeak((a1 + 8));

  return WTF::fastFree(a1, v4);
}

- (void)_acquireResizeAssertionForReason:()WKViewInternalIOS
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 16) + 4) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        v6 = v3;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WKWebView %p next visible content rect update took too long; clearing resize assertions", &v5, 0xCu);
      }

      [v3 _invalidateResizeAssertions];
      *(*(a1 + 16) + 4) = 1;
    }
  }
}

- (void)_scheduleVisibleContentRectUpdateAfterScrollInView:()WKViewInternalIOS
{
  v2 = a1[1];
  *a1 = &unk_1F10FD490;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_scheduleVisibleContentRectUpdateAfterScrollInView:()WKViewInternalIOS
{
  v1 = *(a1 + 8);
  result = [v1 _isValid];
  if (result)
  {

    return [v1 _addUpdateVisibleContentRectPreCommitHandler];
  }

  return result;
}

- (void)_updateVisibleContentRects
{
  v2 = a1[1];
  *a1 = &unk_1F10FD4B8;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)_updateVisibleContentRects
{
  v3 = *(this + 1);
  *this = &unk_1F10FD4B8;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)_endLiveResize
{
  v3 = *(this + 1);
  *this = &unk_1F10FD4E0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

@end