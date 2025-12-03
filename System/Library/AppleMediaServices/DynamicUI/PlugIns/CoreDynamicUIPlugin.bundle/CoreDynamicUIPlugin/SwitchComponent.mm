@interface SwitchComponent
- (void)prepareForReuse;
- (void)switchAction;
@end

@implementation SwitchComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_85DF8();
}

- (void)switchAction
{
  selfCopy = self;
  sub_86140();
}

@end