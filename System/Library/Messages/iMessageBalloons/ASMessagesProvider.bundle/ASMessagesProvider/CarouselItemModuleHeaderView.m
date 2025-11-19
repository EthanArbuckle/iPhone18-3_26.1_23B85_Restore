@interface CarouselItemModuleHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CarouselItemModuleHeaderView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemModuleHeaderView *)&v5 layoutSubviews];
  sub_704320(v4);
  sub_B170(v4, v4[3]);
  sub_75D650();
  v3 = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(CarouselItemModuleHeaderView *)v3 traitCollection];
  sub_704320(v11);
  sub_B170(v11, v11[3]);
  sub_7673F0();
  v6 = v5;
  v8 = v7;

  sub_BEB8(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end