@interface InboxView
- (InboxView)initWithFrame:(CGRect)a3;
@end

@implementation InboxView

- (InboxView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = InboxView;
  v3 = [(InboxView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (CalSplitViewEnabled())
    {
      [(InboxView *)v3 setBackgroundColor:0];
    }

    else
    {
      v4 = +[UIColor systemBackgroundColor];
      [(InboxView *)v3 setBackgroundColor:v4];
    }
  }

  return v3;
}

@end