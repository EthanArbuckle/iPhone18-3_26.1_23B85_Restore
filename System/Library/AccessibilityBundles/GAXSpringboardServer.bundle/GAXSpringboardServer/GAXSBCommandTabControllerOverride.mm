@interface GAXSBCommandTabControllerOverride
- (void)activateWithKeyCommand:(id)a3;
@end

@implementation GAXSBCommandTabControllerOverride

- (void)activateWithKeyCommand:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  v6 = [v5 isActive];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = GAXSBCommandTabControllerOverride;
    [(GAXSBCommandTabControllerOverride *)&v7 activateWithKeyCommand:v4];
  }
}

@end