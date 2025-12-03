@interface WKVideoView
- (WKVideoView)initWithFrame:(CGRect)frame playerView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation WKVideoView

- (WKVideoView)initWithFrame:(CGRect)frame playerView:(id)view
{
  v9.receiver = self;
  v9.super_class = WKVideoView;
  v5 = [(WKVideoView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    if (view)
    {
      viewCopy = view;
    }

    m_ptr = v5->_playerView.m_ptr;
    v5->_playerView.m_ptr = view;
    if (m_ptr)
    {
    }

    [(WKVideoView *)v5 addSubview:view];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(WKVideoView *)self pointInside:event withEvent:test.x, test.y])
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
  subviews = [(WKVideoView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(WKVideoView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end