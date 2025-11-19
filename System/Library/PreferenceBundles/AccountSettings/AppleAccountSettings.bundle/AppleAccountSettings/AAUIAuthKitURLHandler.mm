@interface AAUIAuthKitURLHandler
- (AAUIAuthKitURLHandler)init;
- (void)handleAuthKitURLWithResourceDictionary:(id)a3 presentingViewController:(id)a4;
@end

@implementation AAUIAuthKitURLHandler

- (void)handleAuthKitURLWithResourceDictionary:(id)a3 presentingViewController:(id)a4
{
  v6 = sub_35560();
  v7 = a4;
  v8 = self;
  AuthKitURLHandler.handleAuthKitURLWithResourceDictionary(_:presentingViewController:)(v6, v7);
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