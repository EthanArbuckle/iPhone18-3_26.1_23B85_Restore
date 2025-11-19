@interface AKBringDeviceCloseMicaView
- (AKBringDeviceCloseMicaView)init;
- (BOOL)arePhonesApart;
- (BOOL)arePhonesTogether;
- (void)AKUIMicaPlayerDidChangePlaybackTime:(id)a3;
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
  v23 = self;
  v22[1] = a2;
  v5 = [AKUIMicaPlayer alloc];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v6 = [(AKUIMicaPlayer *)v5 initWithFileName:@"SignInProximity" retinaScale:?];
  [(AKBringDeviceCloseMicaView *)v23 setMicaPlayer:?];
  MEMORY[0x277D82BD8](v6);
  v9 = [(AKBringDeviceCloseMicaView *)v23 micaPlayer];
  v8 = [(AKBringDeviceCloseMicaView *)v23 layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer addToLayer:v9 onTop:"addToLayer:onTop:gravity:" gravity:?];
  MEMORY[0x277D82BD8](v8);
  v10 = [(AKBringDeviceCloseMicaView *)v23 micaPlayer];
  [(AKUIMicaPlayer *)v10 play];
  v12 = [(AKBringDeviceCloseMicaView *)v23 micaPlayer];
  v11 = [(AKUIMicaPlayer *)v12 publishedLayerWithKey:@"Dot Cloud" required:1];
  [(AKBringDeviceCloseMicaView *)v23 setDotCloudLayer:?];
  MEMORY[0x277D82BD8](v11);
  v15 = [MEMORY[0x277D75348] clearColor];
  v3 = v15;
  v13 = [v15 CGColor];
  v14 = [(AKBringDeviceCloseMicaView *)v23 dotCloudLayer];
  [(CALayer *)v14 setBackgroundColor:v13];
  MEMORY[0x277D82BD8](v14);
  v22[0] = [MEMORY[0x277CCA8D8] bundleWithPath:{@"/System/Library/PrivateFrameworks/AuthKitUI.framework", MEMORY[0x277D82BD8](v15).n128_f64[0]}];
  v16 = MEMORY[0x277D755B8];
  v19 = [v22[0] pathForResource:@"DotCloud@2x" ofType:@"png"];
  v18 = [v16 imageWithContentsOfFile:?];
  v17 = [(AKBringDeviceCloseMicaView *)v23 dotCloudLayer];
  [(CALayer *)v17 setContents:v18];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = v23;
  v21 = [(AKBringDeviceCloseMicaView *)v23 micaPlayer];
  [(AKUIMicaPlayer *)v21 setDelegate:v20];
  MEMORY[0x277D82BD8](v21);
  objc_storeStrong(v22, 0);
}

- (void)layoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKBringDeviceCloseMicaView;
  [(AKBringDeviceCloseMicaView *)&v5 layoutSubviews];
  micaPlayer = v7->_micaPlayer;
  v4 = [(AKBringDeviceCloseMicaView *)v7 layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer moveAndResizeWithinParentLayer:"moveAndResizeWithinParentLayer:usingGravity:animate:" usingGravity:? animate:?];
  MEMORY[0x277D82BD8](v4);
}

- (void)AKUIMicaPlayerDidChangePlaybackTime:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v6->_shouldshowDotCloud)
  {
    if (v6->_didBeginShowingDotCloud)
    {
      [(AKUIMicaPlayer *)v6->_micaPlayer playbackTime];
      if (v3 >= *&timeToPauseAfterShowingDotCloud)
      {
        [(AKUIMicaPlayer *)v6->_micaPlayer pause];
      }
    }

    else if ([(AKBringDeviceCloseMicaView *)v6 arePhonesTogether])
    {
      [(AKUIMicaPlayer *)v6->_micaPlayer setPlaybackTime:7.0];
      timeToPauseAfterShowingDotCloud = 0x401F1EB851EB851FLL;
      v6->_didBeginShowingDotCloud = 1;
    }

    else if ([(AKBringDeviceCloseMicaView *)v6 arePhonesApart])
    {
      [(AKUIMicaPlayer *)v6->_micaPlayer setPlaybackTime:5.0];
      timeToPauseAfterShowingDotCloud = 0x40171EB851EB851FLL;
      v6->_didBeginShowingDotCloud = 1;
    }
  }

  else
  {
    [(AKUIMicaPlayer *)v6->_micaPlayer playbackTime];
    if (v4 >= 4.94999981)
    {
      [(AKUIMicaPlayer *)v6->_micaPlayer setPlaybackTime:0.0];
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