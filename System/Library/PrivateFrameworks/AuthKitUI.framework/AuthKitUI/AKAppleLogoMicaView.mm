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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = [(AKUIMicaPlayer *)v3 initWithFileName:@"SignInProgress" retinaScale:?];
  [(AKAppleLogoMicaView *)self setMicaPlayer:?];
  MEMORY[0x277D82BD8](v4);
  micaPlayer = [(AKAppleLogoMicaView *)self micaPlayer];
  layer = [(AKAppleLogoMicaView *)self layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer addToLayer:micaPlayer onTop:"addToLayer:onTop:gravity:" gravity:?];
  MEMORY[0x277D82BD8](layer);
  micaPlayer2 = [(AKAppleLogoMicaView *)self micaPlayer];
  [(AKUIMicaPlayer *)micaPlayer2 pause];
  MEMORY[0x277D82BD8](micaPlayer2);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKAppleLogoMicaView;
  [(AKAppleLogoMicaView *)&v5 layoutSubviews];
  micaPlayer = selfCopy->_micaPlayer;
  layer = [(AKAppleLogoMicaView *)selfCopy layer];
  v2 = *MEMORY[0x277CDA710];
  [AKUIMicaPlayer moveAndResizeWithinParentLayer:"moveAndResizeWithinParentLayer:usingGravity:animate:" usingGravity:? animate:?];
  MEMORY[0x277D82BD8](layer);
}

@end