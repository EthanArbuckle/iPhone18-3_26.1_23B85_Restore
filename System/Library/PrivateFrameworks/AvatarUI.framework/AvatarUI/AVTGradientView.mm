@interface AVTGradientView
- (AVTGradientView)initWithFrame:(CGRect)frame;
@end

@implementation AVTGradientView

- (AVTGradientView)initWithFrame:(CGRect)frame
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVTGradientView;
  v3 = [(AVTGradientView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(AVTGradientView *)v3 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF30];
      layer2 = [(AVTGradientView *)v4 layer];
      [v7 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", layer2}];
    }

    layer3 = [(AVTGradientView *)v4 layer];
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[0] = [v10 CGColor];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[1] = [v11 CGColor];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v19[2] = [whiteColor CGColor];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v19[3] = [whiteColor2 CGColor];
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[4] = [v14 CGColor];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[5] = [v15 CGColor];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
    [layer3 setColors:v16];

    [layer3 setLocations:&unk_1F39A5D30];
    [layer3 setStartPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [layer3 setEndPoint:{1.0, 0.0}];
  }

  return v4;
}

@end