@interface _MKMapItemDetailView
- (CGSize)intrinsicContentSize;
- (_MKMapItemDetailView)initWithFrame:(CGRect)frame;
- (void)orientationDidChangeNotification:(id)notification;
@end

@implementation _MKMapItemDetailView

- (CGSize)intrinsicContentSize
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKRemoteUILog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_MKMapItemDetailView *)self bounds];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", v4, v5];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "MKMapItemDetailViewController intrinsicContentSize %{public}@", buf, 0xCu);
  }

  [(_MKMapItemDetailView *)self bounds];
  v8 = v7;
  v10 = v9;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)orientationDidChangeNotification:(id)notification
{
  v4 = MKGetMKRemoteUILog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "MKMapItemDetailViewController orientationDidChangeNotification", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___MKMapItemDetailView_orientationDidChangeNotification___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (_MKMapItemDetailView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _MKMapItemDetailView;
  v3 = [(_MKMapItemDetailView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel_orientationDidChangeNotification_ name:*MEMORY[0x1E69DDCB8] object:0];
    }
  }

  return v3;
}

@end