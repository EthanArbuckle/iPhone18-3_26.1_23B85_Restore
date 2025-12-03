@interface AXSBVoiceOverShakeMessage
- (AXSBVoiceOverShakeMessage)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)reorientHUDIfNeeded:(BOOL)needed;
@end

@implementation AXSBVoiceOverShakeMessage

- (AXSBVoiceOverShakeMessage)initWithFrame:(CGRect)frame
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;

  v29.receiver = self;
  v29.super_class = AXSBVoiceOverShakeMessage;
  v9 = [(AXSBVoiceOverShakeMessage *)&v29 initWithFrame:(v6 + -160.0) * 0.5, v8 + -160.0, 160.0, 160.0];
  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame:{20.0, 5.0, 120.0, 150.0}];
    [v10 setClipsToBounds:1];
    [(AXSBVoiceOverShakeMessage *)v9 addSubview:v10];
    v11 = objc_alloc(MEMORY[0x277D756B8]);
    [v10 bounds];
    v12 = [v11 initWithFrame:?];
    [v12 setNumberOfLines:0];
    v13 = UISystemFontBoldForSize();
    [v12 setFont:v13];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v12 setBackgroundColor:clearColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v12 setTextColor:whiteColor];

    [v12 setTextAlignment:1];
    v16 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    [v12 setShadowColor:v16];

    [v12 setShadowOffset:{1.0, 1.0}];
    v17 = SBAXLocalizedString(@"SHAKE_TO_ENABLE");
    [v12 setText:v17];

    [v10 addSubview:v12];
    [v12 sizeToFit];
    [v12 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v10 frame];
    [v12 setFrame:{v19, v24 * 0.5 - v23 * 0.5, v21, v23}];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(AXSBVoiceOverShakeMessage *)v9 setBackgroundColor:clearColor2];

    [(AXSBVoiceOverShakeMessage *)v9 setAlpha:0.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_orientationChange name:@"AXSBServerOrientationChange" object:0];

    [(AXSBVoiceOverShakeMessage *)v9 setClipsToBounds:1];
    [(AXSBVoiceOverShakeMessage *)v9 reorientHUDIfNeeded:0];
    v27 = v9;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSBVoiceOverShakeMessage;
  [(AXSBVoiceOverShakeMessage *)&v4 dealloc];
}

- (void)reorientHUDIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [mEMORY[0x277D75128] safeIntegerForKey:@"activeInterfaceOrientation"];

  v7 = v6 - 1;
  v8 = 0;
  v9 = 0;
  if ((v6 - 1) <= 3)
  {
    v8 = dword_21FEB5630[v7];
    v9 = dword_21FEB5640[v7];
  }

  v10 = 0.3;
  v11[1] = 3221225472;
  v11[0] = MEMORY[0x277D85DD0];
  v11[2] = __49__AXSBVoiceOverShakeMessage_reorientHUDIfNeeded___block_invoke;
  v11[3] = &unk_27842BBD0;
  if (!neededCopy)
  {
    v10 = 0.0;
  }

  v11[4] = self;
  v12 = v8;
  v13 = v9;
  [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v10];
}

uint64_t __49__AXSBVoiceOverShakeMessage_reorientHUDIfNeeded___block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  *&v17.c = v2;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  v3 = *(a1 + 32);
  *&v16.a = *&v17.a;
  *&v16.c = v2;
  *&v16.tx = *&v17.tx;
  [v3 setTransform:&v16];
  [*(a1 + 32) frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 bounds];
  v13 = (v12 - v9) * 0.5 + v10;

  [*(a1 + 32) setFrame:{v5, v13, v7, v9}];
  CGAffineTransformMakeRotation(&v17, *(a1 + 44) * 3.14159265 / 180.0);
  v15 = v17;
  UIIntegralTransform();
  v17 = v16;
  return [*(a1 + 32) setTransform:{&v16, *&v15.a, *&v15.c, *&v15.tx}];
}

- (void)drawRect:(CGRect)rect
{
  v6 = CGRectInset(rect, 10.0, 10.0);
  v4 = [MEMORY[0x277D75208] roundedRectBezierPath:-1 withRoundedCorners:v6.origin.x withCornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 10.0}];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.65];
  [v3 setFill];

  [v4 fill];
}

@end