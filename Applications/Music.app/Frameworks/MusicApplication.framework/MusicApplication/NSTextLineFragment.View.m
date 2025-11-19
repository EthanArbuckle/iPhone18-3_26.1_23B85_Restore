@interface NSTextLineFragment.View
- (_TtCE14MusicUtilitiesCSo18NSTextLineFragment4View)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation NSTextLineFragment.View

- (_TtCE14MusicUtilitiesCSo18NSTextLineFragment4View)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v6 = self;
  v3 = UIGraphicsGetCurrentContext();
  if (v3)
  {
    v4 = v3;
    v5 = *(&v6->super.super.super.isa + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line);
    [v5 drawAtPoint:v4 inContext:{0.0, 0.0}];
  }
}

@end