@interface TVShowPlayBarView
- (NSString)title;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
@end

@implementation TVShowPlayBarView

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v9 = a3;
  v8 = self;
  sub_22775C(v5, v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_227858();
}

@end