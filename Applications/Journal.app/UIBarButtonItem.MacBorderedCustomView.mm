@interface UIBarButtonItem.MacBorderedCustomView
- (BOOL)isEnabled;
- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithCoder:(id)a3;
- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIBarButtonItem.MacBorderedCustomView

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_10035FB50();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_10035FD00(a3);
}

- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s21MacBorderedCustomViewCMa();
  return [(UIBarButtonItem.MacBorderedCustomView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE7JournalCSo15UIBarButtonItemP33_F0BC2803DD62861160BF40CAB32FDB4321MacBorderedCustomView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _s21MacBorderedCustomViewCMa();
  return [(UIBarButtonItem.MacBorderedCustomView *)&v5 initWithCoder:a3];
}

@end