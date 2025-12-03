@interface AXSBServerVolumeControl
- (void)_effectiveVolumeChanged:(id)changed;
- (void)_presentVolumeHUDWithVolume:(float)volume;
@end

@implementation AXSBServerVolumeControl

- (void)_effectiveVolumeChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D26BC8]];
  [v6 floatValue];
  v8 = v7;

  _CurrentVolume = v8;
  _LastVolumeDisplay = CFAbsoluteTimeGetCurrent();
  v9.receiver = self;
  v9.super_class = AXSBServerVolumeControl;
  [(AXSBServerVolumeControl *)&v9 _effectiveVolumeChanged:changedCopy];
}

- (void)_presentVolumeHUDWithVolume:(float)volume
{
  v5 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v5 springBoardActionOccurred:1];

  v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v7 = [v6 shouldBlockGestureActivation:4];

  if ((v7 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = AXSBServerVolumeControl;
    *&v8 = volume;
    [(AXSBServerVolumeControl *)&v9 _presentVolumeHUDWithVolume:v8];
  }
}

@end