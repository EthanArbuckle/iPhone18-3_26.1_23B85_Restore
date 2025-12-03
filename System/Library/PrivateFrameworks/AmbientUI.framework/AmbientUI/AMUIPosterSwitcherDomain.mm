@interface AMUIPosterSwitcherDomain
+ (id)rootSettings;
@end

@implementation AMUIPosterSwitcherDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___AMUIPosterSwitcherDomain;
  v2 = objc_msgSendSuper2(&v4, sel_rootSettings);

  return v2;
}

@end