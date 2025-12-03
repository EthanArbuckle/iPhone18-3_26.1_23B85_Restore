@interface RPSystemBroadcastPickerView
- (RPSystemBroadcastPickerView)initWithCoder:(id)coder;
- (RPSystemBroadcastPickerView)initWithFrame:(CGRect)frame;
- (void)addBroadcastPickerButton;
- (void)buttonPressed:(id)pressed;
- (void)screenCaptureChanged;
@end

@implementation RPSystemBroadcastPickerView

- (RPSystemBroadcastPickerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RPSystemBroadcastPickerView;
  v3 = [(RPSystemBroadcastPickerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RPSystemBroadcastPickerView *)v3 addBroadcastPickerButton];
  }

  return v4;
}

- (RPSystemBroadcastPickerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RPSystemBroadcastPickerView;
  v3 = [(RPSystemBroadcastPickerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RPSystemBroadcastPickerView *)v3 addBroadcastPickerButton];
  }

  return v4;
}

- (void)addBroadcastPickerButton
{
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ModuleIcon" inBundle:v13];
  v4 = [v3 imageWithRenderingMode:2];

  self->_showsMicrophoneButton = 1;
  v5 = [MEMORY[0x277D75220] buttonWithType:0];
  broadcastPickerButton = self->_broadcastPickerButton;
  self->_broadcastPickerButton = v5;

  v7 = self->_broadcastPickerButton;
  [(RPSystemBroadcastPickerView *)self bounds];
  v16 = CGRectInset(v15, 5.0, 5.0);
  [(UIButton *)v7 setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
  [(UIButton *)self->_broadcastPickerButton setImage:v4 forState:0];
  v8 = self->_broadcastPickerButton;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIButton *)v8 setBackgroundColor:clearColor];

  [(UIButton *)self->_broadcastPickerButton setAutoresizingMask:18];
  [(UIButton *)self->_broadcastPickerButton addTarget:self action:sel_buttonPressed_ forControlEvents:64];
  imageView = [(UIButton *)self->_broadcastPickerButton imageView];
  [imageView setContentMode:2];

  broadcastPickerButton = [(RPSystemBroadcastPickerView *)self broadcastPickerButton];
  [(RPSystemBroadcastPickerView *)self addSubview:broadcastPickerButton];

  [(RPSystemBroadcastPickerView *)self screenCaptureChanged];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_screenCaptureChanged name:*MEMORY[0x277D76E90] object:0];
}

- (void)screenCaptureChanged
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[RPSystemBroadcastPickerView screenCaptureChanged]";
    v7 = 1024;
    v8 = 69;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RPSystemBroadcastPickerView_screenCaptureChanged__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v3 = *MEMORY[0x277D85DE8];
}

void __51__RPSystemBroadcastPickerView_screenCaptureChanged__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277D75348] blackColor];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 isCaptured];

  if (v3)
  {
    v4 = [MEMORY[0x277D75348] redColor];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  [*(*(a1 + 32) + 424) setTintColor:v5];
}

- (void)buttonPressed:(id)pressed
{
  v12 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPSystemBroadcastPickerView buttonPressed:]";
    v10 = 1024;
    v11 = 81;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  v5 = +[RPDaemonProxy daemonProxy];
  [v5 setBroadcastPickerPreferredExt:self->_preferredExtension showsMicButton:self->_showsMicrophoneButton];

  v6 = +[RPDaemonProxy daemonProxy];
  [v6 openControlCenterSystemRecordingView];

  v7 = *MEMORY[0x277D85DE8];
}

@end