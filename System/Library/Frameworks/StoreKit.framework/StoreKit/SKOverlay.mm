@interface SKOverlay
+ (id)unsupportedPlatformErrorWithAPIName:(id)a3;
+ (void)dismissOverlayInScene:(UIWindowScene *)scene;
- (ASOOverlayConfiguration)overlayConfiguration;
- (BOOL)isReadyToPresentInScene:(id)a3;
- (SKOverlay)initWithConfiguration:(SKOverlayConfiguration *)configuration;
- (id)delegate;
- (id)tranformToPublicError:(id)a3;
- (void)presentInScene:(UIWindowScene *)scene;
- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4;
- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4;
- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4;
- (void)storeOverlay:(id)a3 willStartDismissal:(id)a4;
- (void)storeOverlay:(id)a3 willStartPresentation:(id)a4;
@end

@implementation SKOverlay

- (SKOverlay)initWithConfiguration:(SKOverlayConfiguration *)configuration
{
  v5 = configuration;
  v9.receiver = self;
  v9.super_class = SKOverlay;
  v6 = [(SKOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (void)presentInScene:(UIWindowScene *)scene
{
  v5 = scene;
  if ([(SKOverlay *)self isReadyToPresentInScene:?])
  {
    v4 = [(UIWindowScene *)v5 _aso_appOverlayManager];
    [v4 presentOverlay:self];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASOErrorDomain" code:7 userInfo:0];
    [(SKOverlay *)self storeOverlay:self didFailToLoadWithError:v4];
  }
}

+ (void)dismissOverlayInScene:(UIWindowScene *)scene
{
  v3 = [(UIWindowScene *)scene _aso_appOverlayManager];
  [v3 dismissOverlay];
}

- (BOOL)isReadyToPresentInScene:(id)a3
{
  v4 = a3;
  v5 = [(SKOverlay *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = (isKindOfClass & 1) == 0 || ![v4 activationState] || objc_msgSend(v4, "activationState") == 1;
  return v7;
}

- (ASOOverlayConfiguration)overlayConfiguration
{
  v2 = [(SKOverlay *)self configuration];
  v3 = [v2 _backing];

  return v3;
}

- (void)storeOverlay:(id)a3 willStartPresentation:(id)a4
{
  v9 = a4;
  v5 = [(SKOverlay *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SKOverlay *)self delegate];
    v8 = [[SKOverlayTransitionContext alloc] initWithASOOverlayTransitionContext:v9];
    [v7 storeOverlay:self willStartPresentation:v8];
  }
}

- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4
{
  v9 = a4;
  v5 = [(SKOverlay *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SKOverlay *)self delegate];
    v8 = [[SKOverlayTransitionContext alloc] initWithASOOverlayTransitionContext:v9];
    [v7 storeOverlay:self didFinishPresentation:v8];
  }
}

- (void)storeOverlay:(id)a3 willStartDismissal:(id)a4
{
  v9 = a4;
  v5 = [(SKOverlay *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SKOverlay *)self delegate];
    v8 = [[SKOverlayTransitionContext alloc] initWithASOOverlayTransitionContext:v9];
    [v7 storeOverlay:self willStartDismissal:v8];
  }
}

- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4
{
  v9 = a4;
  v5 = [(SKOverlay *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SKOverlay *)self delegate];
    v8 = [[SKOverlayTransitionContext alloc] initWithASOOverlayTransitionContext:v9];
    [v7 storeOverlay:self didFinishDismissal:v8];
  }
}

- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4
{
  v5 = [(SKOverlay *)self tranformToPublicError:a4];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SKOverlay storeOverlay:v5 didFailToLoadWithError:?];
  }

  v6 = [(SKOverlay *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SKOverlay *)self delegate];
    [v8 storeOverlay:self didFailToLoadWithError:v5];
  }
}

- (id)tranformToPublicError:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"ASOErrorDomain"];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v3 code];
  if (v6 > 3)
  {
    switch(v6)
    {
      case 4:
        v7 = MEMORY[0x1E696ABC0];
        v8 = 15;
        goto LABEL_13;
      case 6:
        v7 = MEMORY[0x1E696ABC0];
        v8 = 17;
        goto LABEL_13;
      case 7:
        v9 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"OVERLAY_PRESENTED_IN_BACKGROUND_SCENE" value:&stru_1F29BCE20 table:0];
        v19 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v13 = v9;
        v14 = 20;
LABEL_11:
        v16 = [v13 errorWithDomain:@"SKErrorDomain" code:v14 userInfo:v12];

        goto LABEL_14;
    }

LABEL_12:
    v7 = MEMORY[0x1E696ABC0];
    v8 = 0;
    goto LABEL_13;
  }

  if ((v6 - 1) >= 2)
  {
    if (v6 == 3)
    {
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"INVALID_OVERLAY_CONFIGURATION_APP_CLIP" value:&stru_1F29BCE20 table:0];
      v21[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = v15;
      v14 = 16;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = 16;
LABEL_13:
  v16 = [v7 errorWithDomain:@"SKErrorDomain" code:v8 userInfo:0];
LABEL_14:

  return v16;
}

+ (id)unsupportedPlatformErrorWithAPIName:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported on this platform.", a3, *MEMORY[0x1E696A578]];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"SKErrorDomain" code:19 userInfo:v5];

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)storeOverlay:(void *)a1 didFailToLoadWithError:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"OVERLAY_FAILED_TO_LOAD" value:&stru_1F29BCE20 table:0];
  v5 = [a1 localizedDescription];
  v6 = [v2 stringWithFormat:v4, v5];
  *buf = 138543362;
  v8 = v6;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

@end