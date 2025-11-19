@interface AVTGradientView
- (AVTGradientView)initWithFrame:(CGRect)a3;
@end

@implementation AVTGradientView

- (AVTGradientView)initWithFrame:(CGRect)a3
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVTGradientView;
  v3 = [(AVTGradientView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(AVTGradientView *)v3 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = [(AVTGradientView *)v4 layer];
      [v7 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v8}];
    }

    v9 = [(AVTGradientView *)v4 layer];
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[0] = [v10 CGColor];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    v19[2] = [v12 CGColor];
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v19[3] = [v13 CGColor];
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[4] = [v14 CGColor];
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v19[5] = [v15 CGColor];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
    [v9 setColors:v16];

    [v9 setLocations:&unk_1F39A5D30];
    [v9 setStartPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [v9 setEndPoint:{1.0, 0.0}];
  }

  return v4;
}

@end