@interface InterAppAudioApp
- (id)init:(const InterAppAudioAppInfo *)a3 iconSize:(float)a4;
- (void)dealloc;
@end

@implementation InterAppAudioApp

intptr_t __47__InterAppAudioApp_processRunningOnForeground___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:*MEMORY[0x1E698D000]] && objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *MEMORY[0x1E698CFF0]), "BOOLValue"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = InterAppAudioApp;
  [(InterAppAudioApp *)&v3 dealloc];
}

- (id)init:(const InterAppAudioAppInfo *)a3 iconSize:(float)a4
{
  v14.receiver = self;
  v14.super_class = InterAppAudioApp;
  v5 = [(InterAppAudioApp *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_isHost = a3->var0;
    var1 = a3->var1;
    v5->_isCurrentApp = var1 == getpid();
    v6->_key = a3->var1;
    v6->_isForeground = [(InterAppAudioApp *)v6 processRunningOnForeground:?];
    var2 = a3->var2;
    if (!var2)
    {
      var2 = IPCAUIcons::GetIconFromBundle(a3->var4, v8);
    }

    v6->_icon = var2;
    v6->_url = a3->var5;
    v6->_name = &a3->var3->isa;
    v10 = var2;
    v11 = v6->_url;
    v12 = v6->_name;
  }

  return v6;
}

@end