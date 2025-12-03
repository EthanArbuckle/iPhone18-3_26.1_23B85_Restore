@interface AKBringDeviceCloseMicaView
- (AKBringDeviceCloseMicaView)init;
- (BOOL)arePhonesApart;
- (BOOL)arePhonesTogether;
- (void)AKUIMicaPlayerDidChangePlaybackTime:(id)time;
- (void)layoutSubviews;
- (void)loadMicaFile;
@end

@implementation AKBringDeviceCloseMicaView

- (AKBringDeviceCloseMicaView)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKBringDeviceCloseMicaView;
  v6 = [(AKBringDeviceCloseMicaView *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AKBringDeviceCloseMicaView *)v6 loadMicaFile];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)loadMicaFile
{
  selfCopy = self;
  v22[1] = a2;
  v5 = [AKUIMicaPlayer alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = [(AKUIMicaPlayer *)v5 initWithFileName:@"SignInProximity" retinaScale:?];
  [(AKBringDeviceCloseMicaView *)selfCopy setMicaPlayer:?];
  MEMORY[0x277D82BD8](v6);
  micaPlayer = [(AKBringDeviceCloseMicaView *)selfCopy micaPlayer];
  layer = [(AKBringDeviceCloseMicaView *)selfCopy layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer addToLayer:micaPlayer onTop:"addToLayer:onTop:gravity:" gravity:?];
  MEMORY[0x277D82BD8](layer);
  micaPlayer2 = [(AKBringDeviceCloseMicaView *)selfCopy micaPlayer];
  [(AKUIMicaPlayer *)micaPlayer2 play];
  micaPlayer3 = [(AKBringDeviceCloseMicaView *)selfCopy micaPlayer];
  v11 = [(AKUIMicaPlayer *)micaPlayer3 publishedLayerWithKey:@"Dot Cloud" required:1];
  [(AKBringDeviceCloseMicaView *)selfCopy setDotCloudLayer:?];
  MEMORY[0x277D82BD8](v11);
  clearColor = [MEMORY[0x277D75348] clearColor];
  v3 = clearColor;
  cGColor = [clearColor CGColor];
  dotCloudLayer = [(AKBringDeviceCloseMicaView *)selfCopy dotCloudLayer];
  [(CALayer *)dotCloudLayer setBackgroundColor:cGColor];
  MEMORY[0x277D82BD8](dotCloudLayer);
  v22[0] = [MEMORY[0x277CCA8D8] bundleWithPath:{@"/System/Library/PrivateFrameworks/AuthKitUI.framework", MEMORY[0x277D82BD8](clearColor).n128_f64[0]}];
  v16 = MEMORY[0x277D755B8];
  v19 = [v22[0] pathForResource:@"DotCloud@2x" ofType:@"png"];
  v18 = [v16 imageWithContentsOfFile:?];
  dotCloudLayer2 = [(AKBringDeviceCloseMicaView *)selfCopy dotCloudLayer];
  [(CALayer *)dotCloudLayer2 setContents:v18];
  MEMORY[0x277D82BD8](dotCloudLayer2);
  MEMORY[0x277D82BD8](v18);
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = selfCopy;
  micaPlayer4 = [(AKBringDeviceCloseMicaView *)selfCopy micaPlayer];
  [(AKUIMicaPlayer *)micaPlayer4 setDelegate:v20];
  MEMORY[0x277D82BD8](micaPlayer4);
  objc_storeStrong(v22, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBringDeviceCloseMicaView;
  [(AKBringDeviceCloseMicaView *)&v5 layoutSubviews];
  micaPlayer = selfCopy->_micaPlayer;
  layer = [(AKBringDeviceCloseMicaView *)selfCopy layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer moveAndResizeWithinParentLayer:"moveAndResizeWithinParentLayer:usingGravity:animate:" usingGravity:? animate:?];
  MEMORY[0x277D82BD8](layer);
}

- (void)AKUIMicaPlayerDidChangePlaybackTime:(id)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, time);
  if (selfCopy->_shouldshowDotCloud)
  {
    if (selfCopy->_didBeginShowingDotCloud)
    {
      [(AKUIMicaPlayer *)selfCopy->_micaPlayer playbackTime];
      if (v3 >= *&timeToPauseAfterShowingDotCloud)
      {
        [(AKUIMicaPlayer *)selfCopy->_micaPlayer pause];
      }
    }

    else if ([(AKBringDeviceCloseMicaView *)selfCopy arePhonesTogether])
    {
      [(AKUIMicaPlayer *)selfCopy->_micaPlayer setPlaybackTime:7.0];
      timeToPauseAfterShowingDotCloud = 0x401F1EB851EB851FLL;
      selfCopy->_didBeginShowingDotCloud = 1;
    }

    else if ([(AKBringDeviceCloseMicaView *)selfCopy arePhonesApart])
    {
      [(AKUIMicaPlayer *)selfCopy->_micaPlayer setPlaybackTime:5.0];
      timeToPauseAfterShowingDotCloud = 0x40171EB851EB851FLL;
      selfCopy->_didBeginShowingDotCloud = 1;
    }
  }

  else
  {
    [(AKUIMicaPlayer *)selfCopy->_micaPlayer playbackTime];
    if (v4 >= 4.94999981)
    {
      [(AKUIMicaPlayer *)selfCopy->_micaPlayer setPlaybackTime:0.0];
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)arePhonesTogether
{
  [(AKUIMicaPlayer *)self->_micaPlayer playbackTime];
  v6 = 0;
  if (v2 >= 1.5)
  {
    [(AKUIMicaPlayer *)self->_micaPlayer playbackTime];
    if (v3 <= 1.5)
    {
      return 1;
    }
  }

  return v6;
}

- (BOOL)arePhonesApart
{
  [(AKUIMicaPlayer *)self->_micaPlayer playbackTime];
  v6 = 0;
  if (v2 >= 5.0)
  {
    [(AKUIMicaPlayer *)self->_micaPlayer playbackTime];
    if (v3 <= 5.78)
    {
      return 1;
    }
  }

  return v6;
}

@end