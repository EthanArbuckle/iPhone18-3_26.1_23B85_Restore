@interface PasscodeContentViewControllerFactory
+ (id)passcodeContentViewControllerForPasscode:(id)passcode options:(id)options;
@end

@implementation PasscodeContentViewControllerFactory

+ (id)passcodeContentViewControllerForPasscode:(id)passcode options:(id)options
{
  optionsCopy = options;
  passcodeCopy = passcode;
  v7 = [[PasscodeContentViewControllerFullScreen alloc] initWithPasscode:passcodeCopy options:optionsCopy];

  return v7;
}

@end