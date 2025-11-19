@interface ABLoadingSplashView
+ (id)assistantSplashView;
+ (id)settingsSplashView;
- (ABLoadingSplashView)initWithAssistantMode:(BOOL)a3;
- (void)layoutSubviews;
@end

@implementation ABLoadingSplashView

+ (id)settingsSplashView
{
  v0 = [objc_alloc(objc_opt_self()) initWithAssistantMode:0];

  return v0;
}

+ (id)assistantSplashView
{
  v0 = [objc_alloc(objc_opt_self()) initWithAssistantMode:1];

  return v0;
}

- (ABLoadingSplashView)initWithAssistantMode:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = ABLoadingSplashView;
  v4 = [(ABLoadingSplashView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = ABSnapshotImageName(v3);
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:v5 inBundle:v7 withConfiguration:0];

    if (!v8)
    {
      v9 = ABLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ABLoadingSplashView *)v5 initWithAssistantMode:v9];
      }
    }

    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    imageView = v4->_imageView;
    v4->_imageView = v10;

    [(ABLoadingSplashView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ABLoadingSplashView;
  [(ABLoadingSplashView *)&v3 layoutSubviews];
  [(ABLoadingSplashView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
}

- (void)initWithAssistantMode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23DE18000, a2, OS_LOG_TYPE_ERROR, "Failed to load snapshot image for name: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end