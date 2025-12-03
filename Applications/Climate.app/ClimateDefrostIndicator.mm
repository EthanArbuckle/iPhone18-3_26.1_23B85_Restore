@interface ClimateDefrostIndicator
- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)layoutSubviews;
@end

@implementation ClimateDefrostIndicator

- (void)layoutSubviews
{
  selfCopy = self;
  [(ClimateDefrostIndicator *)selfCopy frame];
  [(ClimateDefrostIndicator *)selfCopy _setCornerRadius:CGRectGetWidth(v4) * 0.5];
}

- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  sub_10006C530(serviceCopy, level);
}

@end