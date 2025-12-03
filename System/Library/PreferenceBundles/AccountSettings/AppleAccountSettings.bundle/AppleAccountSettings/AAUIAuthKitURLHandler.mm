@interface AAUIAuthKitURLHandler
- (AAUIAuthKitURLHandler)init;
- (void)handleAuthKitURLWithResourceDictionary:(id)dictionary presentingViewController:(id)controller;
@end

@implementation AAUIAuthKitURLHandler

- (void)handleAuthKitURLWithResourceDictionary:(id)dictionary presentingViewController:(id)controller
{
  v6 = sub_35560();
  controllerCopy = controller;
  selfCopy = self;
  AuthKitURLHandler.handleAuthKitURLWithResourceDictionary(_:presentingViewController:)(v6, controllerCopy);
}

- (AAUIAuthKitURLHandler)init
{
  *(&self->super.isa + OBJC_IVAR___AAUIAuthKitURLHandler_authContext) = 0;
  *(&self->super.isa + OBJC_IVAR___AAUIAuthKitURLHandler_authController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AuthKitURLHandler();
  return [(AAUIAuthKitURLHandler *)&v3 init];
}

@end