@interface _SLAuthHostViewController
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _SLAuthHostViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  _SLLog(v3, 3, @"_SLAuthHostViewController: (this may be harmless) viewServiceDidTerminateWithError: %@");
  v8.receiver = self;
  v8.super_class = _SLAuthHostViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:errorCopy, errorCopy];

  viewServiceTerminationBlock = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];

  if (viewServiceTerminationBlock)
  {
    viewServiceTerminationBlock2 = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];
    viewServiceTerminationBlock2[2]();
  }
}

@end