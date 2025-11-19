@interface AAUIAppleLogoMicaView
- (AAUIAppleLogoMicaView)init;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)loadMicaFile;
@end

@implementation AAUIAppleLogoMicaView

- (AAUIAppleLogoMicaView)init
{
  v5.receiver = self;
  v5.super_class = AAUIAppleLogoMicaView;
  v2 = [(AAUIAppleLogoMicaView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AAUIAppleLogoMicaView *)v2 loadMicaFile];
  }

  return v3;
}

- (void)loadMicaFile
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SignInProgress" ofType:@"caar"];

  v5 = [AAUIMicaPlayer alloc];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v7 = [(AAUIMicaPlayer *)v5 initWithPath:v4 retinaScale:?];
  [(AAUIAppleLogoMicaView *)self setMicaPlayer:v7];

  v8 = [(AAUIAppleLogoMicaView *)self micaPlayer];
  v9 = [(AAUIAppleLogoMicaView *)self layer];
  [v8 addToLayer:v9 onTop:1 gravity:*MEMORY[0x1E6979DE8]];

  v10 = [(AAUIAppleLogoMicaView *)self micaPlayer];
  [v10 pause];

  v11 = objc_opt_self();
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(AAUIAppleLogoMicaView *)self registerForTraitChanges:v12 withAction:sel__updateColors];

  [(AAUIAppleLogoMicaView *)self _updateColors];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AAUIAppleLogoMicaView;
  [(AAUIAppleLogoMicaView *)&v5 layoutSubviews];
  micaPlayer = self->_micaPlayer;
  v4 = [(AAUIAppleLogoMicaView *)self layer];
  [(AAUIMicaPlayer *)micaPlayer moveAndResizeWithinParentLayer:v4 usingGravity:*MEMORY[0x1E6979DE8] animate:0];
}

- (void)_updateColors
{
  v15[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v3 = [(AAUIAppleLogoMicaView *)self micaPlayer];
  v4 = [v3 publishedLayerWithKey:@"Transparency Gradient" required:1];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v7 = [MEMORY[0x1E69DC888] systemBlueColor];
    v8 = [v7 colorWithAlphaComponent:0.7];
    v9 = [(AAUIAppleLogoMicaView *)self traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (v10 == 1)
    {
      v15[0] = [v8 CGColor];
      v11 = v15;
      v12 = v7;
    }

    else
    {
      v14 = [v7 CGColor];
      v11 = &v14;
      v12 = v8;
    }

    v11[1] = [v12 CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v5 setColors:v13];

    [MEMORY[0x1E6979518] setDisableActions:v6];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AAUIAppleLogoMicaView *)v7 _updateColors];
    }
  }
}

@end