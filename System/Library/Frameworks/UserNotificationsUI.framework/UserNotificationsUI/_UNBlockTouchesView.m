@interface _UNBlockTouchesView
- (BOOL)isUserInteractionEnabled;
- (_UNBlockTouchesView)initWithFrame:(CGRect)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation _UNBlockTouchesView

- (_UNBlockTouchesView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UNBlockTouchesView;
  v3 = [(_UNBlockTouchesView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UNBlockTouchesView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UNBlockTouchesView;
  [(_UNBlockTouchesView *)&v6 setUserInteractionEnabled:?];
  v5 = [(_UNBlockTouchesView *)self layer];
  [v5 setHitTestsAsOpaque:!v3];
}

- (BOOL)isUserInteractionEnabled
{
  v6.receiver = self;
  v6.super_class = _UNBlockTouchesView;
  if ([(_UNBlockTouchesView *)&v6 isUserInteractionEnabled])
  {
    v3 = [(_UNBlockTouchesView *)self layer];
    v4 = [v3 hitTestsAsOpaque] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end