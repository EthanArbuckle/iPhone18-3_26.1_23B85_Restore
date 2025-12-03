@interface AAUIBuddyView
- (AAUIBuddyView)initWithCoder:(id)coder;
- (AAUIBuddyView)initWithFrame:(CGRect)frame;
@end

@implementation AAUIBuddyView

- (AAUIBuddyView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AAUIBuddyView;
  v3 = [(AAUIBuddyView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _AAUIBuddyViewCommonInit(v3);
  }

  return v4;
}

- (AAUIBuddyView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUIBuddyView;
  v3 = [(AAUIBuddyView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _AAUIBuddyViewCommonInit(v3);
  }

  return v4;
}

@end