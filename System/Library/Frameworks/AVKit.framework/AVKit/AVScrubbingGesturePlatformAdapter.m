@interface AVScrubbingGesturePlatformAdapter
- (AVScrubbingGesturePlatformAdapterDelegate)delegate;
- (BOOL)gestureActive;
- (CGPoint)translation;
- (float)timelineVelocity;
- (id)_abstractInit;
@end

@implementation AVScrubbingGesturePlatformAdapter

- (AVScrubbingGesturePlatformAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureActive
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass.", v4}];

  return 0;
}

- (float)timelineVelocity
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass.", v4}];

  return 0.0;
}

- (CGPoint)translation
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass.", v4}];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)_abstractInit
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"AVScrubbingGesturePlatformAdapter cannot be instantiated directly. You must subclass it."];
  }

  v6.receiver = self;
  v6.super_class = AVScrubbingGesturePlatformAdapter;
  v4 = [(AVScrubbingGesturePlatformAdapter *)&v6 init];

  return v4;
}

@end