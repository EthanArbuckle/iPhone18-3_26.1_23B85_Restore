@interface AXSBServerVolumeControl
- (void)_effectiveVolumeChanged:(id)a3;
- (void)_presentVolumeHUDWithVolume:(float)a3;
@end

@implementation AXSBServerVolumeControl

- (void)_effectiveVolumeChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D26BC8]];
  [v6 floatValue];
  v8 = v7;

  _CurrentVolume = v8;
  _LastVolumeDisplay = CFAbsoluteTimeGetCurrent();
  v9.receiver = self;
  v9.super_class = AXSBServerVolumeControl;
  [(AXSBServerVolumeControl *)&v9 _effectiveVolumeChanged:v4];
}

- (void)_presentVolumeHUDWithVolume:(float)a3
{
  v5 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v5 springBoardActionOccurred:1];

  v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v7 = [v6 shouldBlockGestureActivation:4];

  if ((v7 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = AXSBServerVolumeControl;
    *&v8 = a3;
    [(AXSBServerVolumeControl *)&v9 _presentVolumeHUDWithVolume:v8];
  }
}

@end