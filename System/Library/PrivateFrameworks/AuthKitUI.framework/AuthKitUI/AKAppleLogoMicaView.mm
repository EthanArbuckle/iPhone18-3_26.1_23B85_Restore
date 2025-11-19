@interface AKAppleLogoMicaView
- (AKAppleLogoMicaView)init;
- (void)layoutSubviews;
- (void)loadMicaFile;
@end

@implementation AKAppleLogoMicaView

- (AKAppleLogoMicaView)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAppleLogoMicaView;
  v6 = [(AKAppleLogoMicaView *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(AKAppleLogoMicaView *)v6 loadMicaFile];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)loadMicaFile
{
  v3 = [AKUIMicaPlayer alloc];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v4 = [(AKUIMicaPlayer *)v3 initWithFileName:@"SignInProgress" retinaScale:?];
  [(AKAppleLogoMicaView *)self setMicaPlayer:?];
  MEMORY[0x277D82BD8](v4);
  v7 = [(AKAppleLogoMicaView *)self micaPlayer];
  v6 = [(AKAppleLogoMicaView *)self layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer addToLayer:v7 onTop:"addToLayer:onTop:gravity:" gravity:?];
  MEMORY[0x277D82BD8](v6);
  v8 = [(AKAppleLogoMicaView *)self micaPlayer];
  [(AKUIMicaPlayer *)v8 pause];
  MEMORY[0x277D82BD8](v8);
}

- (void)layoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKAppleLogoMicaView;
  [(AKAppleLogoMicaView *)&v5 layoutSubviews];
  micaPlayer = v7->_micaPlayer;
  v4 = [(AKAppleLogoMicaView *)v7 layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer moveAndResizeWithinParentLayer:"moveAndResizeWithinParentLayer:usingGravity:animate:" usingGravity:? animate:?];
  MEMORY[0x277D82BD8](v4);
}

@end