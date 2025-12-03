@interface PHAssertion
- (void)releaseAssertion;
@end

@implementation PHAssertion

- (void)releaseAssertion
{
  selfCopy = self;
  sub_100228FE4();
}

@end