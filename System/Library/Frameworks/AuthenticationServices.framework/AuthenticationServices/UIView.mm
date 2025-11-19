@interface UIView
@end

@implementation UIView

void __44__UIView_ASViewExtras__as_shakeHorizontally__block_invoke(uint64_t a1)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v2 setKeyPath:@"position.x"];
  [v2 setDuration:0.35];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v2 setTimingFunction:v3];

  v4 = [*(a1 + 32) layer];
  [v4 position];
  v6 = v5;

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v17[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + 6.0];
  v17[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v17[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + -6.0];
  v17[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  v12 = [v11 arrayByAddingObjectsFromArray:v11];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v14 = [v12 arrayByAddingObject:v13];
  [v2 setValues:v14];

  v15 = [*(a1 + 32) layer];
  [v15 addAnimation:v2 forKey:@"shake"];

  v16 = *MEMORY[0x1E69E9840];
}

@end