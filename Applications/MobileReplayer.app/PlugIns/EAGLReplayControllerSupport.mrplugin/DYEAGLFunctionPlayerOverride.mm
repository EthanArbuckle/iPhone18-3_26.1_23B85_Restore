@interface DYEAGLFunctionPlayerOverride
- (DYEAGLFunctionPlayerOverride)init;
- (DYEAGLFunctionPlayerOverride)initWithFunctionPlayer:(id)player overrideKey:(id)key;
- (DYGLFunctionPlayer)strongFunctionPlayer;
- (void)dealloc;
- (void)onPlatformFunctionEnd;
@end

@implementation DYEAGLFunctionPlayerOverride

- (DYGLFunctionPlayer)strongFunctionPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_functionPlayer);

  return WeakRetained;
}

- (DYEAGLFunctionPlayerOverride)init
{
  [(DYEAGLFunctionPlayerOverride *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYEAGLFunctionPlayerOverride)initWithFunctionPlayer:(id)player overrideKey:(id)key
{
  playerCopy = player;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = DYEAGLFunctionPlayerOverride;
  v8 = [(DYEAGLFunctionPlayerOverride *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_functionPlayer, playerCopy);
    objc_storeStrong(&v9->_overrideKey, key);
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_functionPlayer, 0);
  v3.receiver = self;
  v3.super_class = DYEAGLFunctionPlayerOverride;
  [(DYEAGLFunctionPlayerOverride *)&v3 dealloc];
}

- (void)onPlatformFunctionEnd
{
  strongFunctionPlayer = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
  if (*[strongFunctionPlayer function] != -8188)
  {
    strongFunctionPlayer2 = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
    if (*[strongFunctionPlayer2 function] != -8192)
    {
      strongFunctionPlayer3 = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
      v8 = *[strongFunctionPlayer3 function];

      if (v8 != -8191)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if ([(NSString *)self->_overrideKey isEqualToString:kDYFunctionPlayerOverrideDisableColorWritesKey])
  {
    v11 = 1;
    strongFunctionPlayer4 = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
    context = [strongFunctionPlayer4 context];
    [context setParameter:602 to:&v11];
  }

  else if ([(NSString *)self->_overrideKey isEqualToString:kDYFunctionPlayerOverrideDisableAllKey])
  {
    v10 = 3;
    strongFunctionPlayer4 = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
    context = [strongFunctionPlayer4 context];
    [context setParameter:602 to:&v10];
  }

  else
  {
    if (![(NSString *)self->_overrideKey isEqualToString:kDYFunctionPlayerOverrideDisableRenderingKey])
    {
      return;
    }

    v9 = 2;
    strongFunctionPlayer4 = [(DYEAGLFunctionPlayerOverride *)self strongFunctionPlayer];
    context = [strongFunctionPlayer4 context];
    [context setParameter:602 to:&v9];
  }
}

@end