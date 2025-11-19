@interface ClimateDefrostIndicator
- (void)defrostService:(id)a3 didUpdateLevel:(unsigned __int8)a4;
- (void)layoutSubviews;
@end

@implementation ClimateDefrostIndicator

- (void)layoutSubviews
{
  v2 = self;
  [(ClimateDefrostIndicator *)v2 frame];
  [(ClimateDefrostIndicator *)v2 _setCornerRadius:CGRectGetWidth(v4) * 0.5];
}

- (void)defrostService:(id)a3 didUpdateLevel:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_10006C530(v6, a4);
}

@end