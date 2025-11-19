@interface AAUIServerUIHookHandler
- (AAUIServerUIHookHandler)init;
@end

@implementation AAUIServerUIHookHandler

- (AAUIServerUIHookHandler)init
{
  v6.receiver = self;
  v6.super_class = AAUIServerUIHookHandler;
  v2 = [(AAUIServerUIHookHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AAUIServerHookHandlerDelegate);
    delegate = v2->_delegate;
    v2->_delegate = v3;

    [(RUIServerHookHandler *)v2 setDelegate:v2->_delegate];
  }

  return v2;
}

@end