@interface WFVolumeButtonManager
- (WFVolumeButtonManager)initWithPressHandler:(id)a3;
- (void)dealloc;
- (void)volumeButtonPressed;
@end

@implementation WFVolumeButtonManager

- (void)volumeButtonPressed
{
  v2 = [(WFVolumeButtonManager *)self pressHandler];
  v2[2]();
}

- (void)dealloc
{
  if (!--_instanceCount)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 setWantsVolumeButtonEvents:0];
  }

  v4.receiver = self;
  v4.super_class = WFVolumeButtonManager;
  [(WFVolumeButtonManager *)&v4 dealloc];
}

- (WFVolumeButtonManager)initWithPressHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFVolumeButtonManager.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v15.receiver = self;
  v15.super_class = WFVolumeButtonManager;
  v6 = [(WFVolumeButtonManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    [(WFVolumeButtonManager *)v6 setPressHandler:v5];
    v8 = _instanceCount;
    if (!_instanceCount)
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      [v9 setWantsVolumeButtonEvents:1];

      v8 = _instanceCount;
    }

    _instanceCount = v8 + 1;
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel_volumeButtonPressed name:*MEMORY[0x277D77330] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v7 selector:sel_volumeButtonPressed name:*MEMORY[0x277D77328] object:0];

    v12 = v7;
  }

  return v7;
}

@end