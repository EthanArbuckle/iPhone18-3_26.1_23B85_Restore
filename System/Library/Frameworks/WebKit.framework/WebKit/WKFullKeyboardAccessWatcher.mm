@interface WKFullKeyboardAccessWatcher
+ (BOOL)fullKeyboardAccessEnabled;
- (WKFullKeyboardAccessWatcher)init;
- (void)notifyAllProcessPools;
- (void)retrieveKeyboardUIModeFromPreferences:(id)preferences;
@end

@implementation WKFullKeyboardAccessWatcher

+ (BOOL)fullKeyboardAccessEnabled
{
  if (_MergedGlobals_304 == 1)
  {
    v2 = qword_1EB01D4D8;
  }

  else
  {
    v2 = objc_alloc_init(WKFullKeyboardAccessWatcher);
    qword_1EB01D4D8 = v2;
    _MergedGlobals_304 = 1;
  }

  return v2->fullKeyboardAccessEnabled;
}

- (WKFullKeyboardAccessWatcher)init
{
  v10.receiver = self;
  v10.super_class = WKFullKeyboardAccessWatcher;
  v2 = [(WKFullKeyboardAccessWatcher *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(WKFullKeyboardAccessWatcher *)v2 retrieveKeyboardUIModeFromPreferences:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = defaultCenter;
    if (defaultCenter)
    {
      v6 = defaultCenter;
    }

    v7 = *MEMORY[0x1E69E4D28];
    if (*MEMORY[0x1E69E4D28])
    {
      v8 = v7;
      [v5 addObserver:v3 selector:sel_retrieveKeyboardUIModeFromPreferences_ name:v7 object:0];
    }

    if (v5)
    {
    }
  }

  return v3;
}

- (void)notifyAllProcessPools
{
  WebKit::WebProcessPool::allProcessPools(&v7);
  if (v8)
  {
    v4 = v7;
    v5 = 8 * v8;
    do
    {
      v6 = *v4++;
      fullKeyboardAccessEnabled = self->fullKeyboardAccessEnabled;
      WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::FullKeyboardAccessModeChanged>(v6, &fullKeyboardAccessEnabled);
      v5 -= 8;
    }

    while (v5);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v3);
}

- (void)retrieveKeyboardUIModeFromPreferences:(id)preferences
{
  fullKeyboardAccessEnabled = self->fullKeyboardAccessEnabled;
  v5 = _AXSFullKeyboardAccessEnabled() != 0;
  self->fullKeyboardAccessEnabled = v5;
  if (fullKeyboardAccessEnabled != v5)
  {

    [(WKFullKeyboardAccessWatcher *)self notifyAllProcessPools];
  }
}

@end