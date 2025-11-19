@interface CNKeyboardStateMonitor
+ (CNKeyboardStateMonitor)sharedMonitor;
- (CNKeyboardStateMonitor)init;
- (void)dealloc;
@end

@implementation CNKeyboardStateMonitor

uint64_t __39__CNKeyboardStateMonitor_sharedMonitor__block_invoke(uint64_t a1)
{
  sharedMonitor_cn_once_object_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (CNKeyboardStateMonitor)sharedMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CNKeyboardStateMonitor_sharedMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMonitor_cn_once_token_0 != -1)
  {
    dispatch_once(&sharedMonitor_cn_once_token_0, block);
  }

  v2 = sharedMonitor_cn_once_object_0;

  return v2;
}

- (CNKeyboardStateMonitor)init
{
  v18.receiver = self;
  v18.super_class = CNKeyboardStateMonitor;
  v2 = [(CNKeyboardStateMonitor *)&v18 init];
  if (v2)
  {
    if (NSClassFromString(&cfstr_Uiapplication.isa))
    {
      v3 = [MEMORY[0x1E696ADC8] mainQueue];
      objc_initWeak(&location, v2);
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __30__CNKeyboardStateMonitor_init__block_invoke;
      v15[3] = &unk_1E7412DF8;
      objc_copyWeak(&v16, &location);
      v5 = [v4 addObserverForName:@"UIKeyboardDidHideNotification" object:0 queue:v3 usingBlock:v15];
      didHideObserver = v2->_didHideObserver;
      v2->_didHideObserver = v5;

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __30__CNKeyboardStateMonitor_init__block_invoke_2;
      v13[3] = &unk_1E7412DF8;
      objc_copyWeak(&v14, &location);
      v8 = [v7 addObserverForName:@"UIKeyboardDidShowNotification" object:0 queue:v3 usingBlock:v13];
      didShowObserver = v2->_didShowObserver;
      v2->_didShowObserver = v8;

      v10 = v2;
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      [(CNKeyboardStateMonitor *)v2 setKeyboardState:1];
      v11 = v2;
    }
  }

  return v2;
}

void __30__CNKeyboardStateMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardState:3];
}

void __30__CNKeyboardStateMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardState:2];
}

- (void)dealloc
{
  if (self->_didHideObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_didHideObserver];

    didHideObserver = self->_didHideObserver;
    self->_didHideObserver = 0;
  }

  if (self->_didShowObserver)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self->_didShowObserver];

    didShowObserver = self->_didShowObserver;
    self->_didShowObserver = 0;
  }

  v7.receiver = self;
  v7.super_class = CNKeyboardStateMonitor;
  [(CNKeyboardStateMonitor *)&v7 dealloc];
}

@end