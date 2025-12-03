@interface AVStatusBarBackgroundGradientViewSubview
- (AVStatusBarBackgroundGradientViewSubview)initWithFrame:(CGRect)frame;
@end

@implementation AVStatusBarBackgroundGradientViewSubview

- (AVStatusBarBackgroundGradientViewSubview)initWithFrame:(CGRect)frame
{
  v28[16] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AVStatusBarBackgroundGradientViewSubview;
  v3 = [(AVStatusBarBackgroundGradientViewSubview *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v25 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    v28[0] = [v25 CGColor];
    v24 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.994603225];
    v28[1] = [v24 CGColor];
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.978587023];
    v28[2] = [v23 CGColor];
    v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.952464435];
    v28[3] = [v22 CGColor];
    v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.917060124];
    v28[4] = [v21 CGColor];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.822990973];
    v28[5] = [v20 CGColor];
    v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.707279774];
    v28[6] = [v19 CGColor];
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.458754447];
    v28[7] = [v18 CGColor];
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.346236755];
    v28[8] = [v4 CGColor];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.250244738];
    v28[9] = [v5 CGColor];
    [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.173203094];
    v6 = v26 = v3;
    v28[10] = [v6 CGColor];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.114800887];
    v28[11] = [v7 CGColor];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0728674787];
    v28[12] = [v8 CGColor];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0442915775];
    v28[13] = [v9 CGColor];
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0143711881];
    v28[14] = [v10 CGColor];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.00392156863];
    v28[15] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:16];
    layer = [(AVStatusBarBackgroundGradientViewSubview *)v26 layer];
    [layer setColors:v12];

    v3 = v26;
    layer2 = [(AVStatusBarBackgroundGradientViewSubview *)v26 layer];
    [layer2 setLocations:&unk_1EFF12E18];

    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C8]];
    layer3 = [(AVStatusBarBackgroundGradientViewSubview *)v26 layer];
    [layer3 setCompositingFilter:v15];
  }

  return v3;
}

@end