@interface KeepAlive.RBSAssertionComponent
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
@end

@implementation KeepAlive.RBSAssertionComponent

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_192CBD178(v4);
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_192CBD618(v6, a4);
}

@end