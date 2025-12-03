@interface AXStaticFrameView
- (void)setFrame:(CGRect)frame;
@end

@implementation AXStaticFrameView

- (void)setFrame:(CGRect)frame
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13.receiver = self;
  v13.super_class = AXStaticFrameView;
  [(AXStaticFrameView *)&v13 setFrame:v6, v8, v10, v12];
}

@end