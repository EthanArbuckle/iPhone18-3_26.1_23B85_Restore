@interface ReviewExtensionHostService
- (void)cancel;
- (void)dismissWithData:(id)data error:(id)error;
@end

@implementation ReviewExtensionHostService

- (void)cancel
{
  selfCopy = self;
  sub_1BB1B38C4();
}

- (void)dismissWithData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  selfCopy = self;
  sub_1BB1B3AA4(data, error);
}

@end