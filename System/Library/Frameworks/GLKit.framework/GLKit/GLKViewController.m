@interface GLKViewController
- (GLKViewController)init;
- (GLKViewController)initWithCoder:(id)a3;
- (GLKViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSTimeInterval)timeSinceFirstResume;
- (NSTimeInterval)timeSinceLastResume;
- (int64_t)_calculateScreenFramesPerSecond:(id)a3;
- (void)_configureNotifications;
- (void)_createDisplayLinkForScreen:(id)a3;
- (void)_initCommon;
- (void)_pauseByNotification;
- (void)_resumeByNotification;
- (void)_updateAndDraw;
- (void)_updateScreenIfChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond;
- (void)setView:(id)a3;
- (void)viewDidUnload;
@end

@implementation GLKViewController

- (void)_initCommon
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__updateScreenIfChanged name:*MEMORY[0x277D77290] object:0];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__updateScreenIfChanged name:*MEMORY[0x277D76EA8] object:0];
  self->_pauseOnWillResignActive = 1;
  self->_resumeOnDidBecomeActive = 1;
  self->_screenFramesPerSecond = -[GLKViewController _calculateScreenFramesPerSecond:](self, "_calculateScreenFramesPerSecond:", [MEMORY[0x277D759A0] mainScreen]);
  [(GLKViewController *)self setPreferredFramesPerSecond:30];
  self->_displayLinkPaused = 1;
  [(GLKViewController *)self setDisplayLinkMessenger:objc_alloc_init(GLKDisplayLinkMessenger)];
  [(GLKDisplayLinkMessenger *)self->_displayLinkMessenger setTarget:self];
  if (objc_opt_respondsToSelector())
  {
    self->_updateIMP = [(GLKViewController *)self methodForSelector:sel_update];
  }
}

- (GLKViewController)init
{
  v5.receiver = self;
  v5.super_class = GLKViewController;
  v2 = [(GLKViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GLKViewController *)v2 _initCommon];
    [(GLKViewController *)v3 _configureNotifications];
  }

  return v3;
}

- (GLKViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = GLKViewController;
  v4 = [(GLKViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(GLKViewController *)v4 _initCommon];
    [(GLKViewController *)v5 _configureNotifications];
  }

  return v5;
}

- (GLKViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GLKViewController;
  v4 = [(GLKViewController *)&v7 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    [(GLKViewController *)v4 _initCommon];
    if ([a3 containsValueForKey:@"GLKViewControllerPreferredFramesPerSecondCoderKey"])
    {
      -[GLKViewController setPreferredFramesPerSecond:](v5, "setPreferredFramesPerSecond:", [a3 decodeIntegerForKey:@"GLKViewControllerPreferredFramesPerSecondCoderKey"]);
    }

    if ([a3 containsValueForKey:@"GLKViewControllerPauseOnWillResignActiveCoderKey"])
    {
      v5->_pauseOnWillResignActive = [a3 decodeBoolForKey:@"GLKViewControllerPauseOnWillResignActiveCoderKey"];
    }

    if ([a3 containsValueForKey:@"GLKViewControllerResumeOnDidBecomeActiveCoderKey"])
    {
      v5->_resumeOnDidBecomeActive = [a3 decodeBoolForKey:@"GLKViewControllerResumeOnDidBecomeActiveCoderKey"];
    }

    [(GLKViewController *)v5 _configureNotifications];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GLKViewController;
  [(GLKViewController *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_preferredFramesPerSecond forKey:@"GLKViewControllerPreferredFramesPerSecondCoderKey"];
  [a3 encodeBool:self->_pauseOnWillResignActive forKey:@"GLKViewControllerPauseOnWillResignActiveCoderKey"];
  [a3 encodeBool:self->_resumeOnDidBecomeActive forKey:@"GLKViewControllerResumeOnDidBecomeActiveCoderKey"];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  self->_pauseOnWillResignActive = 0;
  self->_resumeOnDidBecomeActive = 0;
  [(GLKViewController *)self _configureNotifications];
  [(CADisplayLink *)self->_displayLink invalidate];

  self->_displayLink = 0;
  [(GLKViewController *)self setDisplayLinkMessenger:0];
  [(GLKViewController *)self setScreen:0];
  v3.receiver = self;
  v3.super_class = GLKViewController;
  [(GLKViewController *)&v3 dealloc];
}

- (void)_configureNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = v3;
  if (self->_pauseOnWillResignActive)
  {
    [v3 addObserver:self selector:sel__pauseByNotification name:*MEMORY[0x277D76768] object:0];
  }

  else
  {
    [v3 removeObserver:self name:*MEMORY[0x277D76768] object:0];
  }

  if (self->_resumeOnDidBecomeActive)
  {
    v5 = *MEMORY[0x277D76648];

    [v4 addObserver:self selector:sel__resumeByNotification name:v5 object:0];
  }

  else
  {
    v6 = *MEMORY[0x277D76648];

    [v4 removeObserver:self name:v6 object:0];
  }
}

- (int64_t)_calculateScreenFramesPerSecond:(id)a3
{
  [a3 _refreshRate];
  if (v3 == 0.0)
  {
    return 60;
  }

  else
  {
    return llround(1.0 / v3);
  }
}

- (void)_createDisplayLinkForScreen:(id)a3
{
  [(CADisplayLink *)self->_displayLink invalidate];

  v5 = [a3 displayLinkWithTarget:self->_displayLinkMessenger selector:sel_message];
  self->_displayLink = v5;
  [(CADisplayLink *)v5 setPaused:self->_displayLinkPaused];
  [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:self->_preferredFramesPerSecond];
  LODWORD(a3) = glkLinkedOSVersion();
  displayLink = self->_displayLink;
  v7 = [MEMORY[0x277CBEB88] currentRunLoop];
  v8 = MEMORY[0x277CBE738];
  if (a3 <= 0x90000)
  {
    v8 = MEMORY[0x277CBE640];
  }

  v9 = *v8;

  [(CADisplayLink *)displayLink addToRunLoop:v7 forMode:v9];
}

- (void)_updateAndDraw
{
  [(GLKViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [-[GLKViewController view](self "view")];
  }

  if (self->_updateIMP)
  {
    if (self->_lastUpdateOccurred)
    {
      v3 = CACurrentMediaTime();
      self->_timeSinceLastUpdate = v3 - self->_timeSinceLastUpdatePreviousTime;
      self->_timeSinceLastUpdatePreviousTime = v3;
    }

    else
    {
      self->_timeSinceLastUpdate = 0.0;
      self->_timeSinceLastUpdatePreviousTime = CACurrentMediaTime();
      self->_lastUpdateOccurred = 1;
    }

    (self->_updateIMP)(self, sel_update);
  }

  else if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (self->_lastUpdateOccurred)
    {
      v4 = CACurrentMediaTime();
      self->_timeSinceLastUpdate = v4 - self->_timeSinceLastUpdatePreviousTime;
      self->_timeSinceLastUpdatePreviousTime = v4;
    }

    else
    {
      self->_timeSinceLastUpdate = 0.0;
      self->_timeSinceLastUpdatePreviousTime = CACurrentMediaTime();
      self->_lastUpdateOccurred = 1;
    }

    [(GLKViewControllerDelegate *)self->_delegate glkViewControllerUpdate:self];
  }

  [(GLKViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_lastDrawOccurred)
    {
      v5 = CACurrentMediaTime();
      self->_timeSinceLastDraw = v5 - self->_timeSinceLastDrawPreviousTime;
      self->_timeSinceLastDrawPreviousTime = v5;
    }

    else
    {
      self->_timeSinceLastDraw = 0.0;
      self->_timeSinceLastDrawPreviousTime = CACurrentMediaTime();
      self->_lastDrawOccurred = 1;
    }

    [-[GLKViewController view](self "view")];
    ++self->_framesDisplayed;
  }
}

- (void)_pauseByNotification
{
  [(GLKViewController *)self setPaused:1];
  v3 = [(GLKViewController *)self _existingView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v3 deleteDrawable];
  }
}

- (void)_resumeByNotification
{
  if (self->_viewIsVisible)
  {
    [(GLKViewController *)self setPaused:0];
  }
}

- (void)_updateScreenIfChanged
{
  if ([objc_msgSend(-[GLKViewController _existingView](self "_existingView")])
  {
    if ([objc_msgSend(-[GLKViewController _existingView](self "_existingView")] == self->_screen)
    {
      self->_screenFramesPerSecond = [(GLKViewController *)self _calculateScreenFramesPerSecond:?];
      preferredFramesPerSecond = self->_preferredFramesPerSecond;

      [(GLKViewController *)self setPreferredFramesPerSecond:preferredFramesPerSecond];
    }

    else
    {
      -[GLKViewController setScreen:](self, "setScreen:", [objc_msgSend(-[GLKViewController _existingView](self "_existingView")]);
      self->_screenFramesPerSecond = [(GLKViewController *)self _calculateScreenFramesPerSecond:self->_screen];
      [(GLKViewController *)self setPreferredFramesPerSecond:self->_preferredFramesPerSecond];
      screen = self->_screen;

      [(GLKViewController *)self _createDisplayLinkForScreen:screen];
    }
  }
}

- (void)setView:(id)a3
{
  if ([(GLKViewController *)self _existingView]!= a3)
  {
    v5.receiver = self;
    v5.super_class = GLKViewController;
    [(GLKViewController *)&v5 setView:a3];
    [(GLKViewController *)self _existingView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![-[GLKViewController _existingView](self "_existingView")])
    {
      [-[GLKViewController _existingView](self "_existingView")];
    }

    [(GLKViewController *)self _updateScreenIfChanged];
  }
}

- (void)loadView
{
  if ([(GLKViewController *)self nibName]&& [(GLKViewController *)self nibBundle])
  {
    v10.receiver = self;
    v10.super_class = GLKViewController;
    [(GLKViewController *)&v10 loadView];
    [(GLKViewController *)self _existingView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = objc_opt_self();
      v6 = NSStringFromClass(v5);
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ loaded the %@ nib but didn't get a GLKView.", objc_msgSend(v4, "stringWithFormat:", @"-[%@ %@]", v6, NSStringFromSelector(a2)), -[GLKViewController nibName](self, "nibName")}];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GLKViewController;
    [(GLKViewController *)&v9 loadView];
    v7 = [GLKView alloc];
    [-[GLKViewController _existingView](self "_existingView")];
    v8 = [(GLKView *)v7 initWithFrame:?];
    [(GLKView *)v8 setAutoresizingMask:18];
    [(GLKViewController *)self setView:v8];
  }
}

- (void)viewDidUnload
{
  [(CADisplayLink *)self->_displayLink invalidate];

  self->_displayLink = 0;

  [(GLKViewController *)self setScreen:0];
}

- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond
{
  if (preferredFramesPerSecond <= 1)
  {
    preferredFramesPerSecond = 1;
  }

  self->_preferredFramesPerSecond = preferredFramesPerSecond;
  [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:?];
  self->_framesPerSecond = self->_preferredFramesPerSecond;
}

- (NSTimeInterval)timeSinceFirstResume
{
  result = 0.0;
  if (self->_firstResumeOccurred)
  {
    return CACurrentMediaTime() - self->_timeSinceFirstResumeStartTime;
  }

  return result;
}

- (NSTimeInterval)timeSinceLastResume
{
  result = 0.0;
  if (self->_lastResumeOccurred)
  {
    return CACurrentMediaTime() - self->_timeSinceLastResumeStartTime;
  }

  return result;
}

@end