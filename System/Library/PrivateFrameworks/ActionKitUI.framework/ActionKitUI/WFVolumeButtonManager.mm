@interface WFVolumeButtonManager
- (WFVolumeButtonManager)initWithPressHandler:(id)handler;
- (void)dealloc;
- (void)volumeButtonPressed;
@end

@implementation WFVolumeButtonManager

- (void)volumeButtonPressed
{
  pressHandler = [(WFVolumeButtonManager *)self pressHandler];
  pressHandler[2]();
}

- (void)dealloc
{
  if (!--_instanceCount)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setWantsVolumeButtonEvents:0];
  }

  v4.receiver = self;
  v4.super_class = WFVolumeButtonManager;
  [(WFVolumeButtonManager *)&v4 dealloc];
}

- (WFVolumeButtonManager)initWithPressHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVolumeButtonManager.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v15.receiver = self;
  v15.super_class = WFVolumeButtonManager;
  v6 = [(WFVolumeButtonManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    [(WFVolumeButtonManager *)v6 setPressHandler:handlerCopy];
    v8 = _instanceCount;
    if (!_instanceCount)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] setWantsVolumeButtonEvents:1];

      v8 = _instanceCount;
    }

    _instanceCount = v8 + 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_volumeButtonPressed name:*MEMORY[0x277D77330] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_volumeButtonPressed name:*MEMORY[0x277D77328] object:0];

    v12 = v7;
  }

  return v7;
}

@end