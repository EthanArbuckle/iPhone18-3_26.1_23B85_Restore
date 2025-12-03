@interface AXSSMotionTrackingVideoFileInputManager
- (AXSSMotionTrackingVideoFileInputManager)init;
- (AXSSMotionTrackingVideoFileInputManagerDelegate)delegate;
- (NSArray)videoFileInputNames;
- (void)_update;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AXSSMotionTrackingVideoFileInputManager

- (AXSSMotionTrackingVideoFileInputManager)init
{
  v6.receiver = self;
  v6.super_class = AXSSMotionTrackingVideoFileInputManager;
  v2 = [(AXSSMotionTrackingVideoFileInputManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    videoFileInputNames = v2->__videoFileInputNames;
    v2->__videoFileInputNames = array;
  }

  return v2;
}

- (void)dealloc
{
  if (self->__monitoring)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = AXSSMotionTrackingVideoFileInputManager;
  [(AXSSMotionTrackingVideoFileInputManager *)&v4 dealloc];
}

- (NSArray)videoFileInputNames
{
  v2 = [(NSMutableArray *)self->__videoFileInputNames copy];

  return v2;
}

- (void)startMonitoring
{
  if (![(AXSSMotionTrackingVideoFileInputManager *)self _monitoring])
  {
    [(AXSSMotionTrackingVideoFileInputManager *)self set_monitoring:1];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__videoFileInputNamesChanged_ name:@"com.apple.accessibility.MotionTracking.testVideoFileInputNamesChanged" object:0];

    [(AXSSMotionTrackingVideoFileInputManager *)self _update];
  }
}

- (void)stopMonitoring
{
  if ([(AXSSMotionTrackingVideoFileInputManager *)self _monitoring])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self];

    [(AXSSMotionTrackingVideoFileInputManager *)self set_monitoring:0];
  }
}

- (void)_update
{
  if ([objc_opt_class() allowVideoFileInput])
  {
    if (_update_onceToken != -1)
    {
      [AXSSMotionTrackingVideoFileInputManager _update];
    }

    array = [MEMORY[0x1E695DF70] array];
    v4 = [_update_s_userDefaults objectForKey:@"testVideoFileInputNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __50__AXSSMotionTrackingVideoFileInputManager__update__block_invoke_2;
      v13[3] = &unk_1E8134A98;
      v14 = array;
      [v4 enumerateObjectsUsingBlock:v13];
    }

    _videoFileInputNames = [(AXSSMotionTrackingVideoFileInputManager *)self _videoFileInputNames];
    v6 = [array isEqual:_videoFileInputNames];

    if ((v6 & 1) == 0)
    {
      v7 = NSStringFromSelector(sel_videoFileInputNames);
      [(AXSSMotionTrackingVideoFileInputManager *)self willChangeValueForKey:v7];

      _videoFileInputNames2 = [(AXSSMotionTrackingVideoFileInputManager *)self _videoFileInputNames];
      [_videoFileInputNames2 setArray:array];

      v9 = NSStringFromSelector(sel_videoFileInputNames);
      [(AXSSMotionTrackingVideoFileInputManager *)self didChangeValueForKey:v9];

      delegate = [(AXSSMotionTrackingVideoFileInputManager *)self delegate];
      LOBYTE(_videoFileInputNames2) = objc_opt_respondsToSelector();

      if (_videoFileInputNames2)
      {
        delegate2 = [(AXSSMotionTrackingVideoFileInputManager *)self delegate];
        v12 = [array copy];
        [delegate2 motionTrackingVideoFileInputManager:self updatedVideoFileInputNames:v12];
      }
    }
  }
}

uint64_t __50__AXSSMotionTrackingVideoFileInputManager__update__block_invoke()
{
  _update_s_userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.accessibility.MotionTracking"];

  return MEMORY[0x1EEE66BB8]();
}

void __50__AXSSMotionTrackingVideoFileInputManager__update__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (AXSSMotionTrackingVideoFileInputManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end