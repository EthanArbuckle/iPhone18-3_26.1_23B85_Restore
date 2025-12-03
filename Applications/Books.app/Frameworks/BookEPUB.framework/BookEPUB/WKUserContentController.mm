@interface WKUserContentController
- (void)be_addScriptMessageHandler:(id)handler name:(id)name;
@end

@implementation WKUserContentController

- (void)be_addScriptMessageHandler:(id)handler name:(id)name
{
  nameCopy = name;
  handlerCopy = handler;
  v8 = [[_BEWKUserContentControllerScriptMessageHandlerProxy alloc] initWithHandler:handlerCopy];

  [(WKUserContentController *)self addScriptMessageHandler:v8 name:nameCopy];
}

@end