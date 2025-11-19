@interface WKUserContentController
- (void)be_addScriptMessageHandler:(id)a3 name:(id)a4;
@end

@implementation WKUserContentController

- (void)be_addScriptMessageHandler:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_BEWKUserContentControllerScriptMessageHandlerProxy alloc] initWithHandler:v7];

  [(WKUserContentController *)self addScriptMessageHandler:v8 name:v6];
}

@end