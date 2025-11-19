@interface AAUIBuddyView
- (AAUIBuddyView)initWithCoder:(id)a3;
- (AAUIBuddyView)initWithFrame:(CGRect)a3;
@end

@implementation AAUIBuddyView

- (AAUIBuddyView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AAUIBuddyView;
  v3 = [(AAUIBuddyView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _AAUIBuddyViewCommonInit(v3);
  }

  return v4;
}

- (AAUIBuddyView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIBuddyView;
  v3 = [(AAUIBuddyView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _AAUIBuddyViewCommonInit(v3);
  }

  return v4;
}

@end