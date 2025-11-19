@interface SwitchComponent
- (void)prepareForReuse;
- (void)switchAction;
@end

@implementation SwitchComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_85DF8();
}

- (void)switchAction
{
  v2 = self;
  sub_86140();
}

@end