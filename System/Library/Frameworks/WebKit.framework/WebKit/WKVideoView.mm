@interface WKVideoView
- (WKVideoView)initWithFrame:(CGRect)a3 playerView:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation WKVideoView

- (WKVideoView)initWithFrame:(CGRect)a3 playerView:(id)a4
{
  v9.receiver = self;
  v9.super_class = WKVideoView;
  v5 = [(WKVideoView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    if (a4)
    {
      v6 = a4;
    }

    m_ptr = v5->_playerView.m_ptr;
    v5->_playerView.m_ptr = a4;
    if (m_ptr)
    {
    }

    [(WKVideoView *)v5 addSubview:a4];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(WKVideoView *)self pointInside:a4 withEvent:a3.x, a3.y])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WKVideoView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(WKVideoView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end