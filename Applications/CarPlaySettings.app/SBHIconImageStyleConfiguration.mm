@interface SBHIconImageStyleConfiguration
- (id)initWithHomeScreenStyleData:(id)data;
@end

@implementation SBHIconImageStyleConfiguration

- (id)initWithHomeScreenStyleData:(id)data
{
  dataCopy = data;
  v4 = sub_100058498(dataCopy);

  return v4;
}

@end