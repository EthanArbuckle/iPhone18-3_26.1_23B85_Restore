@interface MailDebugScene
- (void)mailSceneDidConnectWithOptions:(id)options;
@end

@implementation MailDebugScene

- (void)mailSceneDidConnectWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = MailDebugScene;
  [(MailScene *)&v10 mailSceneDidConnectWithOptions:optionsCopy];
  v5 = [[MFMailDebugMenuController alloc] initWithScene:self];
  [(MailDebugScene *)self setDebugMenu:v5];

  debugMenu = [(MailDebugScene *)self debugMenu];
  [debugMenu setPresenter:self];

  [(MailDebugScene *)self setTitle:@"Debugging"];
  v7 = [NSPredicate predicateWithFormat:@"self == %@", @"com.apple.mail.private.debugmenu"];
  activationConditions = [(MailDebugScene *)self activationConditions];
  [activationConditions setCanActivateForTargetContentIdentifierPredicate:v7];

  activationConditions2 = [(MailDebugScene *)self activationConditions];
  [activationConditions2 setPrefersToActivateForTargetContentIdentifierPredicate:v7];
}

@end