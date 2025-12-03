@interface WKApplicationStateTrackingView
- (BOOL)isBackground;
- (WKApplicationStateTrackingView)initWithFrame:(CGRect)frame webView:(id)view;
- (id).cxx_construct;
- (void)_applicationDidEnterBackground;
- (void)_applicationDidFinishSnapshottingAfterEnteringBackground;
- (void)_applicationWillEnterForeground;
- (void)_didCompleteSnapshotSequence;
- (void)_willBeginSnapshotSequence;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation WKApplicationStateTrackingView

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  return self;
}

- (void)didMoveToWindow
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(UIView *)[(WKApplicationStateTrackingView *)self _contentView] window])
  {
    Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
    if (Weak)
    {
      [Weak _page];
      if (v9)
      {
        v4 = *(v9 + 1169);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    WebKit::ApplicationStateTracker::setWindow(self->_applicationStateTracker.m_ptr, [(UIView *)[(WKApplicationStateTrackingView *)self _contentView] window]);
    v5 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v6 = *(v9 + 40);
      }

      else
      {
        v6 = 0;
      }

      isBackground = [(WKApplicationStateTrackingView *)self isBackground];
      *buf = 134219008;
      selfCopy = self;
      v12 = 2048;
      v13 = v9;
      v14 = 2048;
      v15 = v6;
      v16 = 1024;
      v17 = v4 & 1;
      v18 = 1024;
      v19 = isBackground;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKApplicationStateTrackingView: View with page [%p, pageProxyID=%llu] was added to a window, _lastObservedStateWasBackground=%d, isNowBackground=%d", buf, 0x2Cu);
    }

    isBackground2 = [(WKApplicationStateTrackingView *)self isBackground];
    if (v4)
    {
      if (!isBackground2)
      {
        [(WKApplicationStateTrackingView *)self _applicationWillEnterForeground];
      }
    }

    else if (isBackground2)
    {
      [(WKApplicationStateTrackingView *)self _applicationDidEnterBackground];
    }
  }
}

- (BOOL)isBackground
{
  m_ptr = self->_applicationStateTracker.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 96);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (WKApplicationStateTrackingView)initWithFrame:(CGRect)frame webView:(id)view
{
  v12.receiver = self;
  v12.super_class = WKApplicationStateTrackingView;
  v5 = [(WKApplicationStateTrackingView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webViewToTrack.m_weakReference, view);
    if (WebKit::ApplicationStateTracker::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ApplicationStateTracker::s_heapRef, v7);
    }

    else
    {
      NonCompact = WebKit::ApplicationStateTracker::operatorNewSlow(0x88);
    }

    v9 = NonCompact;
    WebKit::ApplicationStateTracker::ApplicationStateTracker(NonCompact, &v6->super, sel__applicationDidEnterBackground, sel__applicationWillEnterForeground, sel__willBeginSnapshotSequence, sel__didCompleteSnapshotSequence);
    m_ptr = v6->_applicationStateTracker.m_ptr;
    v6->_applicationStateTracker.m_ptr = v9;
    if (m_ptr)
    {
      WTF::RefCounted<WebKit::ApplicationStateTracker>::deref(m_ptr + 1);
    }
  }

  return v6;
}

- (void)willMoveToWindow:(id)window
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(WKApplicationStateTrackingView *)self window])
  {
    window = [(UIView *)[(WKApplicationStateTrackingView *)self _contentView] window];
    if (window || !window)
    {
      return;
    }
  }

  else if (window)
  {
    return;
  }

  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
  }

  else
  {
    v10 = 0;
  }

  v7 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v8 = *(v10 + 40);
      v9 = *(v10 + 1169);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 134218752;
    selfCopy = self;
    v13 = 2048;
    v14 = v10;
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - WKApplicationStateTrackingView: View with page [%p, pageProxyID=%llu] was removed from a window, _lastObservedStateWasBackground=%d", buf, 0x26u);
  }

  WebKit::ApplicationStateTracker::setWindow(self->_applicationStateTracker.m_ptr, 0);
}

- (void)_applicationDidEnterBackground
{
  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v3)
    {
      WebKit::WebPageProxy::applicationDidEnterBackground(v3);
      WebKit::WebPageProxy::activityStateDidChange(v3, 1007, 0, 0);
    }
  }
}

- (void)_applicationDidFinishSnapshottingAfterEnteringBackground
{
  v14 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    v4 = v7;
    if (v7)
    {
      v5 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v7 + 5);
        *buf = 134218496;
        selfCopy = self;
        v10 = 2048;
        v11 = v7;
        v12 = 2048;
        v13 = v6;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKApplicationStateTrackingView: View with page [%p, pageProxyID=%llu] did finish snapshotting after entering background", buf, 0x20u);
        v4 = v7;
      }

      WebKit::WebPageProxy::applicationDidFinishSnapshottingAfterEnteringBackground(v4);
    }
  }
}

- (void)_applicationWillEnterForeground
{
  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v3)
    {
      WebKit::WebPageProxy::applicationWillEnterForeground(v3);
      WebKit::WebPageProxy::activityStateDidChange(v3, 1007, 1, 1);
    }
  }
}

- (void)_willBeginSnapshotSequence
{
  v13 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v6)
    {
      if ([(UIView *)[(WKApplicationStateTrackingView *)self _contentView] window])
      {
        v4 = qword_1ED641490;
        if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            v5 = *(v6 + 40);
          }

          else
          {
            v5 = 0;
          }

          *buf = 134218496;
          selfCopy = self;
          v9 = 2048;
          v10 = v6;
          v11 = 2048;
          v12 = v5;
          _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WKApplicationStateTrackingView: View with page [%p, pageProxyID=%llu] will begin snapshot sequence", buf, 0x20u);
        }

        *(v6 + 548) = 1;
        buf[0] = 1;
        WebKit::WebPageProxy::send<Messages::WebPage::SetIsTakingSnapshotsForApplicationSuspension>(v6, buf);
      }
    }
  }
}

- (void)_didCompleteSnapshotSequence
{
  v13 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_webViewToTrack.m_weakReference);
  if (Weak)
  {
    [Weak _page];
    if (v6)
    {
      if ([(UIView *)[(WKApplicationStateTrackingView *)self _contentView] window])
      {
        v4 = qword_1ED641490;
        if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            v5 = *(v6 + 5);
          }

          else
          {
            v5 = 0;
          }

          *buf = 134218496;
          selfCopy = self;
          v9 = 2048;
          v10 = v6;
          v11 = 2048;
          v12 = v5;
          _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WKApplicationStateTrackingView: View with page [%p, pageProxyID=%llu] did complete snapshot sequence", buf, 0x20u);
        }

        *(v6 + 548) = 0;
        buf[0] = 0;
        WebKit::WebPageProxy::send<Messages::WebPage::SetIsTakingSnapshotsForApplicationSuspension>(v6, buf);
        if ([(WKApplicationStateTrackingView *)self isBackground])
        {
          WebKit::WebPageProxy::applicationDidFinishSnapshottingAfterEnteringBackground(v6);
        }
      }
    }
  }
}

@end