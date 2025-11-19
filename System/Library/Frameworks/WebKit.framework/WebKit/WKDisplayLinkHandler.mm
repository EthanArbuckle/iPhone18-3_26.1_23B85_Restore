@interface WKDisplayLinkHandler
- (WKDisplayLinkHandler)initWithDrawingAreaProxy:(void *)a3;
- (unsigned)nominalFramesPerSecond;
- (void)dealloc;
- (void)didChangeNominalFramesPerSecond;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation WKDisplayLinkHandler

- (unsigned)nominalFramesPerSecond
{
  v2 = *(self->_drawingAreaProxy + 5);
  if (!v2)
  {
    return 60;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 60;
  }

  CFRetain(*(v3 - 8));
  v6 = *(v3 + 352);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAnimationsCustomFrameRateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webAnimationsCustomFrameRateEnabledKey(void)::key = WebKit::WebPreferencesKey::webAnimationsCustomFrameRateEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if ((WebKit::WebPreferencesStore::getBoolValueForKey((v6 + 40), &WebKit::WebPreferencesKey::webAnimationsCustomFrameRateEnabledKey(void)::key, v5) & 1) == 0)
  {
    v8 = *(v3 + 352);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key = WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey((v8 + 40), &WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key, v7))
    {
      goto LABEL_10;
    }
  }

  [(CADisplayLink *)self->_displayLink maximumRefreshRate];
  if (v9 > 0.0)
  {
    v10 = vcvtad_u64_f64(1.0 / v9);
  }

  else
  {
LABEL_10:
    v10 = 60;
  }

  CFRelease(*(v3 - 8));
  return v10;
}

- (WKDisplayLinkHandler)initWithDrawingAreaProxy:(void *)a3
{
  v18.receiver = self;
  v18.super_class = WKDisplayLinkHandler;
  v4 = [(WKDisplayLinkHandler *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_drawingAreaProxy = a3;
    v6 = [MEMORY[0x1E6979330] displayLinkWithTarget:v4 selector:sel_displayLinkFired_];
    v5->_displayLink = v6;
    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];
    v8 = [(CADisplayLink *)v5->_displayLink display];
    [v8 addObserver:v5 forKeyPath:@"refreshRate" options:1 context:displayRefreshRateObservationContext];
    [(CADisplayLink *)v5->_displayLink setPaused:1];
    if (!a3)
    {
      goto LABEL_8;
    }

    v10 = *(a3 + 5);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *(v10 + 8);
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = *(v11 + 352);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key = WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if ((WebKit::WebPreferencesStore::getBoolValueForKey((v12 + 40), &WebKit::WebPreferencesKey::preferPageRenderingUpdatesNear60FPSEnabledKey(void)::key, v9) & 1) == 0)
    {
      displayLink = v5->_displayLink;
      if (_MergedGlobals_81 == 1)
      {
        LODWORD(v13) = dword_1ED64273C;
        LODWORD(v14) = unk_1ED642740;
        LODWORD(v15) = dword_1ED642744;
      }

      else
      {
        *&v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
        dword_1ED64273C = LODWORD(v13);
        unk_1ED642740 = LODWORD(v14);
        dword_1ED642744 = LODWORD(v15);
        _MergedGlobals_81 = 1;
      }

      [(CADisplayLink *)displayLink setPreferredFrameRateRange:v13, v14, v15];
      [(CADisplayLink *)v5->_displayLink setHighFrameRateReason:2883587];
    }

    else
    {
LABEL_8:
      [(CADisplayLink *)v5->_displayLink setPreferredFramesPerSecond:60];
    }
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WKDisplayLinkHandler;
  [(WKDisplayLinkHandler *)&v2 dealloc];
}

- (void)invalidate
{
  v3 = [(CADisplayLink *)self->_displayLink display];
  [v3 removeObserver:self forKeyPath:@"refreshRate" context:displayRefreshRateObservationContext];
  [(CADisplayLink *)self->_displayLink invalidate];
  self->_displayLink = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (displayRefreshRateObservationContext == a6)
  {
    [(WKDisplayLinkHandler *)self didChangeNominalFramesPerSecond:a3];
  }
}

- (void)didChangeNominalFramesPerSecond
{
  v2 = *(self->_drawingAreaProxy + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = *(v3 + 872);
      if ((v4 & 0x100000000) != 0)
      {
        WebKit::WebPageProxy::windowScreenDidChange((v3 - 16), v4);
      }

      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

@end