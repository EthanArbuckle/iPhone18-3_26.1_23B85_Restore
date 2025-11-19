@interface CPSessionConfiguration
- (CPSTemplateEnvironment)templateEnvironment;
- (CPSessionConfiguration)initWithCarSessionStatus:(id)a3 delegate:(id)a4;
- (CPSessionConfiguration)initWithDelegate:(id)a3 templateEnvironment:(id)a4;
- (CPSessionConfiguration)initWithDelegate:(id)delegate;
- (id)delegate;
- (unint64_t)convertLimitableUserInterfaces:(unint64_t)a3;
- (void)_contentStyleUpdated:(id)a3;
- (void)_limitedUIDidChange:(id)a3;
- (void)_updateContentStyleWithScene:(id)a3;
- (void)_updateLimitedUIStatus;
- (void)dealloc;
- (void)setupConfiguration;
@end

@implementation CPSessionConfiguration

- (CPSessionConfiguration)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v10.receiver = self;
  v10.super_class = CPSessionConfiguration;
  v5 = [(CPSessionConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(MEMORY[0x277CF89F8]);
    currentStatus = v6->_currentStatus;
    v6->_currentStatus = v7;

    [(CARSessionStatus *)v6->_currentStatus addSessionObserver:v6];
    [(CPSessionConfiguration *)v6 setupConfiguration];
  }

  return v6;
}

- (CPSessionConfiguration)initWithCarSessionStatus:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPSessionConfiguration;
  v9 = [(CPSessionConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_currentStatus, a3);
    [(CARSessionStatus *)v10->_currentStatus addSessionObserver:v10];
    [(CPSessionConfiguration *)v10 setupConfiguration];
  }

  return v10;
}

- (CPSessionConfiguration)initWithDelegate:(id)a3 templateEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CPSessionConfiguration;
  v8 = [(CPSessionConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    [(CPSessionConfiguration *)v9 setTemplateEnvironment:v7];
    v10 = [v7 sessionStatus];
    currentStatus = v9->_currentStatus;
    v9->_currentStatus = v10;

    [(CARSessionStatus *)v9->_currentStatus addSessionObserver:v9];
    [(CPSessionConfiguration *)v9 setupConfiguration];
  }

  return v9;
}

- (void)setupConfiguration
{
  [(CPSessionConfiguration *)self _updateLimitedUIStatus];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__limitedUIDidChange_ name:*MEMORY[0x277CF8928] object:0];

  v5 = +[CPTemplateApplicationScene activeTemplateScene];
  [(CPSessionConfiguration *)self _updateContentStyleWithScene:v5];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__contentStyleUpdated_ name:@"CPTemplateApplicationSceneContentStyleUpdated" object:0];
}

- (void)dealloc
{
  [(CARSessionStatus *)self->_currentStatus removeSessionObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CF8928] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"CPTemplateApplicationSceneContentStyleUpdated" object:0];

  v5.receiver = self;
  v5.super_class = CPSessionConfiguration;
  [(CPSessionConfiguration *)&v5 dealloc];
}

- (void)_updateLimitedUIStatus
{
  v3 = [(CPSessionConfiguration *)self currentStatus];
  v6 = [v3 currentSession];

  v4 = [v6 limitUserInterfaces];
  if ([v4 BOOLValue])
  {
    v5 = [v6 configuration];
    -[CPSessionConfiguration setLimitedUserInterfaces:](self, "setLimitedUserInterfaces:", -[CPSessionConfiguration convertLimitableUserInterfaces:](self, "convertLimitableUserInterfaces:", [v5 limitableUserInterfaces]));
  }

  else
  {
    [(CPSessionConfiguration *)self setLimitedUserInterfaces:0];
  }
}

- (void)_limitedUIDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CPSessionConfiguration__limitedUIDidChange___block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__CPSessionConfiguration__limitedUIDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) limitedUserInterfaces];
  [*(a1 + 32) _updateLimitedUIStatus];
  if (v2 != [*(a1 + 32) limitedUserInterfaces])
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 sessionConfiguration:*(a1 + 32) limitedUserInterfacesChanged:{objc_msgSend(*(a1 + 32), "limitedUserInterfaces")}];
    }
  }
}

- (unint64_t)convertLimitableUserInterfaces:(unint64_t)a3
{
  v5 = [(CPSessionConfiguration *)self templateEnvironment];

  if (!v5)
  {
    HasAudioEntitlement = CPCurrentProcessHasAudioEntitlement();
    v8 = a3 & 1;
    if (HasAudioEntitlement)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 1;
    return v8 | (a3 >> v9) & 2;
  }

  v6 = [(CPSessionConfiguration *)self templateEnvironment];
  v7 = [v6 hasAudioEntitlement];

  v8 = a3 & 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2;
  return v8 | (a3 >> v9) & 2;
}

- (void)_updateContentStyleWithScene:(id)a3
{
  if ([a3 contentStyle] == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(CPSessionConfiguration *)self setContentStyle:v4];
}

- (void)_contentStyleUpdated:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CPSessionConfiguration__contentStyleUpdated___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__CPSessionConfiguration__contentStyleUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentStyle];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) object];
  [v3 _updateContentStyleWithScene:v4];

  if (v2 != [*(a1 + 32) contentStyle])
  {
    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 sessionConfiguration:*(a1 + 32) contentStyleChanged:{objc_msgSend(*(a1 + 32), "contentStyle")}];
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPSTemplateEnvironment)templateEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_templateEnvironment);

  return WeakRetained;
}

@end