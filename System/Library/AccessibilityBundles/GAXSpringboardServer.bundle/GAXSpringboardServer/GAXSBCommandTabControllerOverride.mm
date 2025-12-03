@interface GAXSBCommandTabControllerOverride
- (void)activateWithKeyCommand:(id)command;
@end

@implementation GAXSBCommandTabControllerOverride

- (void)activateWithKeyCommand:(id)command
{
  commandCopy = command;
  v5 = +[GAXSpringboard sharedInstance];
  isActive = [v5 isActive];

  if ((isActive & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = GAXSBCommandTabControllerOverride;
    [(GAXSBCommandTabControllerOverride *)&v7 activateWithKeyCommand:commandCopy];
  }
}

@end