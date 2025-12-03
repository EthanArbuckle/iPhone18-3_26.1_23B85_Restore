@interface _UNBlockTouchesView
- (BOOL)isUserInteractionEnabled;
- (_UNBlockTouchesView)initWithFrame:(CGRect)frame;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation _UNBlockTouchesView

- (_UNBlockTouchesView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UNBlockTouchesView;
  v3 = [(_UNBlockTouchesView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_UNBlockTouchesView *)v3 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = _UNBlockTouchesView;
  [(_UNBlockTouchesView *)&v6 setUserInteractionEnabled:?];
  layer = [(_UNBlockTouchesView *)self layer];
  [layer setHitTestsAsOpaque:!enabledCopy];
}

- (BOOL)isUserInteractionEnabled
{
  v6.receiver = self;
  v6.super_class = _UNBlockTouchesView;
  if ([(_UNBlockTouchesView *)&v6 isUserInteractionEnabled])
  {
    layer = [(_UNBlockTouchesView *)self layer];
    v4 = [layer hitTestsAsOpaque] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end