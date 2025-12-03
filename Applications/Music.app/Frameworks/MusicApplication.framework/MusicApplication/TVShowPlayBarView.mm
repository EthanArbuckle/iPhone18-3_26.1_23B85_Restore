@interface TVShowPlayBarView
- (NSString)title;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation TVShowPlayBarView

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v7 = v6;
  titleCopy = title;
  selfCopy = self;
  sub_22775C(v5, v7);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_227858();
}

@end