@interface UIBarButtonItem.MacBorderedCustomView
- (BOOL)isEnabled;
- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithCoder:(id)coder;
- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIBarButtonItem.MacBorderedCustomView

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_10035FB50();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_10035FD00(enabled);
}

- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s21MacBorderedCustomViewCMa();
  return [(UIBarButtonItem.MacBorderedCustomView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _s21MacBorderedCustomViewCMa();
  return [(UIBarButtonItem.MacBorderedCustomView *)&v5 initWithCoder:coder];
}

@end