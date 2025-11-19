@interface ReviewExtensionHostService
- (void)cancel;
- (void)dismissWithData:(id)a3 error:(id)a4;
@end

@implementation ReviewExtensionHostService

- (void)cancel
{
  v2 = self;
  sub_1BB1B38C4();
}

- (void)dismissWithData:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1BB1B3AA4(a3, a4);
}

@end