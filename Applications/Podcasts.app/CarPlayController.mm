@interface CarPlayController
- (void)templateWillAppear:(id)appear animated:(BOOL)animated;
@end

@implementation CarPlayController

- (void)templateWillAppear:(id)appear animated:(BOOL)animated
{
  appearCopy = appear;
  selfCopy = self;
  sub_1001CCFEC(appearCopy);
}

@end