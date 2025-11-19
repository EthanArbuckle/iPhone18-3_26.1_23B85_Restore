@interface ApprovedDeveloperViewModel
- (void)appWillEnterForeground;
- (void)distributorsOrDevelopersChanged;
@end

@implementation ApprovedDeveloperViewModel

- (void)appWillEnterForeground
{
  sub_1EA48();

  sub_1053C(sub_116C0, self);
}

- (void)distributorsOrDevelopersChanged
{

  sub_10750();
}

@end