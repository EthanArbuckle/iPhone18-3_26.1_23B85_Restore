@interface InboxView
- (InboxView)initWithFrame:(CGRect)frame;
@end

@implementation InboxView

- (InboxView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = InboxView;
  v3 = [(InboxView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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