@interface _SLAuthHostViewController
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _SLAuthHostViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5 = a3;
  _SLLog(v3, 3, @"_SLAuthHostViewController: (this may be harmless) viewServiceDidTerminateWithError: %@");
  v8.receiver = self;
  v8.super_class = _SLAuthHostViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:v5, v5];

  v6 = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];

  if (v6)
  {
    v7 = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];
    v7[2]();
  }
}

@end